create Table StudentMarkTbl(
ID int,
StudentName nvarchar(50),
Subject nvarchar(50),
Mark int
)

insert into StudentMarkTbl values (1, 'Ram', 'Physics', 75)
insert into StudentMarkTbl values (2, 'Ram', 'Chemistry', 89)
insert into StudentMarkTbl values (3, 'Ram', 'Biology', 98)
insert into StudentMarkTbl values (4, 'Ram', 'Maths', 56)
insert into StudentMarkTbl values (5, 'Sam', 'Physics', 56)
insert into StudentMarkTbl values (6, 'Sam', 'Chemistry', 98)
insert into StudentMarkTbl values (7, 'Sam', 'Biology', 89)
insert into StudentMarkTbl values (8, 'Sam', 'Maths', 75)
insert into StudentMarkTbl values (9, 'Dhoni', 'Physics', 98)
insert into StudentMarkTbl values (10,'Dhoni', 'Chemistry', 98)
insert into StudentMarkTbl values (11,'Dhoni', 'Biology', 56)
insert into StudentMarkTbl values (12,'Dhoni', 'Maths', 89)
insert into StudentMarkTbl values (NULL,NULL, NULL, NULL)


select * from
(select StudentName, Subject, Mark
from StudentMarkTbl) as First
Pivot (sum(mark) for Subject in (Physics, Chemistry, Biology, Maths)) as PivotTable


