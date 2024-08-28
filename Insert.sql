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
	VALUES (1,11);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (2,12);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (3,13);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (4,14);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (5,15);
INSERT INTO public.gerne_executor (id_executor,id_gerne)
	VALUES (6,14);

--Плейлисты-треки
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (15,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (16,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (17,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (18,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (19,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (20,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (21,3);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (16,1);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (20,1);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (19,2);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (19,4);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (18,5);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (20,5);
INSERT INTO public.track_list (id_track,id_playlist)
	VALUES (17,2);

--Альбом-Исполнитель
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (16,15);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (17,17);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (18,18);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (19,19);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (20,20);
INSERT INTO public.album_executor (id_executor,id_album)
	VALUES (21,21);

--Альбом-Трек
INSERT INTO public.album_track (id_album,id_track)
	VALUES (15,15);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (17,16);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (18,17);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (19,18);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (20,19);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (21,20);
INSERT INTO public.album_track (id_album,id_track)
	VALUES (18,21);

--Обнаруженные ошибки
UPDATE public.track -- изменение времени на корректное
	SET "time"='00:04:09'
	WHERE "name" ='Winterkind';
	