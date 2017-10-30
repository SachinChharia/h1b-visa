

--1 a) Is the number of petitions with Data Engineer job title increasing over time?

select year,count(year),job_title from h1b_final where job_title = 'DATA ENGINEER' group by year,job_title order by year;





