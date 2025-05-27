# Hands-on Lab: String Patterns, Sorting and Grouping in MySQL

## String Patterns

You can use string patterns to filter the response of a query. Let's look at the following example:

Say you need to retrieve the first names `F_NAME` and last names `L_NAME` of all employees who live in Elgin, IL. You can use the `LIKE` operator to retrieve strings that contain the said text. The code will look as shown below.

```sql
SELECT F_NAME, L_NAME
FROM EMPLOYEES
WHERE ADDRESS LIKE '%Elgin,IL%';
```

Now assume that you want to identify the employees who were born during the 70s. The query above can be modified to:

```sql
SELECT F_NAME, L_NAME
FROM EMPLOYEES
WHERE B_DATE LIKE '197%';
```

Note that in the first example, `%` sign is used both before and after the required text. This is to indicate, that the address string can have more characters, both before and after, the required text.

In the second example, since the date of birth in Employees records starts with the birth year, the `%` sign is applied after `197%`, indicating that the birth year can be anything between 1970 to 1979. Further the `%` sign also allows any possible date throughout the selected years.

Consider a more specific example. Let us retrieve all employee records in department 5 where salary is between 60000 and 70000. The query that will be used is:

```sql
SELECT *
FROM EMPLOYEES
WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID = 5;
```

## Sorting

You can sort the retrieved entries on the basis of one or more parameters.

First, assume that you have to retrieve a list of employees ordered by department ID.

Sorting is done using the `ORDER BY` clause in your SQL query. By default, the `ORDER BY` clause sorts the records in ascending order.

```sql
SELECT F_NAME, L_NAME, DEP_ID 
FROM EMPLOYEES
ORDER BY DEP_ID;
```

Now, get the output of the same query in descending order of department ID, and within each department, the records should be ordered in descending alphabetical order by last name.

```sql
SELECT F_NAME, L_NAME, DEP_ID 
FROM EMPLOYEES
ORDER BY DEP_ID DESC, L_NAME DESC;
```

## Grouping

In this exercise, you will go through some SQL problems on Grouping.

> **NOTE:** The SQL problems in this exercise involve usage of SQL Aggregate functions `AVG` and `COUNT`. `AVG` is a function that can be used to calculate the Average or Mean of all values of a specified column in the result set. For example:

```sql
SELECT AVG(SALARY) FROM EMPLOYEES;
```

A good example of grouping would be if for each department ID, we wish to retrieve the number of employees in the department:

```sql
SELECT DEP_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY DEP_ID;
```

Now, for each department, retrieve the number of employees and the average employee salary in the department:

```sql
SELECT DEP_ID, COUNT(*), AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEP_ID;
```

Label the computed columns as `NUM_EMPLOYEES` and `AVG_SALARY`:

```sql
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID;
```

Combine `GROUP BY` and `ORDER BY` to sort the output of each group by average salary:

```sql
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY;
```

To filter a grouped response, use the `HAVING` clause. For example, limit the result to departments with fewer than 4 employees:

```sql
SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING count(*) < 4
ORDER BY AVG_SALARY;
```

## Practice Questions

**1.** Retrieve the list of all employees, first and last names, whose first names start with ‘S’:

```sql
SELECT F_NAME, L_NAME
FROM EMPLOYEES
WHERE F_NAME LIKE 'S%';
```

**2.** Arrange all the records of the EMPLOYEES table in ascending order of the date of birth:

```sql
SELECT *
FROM EMPLOYEES
ORDER BY B_DATE;
```

**3.** Group the records in terms of the department IDs and filter them for ones that have average salary more than or equal to 60000. Display the department ID and the average salary:

```sql
SELECT DEP_ID, AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING AVG(SALARY) >= 60000;
```

**4.** Sort the results for each group in descending order of average salary:

```sql
SELECT DEP_ID, AVG(SALARY)
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING AVG(SALARY) >= 60000
ORDER BY AVG(SALARY) DESC;
```
