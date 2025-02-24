-- general syntax to create a table:

CREATE TABLE TableName (
   COLUMN1 datatype,
   COLUMN2 datatype,
   COLUMN3 datatype
);

-- Create a TEST table with two columns - ID of type integer and NAME of type varchar. For this, we use the following SQL statement.

CREATE TABLE TEST (
   ID int,
   NAME varchar(30)
);

-- Create a COUNTRY table with an integer ID column, a two-letter country code column, and a variable length country name column. For this, we may use the following SQL statement.

CREATE TABLE COUNTRY (
   ID int,
   CCODE char(2),
   Name varchar(60)
);

-- In the example above, make ID a primary key. Then, the statement will be modified as shown below.

CREATE TABLE COUNTRY (
   ID int NOT NULL,
   CCODE char(2),
   Name varchar(60)
   PRIMARY KEY (ID)
);

-- In the above example, the ID column has the NOT NULL constraint added after the datatype, meaning that it cannot contain a NULL or an empty value. This is added since the database does not allow Primary Keys to have NULL values.

-- For example, consider that you wish to drop the contents of the table COUNTRY if a table exists in the dataset with the same name. In such a case, the code for the last example becomes

DROP TABLE COUNTRY;
CREATE TABLE COUNTRY (
   ID int NOT NULL,
   CCODE char(2),
   Name varchar(60)
   PRIMARY KEY (ID)
);

