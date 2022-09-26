SELECT m.musica AS nome, COUNT(u.usuario_id) AS reproducoes
FROM SpotifyClone.reproducoes AS r
INNER JOIN SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.planos AS p
INNER JOIN SpotifyClone.musicas AS m
WHERE (u.plano_id = p.plano_id AND (p.plano = 'gratuito' OR p.plano = 'pessoal'))
  AND (u.usuario_id = r.usuario_id AND r.musica_id = m.musica_id)
GROUP BY nome
ORDER BY nome;