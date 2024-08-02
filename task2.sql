create database fantasy;
use fantasy;
CREATE TABLE movie_info(id int not null,movie_name varchar(60) unique,released_year int not null,director_name varchar(70),budget bigint constraint mv_budget check(budget>5000000));
ALTER TABLE movie_info ADD PRIMARY KEY(id);
SELECT * FROM movie_info;
DESC movie_info;
INSERT INTO movie_info VALUES(1,'Robbert',2022,'Tarun sudhir',6500000);
INSERT INTO movie_info VALUES(2,'Kantara',2023,'Rishab shetty',75000000);
INSERT INTO movie_info VALUES(3,'HHB',2023,'darshan aradya',55000000);
INSERT INTO movie_info VALUES(4,'SSA-side A',2023,'Rakshith shetty',70000000);
INSERT INTO movie_info VALUES(5,'SSA-side B',2024,'Rakshith shetty',80000000);
INSERT INTO movie_info VALUES(6,'Kateera',2023,'Tarun sudhir',80000000);
INSERT INTO movie_info VALUES(7,'Ghost',2023,'Nagendra babu',85000000);
INSERT INTO movie_info VALUES(8,'Shivaji Surathkal',2022,'Ramesh aravind',75000000);
INSERT INTO movie_info VALUES(9,'Mungalru male-2',2021,'jayanth kaykini',85000000);
INSERT INTO movie_info VALUES(10,'Head bush',2022,'Daali Dhanjay',7000000);

SELECT * FROM movie_info WHERE id BETWEEN 4 AND 10;
SELECT * FROM movie_info WHERE movie_name LIKE 'k%a';
SELECT * FROM movie_info WHERE movie_name LIKE '_%h';
SELECT * FROM movie_info ORDER BY budget DESC;
SELECT UPPER(director_name) as uppercase_dr_name FROM movie_info;
SELECT LOWER(movie_name) as lwrcase_mv_name FROM movie_info;
SELECT CONCAT(id,'  ',movie_name) as movie_detl FROM movie_info;	
SELECT LENGTH("Tarun sudhir") AS lengthDir;
CREATE INDEX cinema_info ON movie_info(id,movie_name);


CREATE TABLE movie_ticket(ticket_id int not null,movie_id int,name_movie varchar(30),no_of_tickets int constraint ticket_count check(no_of_tickets >0),price_of_ticket int,foreign key(movie_id)references movie_info(id));
DESC movie_ticket;
INSERT INTO movie_ticket VALUES(1101,2,'Kantara',4,200);
INSERT INTO movie_ticket VALUES(1102,1,'Robbert',3,250);
INSERT INTO movie_ticket VALUES(1103,3,'HHB',5,150);
INSERT INTO movie_ticket VALUES(1104,5,'SSA-side B',4,300);
INSERT INTO movie_ticket VALUES(1105,9,'Mungaru male-2',8,250);
INSERT INTO movie_ticket VALUES(1106,7,'Ghost',4,250);
INSERT INTO movie_ticket VALUES(1107,4,'SSA-side A',1,300);
INSERT INTO movie_ticket VALUES(1108,8,'Shivaji surathkal',5,150);
INSERT INTO movie_ticket VALUES(1109,10,'Head bush',6,300);
INSERT INTO movie_ticket VALUES(1110,6,'Kateera',4,1500);
SELECT * FROM movie_ticket;

SELECT * FROM movie_ticket WHERE ticket_id BETWEEN 1105 AND 1110;
SELECT * FROM movie_ticket WHERE name_movie LIKE 'S%';
SELECT * FROM movie_info WHERE movie_name LIKE '_%t';
SELECT * FROM movie_ticket ORDER BY no_of_tickets;
SELECT UPPER(name_movie) as uppercase_mv_name FROM movie_ticket;
SELECT LOWER(name_movie) as lwrcase_mv_name FROM movie_ticket;
SELECT CONCAT(ticket_id,'    ',name_movie,'    ',no_of_tickets) as ticket_invocie FROM movie_ticket;
SELECT LENGTH("Kantara") AS lengthMovie;
CREATE INDEX ticket_info ON movie_ticket(movie_id,name_movie,no_of_tickets);
