CREATE TABLE IF NOT EXISTS Genre (
	Genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
	Artist_id SERIAL PRIMARY KEY,
	artist_nickname VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreArtist (
	GenreArtist_id SERIAL PRIMARY KEY,
	Genre_id  INTEGER NOT NULL REFERENCES Genre(Genre_id),
	Artist_id INTEGER NOT NULL REFERENCES Artist(Artist_id)
);

CREATE TABLE IF NOT EXISTS Album (
	Album_id SERIAL PRIMARY KEY,
	Album_name VARCHAR(80) NOT NULL,
	Album_year VARCHAR(80) NOT NULL
);


CREATE TABLE IF NOT EXISTS ArtistAlbum (
	ArtistAlbum_id SERIAL PRIMARY KEY,
	Artist_id  INTEGER NOT NULL REFERENCES Artist(Artist_id),
	Album_id INTEGER NOT NULL REFERENCES Album(Album_id)
);

CREATE TABLE IF NOT EXISTS Track (
	Track_id SERIAL PRIMARY KEY,
	Track_name VARCHAR(80) NOT NULL,
	Track_duration INTEGER NOT NULL,
	Album_id INTEGER NOT NULL REFERENCES Album(Album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
	Collection_id SERIAL PRIMARY KEY,
	Collection_name VARCHAR(80)NOT NULL,
	Collection_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS TrackCollection (
	TrackCollection_id SERIAL PRIMARY KEY,
	Track_id  INTEGER NOT NULL REFERENCES Track(Track_id),
	Collection_id INTEGER NOT NULL REFERENCES Collection(Collection_id)
);