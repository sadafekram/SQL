-- Suppose we want to retrieve details of all the films from the FilmLocations table. The details of each film record should contain all the columns. The query statement for this is:

SELECT * FROM FilmLocations;

-- We want to retrieve the film names and director and writer names. The query now would be:

SELECT Title, Director, Writer FROM FilmLocations;

-- We want to retrieve film names along with filming locations and release years. But we also want to restrict the output resultset to retrieve only the film records released in 2001 and onwards (release years after 2001, including 2001).

SELECT Title, ReleaseYear, Locations FROM FilmLocations WHERE ReleaseYear>=2001;

-- Retrieve the fun facts and filming locations of all films.

SELECT Locations, FunFacts FROM FilmLocations;

-- Retrieve the names of all films released in the 20th century and before (release years before 2000 including 2000), along with filming locations and release years.

SELECT Title, ReleaseYear, Locations FROM FilmLocations WHERE ReleaseYear<=2000;

-- Retrieve the names, production company names, filming locations, and release years of the films not written by James Cameron.

SELECT Title, ProductionCompany, Locations, ReleaseYear FROM FilmLocations WHERE Writer<>"James Cameron";