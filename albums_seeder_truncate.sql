-- Use the INSERT statement to add data to our database
-- Create a new file named albums_seeder.sql.
-- At the top of albums_seeder.sql be sure to USE the codeup_test_db database.
-- Use INSERT to add records for all the albums from this list on Wikipedia that claim over 30 million sales (the first two tables). For sales data, use the 'sales certification' column of the tables, not 'claimed sales'. For artists listed with 'Various Artists', just use the primary artist's name.
-- First write your queries as separate INSERT statements for each record and test. You should see no output.
-- Refactor your script to use a single INSERT statement for all the records and test it again. Again, this should not generate any output.
-- Commit your changes after each step and then push them out to GitHub.

USE codeup_test_db;

INSERT INTO albums ('artist', 'name', 'release_date','sales','genre')
VALUES('Michael Jackson', 'Thriller', '1982', '47.3', 'Pop, Rock, R&B'),
	  ('AC/DC',	'Back in Black', '1980', '26.1','Hard rock'),
	  ('Pink Floyd','The Dark Side of the Moon','1973','24.2','Progressive rock'),	
	  ('Whitney Houston / Various artists',	'The Bodyguard','1992',	'27.4', 'R&B, Soul, Pop, Soundtrack'),
	  ('Meat Loaf','Bat Out of Hell','1977', '21.5', 'Hard rock, Progressive rock'),	
 	  ('Eagles','Their Greatest Hits (1971–1975)','1976','32.2','Rock, Soft rock, Folk rock'),	
	  ('Bee Gees / Various artists', 'Saturday Night Fever','1977',	'20.6', 'Disco'),	
	  ('Fleetwood Mac','Rumours','1977','27.9','Soft rock')	

-- 	  Open up albums_seeder.sql, after your USE statement, add a TRUNCATE query to delete all records from the table before inserting.
-- Test your change and make sure you no longer get any duplicate records when running albums_seeder.sql.
-- Create a file called delete_exercises.sql.
-- Write SELECT statements for:
-- Albums released after 1991
-- Albums with the genre 'disco'
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
-- Make sure to put appropriate captions before each SELECT.
-- Convert the SELECT statements to DELETE.
-- Use the MySQL command line client to make sure your records really were removed.
-- Commit your changes after each step and push to GitHub.
