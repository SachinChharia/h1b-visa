
--6) Find the percentage and the count of each case status on total applications for each year. Create a line graph depicting the pattern of
 --All the cases over the period of time.

register /usr/local/hive/lib/hive-exec-1.2.1.jar

register /usr/local/hive/lib/hive-common-1.2.1.jar

data1 = LOAD 'hdfs://localhost:54310/user/hive/warehouse/project.db/h1b_final' USING PigStorage('\t') as (s_no:double,case_status:chararray,employer_name:chararray,soc_name:chararray,job_title:chararray,full_time_position:chararray,prevailing_wage:double,year:chararray,worksite:chararray,longitude,latitude);



temp = group data1 by $7;

total= foreach temp generate group,COUNT($1);

--describe total;

--dump total;



temp1= group data1 by ($7,$1);

yearsoccount= foreach temp1 generate group,group.$0,COUNT($1);

--dump yearsoccount;

joined= join yearsoccount by $1,total by $0;

ans= foreach joined generate FLATTEN($0),(float)($2*100)/$4,$2;
--percent generation

dump ans;

--store ans into '/home/hduser/niit/pig/Question6' USING PigStorage();


