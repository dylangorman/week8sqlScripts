-- # temporarely joins tables together to make a sudo table to compare 
-- #tables etc. 

SELECT * FROM master32new.current_job_detail cjd 
INNER JOIN master32new.employee_detail ed 
ON cjd .employee_id = ed.Employee_ID ;


-- SELECT 1 + 1 AS sum_total

-- #adds ups salary of specific job titles together 
SELECT job_title, MAX(salary) 
FROM master32new.current_job_detail cjd
GROUP BY job_title;


-- #MIN - shows minium of data
-- #MAX - shows maximum of data
-- #SUM - Sums data up

SELECT job_title, COUNT(*)
FROM master32new.current_job_detail cjd 
GROUP BY job_title;


-- #ACTIVITIES 
-- #1) Return a table linking laptop_detail and current_job_detail
SELECT * FROM master32new.laptop_detail ld 
INNER JOIN master32new.current_job_detail cjd 
-- #1 neil
SELECT * FROM laptop_detail_csv ldc 
INNER JOIN current_job_detail_csv cjdc 
ON ldc.laptop_id = cjdc.laptop_id;

-- #2) Return a table of only the employees that own a Mac
SELECT * 
FROM master32new.laptop_detail ld
	INNER JOIN master32new.current_job_detail cjd
	ON ld.laptop_id = cjd.laptop_id 
	WHERE ld.os = 'Mac';

-- #3) Return a table of all the employees that were an apprentice developer but are now a developer
SELECT *
FROM master32new.jobs_history jh 
INNER JOIN master32new.current_job_detail cjd 
ON jh.employee_id = cjd.employee_id 
WHERE jh.job_title = 'Apprentice Developer' AND cjd.job_title = 'Developer';

-- #4) Return a table of all the employees that weren’t a developer and now are 

SELECT *
FROM master32new.jobs_history jh 
INNER JOIN master32new.current_job_detail cjd 
ON jh.employee_id = cjd.employee_id 
WHERE jh.job_title NOT LIKE '%eveloper%' AND cjd.job_title LIKE '%eveloper%';

-- neils solution
SELECT * FROM jobs_history jh
INNER JOIN jobs_history jh2
INNER JOIN employee_detail ed
ON jh.employee_id = jh2.employee_id
AND jh.Employee_ID = ed.Employee_ID
WHERE jh.job_title = "Apprentice Developer" AND jh2.job_title = "Developer";

-- #EXTENSION 1) Return a table of all the employees that have had more then one job title (not using aggregates)
SELECT * 
FROM master32new.current_job_detail cjd 
INNER JOIN master32new.jobs_history jh 
ON jh.employee_id = cjd.employee_id 
WHERE jh.job_title != cjd.job_title;

-- extension 2 Look in your table, you may have duplicates. Remove them.

SELECT DISTINCT cjd.employee_id, cjd.job_title FROM master32new.current_job_detail cjd 
INNER JOIN master23new.jobs_history jh 
ON cjd.employee_id = jh.employee_id
WHERE jh.job_title != cjd.job_title;

-- #ACTIVITIES PAGE 90
-- #1) Return a table of the max salary by job type
SELECT job_title, MAX(salary) FROM  master32new.current_job_detail cjd
GROUP BY job_title;

-- #2) Return a table counting how many people have each OS
SELECT job_title, os, COUNT(os) FROM master32new.current_job_detail cjd
INNER JOIN master32new.laptop_detail ld
ON cjd.laptop_id  = ld.laptop_id 
GROUP BY job_title, os;

-- #3) Return a table of the average salary of staff members that have at
-- #some point been an apprentice developer
SELECT cjd.job_title, AVG(salary) FROM master32new.current_job_detail cjd 
INNER JOIN master32new.jobs_history jh 
ON cjd.employee_id = jh.employee_id
WHERE jh.job_title = 'Apprentice Developer' 
GROUP by job_title ;

-- #Extension
-- #1) Return a row of data containing the name of the person with the
-- #highest salary (don’t just eyeball the table and select an employee id) 

SELECT name
FROM master32new.employee_detail ed
INNER JOIN master32new.current_job_detail cjd 
ON cjd.employee_id = ed.employee_ID
ORDER BY cjd.salary DESC 
LIMIT 1;

-- 2) Do the same for the highest salary by job type

SELECT job_title
FROM master32new.current_job_detail cjd
INNER JOIN master32new.employee_detail ed
ON cjd.employee_id = ed.employee_ID
ORDER BY cjd.salary DESC 
LIMIT 1;
