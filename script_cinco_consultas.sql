USE copa;

-- CONSULTA 1 (consulta que exibe data e hora dos jogos e as seleções ordenado por grupo) - INICIO
SELECT 
j.data AS 'data do jogo',
j.hora AS 'hora do jogo',
j.jogo_id AS 'n° do jogo',
s.nome AS selecao,
g.nome AS grupo
FROM jogos j
JOIN partidas p
	ON j.jogo_id = p.jogo_id
JOIN selecoes s
	ON p.selecao_id = s.selecao_id
JOIN grupos g
	ON s.grupo_id = g.grupo_id
ORDER BY g.nome;
-- CONSULTA 1 (consulta que exibe data e hora dos jogos e as seleções ordenado por grupo) - FIM

-- CONSULTA 2 (consulta que exibe todos os nome dos jogadores titulares por seleção) - INICIO
SELECT
s.nome AS selecao,
j.nome AS jogador,
e.jogador_id,
es.nome AS 'situacao jogador'
FROM selecoes s
JOIN jogadores j
	ON s.selecao_id = j.selecao_id
JOIN escalacoes e
	ON j.jogador_id = e.jogador_id
JOIN escalacao_situacoes es
	ON e.situacao_id = es.escalacao_situacao_id
WHERE e.situacao_id = 1
ORDER BY selecao;
-- CONSULTA 2 (consulta que exibe todos os nome dos jogadores titulares por seleção) - FIM

-- CONSULTA 3 (consulta que exibe a seleção, o nome do jogador, e o número de vezes que ele foi substituído) - INICIO
SELECT
j.nome AS jogador,
COUNT(s.substituicao_condicao_id) AS 'n° substituicoes'
FROM substituicoes s
JOIN escalacoes e
	ON s.jogador_id = e.jogador_id
    AND s.jogo_id = e.jogo_id
JOIN jogadores j
	ON e.jogador_id = j.jogador_id
WHERE s.substituicao_condicao_id = '1'
GROUP BY j.nome;
-- CONSULTA 3 (consulta que exibe a seleção, o nome do jogador, e o número de vezes que ele foi substituído) - FIM


-- CONSULTA 4 (consulta que exibe o numero total de cartoes amarelos e vermelhos por seleção) - INICIO
SELECT
s.nome AS selecao,
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
GROUP BY selecao;

-- CONSULTA 4 (consulta que exibe o numero total de cartoes amarelos e vermelhos por seleção) - FIM


-- CONSULTA 5 (consulta que exibe a tabela de pontuação ordenada de forma decrescente, 
-- utilizando como critérios de desempate, o saldo de gols e número de gols pró. 
-- Esta tabela deve exibir a posição da seleção, o nome, a pontuação, número de vitórias, 
-- número de empates, número de derrotas, gols pró,
-- gols contra, e saldo de gols) - INICIO
SELECT
RANK() OVER(ORDER BY pontos DESC, saldo_gols DESC, gols_pro DESC) AS posicao,
s.nome AS selecao,
p.pontos,
p.numero_vitorias,
p.numero_empates,
p.numero_derrotas,
p.gols_pro,
p.gols_contra,
p.saldo_gols
FROM pontuacoes p
JOIN selecoes s
	ON p.selecao_id = s.selecao_id;
-- CONSULTA 5 (consulta que exibe a tabela de pontuação ordenada de forma decrescente, 
-- utilizando como critérios de desempate, o saldo de gols e número de gols pró. 
-- Esta tabela deve exibir a posição da seleção, o nome, a pontuação, número de vitórias, 
-- número de empates, número de derrotas, gols pró,
-- gols contra, e saldo de gol) - FIM





