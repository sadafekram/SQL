-- ADD COLUMN syntax

ALTER TABLE table_name
ADD column_name data_type;

-- A variation of the syntax for adding column is:

ALTER TABLE table_name
ADD COLUMN column_name data_type;

-- Modify column data type

ALTER TABLE table_name
MODIFY column_name data_type;

-- Sometimes, the data presented may be in a different format than required. In such a case, we need to modify the data_type of the column. For example, using a numeric data type for telephone_number means you cannot include parentheses, plus signs, or dashes as part of the number. For such entries, the appropriate choice of data_type is CHAR. To modify the data type, the statement will be written as:

ALTER TABLE author 
ADD telephone_number BIGINT;

ALTER TABLE author
MODIFY telephone_number CHAR(20);

-- TRUNCATE TABLE statements are used to delete all of the rows in a table. The syntax of the statement is:

TRUNCATE TABLE table_name;