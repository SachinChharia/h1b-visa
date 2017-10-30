--9) Which are the employers along with the number of petitions who have the success rate more than 70%  in petitions. (total petitions filed --1000 OR more than 1000) ?

register /usr/local/hive/lib/hive-exec-1.2.1.jar

register /usr/local/hive/lib/hive-common-1.2.1.jar

data1 = LOAD 'hdfs://localhost:54310/user/hive/warehouse/project.db/h1b_final' USING PigStorage('\t') as (s_no:double,case_status:chararray,employer_name:chararray,soc_name:chararray,job_title:chararray,full_time_position:chararray,prevailing_wage:double,year:chararray,worksite:chararray,longitude,latitude);


temp= group data1 by $2;

total= foreach temp generate group,COUNT($1); 

--Group by employername and count the case statuses as a whole

certified= filter data1 by $1 == 'CERTIFIED';

temp1= group certified by $2;

totalcertified= foreach temp1 generate group,COUNT(certified.$1); 

--Group by employername and count the case status = 'CERTIFIED'

certified= filter data1 by $1 == 'CERTIFIED-WITHDRAWN';


temp2= group certified by $2;

totalcertifiedwithdrawn= foreach temp2 generate group,COUNT(certified.$1); 

--Group by employername and count the case status = 'CERTIFIED-WITHDRAWN'

joined= join totalcertified by $0,totalcertifiedwithdrawn by $0,total by $0;

--dump joined;

joined2 = foreach joined generate $0,$1,$3,$5;

--SUCCESS_RATE=(CERTIFIED+CERTIFIED-WITHDRAWN)/TOTAL X 100

intermediateoutput= foreach joined2 generate $0,(float)($1+$2)*100/($3),$3;

intermediateoutput2= filter intermediateoutput by $1>70 and $2>=1000;

 --Filter by success-rate greater than 70% and petition count equal and above 1000

finaloutput= order intermediateoutput2 by $1 DESC;

dump finaloutput;


--store finaloutput into '/home/hduser/niit/pig/Question9' USING PigStorage();


