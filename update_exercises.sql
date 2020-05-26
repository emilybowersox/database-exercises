USE codeup_test_db;

-- Write SELECT statements to output each of the following with a caption:
-- All albums in your table.
SELECT name FROM albums;
--SELECT 'I am output!' AS 'Info';
--caption? ^

-- All albums released before 1980
SELECT name FROM albums WHERE release_date < 1980;

-- All albums by Michael Jackson
SELECT name FROM albums WHERE artist = 'Michael Jackson';

-- After each SELECT add an UPDATE statement to:
-- Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales = (sales * 10)
WHERE id = *;
--is that a catchall way to make sure doing ALL was intentional?

-- Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;

-- Change 'Michael Jackson' to 'Peter Jackson'


-- Add SELECT statements after each UPDATE so you can see
-- the results of your handiwork.