
 --1  b) Find top 5 job titles who are having highest avg growth in applications.[ALL]

register /usr/local/hive/lib/hive-exec-1.2.1.jar
register /usr/local/hive/lib/hive-common-1.2.1.jar
data1 = LOAD 'hdfs://localhost:54310/user/hive/warehouse/project.db/h1b_final' USING PigStorage('\t') as (s_no:double,case_status:chararray,employer_name:chararray,soc_name:chararray,job_title:chararray,full_time_position:chararray,prevailing_wage:double,year:chararray,worksite:chararray,longitude,latitude);



cleansed= filter data1 by $7 matches '2011';

--filtering dataset by year 

a= group cleansed by $4; 

--grouping by job

step_a= foreach a generate group,COUNT($1); 

--generate year,job,count 

cleansed= filter data1 by $7 matches '2012'; 

--filtering dataset by year

a= group cleansed by $4;

 --grouping by job

step_b= foreach a generate group,COUNT($1); 

--generate year,job,count

cleansed= filter data1 by $7 matches '2013';
--filtering dataset by year


a= group cleansed by $4; 

--grouping by job

step_c= foreach a generate group,COUNT($1); 

--generate year,job,count

cleansed= filter data1 by $7 matches '2014'; 

--filtering dataset by year

a= group cleansed by $4; 

--grouping by job

step_d= foreach a generate group,COUNT($1); 

--generate year,job,count

cleansed= filter data1 by $7 matches '2015';

 --filtering dataset by year

a= group cleansed by $4; 

--grouping by job
step_e= foreach a generate group,COUNT($1); 

--generate year,job,count
cleansed= filter data1 by $7 matches '2016';

 --filtering dataset by year
a= group cleansed by $4; 

--grouping by job
step_f= foreach a generate group,COUNT($1); 

--generate year,job,count
joined= join step_a by $0,step_b by $0,step_c by $0,step_d by $0,step_e by $0,step_f by $0;


yearwiseapplications= foreach joined generate $0,$1,$3,$5,$7,$9,$11;
--generate progressive growth and impilicit casting 10 times

progressivegrowth= foreach yearwiseapplications generate $0,
(float)($6-$5)*100/$5,(float)($5-$4)*100/$4,
(float)($4-$3)*100/$3,(float)($3-$2)*100/$2,
(float)($2-$1)*100/$1;

--average progressive growth

avgprogressivegrowth= foreach progressivegrowth generate $0,($1+$2+$3+$4+$5)/5;

---ordered progressive growth

orderedavggrowth= order avgprogressivegrowth by $1 desc;

--display top5 only

answer = limit orderedavggrowth 5;
dump answer;

--store answer into '/home/hduser/niit/pig/Question 1b' USING PigStorage();   


