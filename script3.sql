-- # temporarely joins tables together to make a sudo table to compare 
-- #tables etc. 

SELECT * FROM master32new.current_job_detail cjd 
INNER JOIN master32new.employee_detail ed 
ON cjd.employee_id = ed.Employee_ID ;


-- SELECT 1 + 1 AS sum_total

-- #adds ups salary of specific job titles together 
SELECT job_title, SUM(salary) 
FROM master32new.current_job_detail cjd
GROUP BY job_title;


-- #MIN - shows minium of data
-- #MAX - shows maximum of data
-- #SUM - Sums data up



SELECT job_title, COUNT(*)
FROM master32new.current_job_detail cjd 
GROUP BY job_title;

