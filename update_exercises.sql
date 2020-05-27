USE codeup_test_db;

-- Write SELECT statements to output each of the following with a caption:
-- All albums in your table.
SELECT name FROM albums;
SELECT 'All albums in your table.' AS 'Exercise 1';
--caption? ^

-- All albums released before 1980
SELECT name FROM albums WHERE release_date < 1980;

-- All albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson';

-- After each SELECT add an UPDATE statement to:
-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums SET sales = (sales * 10) WHERE id = *;

SELECT sales FROM albums;
--is that a catchall way to make sure doing ALL was intentional?

-- Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;

SELECT name FROM albums WHERE release_date < 1980;

-- Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * FROM albums WHERE artist = 'Peter Jackson';

-- Add SELECT statements after each UPDATE so you can see
-- the results of your handiwork.