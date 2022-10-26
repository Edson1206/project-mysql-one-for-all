SELECT COUNT(c.song_id) AS reproducoes,
s.song_name AS nome
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproduction_history as c
ON s.song_id = c.song_id
INNER JOIN SpotifyClone.users AS u
ON u.user_id = c.user_id AND (u.plan_id = '1' OR u.plan_id = '4')
GROUP BY nome
ORDER BY nome;