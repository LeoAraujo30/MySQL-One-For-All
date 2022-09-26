SELECT u.usuario AS usuario, COUNT(r.usuario_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(m.duracao) / 60, 2) AS total_minutos
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.reproducoes AS r
INNER JOIN SpotifyClone.musicas AS m
WHERE u.usuario_id = r.usuario_id AND m.musica_id = r.musica_id
GROUP BY usuario;