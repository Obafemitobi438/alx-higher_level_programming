-- Script that lists all shows from hbtn_0d_tvshows_rate by their rating
SELECT tv_shows.title, tsg.genre_id
	FROM tv_shows
	LEFT JOIN tv_show_genres AS tsg
	ON tv_shows.id = tsg.show_id
	WHERE tsg.genre_id IS NULL
	ORDER BY tv_shows.title ASC, tsg.genre_id ASC;
