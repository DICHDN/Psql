CREATE TABLE IF NOT EXISTS public.track (
	id serial NOT null PRIMARY KEY,
	"name" varchar NOT NULL,
	"time" time NOT NULL
);

CREATE TABLE IF NOT EXISTS public.play_list (
	id serial NOT null PRIMARY KEY,
	"name" varchar NULL
);

CREATE TABLE IF NOT EXISTS public.executor (
	id serial NOT null PRIMARY KEY,
	nickname varchar NOT NULL,
	realname varchar NULL	
);

CREATE TABLE IF NOT EXISTS public.gerne (
	id serial NOT null PRIMARY KEY,
	name_gerne varchar NOT NULL
);

CREATE TABLE IF NOT EXISTS public.album (
	id serial NOT null PRIMARY KEY,
	"name" varchar NOT NULL,
	"year" INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS public.album_executor (
	id_executor serial NOT null REFERENCES executor(id),
	id_album serial NOT null references album(id),
	CONSTRAINT id_AE PRIMARY key (id_executor,id_album)
);

CREATE TABLE IF NOT EXISTS public.gerne_executor (
	id_executor serial NOT null references executor(id),
	id_gerne serial NOT null references gerne(id),
	CONSTRAINT id_GE PRIMARY key (id_executor,id_gerne)
);

CREATE TABLE IF NOT EXISTS public.track_list (
	id_track serial NOT null references track(id),
	id_playlist serial NOT null references play_list(id) ,
	CONSTRAINT id_TL PRIMARY KEY (id_track, id_playlist)
);
CREATE TABLE IF NOT EXISTS public.album_track (
	id_album serial NOT NULL references album(id),
	id_track serial NOT NULL references track(id),
	CONSTRAINT id_SA PRIMARY KEY (id_album, id_track)
);