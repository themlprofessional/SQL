-- CAST() funtion
-- CAST() function converts an expression from one datatype to another datatype.

-- Syntax
-- CAST (expression as datatype(length))
-- length is optional

-- SELECT CAST(14.85 AS int);
-- Result: 14          (result is truncated)

-- SELECT CAST(14.85 AS float);
-- Result: 14.85       (result is not truncated)

-- SELECT CAST(15.6 AS varchar);
-- Result: '15.6'

-- SELECT CAST(15.6 AS varchar(4));
-- Result: '15.6'

-- SELECT CAST('15.6' AS float);
-- Result: 15.6

-- SELECT CAST('2014-05-02' AS datetime);
-- Result: '2014-05-02 00:00:00.000'

-----------------------------------------------------------------------------------------------------

-- month() function
-- returns month from a date field

-- SELECT Name,
-- MONTH(ProducedDate) AS ProducedMonth
-- FROM Furniture;

-----------------------------------------------------------------------------------------------------

-- year() function
-- returns year from date field

-- SELECT YEAR('2017/08/25') AS Year;

-----------------------------------------------------------------------------------------------------

AVG(), COUNT(), SUM(), MIN(), MAX(),

-----------------------------------------------------------------------------------------------------
-- DATEADD() function
-- Syntax: DATEADD(interval, number, date)

-- interval is the time interval that you want to add, and can be any of the following values: year, quarter, month, dayofyear, day, week, weekday, hour, minute, second, millisecond, or microsecond.
-- number is the number of intervals that you want to add. This can be a positive or negative integer.
-- date is the date to which you want to add the time interval. This can be a date value, a datetime value, or a string that can be converted to a date value.

CREATE TABLE orders (
  id INT PRIMARY KEY,
  order_date DATE
);

INSERT INTO orders (id, order_date)
VALUES
  (1, '2021-01-01'),
  (2, '2021-02-01'),
  (3, '2021-03-01'),
  (4, '2021-04-01'),
  (5, '2021-05-01');

select * from orders; 

SELECT id, order_date, DATEADD(month, 3, order_date) as new_date
FROM orders;
