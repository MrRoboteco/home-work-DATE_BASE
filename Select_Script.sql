--Название и год выхода альбомов, вышедших в 2018 году
SELECT*FROM album WHERE album_year = 2018;

--Название и продолжительность самого длительного трека
SELECT*FROM track WHERE track_duration = (SELECT max (track_duration) FROM track);

--Название треков, продолжительность которых не менее 3,5 минут
SELECT*FROM track WHERE track_duration >= 3.5;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT*FROM album WHERE album_year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова
SELECT*FROM artist WHERE artist_nickname NOT LIKE '% %' AND artist_nickname NOT LIKE '%\_%';

--Название треков, которые содержат слово «мой» или «my».
SELECT*FROM track WHERE track_name LIKE 'My' OR track_name LIKE 'My%' OR track_name LIKE '%My';