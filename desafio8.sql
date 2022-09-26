SELECT a.artista AS artista, al.album AS album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
WHERE a.artista_id = al.artista_id AND a.artista = 'Elis Regina'
ORDER BY album;