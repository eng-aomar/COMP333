use book;
/*
this is a
multiple-line comment
*/
-- Comp333 - lecture 28/03/2024
-- Basic SQL Query 
	-- select from one table
    -- understand range variables
    -- select without distinct 
    -- select with distinct 
    -- select all (choices) 
    -- Arthmatic Experssions
    -- Sort
    -- select from tow or more tables ( cross product ) 
    
-- Table Schema
describe sailors;

-- Q find names of all sailors ?
-- select s.sname from sailors s; -- solution 1 with range varaibles
   select sname from sailors ;
   -- select sname as sailor_name from sailors ; alias for a coulmn
   
-- Q find unique names of all sailors?
   select distinct s.sname from sailors s;
-- Q find ages of all sailors ?
select s.age from  sailors s;
-- Q find unique ages of all sailors?
  select distinct s.age from  sailors s;
-- Q1 Find the names and ages of all sailors. (equivelent to Projection operator)
	select s.sname as name, s.age as sage
    from sailors s;
-- Q2 Find all information of sailors with rating above 7;
	select s.sid, s.sname, s.rating, s.age
    from sailors s
    where s.rating > 7;
    
	select *
    from sailors s
    where s.rating > 7;
    
	select s.*
    from sailors s
    where s.rating > 7;
    
	select s.*
    from sailors s
    where s.rating > 7 and s.age =35;

-- Q8 Find the ages of sailors whose name begins with B and ends with b and has at least 
-- three characters. 
select s.sname, s.age 
from sailors s
where s.sname like 'B_b'; -- % denotes zero or more charachters, Example, Bb, Bob, Booob, Bpb, Bwerwerwerwb, Bb

insert into sailors 
values (555,'Booob', 12, 50);
-- Q9 Find ages of sailors whose name contain the letter b
select s.sname, s.age 
from sailors s
where s.sname like '%b%'; -- 
-- Q10 Find ages of sailors whose name is 3 characters long
 select s.sname, s.age 
from sailors s
where s.sname like '___';
/*
 select s.sname, s.age 
from sailors s
where s.sname like '%@gmail.';
*/
 -- Q11 Get  Sailors informations sorted by name  alphabetically
 select s.*
 from sailors s
 order by s.sname ; -- A - Z
 

 -- Q11 Get  Sailors informations sorted by name  alphabetically in decending order
  select s.*
 from sailors s
 order by s.sname, s.age desc ; -- Z- A
 
 -- Q12 Get Sailors names sorted by name then by rating descing
select s.*
 from sailors s
 order by s.sname desc, s.rating desc ; 
 
 -- Cross -Product 
 -- Find all information of sailors who have reserved boat number 101
 select s.*, r.bid
 from sailors s, reserves r
 where s.sid=r.sid and r.bid=101 ;
  -- Find all information of sailors who have reserved boat number 101 or 103
 select s.*, r.bid
 from sailors s, reserves r
 where s.sid=r.sid and r.bid=101 or r.bid=103;
-- Q3 find the names of all sailors who have reserved boat number 103

 select s.sname 
 from sailors s, reserves r
 where s.sid = r.sid
and r.bid =103;
-- Q3 find the names of all sailors who have reserved boat 
 select distinct s.sname 
 from sailors s, reserves r
 where s.sid = r.sid;
-- Q4 Find the sids of sailors who have reserved red boats
select r.sid
from reserves r, boats b
where r.bid = b.bid and b.color='red';

-- Arithmatic Expressions

SELECT sname, age, rating, rating + 1 as sth
FROM Sailors 
WHERE 2* rating - 1 < 10 AND sname like 'B_%b';




