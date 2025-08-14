create  database mydb4;
use mydb4;
create table company(
 companyId int primary key,
 companyname varchar(45),
 street varchar(45),
 city varchar(45),
 state varchar(45),
 zip varchar(10)
);

insert into company
values (1, 'Urban Outfitters, Inc.', '500 Fashion Ave', 'New York', 'NY', '10018'),
(2, 'Amazon', '410 Terry Ave N', 'Seattle', 'WA', '98109'),
(3, 'Google', '1600 Amphitheatre Pkwy', 'Mountain View', 'CA', '94043'),
(4, 'Tesla', '3500 Deer Creek Rd', 'Palo Alto', 'CA', '94304'),
(5, 'Apple', '1 Apple Park Way', 'Cupertino', 'CA', '95014'),
(6, 'Microsoft', '1 Microsoft Way', 'Redmond', 'WA', '98052'),
(7, 'Netflix', '100 Winchester Cir', 'Los Gatos', 'CA', '95032'),
(8, 'Coca-Cola', '1 Coca Cola Plz NW', 'Atlanta', 'GA', '30313'),
(9, 'Nike', '1 Bowerman Dr', 'Beaverton', 'OR', '97005'),
(10, 'Meta Platforms', '1 Hacker Way', 'Menlo Park', 'CA', '94025');

# 1) Statement to create the Contact table 

CREATE TABLE Contact (
    ContactID INT PRIMARY KEY,
    CompanyID INT,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    Street VARCHAR(45),
    City VARCHAR(45),
    State CHAR(2),
    Zip VARCHAR(10),
    IsMain BOOLEAN,
    Email VARCHAR(45),
    Phone VARCHAR(12),
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

insert into contact
value (101, 1, 'Aarohi', 'Sharma', '45 Marine Dr', 'Mumbai', 'MH', '400021', TRUE, 'aarohi.sharma@ril.com', '022-555-1234'),
(102, 2, 'Diya', 'Mehta', '12 Fort Rd', 'Mumbai', 'MH', '400001', FALSE, 'diya.mehta@tcs.com', '022-555-5678'),
(103, 3, 'Isha', 'Reddy', '89 IT Park', 'Bengaluru', 'KA', '560100', TRUE, 'isha.reddy@infosys.com', '080-555-7890'),
(104, 4, 'Kavya', 'Nair', '67 Lake View', 'Bengaluru', 'KA', '560035', TRUE, 'kavya.nair@wipro.com', '080-555-2345'),
(105, 5, 'Meera', 'Gupta', '12 Golf Course Rd', 'Noida', 'UP', '201301', FALSE, 'meera.gupta@hcl.com', '120-555-9876'),
(106, 6, 'Ananya', 'Patil', '15 Green Park', 'Mumbai', 'MH', '400101', TRUE, 'ananya.patil@mahindra.com', '022-555-5566'),
(107, 7, 'Riya', 'Joshi', '88 Shantigram', 'Ahmedabad', 'GJ', '382421', FALSE, 'riya.joshi@adani.com', '079-555-6677'),
(108, 8, 'Priya', 'Verma', '35 Connaught Pl', 'New Delhi', 'DL', '110046', TRUE, 'priya.verma@airtel.com', '011-555-9988'),
(109, 9, 'Sneha', 'Desai', '120 Godrej Rd', 'Mumbai', 'MH', '400079', FALSE, 'sneha.desai@godrej.com', '022-555-7766'),
(110, 10, 'Tanvi', 'Kapoor', '55 Dairy Rd', 'Anand', 'GJ', '388001', TRUE, 'tanvi.kapoor@amul.com', '692-555-8899');

# 2) Statement to create the Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    Salary DECIMAL(10,2),
    HireDate DATE,
    JobTitle VARCHAR(25),
    Email VARCHAR(45),
    Phone VARCHAR(12)
);
insert into employee
 value (201, 'Aarohi', 'Shah', 55000.00, '2018-05-15', 'Sales Manager', 'aarohi.shah@ril.com', '022-525-8800'),
(202, 'Diya', 'Menon', 62000.00, '2017-09-01', 'Marketing Executive', 'diya.menon@tcs.com', '022-555-9900'),
(203, 'Isha', 'Rao', 72000.00, '2019-03-10', 'Project Manager', 'isha.rao@infosys.com', '080-555-3344'),
(204, 'Kavya', 'Iyer', 48000.00, '2020-06-25', 'Sales Associate', 'kavya.iyer@wipro.com', '080-555-6677'),
(205, 'Meera', 'Bhatia', 53000.00, '2021-01-18', 'HR Specialist', 'meera.bhatia@hcl.com', '120-555-7722'),
(206, 'Ananya', 'Kulkarni', 80000.00, '2016-11-05', 'Operations Head', 'ananya.kulkarni@mahindra.com', '022-555-1100'),
(207, 'Riya', 'Chopra', 60000.00, '2019-09-14', 'Content Creator', 'riya.chopra@adani.com', '079-555-4422'),
(208, 'Priya', 'Bhatt', 75000.00, '2015-04-02', 'Team Lead', 'priya.bhatt@airtel.com', '011-555-2233'),
(209, 'Sneha', 'Agarwal', 68000.00, '2018-08-22', 'Finance Manager', 'sneha.agarwal@godrej.com', '022-555-8899'),
(210, 'Tanvi', 'Malhotra', 50000.00, '2022-02-11', 'Product Designer', 'tanvi.malhotra@amul.com', '692-555-3344');

#3) Statement to create the ContactEmployee table
#HINT: Use DATE as the datatype for ContactDate. It allows you to store the
#date in this format: YYYY-MM-DD (i.e., ‘2014-03-12’ for March 12, 2014). 

CREATE TABLE ContactEmployee (
    ContactEmployeeID INT PRIMARY KEY,
    ContactID INT,
    EmployeeID INT,
    ContactDate DATE,
    Description VARCHAR(100),
    FOREIGN KEY (ContactID) REFERENCES Contact(ContactID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
insert into contactemployee
 value (301, 101, 202, '2023-03-12', 'Meeting to discuss new retail expansion strategy'),
(302, 102, 201, '2023-04-18', 'Call regarding marketing campaign for Diwali season'),
(303, 103, 203, '2023-05-20', 'Project kickoff meeting for digital transformation'),
(304, 104, 204, '2023-06-15', 'Discussion about IT infrastructure upgrade'),
(305, 105, 205, '2023-07-10', 'HR workshop for employee engagement'),
(306, 106, 206, '2023-08-01', 'Operational review for supply chain efficiency'),
(307, 107, 207, '2023-08-12', 'Content strategy planning for social media'),
(308, 108, 208, '2023-08-25', 'Team leadership meeting for new project launch'),
(309, 109, 209, '2023-09-02', 'Financial performance review for Q3'),
(310, 110, 210, '2023-09-15', 'Product design presentation for eco-friendly packaging');


#4) In the Employee table, the statement that changes Aarohi's phone number to 215-555-8800 .

update employee
set phone = "215-555-8800"
where firstname = "aarohi";
 select * from employee;
 
 #5) In the Company table, the statement that changes the name of “Urban Outfitters, Inc.” to “Urban Outfitters” .
 update company
 set companyname = "urban outfitters"
 where companyname = "Urban Outfitters,Inc.";
 select * from company;
 
 
# 6) In ContactEmployee table, the statement that removes aarohi contact event with diya (one statement).
# HINT: Use the primary key of the ContactEmployee table to specify the correct record to remove.

delete  from contactemployee
where contactid in (101,102);
select * from contactemployee;

#7) Write the SQL SELECT query that displays the names of the employees thathave contacted Toll Brothers (one statement). Run the SQL SELECT query in MySQL Workbench. Copy the results below as well.  
select employee.firstname
from employee
join contact
on employee.employeeid = contact.contactid
where contact.firstname = "toll brother";

#8) What is the significance of “%” and “_” operators in the LIKE statement? 
# ans:- '"%" matches zero , one , or many characters.and " _" matches exactly one character

#9) Explain normalization in the context of databases.
# ans :- Normalization is the process of organizing data in a database to reduce data redundancy(dublicate) and improve data integrity. 

#10) What does a join in MySQL mean?
# ans :- A JOIN in MySQL is a way to retrieve related data from multiple tables by combining them through shared columns (usually primary and foreign keys).

#11)What do you understand about DDL, DCL, and DML in MySQL?
# ans :- DDl - Defines or changes the structure of the database tables ( CREATE	Create a new table or database ( drop ,alter,create,truncate)
#        DCL - Controls access to data, especially for security and permissions. ( revloke, grant)
#        DML - Deals with data inside the tables (insert, update, delete, read)


#12) What is the role of the MySQL JOIN clause in a query, and what are someommon types of joins? 
# ans : - e JOIN clause in MySQL is used to combine rows from two or more tables based on a related column between them — usually a primary key in one table and a foreign key in another.
# type : - inner join , full join , left join , right join











