USE copa;


-- criação da view 1 - INICIO
CREATE OR REPLACE VIEW visao_1 AS
SELECT
	s.nome AS selecao,
    f.nome AS fase,
	p.jogo_id, 
	p.publico_presente,
	p.gols_feitos,
	p.gols_levados,
	p.penaltis_convertidos,
	p.chutes,
	p.chutes_gol,
	p.impedimentos,
	p.escanteios,
    SUM(c.cartao_tipo_id = 1) AS 'n° cartões amarelos',
	SUM(c.cartao_tipo_id = 2) AS 'n° segundo amarelo',
	SUM(c.cartao_tipo_id = 3) AS 'n° cartões vermelhos'
FROM cartoes c
JOIN
cartao_tipos ct
	ON ct.cartao_tipo_id = c.cartao_tipo_id
JOIN escalacoes e
	ON c.jogo_id = e.jogo_id
	AND c.jogador_id = e.jogador_id
JOIN jogadores j
	ON e.jogador_id = j.jogador_id
JOIN selecoes s
	ON j.selecao_id = s.selecao_id
JOIN partidas p
	ON s.selecao_id = p.selecao_id
JOIN fases f
	ON p.fase_id = f.fase_id
GROUP BY selecao, fase;
-- criação da view_1 - FIM


-- retorno da view_1 - INICIO
SELECT * FROM visao_1;
-- retorno da view_1 - FIM


-- criação da view 2 - INICIO
CREATE OR REPLACE VIEW visao_2 AS
SELECT
f.nome AS fase,
COUNT(DISTINCT p.jogo_id) AS 'partidas jogadas',
SUM(p.gols_feitos) AS 'total gols por rodada',
ROUND(SUM(p.gols_feitos) / COUNT(distinct p.jogo_id),2) AS 'media gols por partida',
MAX(p.gols_feitos) AS 'maior n° de gol por seleção'
FROM fases f
JOIN partidas p
	USING(fase_id)
GROUP BY fase;
-- criação da view 2 - FIM


-- retorno da view 2 - INICIO
SELECT * FROM visao_2;
-- retoro da view 2 - FIM


    