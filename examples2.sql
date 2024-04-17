
use book;
-- UNION U, INTERSECT , AND EXCEPT -

-- Q1 Find the names of saiolrs who have reserved a red or green boat

select s.Sname 
from sailors s, reserves r, boats b
where s.sid = r.sid and r.bid = b.bid and b.color ='red' 
UNION  
select s.Sname 
from sailors s, reserves r, boats b
where s.sid = r.sid and r.bid = b.bid and b.color ='green' ;

-- Q1 Find the sids of saiolrs who have reserved red boats but not (-) green
select s.sid 
from sailors s, reserves r, boats b
where s.sid = r.sid and r.bid = b.bid and b.color ='red' 
EXCEPT   
select s.sid 
from sailors s, reserves r, boats b
where s.sid = r.sid and r.bid = b.bid and b.color ='green' ;

-- Q6 Find the color of boats reserved by Lubber
select  b.color 
from sailors s, reserves r, boats b
where s.sid = r.sid and r.bid = b.bid and s.sname ='Lubber' ;

-- Q7 Find the names of sailors who have at least reserved one boat.
select   s.sname 
from sailors s, reserves r
where s.sid = r.sid 



-- Q1 Find the sids of saiolrs who have rating of 10 or reserved boat 104