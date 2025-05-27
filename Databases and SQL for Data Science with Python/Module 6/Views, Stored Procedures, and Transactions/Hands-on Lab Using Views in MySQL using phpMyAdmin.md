# Hands-on Lab: Using Views in MySQL using phpMyAdmin

In this lab, you will learn about using views. In SQL, a view is an alternative way of representing data that exists in one or more tables. Just like a real table, it contains rows and columns. The fields in a view are fields from one or more real tables in the database. Though views can be queried like a table, views are dynamic; only the definition of the view is stored, not the data.

- Create a View and show a selection of data for a given table
- Update a View to combine two or more tables in meaningful ways
- Drop a created View

## Task 1: Create a View
In this exercise, you will create a View and show a selection of data for a given table.

1- Let's create a view called `EMPSALARY` to display salary along with some basic sensitive data of employees from the HR database. To create the `EMPSALARY` view from the `EMPLOYEES` table, Copy the code below and paste it to the textarea of the SQL page. Click Go.



```sql
CREATE VIEW EMPSALARY AS
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, SALARY
FROM EMPLOYEES;
```

2- Using SELECT, query the EMPSALARY view to retrieve all the records. Use the following statement.

```sql
SELECT * FROM EMPSALARY;
```

## Task 2: Update a View

In this exercise, you will update a View to combine two or more tables in meaningful ways.

Assume that the `EMPSALARY` view we created in Task 1 doesn't contain enough salary information, such as max/min salary and the job title of the employees. For this, we need to get information from other tables in the database. You need all columns from `EMPLOYEES` table used above, except for `SALARY`. You also need the columns `JOB_TITLE`, `MIN_SALARY`, `MAX_SALARY` of the `JOBS` table.

The command to be used is as follows:

```sql
CREATE OR REPLACE VIEW EMPSALARY AS
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, JOB_TITLE,
MIN_SALARY, MAX_SALARY
FROM EMPLOYEES, JOBS
WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;
```

NOTE: The technique used here to combine data from two tables is called implicit inner join. You will learn more about joins later on. For now, just assume you are combining the data of two different tables, EMPLOYEES and JOBS by connecting their respective columns JOB_ID and JOB_IDENT, since both the columns contain common unique data. You can have a look at the database description, shared at the beginning of the lab, to verify this.

Using `SELECT`, query the updated `EMPSALARY` view to retrieve all the records. Copy the code below and paste it to the textarea of the SQL page. Click `Go`.

```sql
SELECT * FROM EMPSALARY;
```

## Task 3: Drop a View

In this exercise, you will drop the created View `EMPSALARY`.
Use the code below.



```sql
DROP VIEW EMPSALARY;
```

Using `SELECT`, you can verify whether the `EMPSALARY` view has been deleted or not. Copy the code below and paste it to the textarea of the SQL page. Click `Go`.
```sql
SELECT * FROM EMPSALARY;
```

## Practice Problems

Try to solve the following practice problems based on your learning in this lab.

1- Create a view “EMP_DEPT” which has the following information.
`EMP_ID`, `FNAME`, `LNAME` and `DEP_ID` from `EMPLOYEES` table

```sql
CREATE VIEW EMP_DEPT AS
SELECT EMP_ID, F_NAME, L_NAME, DEP_ID
FROM EMPLOYEES;
```

2- Modify “EMP_DEPT” such that it displays Department names instead of Department IDs. For this, we need to combine information from `EMPLOYEES` and `DEPARTMENTS` as follows.
`EMP_ID`, `FNAME`, `LNAME` from `EMPLOYEES` table and
`DEP_NAME` from `DEPARTMENTS` table, combined over the columns `DEP_ID` and `DEPT_ID_DEP`.

```sql
CREATE OR REPLACE VIEW EMP_DEPT AS
SELECT EMP_ID, F_NAME, L_NAME, DEP_NAME
FROM EMPLOYEES, DEPARTMENTS
WHERE EMPLOYEES.DEP_ID = DEPARTMENTS.DEPT_ID_DEP;
```

3- Drop the view “EPM_DEPT”.

```sql
DROP VIEW EMP_DEPT
```