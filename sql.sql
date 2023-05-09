
CREATE TABLE directors (
  Director_ID INT PRIMARY KEY,
  Director_Name VARCHAR(255),
  Director_Nationality VARCHAR(255)
);

INSERT INTO directors (Director_ID, Director_Name, Director_Nationality)
VALUES
  (1, 'James Cameron', 'Canadian'),
  (2, 'Peter Jackson', 'New Zealander'),
  (3, 'Christopher Nolan', 'British');

CREATE TABLE movies (
  Movie_ID INT PRIMARY KEY,
  Movie_Title VARCHAR(255),
  Movie_Year INT,
  Director_ID INT,
  FOREIGN KEY (Director_ID) REFERENCES directors(Director_ID)
);

INSERT INTO movies (Movie_ID, Movie_Title, Movie_Year, Director_ID)
VALUES
  (1, 'Avatar', 2009, 1),
  (2, 'Titanic', 1997, 1),
  (3, 'The Lord of the Rings The Fellowship of the Ring', 2001, 2),
  (4, 'The Dark Knight', 2008, 3),
  (5, 'Inception', 2010, 3);

SELECT movies.Movie_Title, directors.Director_Name
	FROM movies
	INNER JOIN directors ON movies.Director_ID = directors.Director_ID
	WHERE movies.Movie_Year = 2000;
