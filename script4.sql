-- #ACTIVITIES

-- #1) Create a table called great_names with 2 columns name and employee_id
-- CREATE TABLE master32new.great_names(
name VARCHAR(64),
employee_id INT PRIMARY KEY
);
-- #2) Insert 5 employees with great names into your table (your choice*)
INSERT INTO master32new.great_names 
	SELECT name, employee_id FROM master32new.employee_detail 
	WHERE Employee_ID IN (1001, 1002, 1003, 1004, 1005)
	
-- #3) Delete one of the employees out of your table based on their
-- #employee_id	
	
DELETE FROM master32new.great_names WHERE employee_id = 1001;	
	
-- #EXTENSIONS
-- #1) Recreate your table with an extra column called great_name_ind

-- my solution
#DROP TABLE master32new.great_names 
CREATE TABLE master32new.great_names(
name VARCHAR(64),
employee_id INT PRIMARY KEY,
great_name_ind VARCHAR(64)
);

-- Neils solution
ALTER TABLE master32new.great_names
ADD COLUMN great_name_ind VARCHAR(1);

-- my solution
-- #EXT #2
INSERT INTO master32new.great_names  (employee_id,name,great_name_ind)
#VALUES (1001,'Joe','Y');
#VALUES (1002,'Adam','Y');
#VALUES (1003,'Debra','Y');
#VALUES (1004,'Charlotte','Y');
#VALUES (1005,'Katie','Y');

-- neils souotion
UPDATE great_names SET great_name_ind = "Y";


-- #EXT 3
UPDATE master32new.great_names 
SET great_name_ind = 'N'
WHERE employee_id = 1001

