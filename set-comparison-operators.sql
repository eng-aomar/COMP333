use book;
/*
- IN, ANY, ALL

IN ==> Equal to any member of the list.
Any==> compare value to each value in the list.
ALL==> Compare value to every value in the list.
------------------------------------------------------
The comparison operators in SQL are categorized into the following six operators category:

SQL Equal Operator (=)
SQL Not Equal Operator (<> or !=)
SQL Greater Than Equals to Operator (>=)
SQL Less Than Operator (<)
SQL Greater Than Operator (>)
SQL Less Than Equals to Operator (<=)

> any (sub-query / list): Greator than minimum (10,2,50) >2
< any (): less than maximum (10,2,50) <50
= any(): Equal to IN
> ALL(): Greator than maximum (10,2,50) > 50
< ALL (): Less than minimum (10,2,50) < 2
---------------------------------------------------------
*/
-- find the sailors whose rating is better than some sailors called Horatio
-- describe sailors;
select * from sailors s1 where s1.rating > any(
select s.rating from sailors s where s.sname='Horatio' -- (7,9)
);

-- find the sailors whose rating is better than every sailors called Horatio
select * from sailors s1 where s1.rating > all(
select s.rating from sailors s where s.sname='Horatio'
);


-- find the sailors with the highest rating. (maximum)
select * from sailors s where s.rating >= all (
select s1.rating from sailors s1 

);
-- select s1.* from sailors s1  order by s1.rating desc limit 1; // 

