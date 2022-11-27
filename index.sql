-- Index

-- create index -> Creates indexes in database tables.

-- Reason - Index can help to speed up the retrieval of data

-- Syntax
create index index_name
on table_name (column1, column2, ...);

create index patient_names_ages
on patients (name, age);

-- NOTE:
-- With indexes, table updates take more time.
-- Because the table and the indexes need to be updated

-- delete index
drop index patient_names_ages
-- or
alter table employee
drop index name_index

-- create index using alter command
alter table employee
add index(ename);

-- show current inices
show index from employee;