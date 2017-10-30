--7) Create a bar graph to depict the number of applications for each year [All]


INSERT OVERWRITE LOCAL DIRECTORY '/home/hduser/Project/Hive/Question7 ' row format delimited fields terminated by ',' select year, count(*) from project.h1b_final group by year order by year;


