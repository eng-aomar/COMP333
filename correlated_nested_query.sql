use book;
/*
-Exists يوجد, NOT Exists لايوجد:
----------------------------------------------------------
 If a subquery returns any rows at all, EXISTS subquery is TRUE,
 and NOT EXISTS subquery is FALSE.
 Traditionally, an EXISTS subquery starts with SELECT *,
 but it could begin with SELECT 5 or SELECT column1 or anything at all.
 MySQL ignores the SELECT list in such a subquery, so it makes no difference.
---------------------------------------------------------
*/

SELECT 
    s.sname
FROM
    sailors s
WHERE
    EXISTS( select * from 
    reserves r where r.bid = 103
    and r.sid = s.sid
    );  -- Not Ture = Flase 