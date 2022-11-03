--название и год выхода альбомов, вышедших в 2018 году
SELECT id, album_name, year_of_release FROM albums
WHERE year_of_release = 2018;

--название и продолжительность самого длительного трека
SELECT  track_name, duration FROM tracks
ORDER BY duration DESC
LIMIT 1;

--название треков, продолжительность которых не менее 3,5 минуты
SELECT  track_name, duration FROM tracks
WHERE duration >= '00:03:30';

--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collections_name, year_of_release FROM collections
WHERE year_of_release BETWEEN 2018 AND 2020;

--исполнители, чье имя состоит из 1 слова
SELECT name_musician FROM musicians
WHERE name_musician NOT LIKE '%% %%';

--название треков, которые содержат слово "мой"/"my".
SELECT  track_name FROM tracks
WHERE track_name LIKE '%My%';