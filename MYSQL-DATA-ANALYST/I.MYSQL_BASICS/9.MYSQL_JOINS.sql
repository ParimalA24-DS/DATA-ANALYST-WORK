show databases;
CREATE DATABASE Practice1;
Use Practice1;
-- This is Practice on SQL-JOINS:
-- TYPES OF JOINS:INNER JOIN,LEFT JOIN,RIGHT JOIN,CROSS JOIN,SELF JOIN 
-- CREATE TABLES:2
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT,
    author_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (author_id)
);

-- 2ndtable:
CREATE TABLE books (
    book_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    ratings DECIMAL(3, 2),
    au_id INT,
    PRIMARY KEY (book_id),
    FOREIGN KEY (au_id) REFERENCES authors(author_id)
);
SHOW TABLES ;
DESC books;
desc authors;

-- ADD values:INSERT
INSERT INTO authors (author_name)
VALUES ('Shamli'),('Rekha'),('Bob'),('Raju');
SELECT *FROM authors;
-- 
INSERT INTO books (title, ratings, au_id)
VALUES 
    ('Story of Shamli', 5, 1),
    ('Story of Bob_great', 4, 3),
    ('The Great Raju Story', 2, 4),
    ('Love Story of Shamli', 2, 1),
    ('The Queen Rekha', 3, 2);
SELECT *FROM books;
-- Join:
Select author_name, title, ratings from authors 
Inner join books 
on 
authors.author_id= books.book_id;

Select author_name, title, ratings from authors 
Left join books 
on 
books.book_id= authors.author_id ;
Select author_name, title, ratings from authors 
Right join books 
on 
books.book_id= authors.author_id ;

