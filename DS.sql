CREATE TABLE IF NOT EXISTS genres (
	id SERIAL PRIMARY key,
	name VARCHAR(60) not null
);

CREATE TABLE IF NOT EXISTS performers (
	id SERIAL PRIMARY key,
	name VARCHAR(60) not null
);


CREATE TABLE IF NOT EXISTS genres_performers (
	genres_id INTEGER REFERENCES genres(id),
	performers_id INTEGER REFERENCES performers(id),
	CONSTRAINT pk PRIMARY KEY (genres_id, performers_id)
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY key,
	name VARCHAR(60) not null,
	year int not null
);

create table if not exists performers_album (
	performers_id INTEGER references performers(id),
	album_id INTEGER references album(id),
	constraint q primary key (performers_id, album_id)
);

create table if not exists collection (
	id serial primary key,
	name VARCHAR(60) not null,
	year int not null
);

CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY key,
	album_id INTEGER not null references album(id),
	collection_id INTEGER not null references collection(id),
	name VARCHAR(60) not null,
	duration time not null
);