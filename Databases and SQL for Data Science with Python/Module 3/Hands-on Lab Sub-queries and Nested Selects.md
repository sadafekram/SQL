# Hands-on Lab: Built-in Functions

In SQL, you can access many built-in functions that may be used to get more variety in our data analysis. These functions include aggregation functions (like `MAX`, `MIN`, `SUM`, and `AVG`), string functions (like `LENGTH`, `UCASE`, and `LCASE`), scalar functions (like `ROUND`), and a variety of date functions as well.

## Aggregation Functions

**Total cost of all animal rescues:**

```sql
SELECT SUM(COST) FROM PETRESCUE;
```

With label:

```sql
SELECT SUM(COST) AS SUM_OF_COST FROM PETRESCUE;
```

**Maximum quantity of animals rescued:**

```sql
SELECT MAX(QUANTITY) FROM PETRESCUE;
```

**Minimum quantity of animals rescued:**

```sql
SELECT MIN(QUANTITY) FROM PETRESCUE;
```

**Average cost of animals rescued:**

```sql
SELECT AVG(COST) FROM PETRESCUE;
```

## Scalar Functions and String Functions

**Rounded integral cost of each rescue:**

```sql
SELECT ROUND(COST) FROM PETRESCUE;
```

Explicit zero decimal places:

```sql
SELECT ROUND(COST, 0) FROM PETRESCUE;
```

Two decimal places:

```sql
SELECT ROUND(COST, 2) FROM PETRESCUE;
```

**Length of each animal name:**

```sql
SELECT LENGTH(ANIMAL) FROM PETRESCUE;
```

**Animal name in uppercase:**

```sql
SELECT UCASE(ANIMAL) FROM PETRESCUE;
```

**Animal name in lowercase:**

```sql
SELECT LCASE(ANIMAL) FROM PETRESCUE;
```

## Date Functions

**Rescue day:**

```sql
SELECT DAY(RESCUEDATE) FROM PETRESCUE;
```

**Rescue month:**

```sql
SELECT MONTH(RESCUEDATE) FROM PETRESCUE;
```

**Rescue year:**

```sql
SELECT YEAR(RESCUEDATE) FROM PETRESCUE;
```

**Third day after each rescue:**

```sql
SELECT DATE_ADD(RESCUEDATE, INTERVAL 3 DAY) FROM PETRESCUE;
```

**Add 2 months to rescue date:**

```sql
SELECT DATE_ADD(RESCUEDATE, INTERVAL 2 MONTH) FROM PETRESCUE;
```

**Date 3 days before rescue:**

```sql
SELECT DATE_SUB(RESCUEDATE, INTERVAL 3 DAY) FROM PETRESCUE;
```

**Difference between current date and rescue date:**

```sql
SELECT DATEDIFF(CURRENT_DATE, RESCUEDATE) FROM PETRESCUE;
```

**Present output in YYYY-MM-DD format:**

```sql
SELECT FROM_DAYS(DATEDIFF(CURRENT_DATE, RESCUEDATE)) FROM PETRESCUE;
```

## Practice Problems

**Average cost of rescuing a single dog:**

```sql
SELECT AVG(COST/QUANTITY) FROM PETRESCUE WHERE ANIMAL = 'Dog';
```

**Animal name in uppercase without duplications:**

```sql
SELECT DISTINCT UCASE(ANIMAL) FROM PETRESCUE;
```

**All rescues where the animal is a cat (lowercase):**

```sql
SELECT * FROM PETRESCUE WHERE LCASE(ANIMAL)="cat";
```

**Number of rescues in the 5th month:**

```sql
SELECT SUM(QUANTITY) FROM PETRESCUE WHERE MONTH(RESCUEDATE)="05";
```

**ID and target date (1 year after rescue):**

```sql
SELECT ID, DATE_ADD(RESCUEDATE, INTERVAL 1 YEAR) FROM PETRESCUE;
```
