INSERT INTO Artists (name) VALUES
('The Beatles'),
('Pink Floyd'),
('Miles Davis'),
('Adele');

INSERT INTO Genres (name) VALUES
('Rock'),
('Jazz'),
('Pop');

INSERT INTO ArtistGenres (artist_id, genre_id) VALUES
(1, 1), -- The Beatles - Rock
(2, 1), -- Pink Floyd - Rock
(3, 2), -- Miles Davis - Jazz
(4, 3), -- Adele - Pop
(1, 3), -- The Beatles - Pop
(4, 1); -- Adele - Rock

INSERT INTO Albums (title, release_year) VALUES
('Abbey Road', 1969),
('The Dark Side of the Moon', 1973),
('Kind of Blue', 1959);

INSERT INTO ArtistAlbums (artist_id, album_id) VALUES
(1, 1), -- The Beatles - Abbey Road
(2, 2), -- Pink Floyd - The Dark Side of the Moon
(3, 3), -- Miles Davis - Kind of Blue
(1, 2); -- The Beatles - The Dark Side of the Moon (collaboration example)

INSERT INTO Tracks (title, duration, album_id) VALUES
('Come Together', 259, 1), -- Abbey Road
('Something', 182, 1), -- Abbey Road
('Time', 413, 2), -- The Dark Side of the Moon
('Money', 382, 2), -- The Dark Side of the Moon
('So What', 543, 3), -- Kind of Blue
('Blue in Green', 337, 3); -- Kind of Blue

INSERT INTO Collections (title, release_year) VALUES
('Greatest Hits of the 60s', 2000),
('Classic Rock Anthems', 2010),
('Jazz Essentials', 2015),
('Ultimate Pop Collection', 2020);

INSERT INTO CollectionTracks (collection_id, track_id) VALUES
(1, 1), -- Greatest Hits of the 60s - Come Together
(1, 2), -- Greatest Hits of the 60s - Something
(2, 3), -- Classic Rock Anthems - Time
(2, 4), -- Classic Rock Anthems - Money
(3, 5), -- Jazz Essentials - So What
(3, 6), -- Jazz Essentials - Blue in Green
(4, 1), -- Ultimate Pop Collection - Come Together
(4, 2); -- Ultimate Pop Collection - Something