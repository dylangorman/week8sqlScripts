#SELECTORS
#SELECT * FROM master32new.current_job_detail cjd 
#SELECT * FROM master32new.employee_detail ed
#SELECT * FROM master32new.jobs_history jh 
#SELECT * FROM master32new.laptop_detail ld 

#notes
#IN/NOT IN
#SELECT * FROM master
#   % is a wild card character

#example
#salary under 35K and job developer
#WHERE salary <= 35000
#AND job_title = "Developer";

#1. read all tables

#2. Return a table of all of the tech leads
#WHERE job_title = 'Tech Lead';

#3) Return a table of all of the female employees
#WHERE gender = "F";

#4) Return a table of all the employees that name starts with an S
#WHERE Name LIKE 's%';
 
#5) Return a table of all the employees that have ever been a developer
#WHERE job_title LIKE '%eveloper%';  (minus the D in Developer)

#6) Return a table of all the laptop ids that run Ubuntu as an OS
#Extension
#WHERE os = "Ubuntu";

#7) Return a table of all the employees whose name starts with A or S
#WHERE Name LIKE'a%' OR Name LIKE 's%'