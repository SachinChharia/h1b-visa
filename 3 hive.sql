
--3)Which industry(SOC_NAME) has the most number of Data Scientist positions?
--[certified]
----------------------------------------------------------------------------

INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question3' row format delimited fields terminated by ',' select soc_name,job_title,count(job_title) as temp , case_status from project.h1b_final where job_title ='DATA SCIENTIST' and case_status= 'CERTIFIED' group by soc_name,job_title,case_status order by temp desc;
