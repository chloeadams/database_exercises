USE codeup_test_db;

-- Create a file called update_exercises.sql in your sql directory.
-- Write SELECT statements to output each of the following with a caption:
-- All albums in your table.
-- Make all the albums 10 times more popular (sales * 10)
SELECT * from albums;
update albums
	set sales = * 10;
	where 
-- All albums released before 1980
-- Move all the albums before 1980 back to the 1800s.
SELECT name FROM albums where release_date < 1980;
update albums

-- All albums by Michael Jackson
-- Change 'Michael Jackson' to 'Peter Jackson'
SELECT name FROM albums WHERE artist = 'Michael Jackson';


-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.
-- Push all your changes to GitHub.

