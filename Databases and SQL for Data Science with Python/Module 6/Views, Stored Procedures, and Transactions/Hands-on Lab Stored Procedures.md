# Hands-on Lab: Stored Procedures

Stored Procedures in SQL are a type of database object that allow you to encapsulate a series of SQL statements into a single routine. They are stored in the database data dictionary and can be invoked from an application program or from the database command interface. Stored procedures can accept input parameters and return multiple values of output parameters. They can also include control-of-flow constructs such as loops and conditional statements. Stored procedures offer several benefits including improved performance, higher productivity, ease of use, and increased scalability. They also provide a mechanism for enforcing business rules and data integrity in the database system.


- Create stored procedures
- Execute stored procedures

# Stored Procedure: Exercise 1

In this exercise, you will create and execute a stored procedure to read data from a table on mysql phpadmin using SQL.

1- You will create a stored procedure routine named RETRIEVE_ALL.
- This RETRIEVE_ALL routine will contain an SQL query to retrieve all the records from the PETSALE table, so you don't need to write the same query over and over again. You just call the stored procedure routine to execute the query everytime.
- To create the stored procedure routine, copy the code below and paste it to the textarea of the SQL page. Click Go.

```sql
DELIMITER //

CREATE PROCEDURE RETRIEVE_ALL()

BEGIN
   SELECT *  FROM PETSALE;
END //
DELIMITER ;
```

2- To call the RETRIEVE_ALL routine, open another SQL tab by clicking Open in new Tab

Delete the default line which appears so that you will get a blank window.

Copy the code below and paste it to the textarea of the SQL page. Click Go.

```sql
CALL RETRIEVE_ALL;
```

3- You can view the created stored procedure routine RETRIEVE_ALL. On the left panel, expand the PETS database option and click on Procedures to view the procedure.

4- If you wish to drop the stored procedure routine RETRIEVE_ALL, copy the code below and paste it to the textarea of the SQL page. Click Go.

```sql
DROP PROCEDURE RETRIEVE_ALL;

CALL RETRIEVE_ALL;
```

## Stored Procedure: Exercise 2

In this exercise, you will create and execute a stored procedure to write/modify data in a table on MySQL using SQL.

You will create a stored procedure routine named UPDATE_SALEPRICE with parameters Animal_ID and Animal_Health.

- This UPDATE_SALEPRICE routine will contain SQL queries to update the sale price of the animals in the PETSALE table depending on their health conditions, BAD or WORSE.

- This procedure routine will take animal ID and health conditon as parameters which will be used to update the sale price of animal in the PETSALE table by an amount depending on their health condition. Suppose that:

    - For animal with ID XX having BAD health condition, the sale price will be reduced further by 25%.
    - For animal with ID YY having WORSE health condition, the sale price will be reduced further by 50%.
    - For animal with ID ZZ having other health condition, the sale price won't change.
- To create the stored procedure routine, copy the code below and paste it to the textarea of the SQL page. Click Go.

```sql
DELIMITER @
CREATE PROCEDURE UPDATE_SALEPRICE (IN Animal_ID INTEGER, IN Animal_Health VARCHAR(5))
BEGIN
    IF Animal_Health = 'BAD' THEN
        UPDATE PETSALE
        SET SALEPRICE = SALEPRICE - (SALEPRICE * 0.25)
        WHERE ID = Animal_ID;
    ELSEIF Animal_Health = 'WORSE' THEN
        UPDATE PETSALE
        SET SALEPRICE = SALEPRICE - (SALEPRICE * 0.5)
        WHERE ID = Animal_ID;
    ELSE
        UPDATE PETSALE
        SET SALEPRICE = SALEPRICE
        WHERE ID = Animal_ID;
    END IF;
END @

DELIMITER ;
```

1- Let's call the UPDATE_SALEPRICE routine. We want to update the sale price of animal with ID 1 having BAD health condition in the PETSALE table. open another SQL tab by clicking Open in new Tab

Delete the default line which appears so that you will get a blank window.

Copy the code below and paste it to the textarea of the SQL page. Click Go.

Note if you have dropped RETREIVE_ALL procedure rerun the creation script of that procedure before executing these lines.

```sql
   CALL RETRIEVE_ALL;

   CALL UPDATE_SALEPRICE(1, 'BAD');

   CALL RETRIEVE_ALL;
```

2- Let's call the UPDATE_SALEPRICE routine once again. We want to update the sale price of animal with ID 3 having WORSE health condition in the PETSALE table. copy the code below and paste it to the textarea of the SQL page. Click Go. You will have all the records retrieved from the PETSALE table.

```sql
    CALL RETRIEVE_ALL;

   CALL UPDATE_SALEPRICE(3, 'WORSE');

   CALL RETRIEVE_ALL;
```

3- You can view the created stored procedure routine UPDATE_SALEPRICE. Click on the Routines and view the procedure.

4- If you wish to drop the stored procedure routine UPDATE_SALEPRICE, copy the code below and paste it to the textarea of the SQL page. Click Go.

```sql
DROP PROCEDURE UPDATE_SALEPRICE;

CALL UPDATE_SALEPRICE;
```