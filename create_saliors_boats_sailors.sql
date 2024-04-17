use book;
-- Boats(bid: integer, bname: string, color: string);
create table boats(
bid integer primary key,
bname varchar(32),
color varchar(32)
);
CREATE TABLE sailors ( sid integer not null, 
sname varchar(32), 
rating integer, 
age real, 
CONSTRAINT PK_sailors PRIMARY KEY (sid) );
CREATE TABLE reserves ( sid integer not null, 
bid integer not null, 
day datetime not null, 
CONSTRAINT PK_reserves PRIMARY KEY (sid, bid),
FOREIGN KEY (sid) REFERENCES sailors(sid),
FOREIGN KEY (bid) REFERENCES boats(bid) );
-- alter table boats add column color varchar(32);
INSERT INTO boats
values
 ( 101, 'Interlake', 'blue' ) ,
 ( 102, 'Interlake', 'red' ) ,
 ( 103, 'Clipper', 'green' ) , 
 ( 104, 'Marine', 'red' ) ; 

-- Truncate the sailors table
-- Truncate table reserves;
-- TRUNCATE TABLE sailors;

-- Insert the provided data

INSERT INTO sailors (sid, sname, rating, age)
VALUES
    (22, 'Dustin', 7, 45),
    (29, 'Brutus', 1, 33),
    (31, 'Lubber', 8, 55.5),
    (32, 'Andy', 8, 25.5),
    (58, 'Rusty', 10, 35),
    (64, 'Horatio', 7, 35),
    (71, 'Zorba', 10, 16),
    (74, 'Horatio', 9, 40),
    (85, 'Art', 3, 25.5),
    (95, 'Bob', 3, 63.5);

INSERT INTO reserves 
( sid, bid, day ) 
 VALUES
(22, 101, '1998-10-10'),
(22, 102, '1998-10-10'),
(22, 103, '1998-10-8'),
(22, 104, '1998-10-7'),
(31, 102, '1998-11-10'),
(31, 103, '1998-11-6'),
(31, 104, '1998-11-12'),
(64, 101, '1998-9-5'),
(64, 102, '1998-9-8'),
(74, 103, '1998-9-8');
