

USE codeup_test_db;
DROP TABLE IF EXISTS albums;

-- INT, FLOAT, DECIMAL
-- CHAR, VARCHAR, TEXT
CREATE TABLE albums (
    id INT,
    artist VARCHAR,
    name VARCHAR(100),
    release_date INT,
    sales FLOAT,
    genre VARCHAR,
    PRIMARY KEY (id)
);