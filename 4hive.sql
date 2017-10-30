--4)Which top 5 employers file the most petitions each year? - Case Status - ALL

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 4/2011' row format delimited fields terminated by ',' select employer_name, year,count(case_status) as temp from project.h1b_final where year = '2011' group by employer_name,year order by temp desc limit 5;


INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 4/2012' row format delimited fields terminated by ',' select employer_name, year,count(case_status) as temp from project.h1b_final where year = '2012' group by employer_name,year order by temp desc limit 5;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 4/2013' row format delimited fields terminated by ',' select employer_name, year,count(case_status) as temp from project.h1b_final where year = '2013' group by employer_name,year order by temp desc limit 5;


INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 4/2014' row format delimited fields terminated by ',' select employer_name, year,count(case_status) as temp from project.h1b_final where year = '2014' group by employer_name,year order by temp desc limit 5;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 4/2015' row format delimited fields terminated by ',' select employer_name, year,count(case_status) as temp from project.h1b_final where year = '2015' group by employer_name,year order by temp desc limit 5;

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question 4/2016' row format delimited fields terminated by ',' select employer_name, year,count(case_status) as temp from project.h1b_final where year = '2016' group by employer_name,year order by temp desc limit 5;
