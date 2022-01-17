-- # creates a new table
CREATE TABLE master32new.my_fav_employees (
employee_id INT PRIMARY KEY, 
job_title VARCHAR(64)
);

-- #selects and inserts info into a table
INSERT INTO master32new.my_fav_employees 
	SELECT employee_id, job_title FROM master32new.current_job_detail 
	WHERE employee_id  IN (1001, 1002);

-- #reads table and prints
SELECT employee_id, job_title FROM master32new.current_job_detail cjd 
WHERE employee_id IN (1001, 1002);

-- # inserts specific DATA typed in sql into table
INSERT INTO master32new.my_fav_employees  (employee_id, job_title)
VALUES (1003, "Developer")


-- # deletes specific item from table 
DELETE FROM master32new.my_fav_employees WHERE employee_id = 1003;


-- # deletes table and all of its data
DROP TABLE master32new.my_fav_employees;