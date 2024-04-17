/*
GROUP BY and HAVING Cluases
The SQL GROUP BY Statement
The GROUP BY statement groups rows that have the same values into summary rows,
like "find the number of customers in each country".
The GROUP BY statement is often used with aggregate functions
(COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

The SQL GROUP BY clause is used in conjunction with the SELECT statement to arrange
identical data into groups.
This clause follows the WHERE clause in a SELECT statement and precedes
the ORDER BY and HAVING clauses (if they exist)
===================
GROUP BY Syntax:
------------------------ 
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
=======================

Using SQL GROUP BY
GROUP BY is a SQL command commonly used to aggregate the data to get insights from it.
There are three phases when you group data:

1- Split: the table is split up into chunks of rows based on the values of the variables
we have chosen for the aggregation
2- Apply: Compute an aggregate function, like average, minimum and maximum, returning 
a single value
3 -Combine: All these resulting outputs are combined in a unique table. In this way,
we’ll have a single value for each modality of the variable of interest.
*/
/*
SQL Order of Execution
This is the order of the commands while writing the query:
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
But the reality is different from what it might look like. This is the right order of execution:
FROM
WHERE
GROUP BY
HAVING
SELECT
ORDER BY
LIMIT
*/
