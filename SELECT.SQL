--Название и продолжительность самого длительного трека.
select MAX(time) 
from public.track

--Название треков, продолжительность которых не менее 3,5 минут.
select time
from public.track
where time>='00:03:30'

--Названия сборников, вышедших в период с 2018 по 2020 годы включительно.
select "name"
from public.album
where "year">='2018-01-01' and "year"<='2020-12-31' -- при создании базы следовало выбрать int для простоты работы

--Исполнители, чьё имя состоит из одного слова.
select nickname
from public.executor
where nickname not like '% %'

--Название треков, которые содержат слова «мой» или «my».
select "name"
from public.track
where "name" like '%my%' or  "name" like '%мой%' or "name" like '%My%' -- регистр имеет значение, а название песни "авторское"

--Количество исполнителей в каждом жанре.
SELECT name_gerne, count(id) FROM public.gerne
LEFT JOIN public.gerne_executor  ON id = id_gerne
GROUP BY name_gerne 

--Количество треков, вошедших в альбомы 2019–2020 годов.
-- потребовалось создать дополнительную таблицу, так как нет связи альбома и другова трека - точнее будет дублирование информации
-- в эту таблицу будут помещены в соответствии все треки и альбомы в которые они входят  дублирование будет только по id, и данная таблица будет вспомогательной
SELECT COUNT(*) from (
SELECT track.id FROM public.track
JOIN public.album_track ON album_track.id_track = id
join public.album on public.album.id = public.album_track.id_album 
where public.album.year >= '2019-01-01' and public.album.year <='2020-12-31')

--Средняя продолжительность треков по каждому альбому.
SELECT album."name" , avg(time) t FROM album
JOIN public.album_track  ON id_album = album.id 
join public.track on album_track.id_track = track.id 
GROUP BY album."name"
ORDER BY t ;

--Все исполнители, которые не выпустили альбомы в 2020 году.
--Все исполнители, которые не выпустили альбомы в 2020 году.
select nickname  from public.executor 
join public.album on album."year" !=2020
join album_executor on public.album.id = id_album
where id_executor = public.executor.id 

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select public.play_list."name"  from  public.play_list
join public.track_list on id_playlist=id 
join public.track on public.track.id = id_track
join public.album_track on public.album_track.id_track = public.track.id
join public.album on public.album.id = public.album_track.id_album 
join public.album_executor on public.album_executor.id_album = public.album.id
join public.executor on public.executor.id = public.album_executor.id_executor 
where public.executor.nickname = 'Sabaton' -- 2 песни и обе в all не нашел как правильно применить unique для отображения 1 списка
