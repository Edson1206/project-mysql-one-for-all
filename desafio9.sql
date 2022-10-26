SELECT COUNT(s.song_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.reproduction_history AS s
INNER JOIN SpotifyClone.users AS u
ON s.user_id = u.user_id
WHERE u.user_name = 'Barbara Liskov';