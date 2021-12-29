use naidudb;

-- usage of CREATE 

-- creating a table 
 create table worker_details(WORKER_ID int, FIRST_NAME varchar(30), LAST_NAME varchar(30), SALARY int , 
	 JOINING_DATE timestamp, DEPARTMENT varchar(20) not null);

-- describe worker details     
desc worker_details;  

-- usage of ALTER 

-- creating a table 
-- adding column
alter table worker_details add remarks varchar(20);
desc worker_details;

-- usage DROP

-- dropping a column
alter table worker_details drop remarks;
desc worker_details;
-- modify a column
alter table worker_details modify FIRST_NAME double;
desc worker_details;
-- modify a column
alter table worker_details modify FIRST_NAME varchar(20);
desc worker_details;
-- add a column after specific column
alter table worker_details rename column SALARY to gender;
desc worker_details;
-- add a column after specific column
alter table worker_details rename column gender to SALARY;
desc worker_details;
-- changing the table name 
alter table worker_details rename to worker_data;
desc worker_data;

-- inserting data in the table     
insert into worker_details values(1,'mounika','arora', 100000, '2014-02-22 09:00:00' ,'HR'),
								 (2,'niharika','verma', 80000, '2014-06-11 09:00:00' ,'admin'),
								 (3,'vishal','singhal', 300000, '2014-02-20 09:00:00' ,'HR'),
								 (4,'amithab','singh', 500000, '2014-02-20 09:00:00' ,'admin'),
								 (5,'vivek','bhati', 500000, '2014-06-11 09:00:00' ,'admin'),
								 (6,'satish','kumar', 75000, '2014-02-22 09:00:00' ,'account'),
								 (7,'geetika','chauhan', 90000, '2014-04-11 09:00:00' ,'admin');
select * from worker_details;
desc worker_details;

-- usage of TRUNCATE
--  for removing the data in the table
truncate table worker_details;
