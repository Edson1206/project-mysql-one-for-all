SELECT 
a.artist_name AS artista,
b.album_name AS album,
COUNT(c.artist_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS b
ON a.artist_id = b.artist_id 
INNER JOIN SpotifyClone.following_artist AS c
ON a.artist_id = c.artist_id
GROUP BY artista, album 
ORDER BY seguidores DESC, artista ASC, album ASC;