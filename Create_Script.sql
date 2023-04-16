CREATE TABLE IF NOT EXISTS Genre (
	Genre_id SERIAL PRIMARY KEY, 
	genre_name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
	Artist_id SERIAL PRIMARY KEY, 
	artist_nickname VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre_Artist (
	genre_artist_id SERIAL PRIMARY KEY,
	Genre_id  INTEGER NOT NULL REFERENCES Genre(Genre_id),
	Artist_id INTEGER NOT NULL REFERENCES Artist(Artist_id)
);

CREATE TABLE IF NOT EXISTS Album (
	Album_id SERIAL PRIMARY KEY,
	Album_name VARCHAR(80) UNIQUE NOT NULL, 
	Album_year INTEGER NOT NULL
);


CREATE TABLE IF NOT EXISTS Artist_Album (
	Artist_Album_id SERIAL PRIMARY KEY,
	Artist_id  INTEGER NOT NULL REFERENCES Artist(Artist_id),
	Album_id INTEGER NOT NULL REFERENCES Album(Album_id)
);

CREATE TABLE IF NOT EXISTS Track (
	Track_id SERIAL PRIMARY KEY,
	Track_name VARCHAR(80) NOT NULL,
	Track_duration time NOT NULL,
	Album_id INTEGER NOT NULL REFERENCES Album(Album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
	Collection_id SERIAL PRIMARY KEY,
	Collection_name VARCHAR(80) UNIQUE NOT NULL, 
	Collection_year INTEGER  NOT NULL
);

CREATE TABLE IF NOT EXISTS Track_Collection (
	Track_Collection_id SERIAL PRIMARY KEY,
	Track_id  INTEGER NOT NULL REFERENCES Track(Track_id),
	Collection_id INTEGER NOT NULL REFERENCES Collection(Collection_id)
);