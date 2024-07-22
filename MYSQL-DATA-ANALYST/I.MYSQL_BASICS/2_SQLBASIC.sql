-- SQL BASICS PRACTICE II:
-- SHOW DATABASES 
SHOW DATABASES;
CREATE DATABASE CONSUMERS;
USE CONSUMERS;
-- CREATE TABLE:USERS
CREATE TABLE USERS
(
 id int unsigned,
name varchar(100),
email varchar(150),
password varchar(100),
contact varchar (15),
address text,
dob DATE,
gender enum("M","F","O"),
status boolean);
SELECT *FROM USERS;
DESC USERS; #SCHEMA OR STRUCTURE OF TABLE 
-- ADD DATA:INSERT
INSERT INTO USERS (ID,NAME,EMAIL,PASSWORD,CONTACT,ADDRESS,DOB,GENDER,STATUS)
VALUES(1,"JOHN","john@gmail.com","12345","234567890","Pune","1990-12-01","M",1);

-- MULTIPLE DATA
INSERT INTO USERS 
VALUES(2,"JENNY","jenny@gmail.com","12347","2345645890","Pune","1990-11-01","F",1),
(3,"kia","kia@gmail.com","12346","245567890","Pune","1990-11-02","F",0);
SELECT *FROM USERS;
INSERT INTO USERS 
VALUES(4,"DEMO","demo@gmail.com","12344","2345645890","Pune","1990-11-06","F",1),
(5,"TEST","TEST@gmail.com","12348","245557890","Pune","1990-11-03","O",0);
-- SELECT:
SELECT NAME ,EMAIL FROM USERS;
SELECT *FROM USERS;
SELECT ID ,NAME AS "USERNAME",GENDER AS "G OFUSER" FROM USERS; #ALIAS 
SELECT ID,NAME AS "USERNAME", DOB AS "DATEOF BIRTH" FROM USERS;
-- WHERE CLAUSE: filter records satisfied conditions 
select *from users 
where gender="f";
select id,name ,email from users where gender="M";
select id,name ,email from users where gender !="M";#not equal to
select *from users where id>2;
