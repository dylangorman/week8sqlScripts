# temporarely joins tables together to make a sudo table to compare 
#tables etc. 

SELECT * FROM master32new.current_job_detail cjd 
INNER JOIN master32new.employee_detail ed 
ON cjd .employee_id = ed.Employee_ID ;


SELECT 1 + 1 AS sum_total

#adds ups salary of specific job titles together 
SELECT job_title, MAX(salary) 
FROM master32new.current_job_detail cjd
GROUP BY job_title;


#MIN - shows minium of data
#MAX - shows maximum of data
#SUM - Sums data up



SELECT job_title, COUNT(*)
FROM master32new.current_job_detail cjd 
GROUP BY job_title;


#ACTIVITIES 
#1) Return a table linking laptop_detail and current_job_detail
SELECT * FROM master32new.laptop_detail ld 
INNER JOIN master32new.current_job_detail cjd 
#2


#2) Return a table of only the employees that own a Mac
SELECT * 
FROM master32new.laptop_detail ld
	INNER JOIN master32new.current_job_detail cjd
	ON ld.laptop_id = cjd.laptop_id 
	WHERE ld.os = 'Mac';

#3) Return a table of all the employees that were an apprentice developer but are now a developer
SELECT *
FROM master32new.jobs_history jh 
INNER JOIN master32new.current_job_detail cjd 
ON jh.employee_id = cjd.employee_id 
WHERE jh.job_title = 'Apprentice Developer' AND cjd.job_title = 'Developer';

#4) Return a table of all the employees that weren’t a developer and now are 
SELECT *
FROM master32new.jobs_history jh 
INNER JOIN master32new.current_job_detail cjd 
ON jh.employee_id = cjd.employee_id 
WHERE jh.job_title NOT LIKE '%eveloper%' AND cjd.job_title LIKE '%eveloper%';

#EXTENSION 1) Return a table of all the employees that have had more then one job title (not using aggregates)
SELECT * 
FROM master32new.jobs_history jh 
INNER JOIN master32new.current_job_detail cjd 
ON jh.employee_id = cjd.employee_id 
WHERE jh.employee_id * 2;
