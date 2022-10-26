SELECT
u.user_name AS usuario,
COUNT(h.song_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(t.length_sec) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS u
JOIN SpotifyClone.reproduction_history AS h
ON u.user_id = h.user_id 
JOIN SpotifyClone.songs AS t
ON h.song_id = t.song_id
GROUP BY usuario ORDER BY usuario;