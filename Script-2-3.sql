SELECT title, duration
FROM Tracks
WHERE duration = (SELECT MAX(duration) FROM Tracks);

SELECT title
FROM Tracks
WHERE duration >= 210;

SELECT title
FROM Collections
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name
FROM Artists
WHERE name NOT LIKE '% %';

SELECT title
FROM Tracks
WHERE title ILIKE '%my%';

SELECT g.name, COUNT(ag.artist_id) AS artist_count
FROM Genres g
LEFT JOIN ArtistGenres ag ON g.genre_id = ag.genre_id
GROUP BY g.name;

SELECT COUNT(t.track_id) AS track_count
FROM Tracks t
JOIN Albums a ON t.album_id = a.album_id
WHERE a.release_year BETWEEN 2019 AND 2020;

SELECT a.title, ROUND(AVG(t.duration), 2) AS avg_duration
FROM Albums a
JOIN Tracks t ON a.album_id = t.album_id
GROUP BY a.title;

SELECT a.name
FROM Artists a
WHERE a.artist_id NOT IN (
    SELECT aa.artist_id
    FROM ArtistAlbums aa
    JOIN Albums al ON aa.album_id = al.album_id
    WHERE al.release_year = 2020
);

SELECT DISTINCT c.title
FROM Collections c
JOIN CollectionTracks ct ON c.collection_id = ct.collection_id
JOIN Tracks t ON ct.track_id = t.track_id
JOIN ArtistAlbums aa ON t.album_id = aa.album_id
JOIN Artists a ON aa.artist_id = a.artist_id
WHERE a.name = 'The Beatles';