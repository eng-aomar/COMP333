use book;
/*
Aggregation Operators:
SQL supports five aggregate operations:
1. COUNT ([DISTINCT] A): The number of (unique) values in the A column.
2. SUM ([DISTINCT] A): The sum of all (unique) values in the A column.
3. AVG ([DISTINCT] A): The average of all (unique) values in the A column.
4. MAX (A): The maximum value in the A column.
5. MIN (A): The minimum value in the A column.
Note that it does not make sense to specify DISTINCT in conjunction with MIN
or MAX (although SQL does not preclude this).
*/

-- Find the average age of all sailors.
select avg( s.age) from sailors s;
-- Find the average age of all unique  sailors.
select avg( distinct s.age) from sailors s;
-- Find the average age of sailors with a rating of 10.
select avg( s.age) from sailors s where s.rating >=10;
-- Find the name and age of the oldest sailor.
select s2.name from sailors s2 where s2.age =(
select max(s.age) from sailors s  -- 67
);
 

-- find the sum of sailors ages
select sum( s.age) from sailors s;
-- count the number of boats
select count(*) from boats; -- *, pk, any attrbute (distict) , null values 
-- count the number of sailors
select count(*) from sailors; 
-- cound the number of sailors with different (unique) names.
 select count( distinct sname) from sailors ;

-- find the names of sailors with who are older than the oldest silors with rating 10.
select s2.sname, s2.age from sailors s2 where s2.age >(
select max(s.age) from sailors s where s.rating=10 -- 35
);



 


