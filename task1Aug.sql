CREATE DATABASE rto;
USE rto;
CREATE TABLE llr_details(LLR_ID int primary key,Name varchar(50),Address varchar(100),DOB date,Issue_Date date,Expiry_Date date,Blood_Group varchar(3),Phone_Number varchar(15),Email varchar(50),Gender varchar(1));
CREATE TABLE llr_test_info (test_id int primary key,llr_id int,test_Date date,result varchar(10),score int,test_Location varchar(50),test_Type varchar(50),duration time,inspector_Name varchar(50),inspector_ID int,foreign key (llr_id) references llr_details(LLR_ID));
CREATE TABLE driving_license_info(dl_id int primary key,llr_id int,test_id int,Name varchar(50),Address varchar(100),dob date,issue_Date date,expiry_Date date,Blood_Group varchar(3),phone_Number varchar(15),email varchar(50),foreign key(llr_id) references llr_details(LLR_ID),foreign key(test_id) references llr_test_info(test_id));
CREATE TABLE driving_license_test_info(dl_test_id int primary key,dl_id int,test_Date date,result varchar(10),score int,test_Location varchar(50),test_Type varchar(50),duration time,inspector_Name varchar(50),inspector_ID int,foreign key (dl_id) references  driving_license_info(dl_id));

INSERT INTO llr_details VALUES 
(1, 'Amit Sharma', 'Delhi', '1990-01-01', '2024-01-01', '2025-01-01', 'B+', '9876543210', 'amit.sharma@gmail.com', 'M'),
(2, 'Rajesh Kumar', 'Mumbai', '1985-02-02', '2024-02-02', '2025-02-02', 'A+', '9876543211', 'rajesh.kumar@gmail.com', 'M'),
(3, 'Sneha Patil', 'Pune', '1992-03-03', '2024-03-03', '2025-03-03', 'O+', '9876543212', 'sneha.patil@gmail.com', 'F'),
(4, 'Sunita Rao', 'Hyderabad', '1995-04-04', '2024-04-04', '2025-04-04', 'B-', '9876543213', 'sunita.rao@gmail.com', 'F'),
(5, 'Vikram Singh', 'Chennai', '1988-05-05', '2024-05-05', '2025-05-05', 'A-', '9876543214', 'vikram.singh@gmail.com', 'M'),
(6, 'Pooja Nair', 'Kochi', '1991-06-06', '2024-06-06', '2025-06-06', 'AB+', '9876543215', 'pooja.nair@gmail.com', 'F'),
(7, 'Ravi Verma', 'Jaipur', '1983-07-07', '2024-07-07', '2025-07-07', 'O-', '9876543216', 'ravi.verma@gmail.com', 'M'),
(8, 'Anita Mehta', 'Ahmedabad', '1987-08-08', '2024-08-08', '2025-08-08', 'B+', '9876543217', 'anita.mehta@gmail.com', 'F'),
(9, 'Kiyara Gupta', 'Bangalore', '1990-09-09', '2024-09-09', '2025-09-09', 'A+', '9876543218', 'karan.gupta@gmail.com', 'F'),
(10, 'Priya Desai', 'Surat', '1989-10-10', '2024-10-10', '2025-10-10', 'O+', '9876543219', 'priya.desai@gmail.com', 'F'),
(11, 'Rahul Joshi', 'Indore', '1993-11-11', '2024-11-11', '2025-11-11', 'B-', '9876543220', 'rahul.joshi@gmail.com', 'M'),
(12, 'Nisha Roy', 'Kolkata', '1984-12-12', '2024-12-12', '2025-12-12', 'A-', '9876543221', 'nisha.roy@gmail.com', 'F'),
(13, 'Ajay Reddy', 'Vijayawada', '1996-01-13', '2024-01-13', '2025-01-13', 'AB+', '9876543222', 'ajay.reddy@gmail.com', 'M'),
(14, 'Rina Sen', 'Guwahati', '1997-02-14', '2024-02-14', '2025-02-14', 'O-', '9876543223', 'rina.sen@gmail.com', 'F'),
(15, 'Manish Khanna', 'Nagpur', '1982-03-15', '2024-03-15', '2025-03-15', 'B+', '9876543224', 'manish.khanna@gmail.com', 'M'),
(16, 'Sonal Kapoor', 'Lucknow', '1986-04-16', '2024-04-16', '2025-04-16', 'A+', '9876543225', 'sonal.kapoor@gmail.com', 'F'),
(17, 'Tarun Jain', 'Bhopal', '1985-05-17', '2024-05-17', '2025-05-17', 'O+', '9876543226', 'tarun.jain@gmail.com', 'M'),
(18, 'Neha Malhotra', 'Patna', '1990-06-18', '2024-06-18', '2025-06-18', 'B-', '9876543227', 'neha.malhotra@gmail.com', 'F'),
(19, 'Anil Chopra', 'Chandigarh', '1991-07-19', '2024-07-19', '2025-07-19', 'A-', '9876543228', 'anil.chopra@gmail.com', 'M'),
(20, 'Shreya Ghosh', 'Bhubaneswar', '1994-08-20', '2024-08-20', '2025-08-20', 'AB+', '9876543229', 'shreya.ghosh@gmail.com', 'F');

INSERT INTO llr_test_info (test_id, llr_id, test_Date, result, score, test_Location, test_Type, duration, inspector_Name, inspector_ID) VALUES
(1, 1, '2024-01-15', 'Pass', 85, 'Delhi Center', 'Written', '01:00:00', 'Anirudh', 101),
(2, 2, '2024-02-20', 'Pass', 90, 'Mumbai Center', 'Written', '01:00:00', 'Brundha', 102),
(3, 3, '2024-03-25', 'Fail', 45, 'Pune Center', 'Written', '01:00:00', 'Chatrin', 103),
(4, 4, '2024-04-15', 'Pass', 80, 'Hyderabad Center', 'Written', '01:00:00', 'Dhanush', 104),
(5, 5, '2024-05-20', 'Pass', 88, 'Chennai Center', 'Written', '01:00:00', 'Eshwar', 105),
(6, 6, '2024-06-25', 'Fail', 40, 'Kochi Center', 'Written', '01:00:00', 'Firood', 106),
(7, 7, '2024-07-15', 'Pass', 75, 'Jaipur Center', 'Written', '01:00:00', 'Goutham', 107),
(8, 8, '2024-08-20', 'Pass', 92, 'Ahmedabad Center', 'Written', '01:00:00', 'Hamsha', 108),
(9, 9, '2024-09-25', 'Fail', 50, 'Bangalore Center', 'Written', '01:00:00', 'Indra', 109),
(10, 10, '2024-10-15', 'Pass', 85, 'Surat Center', 'Written', '01:00:00', 'Jayanth', 110),
(11, 11, '2024-11-20', 'Pass', 90, 'Indore Center', 'Written', '01:00:00', 'Kythrin', 111),
(12, 12, '2024-12-25', 'Fail', 55, 'Kolkata Center', 'Written', '01:00:00', 'Likwin', 112),
(13, 13, '2024-01-15', 'Pass', 78, 'Vijayawada Center', 'Written', '01:00:00', 'Manish', 113),
(14, 14, '2024-02-20', 'Pass', 83, 'Guwahati Center', 'Written', '01:00:00', 'Nageesh', 114),
(15, 15, '2024-03-25', 'Fail', 60, 'Nagpur Center', 'Written', '01:00:00', 'Omkar', 115),
(16, 16, '2024-04-15', 'Pass', 88, 'Lucknow Center', 'Written', '01:00:00', 'Piyush', 116),
(17, 17, '2024-05-20', 'Pass', 90, 'Bhopal Center', 'Written', '01:00:00', 'pintu', 117),
(18, 18, '2024-06-25', 'Fail', 65, 'Patna Center', 'Written', '01:00:00', 'Rajan', 118),
(19, 19, '2024-07-19', 'Pass', 80, 'Chandigarh Center', 'Written', '01:00:00', 'Sundar', 119),
(20, 20, '2024-08-20', 'Pass', 75, 'Bhubaneswar Center', 'Written', '01:00:00', 'Tejas', 120);

INSERT INTO driving_license_info (dl_id, llr_id, test_id, Name, Address, dob, issue_Date, expiry_Date, Blood_Group, phone_Number, email) VALUES
(1, 1, 1, 'Amrit Sharma', 'Delhi', '1990-01-01', '2024-01-20', '2029-01-20', 'B+', '9876543210', 'amit.sharma@gmail.com'),
(2, 2, 2, 'Rajesh Kumara', 'Mumbai', '1985-02-02', '2024-02-25', '2029-02-25', 'A+', '9876543211', 'rajesh.kumar@gmail.com'),
(3, 3, 3, 'Sneha Patil', 'Pune', '1992-03-03', '2024-03-30', '2029-03-30', 'O+', '9876543212', 'sneha.patil@gmail.com'),
(4, 4, 4, 'Sunita Rao', 'Hyderabad', '1995-04-04', '2024-04-25', '2029-04-25', 'B-', '9876543213', 'sunita.rao@gmail.com'),
(5, 5, 5, 'Vikram Singh', 'Chennai', '1988-05-05', '2024-05-30', '2029-05-30', 'A-', '9876543214', 'vikram.singh@gmail.com'),
(6, 6, 6, 'Pooja Nair', 'Kochi', '1991-06-06', '2024-06-25', '2029-06-25', 'AB+', '9876543215', 'pooja.nair@gmail.com'),
(7, 7, 7, 'Ravi Verma', 'Jaipur', '1983-07-07', '2024-07-30', '2029-07-30', 'O-', '9876543216', 'ravi.verma@gmail.com'),
(8, 8, 8, 'Anita Mehta', 'Ahmedabad', '1987-08-08', '2024-08-25', '2029-08-25', 'B+', '9876543217', 'anita.mehta@gmail.com'),
(9, 9, 9, 'Karan Gupta', 'Bangalore', '1990-09-09', '2024-09-30', '2029-09-30', 'A+', '9876543218', 'karan.gupta@gmail.com'),
(10, 10, 10, 'Priya Desai', 'Surat', '1989-10-10', '2024-10-25', '2029-10-25', 'O+', '9876543219', 'priya.desai@gmail.com'),
(11, 11, 11, 'Rahul Joshi', 'Indore', '1993-11-11', '2024-11-30', '2029-11-30', 'B-', '9876543220', 'rahul.joshi@gmail.com'),
(12, 12, 12, 'Nisha Roy', 'Kolkata', '1984-12-12', '2024-12-25', '2029-12-25', 'A-', '9876543221', 'nisha.roy@gmail.com'),
(13, 13, 13, 'Ajay Reddy', 'Vijayawada', '1996-01-13', '2024-01-30', '2029-01-30', 'AB+', '9876543222', 'ajay.reddy@gmail.com'),
(14, 14, 14, 'Rina Sen', 'Guwahati', '1997-02-14', '2024-02-25', '2029-02-25', 'O-', '9876543223', 'rina.sen@gmail.com'),
(15, 15, 15, 'Manish Khanna', 'Nagpur', '1982-03-15', '2024-03-30', '2029-03-30', 'B+', '9876543224', 'manish.khanna@gmail.com'),
(16, 16, 16, 'Sonal Kapoor', 'Lucknow', '1986-04-16', '2024-04-25', '2029-04-25', 'A+', '9876543225', 'sonal.kapoor@gmail.com'),
(17, 17, 17, 'Tarun Jain', 'Bhopal', '1985-05-17', '2024-05-30', '2029-05-30', 'O+', '9876543226', 'tarun.jain@gmail.com'),
(18, 18, 18, 'Neha Malhotra', 'Patna', '1990-06-18', '2024-06-25', '2029-06-25', 'B-', '9876543227', 'neha.malhotra@gmail.com'),
(19, 19, 19, 'Anil Chopra', 'Chandigarh', '1991-07-19', '2024-07-30', '2029-07-30', 'A-', '9876543228', 'anil.chopra@gmail.com'),
(20, 20, 20, 'Shreya Ghosh', 'Bhubaneswar', '1994-08-20', '2024-08-25', '2029-08-25', 'AB+', '9876543229', 'shreya.ghosh@gmail.com');

INSERT INTO driving_license_test_info (dl_test_id, dl_id, test_Date, result, score, test_Location, test_Type, duration, inspector_Name, inspector_ID) VALUES
(1, 1, '2024-01-25', 'Pass', 85, 'Delhi Center', 'Practical', '01:00:00', 'Ananth', 101),
(2, 2, '2024-02-25', 'Pass', 90, 'Mumbai Center', 'Practical', '01:00:00', 'Babhu', 102),
(3, 3, '2024-03-30', 'Fail', 45, 'Pune Center', 'Practical', '01:00:00', 'Chyathrin', 103),
(4, 4, '2024-04-25', 'Pass', 80, 'Hyderabad Center', 'Practical', '01:00:00', 'Dhanush', 104),
(5, 5, '2024-05-30', 'Pass', 88, 'Chennai Center', 'Practical', '01:00:00', 'Eshwar', 105),
(6, 6, '2024-06-30', 'Fail', 40, 'Kochi Center', 'Practical', '01:00:00', 'Firood', 106),
(7, 7, '2024-07-30', 'Pass', 75, 'Jaipur Center', 'Practical', '01:00:00', 'Goutham', 107),
(8, 8, '2024-08-25', 'Pass', 92, 'Ahmedabad Center', 'Practical', '01:00:00', 'Haneesh', 108),
(9, 9, '2024-09-30', 'Fail', 50, 'Bangalore Center', 'Practical', '01:00:00', 'Indra', 109),
(10, 10, '2024-10-25', 'Pass', 85, 'Surat Center', 'Practical', '01:00:00', 'Jayanth', 110),
(11, 11, '2024-11-30', 'Pass', 90, 'Indore Center', 'Practical', '01:00:00', 'Kiyara', 111),
(12, 12, '2024-12-25', 'Fail', 55, 'Kolkata Center', 'Practical', '01:00:00', 'Likwin', 112),
(13, 13, '2024-01-30', 'Pass', 78, 'Vijayawada Center', 'Practical', '01:00:00', 'Mohan', 113),
(14, 14, '2024-02-25', 'Pass', 83, 'Guwahati Center', 'Practical', '01:00:00', 'Nageesh', 114),
(15, 15, '2024-03-30', 'Fail', 60, 'Nagpur Center', 'Practical', '01:00:00', 'omkar', 115),
(16, 16, '2024-04-25', 'Pass', 88, 'Lucknow Center', 'Practical', '01:00:00', 'Peter', 116),
(17, 17, '2024-05-30', 'Pass', 90, 'Bhopal Center', 'Practical', '01:00:00', 'pintu', 117),
(18, 18, '2024-06-30', 'Fail', 65, 'Patna Center', 'Practical', '01:00:00', 'Rajan', 118),
(19, 19, '2024-07-30', 'Pass', 80, 'Chandigarh Center', 'Practical', '01:00:00', 'Sundar', 119),
(20, 20, '2024-08-25', 'Pass', 75, 'Bhubaneswar Center', 'Practical', '01:00:00', 'Tejas', 120);

INSERT INTO llr_details (LLR_ID, Name, Address, DOB, Issue_Date, Expiry_Date, Blood_Group, Phone_Number, Email, Gender) VALUES
(1, 'Amit Sharma', 'Delhi', '1990-01-01', '2024-01-10', '2025-01-10', 'B+', '9876543210', 'amit.sharma@gmail.com', 'M')
ON DUPLICATE KEY UPDATE Name = VALUES(Name), Address = VALUES(Address), DOB = VALUES(DOB), Issue_Date = VALUES(Issue_Date), Expiry_Date = VALUES(Expiry_Date), Blood_Group = VALUES(Blood_Group), Phone_Number = VALUES(Phone_Number), Email = VALUES(Email), Gender = VALUES(Gender);

INSERT INTO llr_test_info (test_id, llr_id, test_Date, result, score, test_Location, test_Type, duration, inspector_Name, inspector_ID) VALUES
(1, 1, '2024-01-15', 'Pass', 85, 'Delhi Center', 'Written', '01:00:00', 'Anirudh', 101)
ON DUPLICATE KEY UPDATE llr_id = VALUES(llr_id), test_Date = VALUES(test_Date), result = VALUES(result), score = VALUES(score), test_Location = VALUES(test_Location), test_Type = VALUES(test_Type), duration = VALUES(duration), inspector_Name = VALUES(inspector_Name), inspector_ID = VALUES(inspector_ID);

INSERT INTO driving_license_info (dl_id, llr_id, test_id, Name, Address, dob, issue_Date, expiry_Date, Blood_Group, phone_Number, email) VALUES
(1, 1, 1, 'Amit Sharma', 'Delhi', '1990-01-01', '2024-01-20', '2029-01-20', 'B+', '9876543210', 'amit.sharma@example.com')
ON DUPLICATE KEY UPDATE llr_id = VALUES(llr_id), test_id = VALUES(test_id), Name = VALUES(Name), Address = VALUES(Address), dob = VALUES(dob), issue_Date = VALUES(issue_Date), expiry_Date = VALUES(expiry_Date), Blood_Group = VALUES(Blood_Group), phone_Number = VALUES(phone_Number), email = VALUES(email);

INSERT INTO driving_license_test_info (dl_test_id, dl_id, test_Date, result, score, test_Location, test_Type, duration, inspector_Name, inspector_ID) VALUES
(1, 1, '2024-01-25', 'Pass', 85, 'Delhi Center', 'Practical', '01:00:00', 'Inspector A', 101)
ON DUPLICATE KEY UPDATE dl_id = VALUES(dl_id), test_Date = VALUES(test_Date), result = VALUES(result), score = VALUES(score), test_Location = VALUES(test_Location), test_Type = VALUES(test_Type), duration = VALUES(duration), inspector_Name = VALUES(inspector_Name), inspector_ID = VALUES(inspector_ID);

REPLACE INTO llr_details (LLR_ID, Name, Address, DOB, Issue_Date, Expiry_Date, Blood_Group, Phone_Number, Email, Gender) VALUES
(1, 'Amit Sharma', 'Delhi', '1990-01-01', '2024-01-10', '2025-01-10', 'B+', '9876543210', 'amit.sharma@example.com', 'M');

REPLACE INTO llr_test_info (test_id, llr_id, test_Date, result, score, test_Location, test_Type, duration, inspector_Name, inspector_ID) VALUES
(1, 1, '2024-01-15', 'Pass', 85, 'Delhi Center', 'Written', '01:00:00', 'Inspector A', 101);

REPLACE INTO driving_license_info (dl_id, llr_id, test_id, Name, Address, dob, issue_Date, expiry_Date, Blood_Group, phone_Number, email) VALUES
(1, 1, 1, 'Amit Sharma', 'Delhi', '1990-01-01', '2024-01-20', '2029-01-20', 'B+', '9876543210', 'amit.sharma@example.com');

REPLACE INTO driving_license_test_info (dl_test_id, dl_id, test_Date, result, score, test_Location, test_Type, duration, inspector_Name, inspector_ID) VALUES
(1, 1, '2024-01-25', 'Pass', 85, 'Delhi Center', 'Practical', '01:00:00', 'Inspector A', 101);
