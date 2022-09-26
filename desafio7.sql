SELECT a.artista AS artista, al.album AS album, COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
INNER JOIN SpotifyClone.seguidas AS s
WHERE a.artista_id = al.artista_id AND a.artista_id = s.artista_id
GROUP BY album
ORDER BY seguidores DESC, artista, album;