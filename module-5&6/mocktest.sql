-- Create the database if it does not already exist
CREATE DATABASE IF NOT EXISTS CSD430;
USE CSD430;

-- Drop the table if it exists to allow clean re-runs
DROP TABLE IF EXISTS vanessa_movies_data;

-- Create the table (one primary key)
CREATE TABLE vanessa_movies_data (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    release_year INT NOT NULL,
    MPAA_rating VARCHAR(50),
    IMDb_rating DECIMAL(3,1)
);

-- Mock population statements for testing
INSERT INTO vanessa_movies_data (title, release_year, MPAA_rating, IMDb_rating) VALUES ('Inception', 2010, 'PG-13', 8.8);
INSERT INTO vanessa_movies_data (title, release_year, MPAA_rating, IMDb_rating) VALUES ('The Dark Knight', 2008, 'PG-13', 9.0);
INSERT INTO vanessa_movies_data (title, release_year, MPAA_rating, IMDb_rating) VALUES ('Interstellar', 2014, 'PG-13', 8.7);
