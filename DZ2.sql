CREATE TABLE IF NOT EXISTS genre 
(
	id serial PRIMARY KEY,
	genre_name varchar(30) NOT NULL	
);

CREATE TABLE IF NOT EXISTS musicians
(
	id serial PRIMARY KEY,
	name_musician varchar(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_musicians
(
	genre_id integer REFERENCES genre(id),
	musicians_id integer REFERENCES musicians(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, musicians_id)
);

CREATE TABLE IF NOT EXISTS albums
(
	id serial PRIMARY KEY,
	album_name varchar(30) NOT NULL,
	year_of_release integer NOT NULL
);

CREATE TABLE IF NOT EXISTS album_musicians
(
	musicians_id integer REFERENCES musicians(id),
	albums_id integer REFERENCES albums(id),
	CONSTRAINT pk2 PRIMARY KEY (musicians_id, albums_id)
);

CREATE TABLE IF NOT EXISTS tracks
(
	id serial PRIMARY KEY,
	track_name varchar(30) NOT NULL,
	duration integer NOT NULL,
	id_albums integer REFERENCES albums(id)	
);

CREATE TABLE IF NOT EXISTS collections
(
	id serial PRIMARY KEY,
	collections_name varchar(30) NOT NULL,
	year_of_release integer NOT NULL
);

CREATE TABLE IF NOT EXISTS collections_tracks
(
	tracks_id integer REFERENCES tracks(id),
	collections_id integer REFERENCES collections(id),
	CONSTRAINT pk3 PRIMARY KEY (tracks_id, collections_id)
);