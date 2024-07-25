CREATE DATABASE scam;
CREATE TABLE scam_info(scam_name varchar(250),scam_type varchar(100),description varchar(300),date_reported date,reported_by varchar(250),victim_count int,financial_loss bigint,location varchar(250),status varchar(50));
SELECT * FROM scam_info;
/*adding another 5 columns using alter command*/
ALTER TABLE scam_info ADD COLUMN legal_action_taken boolean;
ALTER TABLE scam_info ADD COLUMN resolution_date date;
ALTER TABLE scam_info ADD COLUMN scam_url varchar(250);
ALTER TABLE scam_info ADD COLUMN investigation_officer varchar(70);
ALTER TABLE scam_info ADD COLUMN remarks varchar(250);
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
INSERT INTO scam_info VALUES('Tech Support Scam', 'Tech Support', 'Fake tech support requesting payment.', '2024-07-05', 'Charlie', 8, 'INR3000', 'Punjab', 'Closed', 1, '2024-10-10', 'http://supportimc.com', 'Officer jennifer', 'Refund issued');
INSERT INTO scam_info VALUES
INSERT INTO scam_info VALUES
INSERT INTO scam_info VALUES
INSERT INTO scam_info VALUES
INSERT INTO scam_info VALUES