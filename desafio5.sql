SELECT m.musica AS cancao,
COUNT(r.data_reproducao) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.reproducoes AS r
WHERE m.musica_id = r.musica_id
GROUP BY musica
ORDER BY reproducoes DESC, musica ASC
LIMIT 2;