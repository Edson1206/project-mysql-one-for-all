SELECT u.user_name AS usuario,
IF( MAX(YEAR(h.reproduction_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.reproduction_history AS h
ON h.user_id = u.user_id
GROUP BY u.user_id
ORDER BY usuario;