-- YOUTUBE PRACTICE

-- Show existing databases
SHOW DATABASES;

-- Create a new database named 'ws'
CREATE DATABASE ws;

-- Use the 'ws' database
USE ws;

-- Permanently delete the 'ws' database from memory, cannot retrieve
DROP DATABASE ws;
-- Create a new database
CREATE DATABASE school;
show databases;
-- Use the database
USE school;

-- Create the Student table
CREATE TABLE Student (
  Roll_No INT PRIMARY KEY,
  Student_Name VARCHAR(30),
  Total_Marks INT,
  Year INT
);


-- Insert data into the Student table
INSERT INTO Student (Roll_No, Student_Name, Total_Marks, Year) VALUES
  (1, 'Rahul', 90, 2010),
  (2, 'Sanjay', 80, 2010);
  SELECT *FROM Student;
  -- Adding multiple values 
  INSERT INTO Student VALUES
  (3, 'Mohan', 70, 2010),
   (4, 'MohInI', 80, 2010);

-- Update data in the Student table:Chnging existing values of the table
UPDATE Student
SET Total_Marks = 95
WHERE Student_Name = 'Rahul' AND Year = 2010;

-- Delete a row from the Student table
DELETE FROM Student
WHERE Student_Name = 'Mohan' AND Year = 2010;
SELECT *FROM Student;
-- Add a new column to the Student table
ALTER TABLE Student
ADD COLUMN Grade VARCHAR(2);

-- Drop the Student table
DROP TABLE Student;

-- Drop the school database
DROP DATABASE school;

