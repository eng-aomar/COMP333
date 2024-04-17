use book;

/*
More Nested Quiers examples 
*/

-- Find the names of sailors who have reserved both a red or a green boat.
select s.sname from sailors s, reserves r, boats b
where s.sid= r.sid and r.bid=b.bid
and b.color ='red' 
union 
select s.sname from sailors s, reserves r, boats b
where s.sid= r.sid and r.bid=b.bid
and b.color ='green';

-- Equivelent to 
SELECT DISTINCT S.sname
FROM Reserves R, Sailors S, Boats B
WHERE S.sid = R.sid AND
	R.bid = B.bid AND
	(B.color='red' OR B.color='green');


-- --------------------------------------------------
--  Find names of sailors who reserved a red AND green boat
SELECT DISTINCT S.sname
FROM Reserves R, Sailors S, Boats B
WHERE S.sid = R.sid AND
	R.bid = B.bid AND
	B.color='red'
INTERSECT -- not supported by workbench
SELECT DISTINCT S.sname
FROM Reserves R, Sailors S, Boats B
WHERE S.sid = R.sid AND
	R.bid = B.bid AND
	B.color='green';
    
-- Equivelent to 

SELECT DISTINCT S.sname
FROM Reserves R, Sailors S, Boats B
WHERE S.sid = R.sid AND
	R.bid = B.bid AND
	B.color='red' AND
	S.sid IN 
	(SELECT R.sid
	FROM Reserves R,  Boats B
	WHERE 
	R.bid = B.bid AND
	B.color='green' );
  

-- --------------------------------------

-- Find names of sailors who reserved a red but not green boat
SELECT DISTINCT S.sname
FROM Reserves R, Sailors S, Boats B
WHERE S.sid = R.sid AND
	R.bid = B.bid AND
	B.color='red'
EXCEPT -- not supported by workbench
SELECT DISTINCT S.sname
FROM Reserves R, Sailors S, Boats B
WHERE S.sid = R.sid AND
	R.bid = B.bid AND
	B.color='green';

-- Equivelent to  
 SELECT DISTINCT S.sname
FROM Reserves R, Sailors S, Boats B
WHERE S.sid = R.sid AND
	R.bid = B.bid AND
	B.color='red' AND
	S.sid NOT IN 
	(SELECT R.sid
	FROM Reserves R,  Boats B
	WHERE 
	R.bid = B.bid AND
	B.color='green' );

