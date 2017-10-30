 

--2 a) Which part of the US has the most Data Engineer jobs for each year?
----------------------------------------------------------------------------------------

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 2a/2011' row format delimited fields terminated by ',' select worksite,job_title,count(job_title) as job,year from project.h1b_final where year ='2011' and job_title ='DATA ENGINEER' group by worksite,job_title,year order by job desc limit 1;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 2a/2012' row format delimited fields terminated by ',' select worksite,job_title,count(job_title) as job,year from project.h1b_final where year ='2012' and job_title ='DATA ENGINEER' group by worksite,job_title,year order by job desc limit 1;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 2a/2013' row format delimited fields terminated by ',' select worksite,job_title,count(job_title) as job,year from project.h1b_final where year ='2013' and job_title ='DATA ENGINEER' group by worksite,job_title,year order by job desc limit 1;


INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 2a/2014' row format delimited fields terminated by ',' select worksite,job_title,count(job_title) as job,year from project.h1b_final where year ='2014' and job_title ='DATA ENGINEER' group by worksite,job_title,year order by job desc limit 1;


INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 2a/2015' row format delimited fields terminated by ',' select worksite,job_title,count(job_title) as job,year from project.h1b_final where year ='2015' and job_title ='DATA ENGINEER' group by worksite,job_title,year order by job desc limit 1;


INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 2a/2016' row format delimited fields terminated by ',' select worksite,job_title,count(job_title) as job,year from project.h1b_final where year ='2016' and job_title ='DATA ENGINEER' group by worksite,job_title,year order by job desc limit 1;

