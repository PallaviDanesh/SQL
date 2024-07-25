CREATE DATABASE scam;
CREATE TABLE scam_info(scam_name varchar(250),scam_type varchar(100),description varchar(300),date_reported date,reported_by varchar(250),victim_count int,financial_loss bigint,location varchar(250),status varchar(50));
SELECT * FROM scam_info;
/*adding another 5 columns using alter command*/
ALTER TABLE scam_info ADD COLUMN legal_action_taken boolean;
ALTER TABLE scam_info ADD COLUMN resolution_date date;
ALTER TABLE scam_info ADD COLUMN scam_url varchar(250);
ALTER TABLE scam_info ADD COLUMN investigation_officer varchar(70);
ALTER TABLE scam_info ADD COLUMN scam_id int FIRST;
DESC scam_info;
/*changing datatype */
ALTER TABLE scam_info MODIFY date_reported varchar(250);
ALTER TABLE scam_info MODIFY resolution_date varchar(250);
ALTER TABLE scam_info MODIFY date_reported varchar(250);
ALTER TABLE scam_info MODIFY financial_loss varchar(100);
ALTER TABLE scam_info MODIFY date_reported varchar(250);
/*inserting values*/
INSERT INTO scam_info VALUES('Banking Scam', 'Banking', 'Scam involving bank account details', '2024-07-11', 'Johnson', 10, 'INR8000', 'Mumbai', 'Open', 0, '2024-12-15', 'http://bankOfBombay.com', 'Officer Kevin', 'Collaborating with bank employee');
INSERT INTO scam_info VALUES('Lottery Scam', 'Lottery', 'Fake lottery claiming you have won a prize', '2024-07-02', 'Smitha', 5, 'INR2000', 'Delhi', 'Closed', 1, '2024-11-20', 'http://rummyMania.com', 'Officer Babhu', 'Case closed');
INSERT INTO scam_info VALUES('Insurance Scam', 'Insurance', 'False insurance claims', '2024-07-13', 'Neha', 4, 'INR2000', 'Surat', 'Open', 0, '2025-01-10', 'http://asiyo.com', 'Officer Mohan', 'Investigating claim');
INSERT INTO scam_info VALUES('Job Scam', 'Employment', 'Fake job offers requesting money', '2024-07-09', 'zavier', 9, 'INR3500', 'Dehardun', 'Closed', 1, '2024-09-15', 'http://jobHouse.com', 'Officer Ismail', 'Suspect in custody');
INSERT INTO scam_info VALUES('Tech Support Scam', 'Tech Support', 'Fake tech support requesting payment', '2024-07-05', 'Charlie', 8, 'INR3000', 'Punjab', 'Closed', 1, '2024-10-10', 'http://supportimc.com', 'Officer jennifer', 'Refund issued');
INSERT INTO scam_info VALUES('Online Purchase Scam', 'E-commerce', 'Non-delivery of goods purchased online', '2024-07-04', 'Bhavana', 15, 'RS1500', 'Haryana', 'Open', 0, '2024-12-05', 'http://snapshop.com', 'Officer Divakar', 'Waiting for more info');
INSERT INTO scam_info VALUES('Identity Theft', 'Identity Theft', 'Stolen personal information', '2024-07-12', 'Jack', 30, 'INR12000', 'jharkhand', 'Closed', 1, '2024-10-25', 'http://mania.com', 'Officer Lousie', 'Preventive measures');
rollback;
INSERT INTO scam_info VALUES('Fake Invoice Scam', 'Invoice Fraud', 'Fake invoices sent to businesses', '2024-07-18', 'Chand Paul', 17, 'INR11000', 'mysore', 'Closed', 1, '2024-11-05', 'http://vyavakaash.com', 'Officer Remo', 'Businesses warned');
INSERT INTO scam_info VALUES('Charity Scam', 'Charity', 'Fake charity solicitations', '2024-07-08', 'Franklin', 12, 'INR2500', 'Shiradi', 'Open', 0, '2024-12-30', 'http://Gohungry.com', 'Officer Hunny', 'Identifying sources');
INSERT INTO scam_info VALUES('Investment Scam', 'Investment', 'A fraudulent investment scheme', '2024-07-03', 'Jahnsi', 20, 'INR10000', 'Chattisghar', 'Open', 0, '2025-01-15', 'http://oneToDouble.com', 'Officer Charlie', 'Investigating further');
INSERT INTO scam_info VALUES(11, 'Aadhaar Card Fraud', 'Identity Theft', 'Unauthorized use of Aadhaar card details.', '2024-07-21', 'Ravi Kumar', 25, 'INR20000', 'Delhi', 'Open', 0, '2025-01-20', 'http://example.com/scam21', 'Officer U', 'Investigating sources'),
(12, 'Fake Job Offer', 'Employment', 'Fake job offers asking for processing fees.', '2024-07-22', 'Sita Rani', 15, 'INR15000', 'Mumbai', 'Closed', 1, '2024-11-25', 'http://empl.com', 'Officer Venu', 'Refunds processed'),
(13, 'KYC Update Scam', 'Phishing', 'Phishing call asking for KYC details.', '2024-07-23', 'Mohan Singh', 30, 'INR5000', 'Bangalore', 'Open', 0, '2025-01-18', 'http://ample.com', 'Officer vittal', 'Monitoring calls'),
(14, 'Fake Charity', 'Charity', 'Fake charity collecting donations.', '2024-07-24', 'Radha Sharma', 10, '₹8000', 'Chennai', 'Open', 0, '2024-12-10', 'http://exle.com', 'Officer Xavi', 'Tracing funds'),
(15, 'Online Shopping Fraud', 'E-commerce', 'Non-delivery of online orders.', '2024-07-25', 'Arjun Desai', 20, '₹12000', 'Hyderabad', 'Closed', 1, '2024-11-15', 'http://eample.com', 'Officer Yashu', 'Resolved with retailer'),
(16, 'Bank Loan Scam', 'Loan', 'Fake bank loan offers.', '2024-07-26', 'Lakshmi Nair', 18, '₹25000', 'Pune', 'Open', 0, '2025-01-05', 'http://example.com/scam26', 'Officer Zampi', 'Checking documents'),
(17, 'Credit Card Fraud', 'Credit Card', 'Unauthorized use of credit card details.', '2024-07-27', 'Vikram Patel', 12, '₹30000', 'Ahmedabad', 'Closed', 1, '2024-10-30', 'http://xampl.com', 'Officer Aru', 'Card blocked'),
(18, 'Mobile Tower Installation Scam', 'Investment', 'Scam involving fake mobile tower installation fees.', '2024-07-28', 'Geeta Mehta', 22, '₹40000', 'Kolkata', 'Open', 0, '2024-12-12', 'http://xamle.com', 'Officer BaBu', 'Under investigation'),
(19, 'Fake Government Grant', 'Government', 'Fake government grant offers.', '2024-07-29', 'Rajesh Verma', 16, '₹35000', 'Jaipur', 'Closed', 1, '2024-11-20', 'http://exale.com', 'Officer Charu C', 'Suspect arrested'),
(20, 'Educational Loan Scam', 'Loan', 'Fake educational loan offers.', '2024-07-30', 'Priya Iyer', 9, 'INR18000', 'Lucknow', 'Open', 0, '2025-01-02', 'http://examle.com', 'Officer Dhanu', 'Documents seized');
UPDATE scam_info SET reported_by='Jahnvi' where victim_count=30 AND scam_name='Identity Theft';
UPDATE scam_info SET scam_id=1 WHERE scam_name='Banking Scam' AND reported_by='Johnson';
UPDATE scam_info SET scam_id=2 WHERE scam_name='Lottery Scam' AND reported_by='Smitha';
UPDATE scam_info SET scam_id=3 WHERE scam_name='Insurance Scam' AND reported_by='Neha';
UPDATE scam_info SET scam_id=4 WHERE scam_name='Job Scam' AND reported_by='zavier';
UPDATE scam_info SET scam_id=5 WHERE scam_name='Tech Support Scam' AND reported_by='Charlie';
UPDATE scam_info SET scam_id=6 WHERE scam_name='Online Purchase Scam' AND reported_by='Bhavana';
UPDATE scam_info SET scam_id=7 WHERE scam_name='Identity Scam' AND reported_by='Jahnvi';
UPDATE scam_info SET scam_id=8 WHERE scam_name='Fake Invoice Scam' AND reported_by='Chand Paul';
UPDATE scam_info SET scam_id=9 WHERE scam_name='Charity Scam' AND reported_by='Franklin';
UPDATE scam_info SET scam_id=10 WHERE scam_name='Investment Scam' AND reported_by='Jahnsi';
UPDATE scam_info SET scam_id=11 WHERE scam_name='Banking Scam' AND reported_by='Johnson';
DELETE FROM scam_info WHERE reported_by='Jahnvi';
DELETE FROM scam_info WHERE reported_by='xavier';
DELETE FROM scam_info WHERE reported_by='Johnson';
SELECT * FROM scam_info WHERE scam_id in (1,3,5,7,9,11);
SELECT * FROM scam_info WHERE scam_id not in (1,3,5,7,9,11);
SELECT * FROM scam_info WHERE scam_name='Banking Scam' OR victim_count=5;
SELECT * FROM scam_info WHERE scam_name='Bank Loan Scam' AND victim_count=18;
