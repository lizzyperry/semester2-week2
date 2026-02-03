-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 library.db
-- 2. Load this script: .read code.sql
-- 3. Exit SQLite: .exit

--1. **List all loans**  
--Show book title, member name, and loan date.

-- write your sql code here
SELECT Books.title , Members.name, Loans.loan_date
FROM 
Loans JOIN Members
ON Members.id = Loans.member_id
JOIN Books
ON Books.id = Loans.book_id;

--2. **Books and loans**  
--List all books and any loans associated with them.

SELECT Books.title , Members.name, Loans.loan_date
FROM 
Loans RIGHT JOIN Members
ON Members.id = Loans.member_id
RIGHT JOIN Books
ON Books.id = Loans.book_id;

--3. **Branches and books**  
--List all library branches and the books they hold.