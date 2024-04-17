use book;
/*
In this lecture we will learn the concept of nested quieirs. 
We will learn the following operators;
	- IN, NOT IN

    -
*/
/*
How to Format your Query in Workbench -->
Edit > Format > Beautify Query
Shortcut: Ctrl+B
*/
-- Find the sailors whose age is 35, or 50 or 55.5 or 10, or 20
-- Find the sailors whose age is in 35, or 50 or 55.5 or 10, or 20
SELECT 
    *
FROM
    sailors s
WHERE
    s.age = 35 OR s.age = 50 OR s.age = 55.5
        OR s.age = 10
        OR s.age = 20;

-- The above is equivelent to the the folowing query
SELECT 
    *
FROM
    sailors s
WHERE
    s.age NOT IN (SELECT DISTINCT
            ss.age
        FROM
            sailors ss,
            reserves r
        WHERE
            ss.sid = r.sid);


  --  s.sname  not IN ("Lubber", "Rusty");
 
-- Find the name of sailors who have reserved boat number 103.


-- find the names of saliors who have reserved a red boat
SELECT 
    s.sname
FROM
    sailors s
WHERE
    s.sid IN (SELECT 
            r.sid
        FROM
            reserves r
        WHERE
            r.bid IN (SELECT 
                    b.bid
                FROM
                    boats b
                WHERE
                    b.color = 'red'))



                    
-- find the names of saiolrs who have not reserved a red boat.
