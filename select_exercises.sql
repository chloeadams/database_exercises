USE codeup_test_db;
-- In your sql directory, create a new file called select_exercise.sql.
-- Remember to USE the codeup_test_db.
-- In select_exercises.sql write queries to find the following information. Before each item, output a caption explaining the results:
-- The name of all albums by Pink Floyd.
SELECT * FROM albums WHERE artist = 'Pink Floyd';
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
select release_date from albums where name = 'Sgt. Pepper''s Lonely Hearts Club';
-- The genre for Nevermind
select genre from albums where name= 'Nevermind';
-- Which albums were released in the 1990s
SELECT name FROM albums where release_date between 1990 and 1999;
-- Which albums had less than 20 million certified sales
SELECT * FROM albums where sales < 20;
-- All the albums in the rock genre. Is this all the rock albums in the table?
select * from albums where genre like '%rock%';
-- As always, commit your changes after each step and push them out to GitHub



