SELECT COUNT(DISTINCT(m.musica)) AS cancoes, COUNT(DISTINCT(a.artista)) AS artistas,
COUNT(DISTINCT(al.album)) AS albuns
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al;