-- количество исполнителей в каждом жанре
SELECT genre_name, COUNT(musicians_id) count_musicians FROM genre g
JOIN genre_musicians gm ON g.id  = gm.genre_id
GROUP BY g.genre_name
ORDER BY COUNT(musicians_id) DESC;


-- количество треков, вошедших в альбомы 2019-2020 годов
SELECT year_of_release , COUNT(t.id)  FROM albums a
JOIN tracks t  ON a.id  = t.albums_id 
WHERE year_of_release BETWEEN 2019 AND 2020
GROUP BY year_of_release;

--средняя продолжительность треков по каждому альбому
SELECT album_name, AVG(t.duration) average_duration FROM albums a
JOIN tracks t ON a.id  = t.albums_id 
GROUP BY album_name
ORDER BY avg(duration) DESC;

--все исполнители, которые не выпустили альбомы в 2020 году
SELECT name_musician FROM musicians m 
LEFT JOIN albums a ON a.id = m.id
WHERE year_of_release < 2020;

--названия сборников, в которых присутствует конкретный исполнитель (Madonna)
SELECT collections_name, m.name_musician FROM collections c
JOIN collections_tracks ct ON c.id = ct.collections_id
JOIN album_musicians am ON c.id = am.albums_id
JOIN musicians m ON c.id = m.id
WHERE name_musician = 'Madonna';

--название альбомов, в которых присутствуют исполнители более 1 жанра

SELECT album_name , COUNT(g.genre_name) FROM albums a
JOIN album_musicians am ON a.id = am.albums_id
JOIN musicians m ON a.id = m.id  
JOIN genre_musicians gm ON a.id = gm.musicians_id
JOIN genre g ON a.id = g.id
GROUP BY album_name
HAVING COUNT(g.genre_name) > 1
ORDER BY COUNT(genre_name) DESC ;

--наименование треков, которые не входят в сборники

SELECT track_name FROM tracks t 
LEFT JOIN collections_tracks ct ON t.id = ct.tracks_id 
WHERE ct.tracks_id IS NULL;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)

SELECT name_musician , duration FROM musicians m
JOIN album_musicians am ON m.id = am.albums_id
JOIN tracks t ON m.id = t.albums_id
WHERE duration = (SELECT min(duration) FROM tracks);

--название альбомов, содержащих наименьшее количество треков.
SELECT album_name, count(t.id) FROM albums a
JOIN tracks t ON a.id = t.albums_id
GROUP BY album_name
HAVING count(t.id) = (
SELECT count(t.id) FROM albums a
JOIN tracks t ON a.id  = t.albums_id
GROUP BY a.id
LIMIT 1);
 