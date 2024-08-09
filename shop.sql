CREATE DATABASE shop;
USE global;
CREATE TABLE books (book_id INT PRIMARY KEY,title VARCHAR(255) NOT NULL,author VARCHAR(100) NOT NULL,genre VARCHAR(50),published_year YEAR,isbn VARCHAR(20) UNIQUE NOT NULL);
SELECT * FROM books;
CREATE TABLE members (member_id INT PRIMARY KEY,first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50) NOT NULL,email VARCHAR(100) UNIQUE NOT NULL,phone_number VARCHAR(15),membership_start_date DATE NOT NULL);
SELECT * FROM members;
CREATE TABLE borrow_records (borrow_id INT PRIMARY KEY,book_id INT,member_id INT,borrow_date DATE NOT NULL,return_date DATE,due_date DATE NOT NULL,CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES books(book_id),CONSTRAINT fk_member_id FOREIGN KEY (member_id) REFERENCES members(member_id));
SELECT * FROM borrow_records;
CREATE TABLE staff (staff_id INT PRIMARY KEY,first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50) NOT NULL,position VARCHAR(50) NOT NULL,email VARCHAR(100) UNIQUE NOT NULL,hire_date DATE NOT NULL);
SELECT * FROM staff;
INSERT INTO books VALUES
(1, 'The God of Small Things', 'Arundhati Roy', 'Fiction', 1997, '9780143028574'),
(2, 'A Suitable Boy', 'Vikram Seth', 'Historical Fiction', 1993, '9780679738713'),
(3, 'Midnight’s Children', 'Salman Rushdie', 'Fiction', 1981, '9780099578512'),
(4, 'The White Tiger', 'Aravind Adiga', 'Fiction', 2008, '9781416562603'),
(5, 'Train to Pakistan', 'Khushwant Singh', 'Historical Fiction', 1956, '9780143065881'),
(6, 'The Inheritance of Loss', 'Kiran Desai', 'Fiction', 2006, '9780802142818'),
(7, 'Interpreter of Maladies', 'Jhumpa Lahiri', 'Short Stories', 1999, '9780395927205'),
(8, 'The Guide', 'RK Narayan', 'Fiction', 1958, '9788185986005'),
(9, 'Gitanjali', 'Rabindranath Tagore', 'Poetry', 1910, '9788129104630'),
(10, 'Godan', 'Munshi Premchand', 'Fiction', 1936, '9788171674053'),
(11, 'Malgudi Days', 'RK Narayan', 'Short Stories', 1943, '9788185986173'),
(12, 'The Hungry Tide', 'Amitav Ghosh', 'Fiction', 2004, '9780618711666'),
(13, 'The Glass Palace', 'Amitav Ghosh', 'Historical Fiction', 2000, '9780375758775'),
(14, 'An Equal Music', 'Vikram Seth', 'Romance', 1999, '9780375709241'),
(15, 'The Discovery of India', 'Jawaharlal Nehru', 'History', 1946, '9780143031033');

INSERT INTO members VALUES
(1, 'Amita', 'Patel', 'amitpatel@gmailcom', '9812345678', '2024-01-01'),
(2, 'Priya', 'Raj', 'priyaraj12@gmailcom', '9823456789', '2024-02-08'),
(3, 'Rajesh', 'Surya', 'rajeshsurya32@gmailcom', '9834567890', '2024-03-07'),
(4, 'Anjali', 'naik', 'anjalinaik@gmailcom', '9845678901', '2024-04-11'),
(5, 'Vikas', 'Gowda', 'vikasgowd@gmailcom', '9856789012', '2024-05-21'),
(6, 'Meena', 'Iyer', 'meenaiyer@gmailcom', '9867890123', '2023-06-12'),
(7, 'Suresh', 'Kumar', 'sureshkumar@gmailcom', '9878901234', '2023-07-11'),
(8, 'Divya', 'Rao', 'divyarao@gmailcom', '9889012345', '2023-08-09'),
(9, 'Neha', 'Desai', 'nehadesai@gmailcom', '9890123456', '2023-09-05'),
(10, 'Ankit', 'Menon', 'ankitmenon@gmailcom', '9901234567', '2023-10-03'),
(11, 'Lakshmi', 'Naidu', 'lakshminaidu@gmailcom', '9912345678', '2023-11-02'),
(12, 'Ravi', 'Verma', 'raviverma@gmailcom', '9923456789', '2023-12-07'),
(13, 'Pooja', 'Joshi', 'poojajoshi@gmailcom', '9934567890', '2024-01-08'),
(14, 'Sunil', 'Chauhan', 'sunilchauhan@gmailcom', '9945678901', '2024-02-06'),
(15, 'Kavita', 'Shah', 'kavitashahw@gmailcom', '9956789012', '2024-03-07');

INSERT INTO borrow_records VALUES
(1, 1, 1, '2024-01-01', NULL, '2024-01-15'),
(2, 2, 2, '2024-01-05', '2024-01-12', '2024-01-19'),
(3, 3, 3, '2024-01-10', NULL, '2024-01-24'),
(4, 4, 4, '2024-01-15', '2024-01-22', '2024-01-29'),
(5, 5, 5, '2024-01-20', NULL, '2024-02-03'),
(6, 6, 6, '2024-01-25', NULL, '2024-02-08'),
(7, 7, 7, '2024-01-30', '2024-02-06', '2024-02-13'),
(8, 8, 8, '2024-02-05', NULL, '2024-02-19'),
(9, 9, 9, '2024-02-10', NULL, '2024-02-24'),
(10, 10, 10, '2024-02-15', NULL, '2024-03-01'),
(11, 11, 11, '2024-02-20', NULL, '2024-03-05'),
(12, 12, 12, '2024-02-25', '2024-03-04', '2024-03-11'),
(13, 13, 13, '2024-03-01', NULL, '2024-03-15'),
(14, 14, 14, '2024-03-05', NULL, '2024-03-19'),
(15, 15, 15, '2024-03-10', NULL, '2024-03-24');

INSERT INTO staff VALUES
(1, 'Ramya', 'Mohan', 'Librarian', 'ramyamohan@gmailcom', '2022-05-01'),
(2, 'Sangeeta', 'Shekar', 'Assistant Librarian', 'sangeetashekar@gmailcom', '2022-06-01'),
(3, 'Ananya', 'Kulkarni', 'Library Assistant', 'ananyakulkarni@gmailcom', '2022-07-01'),
(4, 'Vandana', 'Rao', 'Library Clerk', 'vandanarao@gmailcom', '2022-08-01'),
(5, 'Manoj', 'Patel', 'Library Technician', 'manojpatel@gmailcom', '2022-09-01'),
(6, 'Geeta', 'Deshmukh', 'Librarian', 'geetadeshmukh@gmailcom', '2022-10-01'),
(7, 'Prakash', 'Jain', 'Assistant Librarian', 'prakashjain@gmailcom', '2022-11-01'),
(8, 'Rekha', 'Bhat', 'Library Assistant', 'rekhabhatt@gmailcom', '2022-12-01'),
(9, 'Ashok', 'Shiva', 'Library Clerk', 'ashokshiva@gmailcom', '2023-01-01'),
(10, 'Vikas', 'Pande', 'Library Technician', 'vikaspandey@gmailcom', '2023-02-01'),
(11, 'Anita', 'Naik', 'Librarian', 'anitanaik@gmailcom', '2023-03-01'),
(12, 'Mahesh', 'Chauhan', 'Assistant Librarian', 'maheshchauhan@gmailcom', '2023-04-01'),
(13, 'Ritu', 'Mesta', 'Library Assistant', 'ritumesta@gmailcom', '2023-05-01'),
(14, 'Amit', 'Bhargava', 'Library Clerk', 'amitbhargava@gmailcom', '2023-06-01'),
(15, 'Sunita', 'Kumari', 'Library Technician', 'sunitakumari@gmailcom', '2023-07-01');

/* syntax for join --> SELECT * FROM TABLE_NAME 1 INNER JOIN/RIGHT JOIN/LEFT JOIN TABLE_NAME 2 ON CONDITION(in most of the situation....will use column which is declared as primary key, because it doesn't contain null and duplicate values)*/

SELECT * FROM members m INNER JOIN borrow_records br ON m.member_id = br.member_id INNER JOIN books b ON br.book_id = b.book_id INNER JOIN staff s ON s.staff_id = br.borrow_id;  

/*right join --> returns the all records/columns from right table and matched records from the left table.
left join --> returns the all records from left table and matched records from the right table , if not it will return null*/

SELECT * FROM members m LEFT JOIN borrow_records br ON m.member_id = br.member_id LEFT JOIN books b ON br.book_id = b.book_id
LEFT JOIN staff s ON s.staff_id = br.borrow_id;  

SELECT * FROM members m RIGHT JOIN borrow_records br ON m.member_id = br.member_id RIGHT JOIN books b ON br.book_id = b.book_id RIGHT JOIN staff s ON s.staff_id = br.borrow_id; 
/* inner join selects records that have matching values in both tables
cross join --> cartesian product of two tables means table-1 having 6 records (values)and table-2  having 4 records result will be 24 records */

SELECT * FROM members m INNER JOIN borrow_records br ON m.member_id = br.member_id
LEFT JOIN books b ON br.book_id = b.book_id
LEFT JOIN staff s ON s.staff_id = br.borrow_id; 

SELECT m.first_name, m.last_name, b.title, br.borrow_date, s.first_name , s.last_name FROM members m
INNER JOIN borrow_records br ON m.member_id = br.member_id RIGHT JOIN books b ON br.book_id = b.book_id
 RIGHT JOIN staff s ON s.staff_id = br.borrow_id; 

SELECT * FROM members m LEFT JOIN borrow_records br ON m.member_id = br.member_id
RIGHT JOIN books b ON br.book_id = b.book_id
RIGHT JOIN staff s ON s.staff_id = br.borrow_id;  

SELECT m.first_name, m.last_name, b.title, br.borrow_date, s.first_name , s.last_name FROM members m
RIGHT JOIN borrow_records br ON m.member_id = br.member_id
LEFT JOIN books b ON br.book_id = b.book_id
LEFT JOIN staff s ON s.staff_id = br.borrow_id; 

/*cross join*/
SELECT * FROM books CROSS JOIN borrow_records; /* 15*15 = 225 resultant record

