CREATE TABLE IF NOT EXISTS genre 
(
	id serial PRIMARY KEY,
	genre_name varchar(30) NOT NULL
	
);

CREATE TABLE IF NOT EXISTS musicians
(
	id serial PRIMARY KEY,
	name_musician varchar(30) NOT NULL,
	id_genre integer REFERENCES genre(id)
);

CREATE TABLE IF NOT EXISTS albums
(
	id serial PRIMARY KEY,
	album_name varchar(30) NOT NULL,
	year_of_release integer NOT NULL,
	id_musician integer REFERENCES musicians(id)
	
);

CREATE TABLE IF NOT EXISTS tracks
(
	id serial PRIMARY KEY,
	track_name varchar(30) NOT NULL,
	duration integer NOT NULL,
	id_album integer REFERENCES albums(id)	
);