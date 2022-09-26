SELECT COUNT(r.usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.reproducoes AS r
INNER JOIN SpotifyClone.usuarios AS u
WHERE u.usuario_id = r.usuario_id AND u.usuario = 'Barbara Liskov';