/*enum datatype is used to set the limit to select the mentioned data only, enmu('online,'offline')
upsert : update or insert
if data is present in the table , then it will update data.
if data is not present in the table , then it will insert the data*/
CREATE DATABASE hotel;
USE hotel;
CREATE DATABASE restuarant;
use  restuarant;
CREATE TABLE order_info(id int,order_name varchar(50),cost bigint,order_id int,created_at timestamp,created_by varchar(60),modified_at timestamp,modified_by varchar(70),primary key(order_id));
DESC order_info;
INSERT INTO order_info VALUES(1,'pasta',200,301,now(),'neha',now(),'mohan');
SELECT * FROM order_info;
INSERT INTO order_info VALUES(2,'macroni',18,302,now(),'sneha',now(),'sohan');
INSERT INTO order_info VALUES(3,'pizza',180,303,now(),'sia',now(),'sanvi');
INSERT INTO order_info VALUES(4,'biriyani',200,304,now(),'nisarga',now(),'satya');
INSERT INTO order_info VALUES(5,'dessert',230,305,now(),'swetha',now(),'navya');
CREATE TABLE payment(id int,paymnet_id int primary key,order_id int,payment_status boolean,created_by varchar(50),created_at timestamp,modified_at varchar(50),modified_by varchar(60),foreign key(order_id) references order_info(order_id) on delete cascade on update cascade);
DESC payment;
INSERT INTO payment VALUES(1,5501,303,true,'menakha singh',now(),now(),'neha');
INSERT INTO payment VALUES(2,5502,302,true,'parul singh',now(),now(),'sneha');
INSERT INTO payment VALUES(3,5503,301,false,'sahana',now(),now(),'swetha');
INSERT INTO payment VALUES(4,5504,305,true,'navya patel',now(),now(),'nisarga');
INSERT INTO payment VALUES(5,5505,304,true,'mehali',now(),now(),'minchu');
SELECT * FROM payment;
CREATE TABLE restuarant_info(id int,restuarant_name varchar(80),restuarant_id int primary key,location varchar(80),order_id int,ratings int,payment_id int,created_by varchar(60),created_at timestamp,modified_at timestamp,modified_by varchar(40),foreign key(order_id)references order_info(order_id) on delete cascade on update cascade,foreign key(payment_id)references payment(paymnet_id));
DESC restuarant_info;
INSERT INTO restuarant_info VALUES(401,'moon light',441,'Shivamogga',303,4,5501,'neham',now(),now(),'shekar');
INSERT INTO restuarant_info VALUES(402,'laxmi palace',442,'Sagara',302,4,5502,'nisarga',now(),now(),'somashekar');
INSERT INTO restuarant_info VALUES(403,'moon light',443,'Shikaripura',301,4,5503,'navya',now(),now(),'sundar');
INSERT INTO restuarant_info VALUES(404,'moon light',444,'bhadravathi',305,4,5504,'nisha',now(),now(),'shiva');
INSERT INTO restuarant_info VALUES(405,'moon light',445,'thirthahalli',304,4,5505,'nesara',now(),now(),'shankar');
SELECT * FROM restuarant_info;
CREATE TABLE delivery(id int,person_name varchar(50),mode_of_payment enum('online','COD'),restuarant_id int,order_id int,created_at timestamp,created_by varchar(60),modified_at timestamp,modified_by varchar(60),foreign key(order_id) references order_info(order_id)on delete cascade on update cascade));
																																