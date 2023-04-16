--Домашнее задание к лекции «Продвинутая выборка данных»
--------------------------------------------------------

--Количество исполнителей в каждом жанре
SELECT genre.*,
count (artist.artist_id) AS artist_count
FROM genre
JOIN genre_artist ON genre.genre_id = genre_artist.genre_id
JOIN artist ON genre_artist.artist_id = artist.artist_id
GROUP BY genre.genre_id
ORDER BY artist_count DESC ;

--Количество треков, вошедших в альбомы 2019–2020 годов
SELECT count (track.track_id)
FROM track
JOIN album ON track.album_id= album.album_id 
WHERE album.album_year  BETWEEN 2019 AND 2020;
--GROUP BY track_id;

-- подробнее
--SELECT track.track_name,album.album_year,
--count(*) AS count_of_rows
--FROM track
--JOIN album ON track.album_id = album.album_id
--WHERE album.album_year 
--BETWEEN 2019 AND 2020
--GROUP BY track.track_name,
--album.album_year;

--Средняя продолжительность треков по каждому альбому
SELECT album.album_name,
AVG(track.track_duration) AS
average_value
FROM album
JOIN track ON album.album_id = track.track_id 
GROUP BY album.album_name;

--Все исполнители, которые не выпустили альбомы в 2020 году

SELECT artist_nickname
FROM artist
WHERE artist.artist_id NOT IN (
  SELECT artist_id
  FROM artist_album
  JOIN album ON artist_album.album_id = album.album_id
  WHERE album.album_year = 2020
);


--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT collection.collection_name,artist.artist_nickname
FROM collection
JOIN track_collection ON collection.collection_id = track_collection.collection_id
JOIN track ON track_collection.track_id = track.track_id 
JOIN album ON track.album_id = album.album_id 
JOIN artist_album ON album.album_id = artist_album.album_id 
JOIN artist ON artist_album.artist_id = artist.artist_id 
WHERE artist.artist_nickname  = 'Wardruna'


--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
 SELECT album.album_name,artist.artist_nickname
 FROM  album 
 JOIN  artist_album ON album.album_id = artist_album.album_id 
 JOIN artist ON artist_album.artist_id = artist.artist_id 
 JOIN genre_artist ON artist.artist_id = genre_artist.artist_id 
 JOIN genre ON genre_artist.genre_id = genre.genre_id 
 GROUP BY album.album_name,artist.artist_nickname 
 HAVING count(genre.genre_id) > 1;
 
 --Наименования треков, которые не входят в сборники
 SELECT track.track_name 
 FROM track
 LEFT JOIN track_collection ON track.track_id = track_collection.track_id 
 LEFT JOIN collection ON track_collection.collection_id = collection.collection_id 
 WHERE collection.collection_name IS NULL;

 --Исполнитель или исполнители, написавшие самый короткий по продолжительности трек,
 --теоретически таких треков может быть несколько
 SELECT artist.artist_nickname 
 FROM artist
 JOIN artist_album ON artist.artist_id = artist_album.artist_id
 JOIN album ON artist_album.album_id = album.album_id
 JOIN track ON album.album_id = track.album_id
 WHERE track.track_duration = (SELECT min (track_duration) FROM track);
 
 --Названия альбомов, содержащих наименьшее количество треков
-- SELECT album.album_name 
-- FROM album
-- JOIN track ON album.album_id = track.album_id
--SELECT album.album_name, track.album_id , count(*)  AS count_row
--FROM track 
--JOIN album ON track.album_id = album.album_id
--GROUP BY track.album_id,album.album_name 
--ORDER BY count_row ASC
--LIMIT 2;

SELECT album.album_name
FROM track
JOIN album ON track.album_id = album.album_id
GROUP BY album.album_id
HAVING count(track.track_id) = (
  SELECT count(track_id)
  FROM track
  WHERE album.album_id = track.album_id
  GROUP BY album.album_id
  ORDER BY 1
  LIMIT 1
);
