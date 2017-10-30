
--5) Find the most popular top 10 job positions for H1B visa applications for each year?
--b) for only certified applications.

--FOR CERTIFIED APPLCIANTS
------------------------

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 5b/2011' row format delimited fields terminated by ',' select job_title,year,case_status,count(case_status) as job from project.h1b_final where year = '2011' and case_status='CERTIFIED' group by job_title,year,case_status  order by job desc limit 10; 

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 5b/2012' row format delimited fields terminated by ',' select job_title,year,case_status,count(case_status) as job from project.h1b_final where year = '2012' and case_status='CERTIFIED' group by job_title,year,case_status  order by job desc limit 10; 

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 5b/2013' row format delimited fields terminated by ',' select job_title,year,case_status,count(case_status) as job from project.h1b_final where year = '2013' and case_status='CERTIFIED' group by job_title,year,case_status  order by job desc limit 10; 

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 5b/2014' row format delimited fields terminated by ',' select job_title,year,case_status,count(case_status) as job from project.h1b_final where year = '2014' and case_status='CERTIFIED' group by job_title,year,case_status  order by job desc limit 10; 

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 5b/2015' row format delimited fields terminated by ',' select job_title,year,case_status,count(case_status) as job from project.h1b_final where year = '2015' and case_status='CERTIFIED' group by job_title,year,case_status  order by job desc limit 10; 

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 5b/2016' row format delimited fields terminated by ',' select job_title,year,case_status,count(case_status) as job from project.h1b_final where year = '2016' and case_status='CERTIFIED' group by job_title,year,case_status  order by job desc limit 10; 


