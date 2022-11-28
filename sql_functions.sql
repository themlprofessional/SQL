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