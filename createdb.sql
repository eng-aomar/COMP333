
create database if not exists book;
use book;

--
-- 	Database Table Creation
--
--		This file will create the tables for use with the book 
--  Database Management Systems by Raghu Ramakrishnan and Johannes Gehrke.
--  It is run automatically by the installation script.
--
--	Version 0.1.0.0 2002/04/05 by: David Warden.
--	Copyright (C) 2002 McGraw-Hill Companies Inc. All Rights Reserved.
--
--  First drop any existing tables. Any errors are ignored.
--
drop table if exists enrolled;
drop table if exists class;
drop table if exists student;
drop table if exists faculty;
drop table if exists emp;
drop table if exists dept;
drop table if exists works;
drop table if exists flights;
drop table if exists aircraft;
drop table if exists certified;
drop table if exists employees;
drop table if exists suppliers;
drop table if exists parts;
drop table if exists catalog;
drop table if exists sailors;

--
-- Now, add each table.
--

create table student(
	snum int primary key,
	sname varchar(30),
	major varchar(25),
	standing varchar(2),
	age int
);

create table faculty(
	fid int primary key,
	fname varchar(30),
	deptid int
);

create table class(
	name varchar(40) primary key,
	meets_at varchar(20),
	room varchar(10),
	fid int,
	foreign key(fid) references faculty(fid)
);

create table enrolled(
	snum int,
	cname varchar(40),
	primary key(snum,cname),
	foreign key(snum) references student(snum),
	foreign key(cname) references class(name)
);

create table emp(
	eid int primary key,
	ename varchar(30),
	age int,
	salary decimal(10,2)
);

create table dept(
	did int primary key,
	dname varchar(20),
	budget decimal(10,2),
	managerid int,
	foreign key(managerid) references emp(eid)
);

create table works(
	eid int,
	did int,
	pct_time int,
	primary key(eid,did),
	foreign key(eid) references emp(eid),
	foreign key(did) references dept(did)
);

create table flights(
	flno int primary key,
	origin varchar(20),
	destination varchar(20),
	distance int,
	departs datetime,
	arrives datetime,
	price decimal(7,2)
);

create table aircraft(
	aid int primary key,
	aname varchar(30),
	crusingrange int
);

create table employees(
	eid int primary key,
	ename varchar(30),
	salary decimal(10,2)
);

create table certified(
	eid int,
	aid int,
	primary key(eid,aid),
	foreign key(eid) references employees(eid),
	foreign key(aid) references aircraft(aid)
);

create table suppliers(
	sid int primary key,
	sname varchar(30),
	address varchar(40)
);

create table parts(
	pid int primary key,
	pname varchar(40),
	color varchar(15)
);

create table catalog(
	sid int,
	pid int,
	cost decimal(10,2),
	primary key(sid,pid),
	foreign key(sid) references suppliers(sid),
	foreign key(pid) references parts(pid)
);

create table sailors(
	sid int primary key,
	sname varchar(30),
	rating int,
	age decimal(4,1)
);

