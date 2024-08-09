create database xworkz;
use xworkz;
create table supermarket(id int,sm_name varchar(60),location varchar(70),pincode bigint,manager_name varchar(90),no_of_employee int);
insert into supermarket values(101,'more','Rajajinagar',560031,'nisarga',20);
insert into supermarket values(102,'Kempegowda market','Rajarajeswarinagar',560051,'neha',10);
insert into supermarket values(103,'city hopcoms','Jaynagar',560041,'sneha',20);
insert into supermarket values(104,'city center market','JPnagar',560021,'namratha',15);
insert into supermarket values(105,'sv super market','hampinagar',560011,'nisha',20);
insert into supermarket values(106,'more','vijaynagar',560211,'nirmala',10);
insert into supermarket values(107,'green house','banashankari',560091,'sushma',20);
insert into supermarket values(108,'more','whitefield',560221,'nivya',20);
insert into supermarket values(109,'kg hopcoms','kempegowdanagar',560031,'nisarga',20);
insert into supermarket values(110,'more','Rajajinagar',560031,'bhoomika',20);
insert into supermarket values(111,'veggie mania','Rajajinagar',560071,'ananya',20);
insert into supermarket values(112,'zepto','Rajajinagar',560081,'sneha',10);
insert into supermarket values(113,'blinkit','GTnagar',560031,'nisarga',20);
insert into supermarket values(114,'namma market','chamarajpete',560031,'anusha',50);
insert into supermarket values(115,' sg more','padmanabh nagar',560511,'kavana',20);
insert into supermarket values(116,'gt more','Rajajinagar',560661,'nesara',20);
insert into supermarket values(117,'nt more','Rajajinagar',560631,'krishna',20);
insert into supermarket values(118,'vr more','Rajajinagar',560731,'kesiya',20);
insert into supermarket values(119,'nm more','Rajajinagar',560831,'kavya',20);
insert into supermarket values(120,'ss more','Rajajinagar',560931,'keerthi',20);
select count(*) as count_sm ,pincode from supermarket group by location;
create table employee_details(emp_id int,emp_name varchar(50),address varchar(90),email_address varchar(100),salary bigint,contact_num bigint);
insert into employee_details values(401,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(401,'nesara','garthikere','nesara@gmail.com',50000,8867671256);
insert into employee_details values(402,'neha','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(403,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(404,'nisha','Davangere','nisha11@gmail.com',20000,8867346256);
insert into employee_details values(405,'keerthi','Davangere','nirmala@gmail.com',30000,8867341256);
insert into employee_details values(406,'sneha','Bhadravathi','sneha@gmail.com',20000,8867341256);
insert into employee_details values(407,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(408,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(409,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(410,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(411,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(412,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(413,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(414,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(415,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(416,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(417,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(418,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(419,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
insert into employee_details values(420,'nirmala','Davangere','nirmala@gmail.com',20000,8867341256);
select sum(salary)as total_sal from employee_details group by address;
select max(salary) from employee_details group by address;
select avg(salary) as avg_salary from employee_details group by address;

/*having clause: for filtering
select distinct from where order by group by ----> order of execution 
*/
select sum(salary)as total_sal from employee_details group by emp_name having total_sal >10000;
/*coalesce:it will return non-null values 
*/
select coalesce(null,null,null,null,null,null,null,null);/* it takes any number o parameters
select ifnull(null,3);
select coalesce(emp_id,salary) from employee_details;


/*ifnull will return the first non null value*/
select ifnull(null,6); /*it will accept 2 parameters only