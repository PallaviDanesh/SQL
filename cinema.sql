use cinema;
create table movie_info(id int,name_of_movie varchar(20),hero_of_movie varchar(20),heroine_of_movie varchar(20),theater_name varchar(20));
select * from movie_info;
alter table movie_info add column languages_available_count int;
alter table movie_info add column budget_of_movie bigint;
alter table movie_info add column boxOffice_profit bigint;
alter table movie_info add column available_orNot boolean;
alter table movie_info drop column director_of_moive;
alter table movie_info add column director_of_movie varchar(20);
select * from movie_info;

alter table movie_info rename column id to id_of_movie;
alter table movie_info rename column available_orNot to movie_is_available;
alter table movie_info rename column boxOffice_profit to boxOffice_collection;
alter table movie_info rename column director_of_movie to movie_directorName;
alter table movie_info drop column director_of_movie;
select * from movie_info;

insert into movie_info values(1,'777 Charlie','Rakshith shetty','Sangeetha Shrungeri','HPC Shivamogga',3,200000,1000000,'Rakshith Shetty',false);
insert into movie_info values(2,'Kantara','Rishab shetty','Sapthami gowda','Bharath cinema',5,500000,2000000,'Rishabh Shetty',true);
insert into movie_info values(3,'Roberrt','Darshan','Shaanvi','Mallikarjuna',1,5880000,1000000,'tarun Sudhir ',true);
insert into movie_info values(4,'Pusha','Allu arjun','Rashmika Mandanna','HPC Shivamogga',4,9000000,5000000,'Ramesh',false);
insert into movie_info values(5,'Kateera','Darshan','araadhana','PVR',1,7000000,1000000,'Tarun Sudhir',true);
insert into movie_info values(6,'vikranth rona','Kiccha Sudeep','srevitha','PVR',1,8000000,200000,'Nagendra prasad',false);
insert into movie_info values(7,'Kalki','Prabhas','Sangeetha','HPC',4,8000000,2000000,'Neel',true);
insert into movie_info values(8,'HHB','Druva ','Rakshitha','Gopalan archade',1,4000000,100000,'Sham',false);
insert into movie_info values(9,'SSA-side_A','Rakshith shetty','Sangeetha Shrungeri','PVR',3,5000000,1000000,'Rakshith Shetty',false);
insert into movie_info values(10,'rajahuli','Yash','Meghanaraj','Bharath cinemas',1,3000000,1000000,'Nagendra',false);

select * from movie_info;

update movie_info set hero_of_movie="rakshith shetty" where id_of_movie=1;
update movie_info set heroine_of_movie="nivya" where id_of_movie=3;
update movie_info set hero_of_movie="Darshan aradya" where id_of_movie=8;
update movie_info set name_of_movie="SapthaSagaraAache" where id_of_movie=9;
update movie_info set budget_of_movie="589221" where id_of_movie=7;
update movie_info set theater_name="Gopalan" where id_of_movie=5;
update movie_info set languages_available_count=2 where id_of_movie=3;
update movie_info set heroine_of_movie='namratha' where id_of_movie=7;
update movie_info set languages_available_count=1 where hero_of_movie='Rishab shetty';
update movie_info set name_of_movie='HstlHdgrB'where id_of_movie=8;
select * from movie_info;

delete from movie_info where languages_available_count=3;
delete from movie_info where movie_name='Kalki';
delete from movie_info where id_of_movie=4;
select * from movie_info;

select * from movie_info where languages_available_count=2 and id_of_movie=3;

select * from movie_info where budget_of_movie=8000000 or languages_available_count=2;

select * from movie_info where languages_available_count in(1,4);

select * from movie_info where id_of_movie not in(4,7,8,6);