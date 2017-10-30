
 -- 2b) find top 5 locations in the US who have got certified visa for each year.[certified]

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 2b/2011' row format delimited fields terminated by ',' select worksite,case_status,count(case_status) as job,year from project.h1b_final where year ='2011' and case_status='CERTIFIED' group by worksite,case_status,year order by job desc limit 5;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 2b/2012' row format delimited fields terminated by '/t' select worksite,case_status,count(case_status) as job,year from project.h1b_final where year ='2012' and case_status='CERTIFIED' group by worksite,case_status,year order by job desc limit 5;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 2b/2013' row format delimited fields terminated by ',' select worksite,case_status,count(case_status) as job,year from project.h1b_final where year ='2013' and case_status='CERTIFIED' group by worksite,case_status,year order by job desc limit 5;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 2b/2014' row format delimited fields terminated by ',' select worksite,case_status,count(case_status) as job,year from project.h1b_final where year ='2014' and case_status='CERTIFIED' group by worksite,case_status,year order by job desc limit 5;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 2b/2015' row format delimited fields terminated by ',' select worksite,case_status,count(case_status) as job,year from project.h1b_final where year ='2015' and case_status='CERTIFIED' group by worksite,case_status,year order by job desc limit 5;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 2b/2016' row format delimited fields terminated by ',' select worksite,case_status,count(case_status) as job,year from project.h1b_final where year ='2016' and case_status='CERTIFIED' group by worksite,case_status,year order by job desc limit 5;





