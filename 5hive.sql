

--5) Find the most popular top 10 job positions for H1B visa applications for each year?
--a) for all the applications


--FOR ALL APPLCIANTS
--------------------
INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 5a/2011' row format delimited fields terminated by ',' select job_title,year,count(case_status ) as job from project.h1b_final where year = '2011' group by job_title,year  order by job desc limit 10;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 5a/2012' row format delimited fields terminated by ',' select job_title,year,count(case_status ) as job from project.h1b_final where year = '2012' group by job_title,year  order by job desc limit 10;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 5a/2013' row format delimited fields terminated by ',' select job_title,year,count(case_status ) as job from project.h1b_final where year = '2013' group by job_title,year  order by job desc limit 10;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 5a/2014' row format delimited fields terminated by ',' select job_title,year,count(case_status ) as job from project.h1b_final where year = '2014' group by job_title,year  order by job desc limit 10;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 5a/2015' row format delimited fields terminated by ',' select job_title,year,count(case_status ) as job from project.h1b_final where year = '2015' group by job_title,year  order by job desc limit 10;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 5a/2016' row format delimited fields terminated by ',' select job_title,year,count(case_status ) as job from project.h1b_final where year = '2016' group by job_title,year  order by job desc limit 10;



