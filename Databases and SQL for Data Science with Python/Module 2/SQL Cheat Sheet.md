# SQL Cheat Sheet: CREATE TABLE, ALTER, DROP, TRUNCATE

## Command Syntax Description & Examples

### CREATE TABLE
**Syntax:**  
```sql
CREATE TABLE table_name (
  col1 datatype optional_keyword,
  col2 datatype optional_keyword,
  col3 datatype optional_keyword,
  ...,
  coln datatype optional_keyword
);
```
**Description:**  
The `CREATE TABLE` statement is used to create a table. Each column in the table is defined with its name, data type, and optional keyword (e.g., PRIMARY KEY, NOT NULL).

**Example:**  
```sql
CREATE TABLE employee (
  employee_id CHAR(2) PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  mobile INT
);
```

---

### ALTER TABLE - ADD COLUMN
**Syntax:**  
```sql
ALTER TABLE table_name ADD column_name_1 datatype;
ALTER TABLE table_name ADD COLUMN column_name_n datatype;
```
**Description:**  
The `ALTER TABLE` statement is used to add columns to an existing table.

**Example:**  
```sql
ALTER TABLE employee ADD income BIGINT;
ALTER TABLE employee ADD COLUMN income BIGINT;
```

---

### ALTER TABLE - ALTER COLUMN
**Syntax:**  
**MySQL:**  
```sql
ALTER TABLE table_name MODIFY column_name_1 new_data_type;
```
**DB2:**  
```sql
ALTER TABLE table_name ALTER COLUMN column_name_1 SET DATA TYPE datatype;
```
**Description:**  
This statement is used to modify the data type of an existing column.

**Example:**  
```sql
ALTER TABLE employee MODIFY mobile CHAR(20);
ALTER TABLE employee ALTER COLUMN mobile SET DATA TYPE CHAR(20);
```

---

### ALTER TABLE - DROP COLUMN
**Syntax:**  
```sql
ALTER TABLE table_name DROP COLUMN column_name_1;
```
**Description:**  
This statement removes a column from a table.

**Example:**  
```sql
ALTER TABLE employee DROP COLUMN mobile;
```

---

### ALTER TABLE - RENAME COLUMN
**Syntax:**  
**MySQL:**  
```sql
ALTER TABLE table_name CHANGE COLUMN current_column_name new_column_name datatype [optional keywords];
```
**DB2:**  
```sql
ALTER TABLE table_name RENAME COLUMN current_column_name TO new_column_name;
```
**Description:**  
This statement renames a column in a table.

**Example:**  
```sql
ALTER TABLE employee CHANGE COLUMN first_name name VARCHAR(255);
ALTER TABLE employee RENAME COLUMN first_name TO name;
```

---

### TRUNCATE TABLE
**Syntax:**  
**MySQL:**  
```sql
TRUNCATE TABLE table_name;
```
**DB2:**  
```sql
TRUNCATE TABLE table_name IMMEDIATE;
```
**Description:**  
This statement deletes all rows in a table without removing the table structure.

**Example:**  
```sql
TRUNCATE TABLE employee;
TRUNCATE TABLE employee IMMEDIATE;
```

---

### DROP TABLE
**Syntax:**  
```sql
DROP TABLE table_name;
```
**Description:**  
This statement deletes a table from the database. If the table contains data, it will be deleted along with it.

**Example:**  
```sql
DROP TABLE employee;
```

---

### Author(s)
- [Himanshu Birla](https://www.linkedin.com/in/birlahimanshu/)
- [Niveditha Pandith TS](https://www.linkedin.com/in/niveditha-pandith-53a057231/)
