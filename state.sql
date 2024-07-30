																																											/*1)CREATE 2 (state_info, scam_info) with 10 columns
2)ADD 5 Columns using alter command.
3)rename 5 columns using alter command.
4)change datatype for 5 columns.
5)Insert 20 data for each table.
6)update 10 data for different columns for each table.
7)delete 3 data from each table.
8)Fetch data using AND OR IN NOTIN.*/
/* to use the update and delete , go to edit->preferences->scroll to down and uncheck the safe updates*/
CREATE DATABASE nation;
USE nation;

CREATE TABLE state_info(name_of_state varchar(60),capital_city varchar(70),regional_language varchar(60),total_area bigint,total_population bigint,literacy_rate varchar(10),governer_of_state varchar(100),dance_of_state varchar(50),state_festival varchar(40),state_chief_minister varchar(60));
/*add columns*/
ALTER TABLE state_info ADD COLUMN state_animal varchar(30);
ALTER TABLE state_info ADD COLUMN largest_city varchar(50);
ALTER TABLE state_info ADD COLUMN gdp varchar(30);
ALTER TABLE state_info ADD COLUMN current_ruling_party varchar(60);
SELECT * FROM state_info;
ALTER TABLE state_info ADD COLUMN state_id int;
ALTER TABLE state_info MODIFY COLUMN state_id int FIRST;
ALTER TABLE state_info DROP COLUMN state_festival;
ALTER TABLE state_info ADD COLUMN no_of_districts varchar(50);
/*rename*/
ALTER TABLE state_info  RENAME COLUMN regional_language to official_language;
ALTER TABLE state_info  RENAME COLUMN total_area to total_area_sqft;
ALTER TABLE state_info  RENAME COLUMN state_chief_minister to chief_minister;
ALTER TABLE state_info  RENAME COLUMN forest_area to forest_area_sqft;
ALTER TABLE state_info  RENAME COLUMN gdp_of_state to gdp_rank;
/*change data type*/
ALTER TABLE state_info MODIFY COLUMN gdp_rank int;
ALTER TABLE state_info MODIFY COLUMN forest_area_sqft bigint;
ALTER TABLE state_info MODIFY COLUMN total_area_sqft varchar(40);
ALTER TABLE state_info DROP COLUMN dance_of_state;
ALTER TABLE state_info MODIFY COLUMN no_of_districts int;
DESC state_info;
INSERT INTO state_info VALUES(1,'Andra Pradesh','Amaravathi','Telugu','162,968km',49386799,'67.4%','S. Abdul Nazeer','Y S Jagan Mohan Reddy','BlackBuck','Vizag',7,28147,'YSR Congress',26);
INSERT INTO state_info VALUES(2, 'Uttar Pradesh', 'Lucknow', 'Hindi', '243286km', 199812341, '67.68%', 'Anandiben Patel', 'Yogi Adityanath', 'Ox', 'Kanpur', 2, 21072, 'Bharatiya Janata Party', 75);
INSERT INTO state_info VALUES(3, 'Bihar', 'Patna', 'Hindi', '94163km', 104099452,'63.82%', 'Phagu Chauhan', 'Nitish Kumar', 'Gaur', 'Patna', 6, 7015, 'Janata Dal (United)', 38);
INSERT INTO state_info VALUES(4, 'West Bengal', 'Kolkata', 'Bengali', '88752km', 91276115, '76.26%', 'C.V. Ananda Bose', 'Mamata Banerjee', 'Bengal Tiger', 'Kolkata', 5, 10723, 'All India Trinamool Congress', 23);
INSERT INTO state_info VALUES(5, 'Tamil Nadu', 'Chennai', 'Tamil', '130058km', 72147030, '80.33%', 'R. N. Ravi', 'M.K. Stalin', 'Nilgiri Tahr', 'Chennai', 7, 26019, 'Dravida Munnetra Kazhagam', 38);
INSERT INTO state_info VALUES(6, 'Karnataka', 'Bengaluru', 'Kannada', '191791km', 61095297, '76.89%', 'Thawar Chand Gehlot', 'Basavaraj Bommai', 'Indian Elephant', 'Bengaluru', 8, 38213, 'Bharatiya Janata Party', 31);
INSERT INTO state_info VALUES(7, 'Gujarat', 'Gandhinagar', 'Gujarati', '196024km', 60439692, '78.03%', 'Acharya Devvrat', 'Bhupendra Patel', 'Asiatic Lion', 'Ahmedabad', 9, 68271, 'Bharatiya Janata Party', 33);
INSERT INTO state_info VALUES(8, 'Rajasthan', 'Jaipur', 'Hindi', '342239km', 68548437, '66.11%', 'Kalraj Mishra', 'Ashok Gehlot', 'Camel', 'Jaipur', 10, 156444, 'Indian National Congress', 33);
INSERT INTO state_info VALUES(9, 'Madhya Pradesh', 'Bhopal', 'Hindi', '308350km', 72626809, '69.32%', 'Lalji Tandon', 'Shivraj Singh Chouhan', 'Barasingha', 'Indore', 12, 76511, 'Bharatiya Janata Party', 52);
INSERT INTO state_info VALUES(10,'Punjab', 'Chandigarh', 'Punjabi', '50362km', 27704236, '76.68%', 'Banwarilal Purohit', 'Amarinder Singh', 'Blackbuck', 'Ludhiana', 13, 16050, 'Indian National Congress', 22);
INSERT INTO state_info VALUES(11, 'Haryana', 'Chandigarh', 'Hindi', '44212km', 25351462, '76.34%', 'Bandaru Dattatreya', 'Manohar Lal Khattar', 'Nilgai', 'Gurugram', 14, 6515, 'Bharatiya Janata Party', 22);
INSERT INTO state_info VALUES(12, 'Delhi', 'New Delhi', 'Hindi', '1484km', 16787941, '86.21%', 'V.K. Saxena', 'Arvind Kejriwal', 'Nilgai', 'New Delhi', 15, 19, 'Aam Aadmi Party', 11);
INSERT INTO state_info VALUES(13, 'Uttarakhand', 'Dehradun', 'Hindi', '53483km', 10116752, '87.6%', 'Lt. Gen. Gurmit Singh', 'Pushkar Singh Dhami', 'Himalayan Musk Deer', 'Dehradun', 16, 22935, 'Bharatiya Janata Party', 13);
INSERT INTO state_info VALUES(14, 'Himachal Pradesh', 'Shimla', 'Hindi', '55673km', 6864602, '83.78%', 'Rohit Kumar', 'Jai Ram Thakur', 'Himalayan Monal', 'Shimla', 17, 20100, 'Bharatiya Janata Party', 12);
INSERT INTO state_info VALUES(15, 'Jharkhand', 'Ranchi', 'Hindi', '79714km', 32988134, '66.41%', 'Ramesh Bais', 'Hemant Soren', 'Elephant', 'Jamshedpur', 18, 20325, 'Jharkhand Mukti Morcha', 24);
INSERT INTO state_info VALUES(16, 'Chhattisgarh', 'Raipur', 'Hindi', '135191km', 25545198, '77.09%', 'P. S. Sreedharan Pillai', 'Bhupesh Baghel', 'Wild Buffalo', 'Raipur', 19, 55166, 'Indian National Congress', 28);
INSERT INTO state_info VALUES(17, 'Tripura', 'Agartala', 'Bengali', '10486km', 36710307, '87.75%', 'Satyadeo Narain Arya', 'Manik Saha', 'Royal Bengal Tiger', 'Agartala', 20, 1559, 'Bharatiya Janata Party', 8);
INSERT INTO state_info VALUES(18, 'Meghalaya', 'Shillong', 'English', '22429km', 2966889, '74.43%', 'Phagu Chauhan', 'Conrad Sangma', 'Clouded Leopard', 'Shillong', 21, 16050, 'National Peoples Party', 11);
INSERT INTO state_info VALUES(19, 'Nagaland', 'Kohima', 'English', '16579km', 1978502, '79.55%', 'Jagdish Mukhi', 'Neiphiu Rio', 'Hollock Gibbon', 'Kohima', 22, 2912, 'Nationalist Democratic Progressive Party', 11);
INSERT INTO state_info VALUES(20, 'Maharashtra', 'Mumbai', 'Marathi','307713km', 112374333, '82.34%', 'Bhagat Singh Koshyari', 'Eknath Shinde', 'Sambar Deer', 'Mumbai', 1, 60714,'Shiv Sena',36);
/*update*/
UPDATE state_info SET chief_minister='Siddaramaiah' where state_id=6;
UPDATE state_info SET current_ruling_party='Congress' where state_id=6;
UPDATE state_info SET chief_minister='Bhajan Lal Sharma' where state_id=8;
UPDATE state_info SET chief_minister='Mohan Yadav' where name_of_state='Madhya pradesh';
UPDATE state_info SET chief_minister='Bhagwant Singh Mann' where state_id=10;
UPDATE state_info SET chief_minister='Nayab Singh saini' where name_of_state='Haryana';
UPDATE state_info SET chief_minister='Vishnu deo sai' where capital_city='Raipur';
UPDATE state_info SET total_population=49577103 where name_of_state='Andra Pradesh';
UPDATE state_info SET literacy_rate='77.2%' where name_of_state='Karnataka';
UPDATE state_info SET literacy_rate='73.7%' where capital_city='Bhopal';
/*delete*/
DELETE FROM state_info WHERE state_id=10;
DELETE FROM state_info WHERE capital_city='Kolkata';
DELETE FROM state_info WHERE literacy_rate='63.82%';
/*fetching*/
SELECT * FROM state_info WHERE official_language='Hindi' AND capital_city='Lucknow';
SELECT * FROM state_info WHERE official_language='Hindi' OR capital_city='Lucknow';
SELECT * FROM state_info WHERE state_id in(1,4,6,7);
SELECT * FROM state_info WHERE state_id not in(3,4,9);
