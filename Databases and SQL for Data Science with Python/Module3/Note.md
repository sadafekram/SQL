# Advanced techniques in retrieving data from a relational database table

The WHERE clause always requires a predicate, which is a condition that evaluates to true, false or unknown. But what if we don't know exactly what value the predicate is? For example, what if we can't remember the name of the author, but we remember that their first name starts with R? In a relational database, we can use string patterns to search data rows that match this condition.
We use the WHERE clause with the like predicate. The like predicate is used in a WHERE clause to search for a pattern in a column. The percent sign is used to define missing letters. The percent sign can be placed before the pattern, after the pattern, or both before and after the pattern.
A wildcard character is used to substitute other characters.

```sql
SELECT Firstname 
FROM Author
WHERE Firstname LIKE 'R%';
```
This will return all rows in the author table whose author's first name starts with the letter R.

If we wanted to retrieve the list of books whose number of pages is more than 290, but less than 300. We could write:

```sql
SELECT Titel, Pages  
FROM Book
WHERE Pages >=290 AND Pages <=300;
```

 
 But in a relational database, we can use a range of numbers to specify the same condition. Instead of using the comparison operators greater than or equal to, we use the comparison operator 'between and.' 'Between and' compares two values. The values in the range are inclusive. 

```sql
SELECT Titel, Pages  
FROM Book
WHERE Pages BETWEEN 290 AND 300;
```

In some cases, there are data values that cannot be grouped under ranges. For example, if we want to know which countries the authors are from. If we wanted to retrieve authors from Australia or Brazil, we could write:

```sql
SELECT Firstname, Lastname, Country 
FROM Author
WHERE Country='AU' OR Country='BR';
```
However, what if we want to retrieve authors from Canada, India, and China? The WHERE clause would become very long repeatedly listing the required country conditions. Instead, we can use the IN operator. The IN operator allows us to specify a set of values in a WHERE clause. This operator takes a list of expressions to compare against.

```sql
SELECT Firstname, Lastname, Country 
FROM Author
WHERE Country IN ('AU','BR');
```