use economy;
CREATE TABLE bank_info(id int,name_of_bank varchar(50),branch_name varchar(50),city_name varchar(60),ifsc_code varchar(200));
SELECT * FROM bank_info;
/*adding columns*/
ALTER TABLE bank_info ADD COLUMN director_of_bank varchar(50);
ALTER TABLE bank_info ADD COLUMN zip_code bigint;
ALTER TABLE bank_info ADD COLUMN contact_number bigint;
ALTER TABLE bank_info ADD COLUMN atm_is_present boolean;
/*rename*/
ALTER TABLE bank_info RENAME COLUMN name_of_bank TO bank_name;
ALTER TABLE bank_info RENAME COLUMN branch_name to name_of_branch;
ALTER TABLE bank_info RENAME COLUMN city_name to name_of_city;
ALTER TABLE bank_info RENAME COLUMN atm_is_present to presence_of_atm;
ALTER TABLE bank_info RENAME COLUMN zip_code to pin_code;
/*inserting data*/
INSERT INTO bank_info VALUES(1,'canara bank','sharavathi nagar','shivamogga','CNRB20421','piyush',577201,0818244,true);
INSERT INTO bank_info VALUES(2,'corporation bank','kuvempu nagar','shivamogga','CRRN20421','John',577202,0818254,true);
INSERT INTO bank_info VALUES(3,'SBI bank','sharavathi nagar','shivamogga','SBI20424','priya',577204,0818234,true);
INSERT INTO bank_info VALUES(4,'SBM bank','savalangaRoad','shivamogga','SBM20421','Kavya',577203,0818844,false);
INSERT INTO bank_info VALUES(5,'bank of baroda','bhadravathi','shivamogga','BOBR20456','navya',577301,0818744,true);
INSERT INTO bank_info VALUES(6,'Pragathi gramin bank','vidya nagar','bhadravathi','CNRB25421','mahadev',577401,0818644,false);
INSERT INTO bank_info VALUES(7,'Karnataka bank','kuvempu nagar','hosanagara','KRNT20421','mehali',577421,0818264,false);
INSERT INTO bank_info VALUES(8,'DCC bank','Vidya nagar','Ripponpet','DCC20426','merry',577426,0818254,true);
INSERT INTO bank_info VALUES(9,'corporation bank','saverline road','shivamogga','CORP20421','piyush goyal',577271,0818744,true);
INSERT INTO bank_info VALUES(10,'reserve bank of india','ncr','new delhi','RBI20421','mohan',679000,0817244,false);
/*updating*/
UPDATE bank_info SET name_of_branch='new delhi(ncr)' where id=10;
UPDATE bank_info SET name_of_city='davanagere' where id=8;
UPDATE bank_info SET name_of_branch='Sharavathi nagar' where pin_code=577204;
UPDATE bank_info SET name_of_branch='new delhi(ncr)' where id=10;
UPDATE bank_info SET bank_name='Reserve bank of India' where id=10;
UPDATE bank_info SET presence_of_atm=false where ifsc_code='CORP20421';
UPDATE bank_info SET director_of_bank='Mrs.Priya' where id=3;
UPDATE bank_info SET bank_name='canara bank' where contact_number=818244;
UPDATE bank_info SET contact_number=9482744821 where id=1;
UPDATE bank_info SET contact_number=0818245 where id=5 AND name_of_city='shivamogga';
UPDATE bank_info SET name_of_branch='Savalanga road' where id=4;
/*delete*/
DELETE FROM bank_info WHERE id=7;
DELETE FROM bank_info WHERE bank_name='corporation bank';
DELETE FROM bank_info WHERE contact_number=818644;
/*fetch*/
UPDATE bank_info SET presence_of_atm=false where id in (4,7);
rollback;
select * from bank_info where id in (1,2,3);
select * from bank_info where id not in (2,7,5);
select * from bank_info where id = 3 and director_of_bank='Mrs.Priya';
select * from bank_info where id = 4 or ifsc_code='CNRB20421';
create database cinema;