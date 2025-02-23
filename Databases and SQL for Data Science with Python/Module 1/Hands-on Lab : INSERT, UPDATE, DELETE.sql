-- Insert a new instructor record with id 4 for Sandip Saha who lives in Edmonton, CA into the “Instructor” table.

INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(4, 'Saha', 'Sandip', 'Edmonton', 'CA');

-- Insert two new instructor records into the “Instructor” table. First record with id 5 for John Doe who lives in Sydney, AU. Second record with id 6 for Jane Doe who lives in Dhaka, BD.

INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(5, 'Doe', 'John', 'Sydney', 'AU'), (6, 'Doe', 'Jane', 'Dhaka', 'BD');

-- Insert a new instructor record with id 7 for Antonio Cangiano who lives in Vancouver, CA into the “Instructor” table.

INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(7, 'Cangiano', 'Antonio', 'Vancouver', 'CA');

SELECT * FROM Instructor;

-- Insert two new instructor records into the “Instructor” table. First record with id 8 for Steve Ryan who lives in Barlby, GB. Second record with id 9 for Ramesh Sannareddy who lives in Hyderabad, IN.

INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(8, 'Ryan', 'Steve', 'Barlby', 'GB'), (9, 'Sannareddy', 'Ramesh', 'Hyderabad', 'IN');

SELECT * FROM Instructor;

-- Update the city for Sandip to Toronto.

UPDATE Instructor 
SET city='Toronto' 
WHERE firstname="Sandip";

-- Update the city and country for Doe with id 5 to Dubai and AE respectively.

UPDATE Instructor 
SET city='Dubai', country='AE' 
WHERE ins_id=5;

-- pdate the city of the instructor record to Markham whose id is 1.

UPDATE Instructor 
SET city='Markham' 
WHERE ins_id=1;

SELECT * FROM Instructor;

-- Update the city and country for Sandip with id 4 to Dhaka and BD respectively.

UPDATE Instructor 
SET city='Dhaka', country='BD' 
WHERE ins_id=4;

SELECT * FROM Instructor;

-- Remove the instructor record of Doe whose id is 6.

DELETE FROM instructor
WHERE ins_id = 6;

-- Remove the instructor record of Hima.

DELETE FROM instructor
WHERE firstname = 'Hima';

SELECT * FROM Instructor;