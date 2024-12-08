--1. Retrieve a unique genre of songs.
SELECT DISTINCT GENRE FROM SONGS

--2. Find top 2 albums released before 2010.
SELECT TOP 2 * FROM Albums
WHERE Release_year < 2010

--3. Insert Data into the Songs Table. (1245, ‘Zaroor’, 2.55, ‘Feel good’, 1005)
INSERT INTO Songs 
VALUES(1245, 'Zaroor', 2.55, 'Feel good', 1005)

--4. Change the Genre of the song ‘Zaroor’ to ‘Happy’
UPDATE Songs 
SET Song_title = 'Happy'
WHERE Song_title = 'ZAROOR'

--5. Delete an Artist ‘Ed Sheeran’
DELETE Artists 
WHERE Artist_name = 'Ed Sheeran'

--6. Add a New Column for Rating in Songs Table. [Ratings decimal(3,2)]
ALTER TABLE SONGS
ADD
Ratings decimal(3,2)

--7. Retrieve songs whose title starts with 'S'.
SELECT * FROM Songs
WHERE Song_title LIKE 'S%'

--8. Retrieve all songs whose title contains 'Everybody'.
SELECT * FROM Songs
WHERE Song_title LIKE '%Everybody%'

--9. Display Artist Name in Uppercase.
SELECT UPPER(Artist_name) FROM Artists

--10. Find the Square Root of the Duration of a Song ‘Good Luck’
SELECT SQRT(Duration) FROM Songs
WHERE Song_title = 'GOOD LUCK'

--11. Find Current Date.
SELECT GETDATE()

--12. Find the number of albums for each artist.
SELECT Artists.Artist_name ,COUNT(Albums.Album_id) AS NO_OF_SONGS FROM 
Albums JOIN Artists
ON Albums.Artist_id = Artists.Artist_id
GROUP BY Artists.Artist_name

--13. Retrieve the Album_id which has more than 5 songs in it.
SELECT Album_id AS MORE_THEN_5_SONGS
FROM Songs
GROUP BY Album_id
HAVING COUNT(*) > 5

--14. Retrieve all songs from the album 'Album1'. (using Subquery)
SELECT Song_title FROM SONGS
WHERE Song_id IN (SELECT Album_id FROM Albums
WHERE Album_title = 'Album1')

--15. Retrieve all albums name from the artist ‘Aparshakti Khurana’ (using Subquery)
SELECT Album_title FROM Albums
WHERE Artist_id IN (SELECT Artist_id FROM Artists
WHERE Artist_name = 'Aparshakti Khurana')

--16. Retrieve all the song titles with its album title.
SELECT Songs.Song_title,Albums.Album_title
FROM Albums JOIN Songs
ON Albums.Album_id = Songs.Album_id

--17. Find all the songs which are released in 2020.
SELECT Songs.Song_title
FROM Albums JOIN Songs
ON Albums.Album_id = Songs.Album_id
WHERE Albums.Release_year = 2020

--18. Create a view called ‘Fav_Songs’ from the songs table having songs with song_id 101-105.
CREATE VIEW Fav_Songs 
AS SELECT * FROM Songs
WHERE Song_id IN(101,102,103,104,105)

SELECT * FROM Fav_Songs

--19. Update a song name to ‘Jannat’ of song having song_id 101 in Fav_Songs view.
UPDATE Fav_Songs
SET Song_title = 'JANNAT' 
WHERE Song_id = 101

--20. Find all artists who have released an album in 2020. 
SELECT Artists.Artist_name
FROM Artists JOIN Albums
ON Artists.Artist_id = Albums.Artist_id
WHERE Albums.Release_year = 2020

--21. Retrieve all songs by Shreya Ghoshal and order them by duration. 
SELECT Songs.Song_title 
FROM Albums JOIN Songs
ON Albums.Album_id = Songs.Album_id
WHERE Albums.Artist_id = 3
ORDER BY Songs.Duration



---------------Part – B:-----------------

--22. Retrieve all song titles by artists who have more than one album. 
SELECT S.Song_title
FROM Songs S
JOIN Albums A ON S.Album_id = A.Album_id
JOIN Artists AR ON A.Artist_id = AR.Artist_id
WHERE A.Artist_id IN (
    SELECT Artist_id
    FROM Albums
    GROUP BY Artist_id
    HAVING COUNT(DISTINCT Album_id) > 1
)

--23. Retrieve all albums along with the total number of songs. 
SELECT Album_id, COUNT(Song_id) AS Total_Songs
FROM Songs
GROUP BY Album_id

--24. Retrieve all songs and release year and sort them by release year. 
SELECT Songs.Song_title, Albums.Release_year
FROM Songs JOIN Albums
ON Songs.Album_id = Albums.Album_id
ORDER BY Albums.Release_year

--25. Retrieve the total number of songs for each genre, showing genres that have more than 2 songs.SELECT Genre,COUNT(Song_id)AS TOTAL_SONGS FROM SongsGROUP BY GenreHAVING COUNT(Song_id)>2--26. List all artists who have albums that contain more than 3 songs.SELECT DISTINCT AR.Artist_name
FROM Artists AR
JOIN Albums AL ON AR.Artist_id = AL.Artist_id
JOIN Songs S ON AL.Album_id = S.Album_id
GROUP BY AL.Album_id, AR.Artist_name
HAVING COUNT(S.Song_id) > 3