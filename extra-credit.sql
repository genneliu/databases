--artist table

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

--start with black
SELECT * FROM artist 
WHERE name LIKE 'Black%';

--select artist contain black
SELECT * FROM artist 
WHERE name LIKE '%Black%';

--employee table

--youngest 
SELECT MAX(birth_date) FROM employee;
--OR
SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;


--oldest
SELECT MIN(birth_date) FROM employee;
--OR
SELECT * FROM employee
ORDER BY birth_date ASC
LIMIT 1;

--invoice table

--orders in ca, tx, az
SELECT * FROM invoice 
WHERE billing_state IN ('CA', 'TX', 'AZ');

--get average total of orders
SELECT AVG(total) FROM invoice;



--more join queries

--get playlist track where playlist name is music
SELECT p.track_id, l.name AS playlist_name
FROM playlist_track p
JOIN playlist l 
ON p.playlist_id = l.playlist_id
WHERE l.name = 'Music';

--get all track names for playlist 5
SELECT t.name, p.playlist_id
FROM track t
JOIN playlist_track p 
ON t.track_id = p.track_id
WHERE p.playlist_id = 5;

--track names and playlist name 2 joins
SELECT t.name, p.name AS playlist_name
FROM track t
JOIN playlist_track l
ON t.track_id = l.track_id
JOIN playlist p
ON l.playlist_id = p.playlist_id;


--get all track names and album titles that are alternative and punk
SELECT t.name, a.title, g.name
FROM track t 
JOIN album a
ON t.album_id = a.album_id
JOIN genre g
ON t.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';














