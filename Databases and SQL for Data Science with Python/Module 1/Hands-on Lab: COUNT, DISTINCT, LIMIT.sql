-- Suppose we want to count the number of records or rows of the "FilmLocations" table. The query for this would be:

SELECT COUNT(*) FROM FilmLocations;

-- We want to count the number of locations of the films. But we also want to restrict the output result set so that we only retrieve the number of locations of the films written by a certain writer. The query for this can be written as:

SELECT COUNT(Locations) FROM FilmLocations WHERE Writer="James Cameron";

-- Assume that we want to retrieve the titles of all films in the table so that duplicates will be discarded in the output result set.

SELECT DISTINCT Title FROM FilmLocations;

-- We want to retrieve the count of release years of the films produced by a specific company so that duplicate release years of those films will be discarded in the count.

SELECT COUNT(DISTINCT ReleaseYear) FROM FilmLocations WHERE ProductionCompany="Warner Bros. Pictures";

-- Retrieve only the first 25 rows from the table so that rows other than those are not in the output result set.

SELECT * FROM FilmLocations LIMIT 25;

-- Now, we want to retrieve 15 rows from the table starting from row 11.

SELECT * FROM FilmLocations LIMIT 15 OFFSET 10;

-- Retrieve the number of locations of the films which are directed by Woody Allen.

SELECT COUNT(Locations) FROM FilmLocations WHERE Director="Woody Allen";

-- Retrieve the number of films shot at Russian Hill.

SELECT Count(Title) FROM FilmLocations WHERE Locations="Russian Hill";

-- Retrieve the number of rows having a release year older than 1950 from the "FilmLocations" table.

SELECT Count(*) FROM FilmLocations WHERE ReleaseYear<1950;

-- Retrieve the names of all unique films released in the 21st century and onwards, along with their release years.

SELECT DISTINCT Title, ReleaseYear FROM FilmLocations WHERE ReleaseYear>=2001;

-- Retrieve the directors' names and their distinct films shot at City Hall.

SELECT DISTINCT Title, Director FROM FilmLocations WHERE Locations="City Hall";

-- Retrieve the number of distributors who distributed films with the 1st actor, Clint Eastwood.

SELECT COUNT(DISTINCT Distributor) FROM FilmLocations WHERE Actor1="Clint Eastwood";

-- Retrieve the names of the first 50 films.

SELECT DISTINCT Title FROM FilmLocations LIMIT 50; 

-- Retrieve the first 10 film names released in 2015.

SELECT DISTINCT Title FROM FilmLocations WHERE ReleaseYear=2015 LIMIT 10;

-- Retrieve the next 3 film names that follow after the first 5 films released in 2015.

SELECT DISTINCT Title FROM FilmLocations WHERE ReleaseYear=2015 LIMIT 3 OFFSET 5;