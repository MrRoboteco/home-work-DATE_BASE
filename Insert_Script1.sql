

-- заполнение таблицы genre
INSERT INTO genre (genre_name)
VALUES ('folk'),
	   (2, 'jazz'),
	   (3, 'rock'),
	   (4, 'metall'),
	   (5, 'progressive metall'),
	   (6, 'soundtrack');

-- заполнение таблицы artist
INSERT INTO artist (artist_nickname)
VALUES 
    ('JRPJEJ'),
    ('Frank Sinatra'),
    ('Wardruna'),
    ('Red Hot Chili Peppers'),
    ('Tool'),
    ('Pain of Salvation'),
    ('Dream Theatre'),
    ('Ramin Djawadi'),
    ('Coldplay');
    


--заполнеие таблицы album
INSERT INTO album (album_name, album_year)
VALUES 
    ('Qorror', 2020),
    ('My way', 1966),
    ('Skald', 2018),
    ('By the way', 2002),
    ('Lateraus', 2002),
    ('Be', 2004),
    ('Dream Theatre', 2013),
    ('Game of Thrones', 2007),
    ('Everyday Life', 2019);
   
-- таблица track
INSERT INTO track (track_name, track_duration, album_id)
VALUES 
    ('Къуэдзокъуэ Толэ Цӏыкӏу', '03:02:00', 1),
    ('елэ елэ', '07:09:00', 1),
    ('Thats life', '02:18:00', 2),
    ('Strangrs in the night', '03:15:00', 2),
    ('Helvegen', '05:14:00', 3),
    ('Solrigen', '06:18:00', 3),
    ('Colifornication', '04:14:00', 4),
    ('Otherside', '03:02:00', 4),
    ('Schism', '07:27:00', 5),
    ('Parabola', '10:08:00', 5),
    ('Sisters', '06:10:00', 6),
    ('Ashes', '04:37:00', 6),
    ('My last farewell', '03:45:00', 7),
    ('wither', '05:25:00', 7),
    ('Light of the seven', '09:50:00', 8),
    ('Main title', '01:48:00', 8),
    ('Yellow', '09:50:00', 9),
    ('Paradise', '04:25:00', 9); 
   
--таблица collection 
INSERT INTO collection (collection_name, collection_year)
VALUES 
    ('Истоки', 2019),
    ('Наслаждение', 2022),
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
	   (5, 6),
	   (5, 7),
	   (6, 8);
	   

 

