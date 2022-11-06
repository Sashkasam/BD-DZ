INSERT INTO musicians(id, name_musician)
VALUES 
(1, 'Pink'),
(2, 'Nickelback'),
(3, 'Madonna'), 
(4, 'Robbie Williams'),
(5, 'Moby'),	
(6, 'Christina Aguilera'),
(7, 'Lady Gaga'),
(8, 'Brithey Spears');

INSERT INTO genre(id, genre_name)
VALUES
(1, 'pop-rock'),
(2, 'alternative rock'),
(3, 'house'),
(4, 'dance pop'),
(5, 'pop'),
(6, 'r&b');

INSERT INTO genre_musicians(genre_id, musicians_id)
VALUES
(1,1),
(1,3),
(1,4),
(2,2),
(2,5),
(3,5),
(4,6),
(5,1),
(5,3),
(5,7),
(5,8),
(6,1),
(6,6);

INSERT INTO albums(id, album_name, year_of_release)
VALUES
(1, 'Funhouse tour', 2018),
(2, 'The Devil Went Down', 2020),
(3, 'Madame X', 2019),
(4, 'Heavy Entertainment Show' , 2015),
(5, 'Everything Was Beautiful', 2018),
(6, 'Liberation', 2014),
(7, 'Chromatica', 2018),
(8, 'Glory', 2019);

INSERT INTO album_musicians(musicians_id, albums_id)
VALUES
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4) , 
(5, 5),
(6, 6), 
(7, 7), 
(8, 8);

INSERT INTO tracks (id, track_name, duration, albums_id)
VALUES
(1, 'Try', '00:04:07', 1 ),
(2, 'So what', '00:03:35', 1),
(3, 'Animals', '00:03:06', 2),
(4, 'Breathe', '00:03:58', 2),
(5, 'Frozen', '00:02:00', 3),
(6, 'Lucky star', '00:03:38', 3),
(7, 'My way', '00:04:36', 4),
(8, 'Morning sun', '00:04:06', 4),
(9, 'Bodyrock', '00:03:35', 5),
(10, 'My onle love', '00:05:44', 5),
(11, 'Hurt', '00:04:01', 6),
(12, 'My gilrs', '00:03:07', 6),
(13, 'Poker Face', '00:03:58', 7),
(14, 'Monster', '00:04:09', 7),
(15, 'Toxic', '00:03:20', 8),
(16, 'My baby', '00:03:18', 8);

INSERT INTO tracks(id, track_name, duration, albums_id)
VALUES
(17, 'Sorry', '00:04:41', 3 ),
(18, 'Secret', '00:05:04', 3),
(19, 'LoveGame', '00:03:36', 7),
(20, 'Judas', '00:04:09', 7),
(21, 'Flower', '00:03:26', 5),
(22, 'Stronger', '00:03:23', 8);

INSERT INTO collections(id, collections_name, year_of_release)
VALUES
(1, 'Pink box', 2018),
(2, 'Three-Sided Coin', 2017),
(3, 'Celebration', 2019),
(4, 'Greatest Hits', 2021),
(5, 'Reprise', 2016),
(6, 'Aguilera', 2015),
(7, 'Love for Sale', 2020),
(8, 'Femme Fatale', 2014);

INSERT INTO collections_tracks(tracks_id, collections_id)
VALUES
(1,2), 
(5,3), 
(13,7), 
(15,8);


