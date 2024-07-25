CREATE DATABASE retailStore;
CREATE TABLE customers(customer_name varchar(200),email varchar(300),address varchar(255),phone_number varchar(20),order_count int,total_spent int,customer_id bigint);
CREATE TABLE orders(order_date varchar(20),total_amount varchar(20),payment_method varchar(20),order_status varchar(20),customer_id int,order_id int,shipment_id bigint);
CREATE TABLE products(product_name varchar(250),description varchar(300),price varchar(20),category varchar(20),stock_quantity int,product_id int,supplier_id bigint);
CREATE TABLE suppliers(supplier_name varchar(250),address varchar(250),phone_number varchar(250),supplier_id int,product_id int,contract_id bigint);
CREATE TABLE shipments(shipment_date varchar(20),shipment_status varchar(20),tracking_number varchar(25),shipment_mode varchar(30),order_id int,product_id bigint);


 /* USE database_name;  will select the database to do operation
/*alter use to  1. add column to the existing table in database , 2. remove column form the existimg table , 3.change the datatype of the column , 4. rename the column in table
select - used to fetch/read data from the table
'*'  takes the all columns in table , from - will instruct from which table need to retrieve data*/
USE retailStore;
ALTER TABLE customers ADD COLUMN gender varchar(5);
ALTER TABLE products ADD COLUMN manufacturer_name varchar(40);
ALTER TABLE  suppliers ADD COLUMN type_of_itemsSupplied varchar(50);
SELECT * FROM customers;
select * from products;
select * from suppliers;




/* alter table table_nam add column column_name datatype;
alter table table_name drop column column_name;
alter table table_name rename column column_name to new_column_name;
alter table table_name modify column column_name new_datatype;
*/



CREATE table employee(emp_firstName varchar(25),emp_lastName varchar(25),emp_emailAddress varchar(100),emp_phoneNumber bigint,emp_salary bigint);
CREATE table airport(name_of_airport varchar(80),seats bigint,departure varchar(50),arrive_At varchar(30),origin_of_state varchar(30));




CREATE TABLE hospital_info(hospital_id int,hospital_name varchar(300),address varchar(255),city varchar(100),state varchar(50),zip_code bigint,contact_number varchar(300),email_address varchar(300),number_of_staffs int,speciality varchar(100));
CREATE TABLE tourist_places(place_id int,location varchar(250),city varchar(50),state varchar(50),zip_code varchar(20),contact_number varchar(300),best_time_to_visit varchar(50),entry_fee bigint,main_attraction varchar(100),email_address varchar(200));
DESC hospital_info;
DESC tourist_places;
/* after writing insert values , we need to click execute the statement under the keyboard cursor thunder symbol having curosr in it*/
INSERT INTO hospital_info (hospital_id,hospital_name, address, city, state, zip_code, contact_number, number_of_staffs, speciality) VALUES
(1, 'All India Institute of Medical Sciences', 'Ansari Nagar', 'New Delhi', 'Delhi', '110029', '011-26588500', 1000, 'Multispecialty'),
(2, 'Apollo Hospitals', '21 Greams Lane', 'Chennai', 'Tamil Nadu', '600006', '044-28294400', 1200, 'Multispecialty'),
(3, 'Fortis Escorts Heart Institute', 'Okhla Road', 'New Delhi', 'Delhi', '110025', '011-26822022', 800, 'Cardiology'),
(4, 'Max Super Speciality Hospital', 'Saket', 'New Delhi', 'Delhi', '110017', '011-26516666', 950, 'Multispecialty'),
(5, 'Medanta - The Medicity', 'Sector 38', 'Gurgaon', 'Haryana', '122001', '0124-4141414', 1100, 'Multispecialty'),
(6, 'Breach Candy Hospital', 'Breach Candy', 'Mumbai', 'Maharashtra', '400026', '022-23660414', 600, 'Multispecialty'),
(7, 'Narayana Health', 'Rabindranath Tagore Road', 'Bangalore', 'Karnataka', '560029', '080-40203000', 1000, 'Multispecialty'),
(8, 'Tata Memorial Hospital', 'Parel', 'Mumbai', 'Maharashtra', '400012', '022-24177000', 700, 'Oncology'),
(9, 'Sri Ramachandra Medical Centre', 'Porur', 'Chennai', 'Tamil Nadu', '600116', '044-24768000', 800, 'Multispecialty'),
(10, 'Jaslok Hospital', 'Breach Candy', 'Mumbai', 'Maharashtra', '400026', '022-66360700', 650, 'Multispecialty'),
(11, 'Manipal Hospitals', 'Old Airport Road', 'Bangalore', 'Karnataka', '560017', '080-25055555', 900, 'Multispecialty'),
(12, 'Kokilaben Dhirubhai Ambani Hospital', 'Andheri West', 'Mumbai', 'Maharashtra', '400053', '022-42696969', 950, 'Multispecialty'),
(13, 'Sankara Nethralaya', 'Nungambakkam', 'Chennai', 'Tamil Nadu', '600034', '044-28271616', 400, 'Ophthalmology'),
(14, 'PGIMER', 'Sector 12', 'Chandigarh', 'Chandigarh', '160012', '0172-2755577', 1000, 'Multispecialty'),
(15, 'Lilavati Hospital', 'Bandra West', 'Mumbai', 'Maharashtra', '400050', '022-26463000', 700, 'Multispecialty'),
(16, 'Aster Medcity', 'NH 47 Bypass', 'Kochi', 'Kerala', '682019', '0484-6636000', 800, 'Multispecialty'),
(17, 'Hiranandani Hospital', 'Powai', 'Mumbai', 'Maharashtra', '400076', '022-25763000', 600, 'Multispecialty'),
(18, 'The Wockhardt Hospitals', 'Worli', 'Mumbai', 'Maharashtra', '400030', '022-24955555', 650, 'Multispecialty'),
(19, 'Amrita Institute of Medical Sciences', 'Ponekkara', 'Kochi', 'Kerala', '682041', '0484-2855000', 900, 'Multispecialty'),
(20, 'Bangalore Baptist Hospital', 'Hebbal', 'Bangalore', 'Karnataka', '560024', '080-23310837', 500, 'Multispecialty');

INSERT INTO tourist_places (place_id, location, city, state, zip_code, contact_number, best_time_to_visit, entry_fee, main_attraction, email_address) VALUES
(1, 'Mysore Palace', 'Mysore', 'Karnataka', '570001', '0821-2421050', 'October to February', 50, 'Historic Palace', 'info@mysorepalace.gov.in'),
(2, 'Coorg', 'Kodagu', 'Karnataka', '571201', '08272-220333', 'October to March', 0, 'Coffee Plantations', 'info@coorgtourism.com'),
(3, 'Hampi', 'Hampi', 'Karnataka', '583239', '08394-241344', 'October to February', 30, 'Ancient Ruins', 'info@hampitourism.com'),
(4, 'Bandipur National Park', 'Bandipur', 'Karnataka', '571126', '08229-233044', 'October to May', 250, 'Wildlife Safari', 'info@bandipur.com'),
(5, 'Jog Falls', 'Shimoga', 'Karnataka', '577435', '08186-244888', 'August to December', 20, 'Waterfalls', 'info@jogfalls.com'),
(6, 'Nandi Hills', 'Chikkaballapur', 'Karnataka', '562101', '08156-267234', 'September to May', 15, 'Hill Station', 'info@nandihills.com'),
(7, 'Belur', 'Hassan', 'Karnataka', '573115', '08172-252405', 'October to March', 25, 'Hoysala Temples', 'info@belur.com'),
(8, 'Halebidu', 'Hassan', 'Karnataka', '573121', '08177-272002', 'October to March', 25, 'Hoysala Architecture', 'info@halebidu.com'),
(9, 'Gokarna', 'Gokarna', 'Karnataka', '581326', '08386-257366', 'October to March', 10, 'Beaches', 'info@gokarna.com'),
(10, 'Badami Caves', 'Badami', 'Karnataka', '587201', '08357-220035', 'October to March', 25, 'Rock Cut Temples', 'info@badamicaves.com'),
(11, 'Shivanasamudra Falls', 'Mandya', 'Karnataka', '571437', '08232-225344', 'August to December', 20, 'Waterfalls', 'info@shivanasamudra.com'),
(12, 'Chikmagalur', 'Chikmagalur', 'Karnataka', '577101', '08262-234334', 'September to March', 0, 'Coffee Plantations', 'info@chikmagalur.com'),
(13, 'Udupi', 'Udupi', 'Karnataka', '576101', '08252-252253', 'October to March', 0, 'Krishna Temple', 'info@udupi.com'),
(14, 'Kabini', 'Kabini', 'Karnataka', '571114', '08228-264000', 'October to May', 300, 'Wildlife Sanctuary', 'info@kabini.com'),
(15, 'Shravanabelagola', 'Hassan', 'Karnataka', '573135', '08176-257213', 'October to March', 20, 'Gomateshwara Statue', 'info@shravanabelagola.com'),
(16, 'Bijapur', 'Bijapur', 'Karnataka', '586101', '08352-250234', 'October to March', 10, 'Gol Gumbaz', 'info@bijapur.com'),
(17, 'Murudeshwar', 'Murudeshwar', 'Karnataka', '581350', '08385-260727', 'October to May', 20, 'Shiva Statue', 'info@murudeshwar.com'),
(18, 'Dandeli', 'Dandeli', 'Karnataka', '581325', '08284-231585', 'October to May', 0, 'Adventure Sports', 'info@dandeli.com'),
(19, 'Karwar', 'Karwar', 'Karnataka', '581301', '08382-226744', 'October to April', 10, 'Beaches', 'info@karwar.com'),
(20, 'Ranganathittu Bird Sanctuary', 'Srirangapatna', 'Karnataka', '571438', '08236-252027', 'June to November', 50, 'Bird Watching', 'info@ranganathittu.com');
 DESC hospital_info;
 DESC tourist_places;
 SELECT * FROM hospital_info;
SELECT * FROM hospital_info;
ALTER TABLE hospital_info DROP column email_address;


CREATE DATABASE economy;
use economy;


