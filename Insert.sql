--Основное заполнение базы
INSERT INTO public.track (name,"time")
	VALUES ('Winterkind','4:09');	
INSERT INTO public.executor (nickname)
	VALUES ('Mantus');	
INSERT INTO public.album (name,"year")
	VALUES ('Portrait aus Wut und Trauer',2014); 	
INSERT INTO public.gerne (name_gerne)
	VALUES ('Gothic metal');	
INSERT INTO public.play_list (name)
	VALUES ('Favourites');	
INSERT INTO public.album (name,"year")
	VALUES ('Portrait aus Wut und Trauer',2014);	
INSERT INTO public.track ("name","time")
	VALUES ('The Only','00:02:51');	
INSERT INTO public.album ("name","year")
	VALUES ('Shadow Zone',2003);	
INSERT INTO public.executor (nickname)
	VALUES ('Static-X');	
INSERT INTO public.gerne (name_gerne)
	VALUES ('New-metall');	
INSERT INTO public.play_list ("name")
	VALUES ('Random');	
INSERT INTO public.track ("name","time")
	VALUES ('Great War','00:04:28');	
INSERT INTO public.album ("name","year")
	VALUES ('The Great War',2019);	
INSERT INTO public.executor (nickname)
	VALUES ('Sabaton');	
INSERT INTO public.gerne (name_gerne)
	VALUES ('Epic-metall');	
INSERT INTO public.play_list ("name")
	VALUES ('ALL');
INSERT INTO public.track ("name","time")
	VALUES ('The Bad Touch','00:04:20');	
INSERT INTO public.album ("name","year")
	VALUES ('Hooray For Boobies',1999);	
INSERT INTO public.gerne (name_gerne)
	VALUES ('Rock');	
INSERT INTO public.executor (nickname)
	VALUES ('Bloodhound Gang');	
INSERT INTO public.track ("name","time")
	VALUES ('Глаза feat. Доктор Дью','00:03:14');	
INSERT INTO public.gerne (name_gerne)
	VALUES ('альтернативный метал');	
INSERT INTO public.play_list ("name")
	VALUES ('Мемы');	
INSERT INTO public.album ("name","year")
	VALUES ('Доработано Напильником',2022);	
INSERT INTO public.executor (nickname,realname)
	VALUES ('Metalolom, Доктор Дью','Metalolom, Евгений Матвеев');	
INSERT INTO public.play_list ("name")
	VALUES ('Рок');	
INSERT INTO public.track ("name","time")
	VALUES ('It''s My Life','00:03:43');	
INSERT INTO public.album ("name","year")
	VALUES ('Crush',2000);	
INSERT INTO public.executor (nickname)
	VALUES ('Bon Jovi');	
INSERT INTO public.track ("name","time")
	VALUES ('The Red Baron','00:03:22');

	--Заполнение таблиц связей
-- Жанр-Исполнитель
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (6,4);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (5,5);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (4,4);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (3,3);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (2,2);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (1,1);

--Плейлисты-треки
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (2,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (3,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (4,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (5,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (6,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (7,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (1,1);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (5,2);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (6,5);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (4,5);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (5,4);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (2,1);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (1,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (3,2);

--Альбом-Исполнитель
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (1,1);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (2,2);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (3,3);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (4,4);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (5,5);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (6,6);

--Альбом-Трек
INSERT INTO public.album_track (id_album,id_track)
	VALUES (1,1);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (2,2);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (3,3);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (4,4);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (5,5);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (6,6);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (3,7);

--Обнаруженные ошибки
UPDATE public.track -- изменение времени на корректное
	SET "time"='00:04:09'
	WHERE "name" ='Winterkind';
	