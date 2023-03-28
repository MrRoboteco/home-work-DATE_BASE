

-- заполнение таблицы genre
INSERT INTO genre (genre_name)
VALUES ('folk');

INSERT INTO genre 
VALUES (2, 'jazz');

INSERT INTO genre 
VALUES (3, 'rock');

INSERT INTO genre 
VALUES (4, 'metall');

INSERT INTO genre 
VALUES (5, 'progressive metall');

INSERT INTO genre 
VALUES (6, 'soundtrack');


-- заполнение таблицы artist
INSERT INTO artist (artist_nickname)
VALUES ('JRPJEJ');

INSERT INTO artist (artist_nickname)
VALUES ('Frank Sinatra');

INSERT INTO artist (artist_nickname)
VALUES ('Wardruna');

INSERT INTO artist (artist_nickname)
VALUES ('Red Hot Chili Peppers');

INSERT INTO artist (artist_nickname)
VALUES ('Tool');

INSERT INTO artist (artist_nickname)
VALUES ('Pain of Salvation');

INSERT INTO artist (artist_nickname)
VALUES ('Dream Theatre');

INSERT INTO artist (artist_nickname)
VALUES ('Coldplay');

INSERT INTO artist (artist_nickname)
VALUES ('Ramin Djawadi');


--заполнение таблицы album
INSERT INTO album (album_name, album_year)
VALUES ('Qorror', 2020);

INSERT INTO album (album_name, album_year)
VALUES ('My way', 1966);

INSERT INTO album (album_name, album_year)
VALUES ('Skald', 2018);

INSERT INTO album (album_name, album_year)
VALUES ('By the way', 2002);

INSERT INTO album (album_name, album_year)
VALUES ('Lateraus', 2002);

INSERT INTO album (album_name, album_year)
VALUES ('Be', 2004);

INSERT INTO album (album_name, album_year)
VALUES ('Dream Theatre', 2013);

INSERT INTO album (album_name, album_year)
VALUES ('Game of Thrones', 2007);

INSERT INTO album (album_name, album_year)
VALUES ('Everyday Life', 2019);

--заполнение таблицы Track
INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Къуэдзокъуэ Толэ Цӏыкӏу', 3.2, 1);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('елэ елэ', 7.19, 1);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Thats life', 2.18, 2);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Strangrs in the night', 3.15, 2);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Helvegen', 5.14, 3);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Solrigen', 6.18, 3);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Colifornication', 4.14, 4);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Otherside', 3.2, 4);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Schism', 7.27, 5);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Parabola', 10.08, 5);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Sisters', 6.10, 6);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Ashes', 4.37, 6);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('My last farewell', 3.45, 7);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('wither', 5.25, 7);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Light of the seven', 9.50, 8);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Main title', 1.48, 8);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Yellow', 9.50, 9);

INSERT INTO track (track_name, track_duration, album_id)
VALUES ('Paradise', 4.25, 9);

--заполнение таблицы collection
INSERT INTO collection (collection_name, collection_year)
VALUES ('Истоки', 2019);

INSERT INTO collection (collection_name, collection_year)
VALUES ('Наслаждение', 2022),
	   ('Радость', 2020);

--заполнение таблицы track_collection
INSERT INTO track_collection(track_id, collection_id)
VALUES (1, 1),
	   (2, 1),
	   (5, 1),
	   (6, 1),
	   (15, 2),
	   (16, 2),
	   (17, 2),
	   (18, 2),
	   (9, 3),
	   (10, 3),
	   (13, 3),
	   (14, 3);

--заполнение таблицы artist_album
INSERT INTO artist_album (artist_id, album_id)
VALUES (1, 1),
	   (2, 2),
	   (3, 3),
	   (4, 4),
	   (5, 5),
	   (6, 6),
	   (7, 7),
	   (8, 8),
	   (9, 9);

--заполнение таблицы genre_artist
INSERT INTO genre_artist (genre_id, artist_id)
VALUES (1, 1),
	   (1, 3),
	   (2, 2),
	   (3, 4),
	   (3, 9),
	   (4, 6),
	   (5, 5),
	   (5, 7),
	   (6, 8);
	   

 

