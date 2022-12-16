-- Creating a simple table
create table student(
student_id int primary key,
student_fname varchar(20),
student_lname varchar(20)
);

-- Creating a table using different constraints
create table student(
student_id int auto_increment,
student_fname varchar(20) unique,
student_lname varchar(20) DEFAULT 'Undecided',
primary key(student_id)
);

-- Fetching all the columns
select * from student;

-- Fetching all the columns with limited rows
select * from student limit 2;

-- Fetching all the columns in ascending order
select * from student order by age;

-- Adding a new column
alter table student
add age int;


-- Inserting data into different columns
insert into student(student_fname, student_lname, age)
VALUES('Daniyal', 'Ali', 21);
insert into student(student_fname, student_lname, age)
VALUES('Jahangeer', 'Khan', 20);
insert into student(student_fname, student_lname, age)
VALUES('Muzzamil', 'Ali', 16);
insert into student(student_fname, student_lname, age)
VALUES('Soaib', 'Ameen', 12);
insert into student(student_fname, student_lname, age)
VALUES('Ayan', 'Khan', 8);
insert into student(student_fname, student_lname, age)
VALUES('Haris', 'Khan', 7);
insert into student(student_fname, student_lname, age)
VALUES('Arman', 'Khan', 6);

-- Fetching Data in different ways
select * from student where age>10 limit 3;
select * from student where age = 16 and student_lname = 'Ali';
select * from student where student_lname IN ('Khan');
select * from student where student_fname IN ('Ayan', 'Arman', 'Haris') and age>6;


--Using Aggregation Functions

--Fetching count of records
select COUNT(age) from student;
--Fetching sum of Ages
select SUM(age) from student;
--Fetching Maximum Age
select MAX(age) from student;
--Fetching Minimum Age
select MIN(age) from student;
--Fetching Average Age
select AVG(age) from student;

--Sorting the data in Ascending Order
select * from student order by age;
--Sorting the data in Descending Order
select * from student order by age desc;

-- Updating a specific column
update student set student_lname = 'Ali' where student_id = 4;

-- Deleting a specific row
delete from student where student_id = 4;
delete from student where student_id = 3;

-- Removing an existing column from the table
alter table student drop column age; 

-- Removing all the data of a table
TRUNCATE table student;

-- Deleting the table
drop table student;
