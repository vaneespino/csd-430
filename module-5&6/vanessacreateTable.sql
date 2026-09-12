-- Create the database if it does not already exist
CREATE DATABASE IF NOT EXISTS CSD430;
USE CSD430;

-- Drop the table if it exists to allow clean re-runs
DROP TABLE IF EXISTS vanessa_movies_data;

-- Create the table with a minimum of 5 fields (one primary key)
CREATE TABLE vanessa_movies_data (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    release_year INT NOT NULL,
    MPAA_rating VARCHAR(50),
    IMDb_rating DECIMAL(3,1)
);