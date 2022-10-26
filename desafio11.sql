SELECT
    s.song_name AS nome_musica, 
    CASE
        WHEN song_name = "The Bard’s Song" THEN "The QA’s Song"
        WHEN song_name = "O Medo de Amar é o Medo de Ser Livre" THEN "O Medo de Code Review é o Medo de Ser Livre"
        WHEN song_name = "Como Nossos Pais" THEN "Como Nossos Pull Requests"
        WHEN song_name = "BREAK MY SOUL" THEN "BREAK MY CODE"
        WHEN song_name = "ALIEN SUPERSTAR" THEN "ALIEN SUPERDEV"
    END AS novo_nome
FROM SpotifyClone.songs AS s
WHERE s.song_name
IN ("The Bard’s Song", "O Medo de Amar é o Medo de Ser Livre", "Como Nossos Pais", "BREAK MY SOUL", "ALIEN SUPERSTAR")
ORDER BY nome_musica DESC;
