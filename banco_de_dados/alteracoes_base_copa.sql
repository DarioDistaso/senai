USE copa;

-- criação da nova tabela fases - INICIO
CREATE TABLE IF NOT EXISTS `copa`.`fases` (
  `fase_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`fase_id`));
-- criação da nova tabela fases - FIM

-- inserindo dados na tabela fases - INICIO
INSERT INTO fases
	(fase_id, nome)
VALUES
	(1, 'rodada_1'),
	(2, 'rodada_2');
-- inserindo dados na tabela fases - FIM
  
  
-- alterações na tabela partidas - INICIO
ALTER TABLE partidas
ADD publico_presente INT DEFAULT '0';

ALTER TABLE partidas
ADD penaltis_convertidos INT DEFAULT '0';

ALTER TABLE partidas
ADD chutes INT DEFAULT '0';

ALTER TABLE partidas
ADD chutes_gol INT DEFAULT '0';

ALTER TABLE partidas
ADD impedimentos INT DEFAULT '0';

ALTER TABLE partidas
ADD escanteios INT DEFAULT '0';

ALTER TABLE partidas
ADD faltas_cometidas INT DEFAULT '0';

ALTER TABLE partidas
ADD faltas_sofridas INT DEFAULT '0';

ALTER TABLE partidas
ADD fase_id INT NOT NULL;
-- alterações na tabela partidas - FIM


-- atualização de dados - INICIO
UPDATE partidas
SET
partida_situacao_id = 1,
publico_presente = 73000, 
penaltis_convertidos = 1,
chutes = 75,
chutes_gol = 47,
impedimentos = 12,
escanteios = 11,
faltas_cometidas = 7,
faltas_sofridas = 8,
fase_id = 1
WHERE selecao_id = 1 AND jogo_id = 1;

UPDATE partidas
SET
partida_situacao_id = 3,
publico_presente = 73000, 
penaltis_convertidos = 0,
chutes = 55,
chutes_gol = 23,
impedimentos = 4,
escanteios = 7,
faltas_cometidas = 8,
faltas_sofridas = 7,
fase_id = 1
WHERE selecao_id = 2 AND jogo_id = 1;

UPDATE partidas
SET
partida_situacao_id = 3,
publico_presente = 66000, 
penaltis_convertidos = 0,
chutes = 45,
chutes_gol = 14,
impedimentos = 5,
escanteios = 10,
faltas_cometidas = 13,
faltas_sofridas = 6,
fase_id = 1
WHERE selecao_id = 3 AND jogo_id = 2;

UPDATE partidas
SET
partida_situacao_id = 1,
publico_presente = 66000, 
penaltis_convertidos = 0,
chutes = 21,
chutes_gol = 6,
impedimentos = 5,
escanteios = 6,
faltas_cometidas = 6,
faltas_sofridas = 13,
fase_id = 1
WHERE selecao_id = 4 AND jogo_id = 2;

UPDATE partidas
SET
partida_situacao_id = 3,
publico_presente = 64000, 
penaltis_convertidos = 0,
chutes = 64,
chutes_gol = 17,
impedimentos = 1,
escanteios = 14,
faltas_cometidas = 4,
faltas_sofridas = 5,
fase_id = 1
WHERE selecao_id = 8 AND jogo_id = 3;

UPDATE partidas
SET
partida_situacao_id = 1,
publico_presente = 64000, 
penaltis_convertidos = 0,
chutes = 78,
chutes_gol = 34,
impedimentos = 2,
escanteios = 7,
faltas_cometidas = 5,
faltas_sofridas = 4,
fase_id = 1
WHERE selecao_id = 7 AND jogo_id = 3;

UPDATE partidas
SET
partida_situacao_id = 1,
publico_presente = 79000, 
penaltis_convertidos = 1,
chutes = 54,
chutes_gol = 22,
impedimentos = 7,
escanteios = 5,
faltas_cometidas = 9,
faltas_sofridas = 12,
fase_id = 1
WHERE selecao_id = 6 AND jogo_id = 4;

UPDATE partidas
SET partida_situacao_id = 3,
publico_presente = 79000, 
penaltis_convertidos = 0,
chutes = 44,
chutes_gol = 22,
impedimentos = 7,
escanteios = 10,
faltas_cometidas = 12,
faltas_sofridas = 9,
fase_id = 1
WHERE selecao_id = 5 AND jogo_id = 4;


UPDATE partidas
SET partida_situacao_id = 2,
publico_presente = 80000, 
penaltis_convertidos = 0,
chutes = 39,
chutes_gol = 20,
impedimentos = 4,
escanteios = 10,
faltas_cometidas = 14,
faltas_sofridas = 19,
fase_id = 2
WHERE selecao_id = 1 AND jogo_id = 5;

UPDATE partidas
SET partida_situacao_id = 2,
publico_presente = 80000, 
penaltis_convertidos = 0,
chutes = 23,
chutes_gol = 13,
impedimentos = 6,
escanteios = 4,
faltas_cometidas = 19,
faltas_sofridas = 14,
fase_id = 2
WHERE selecao_id = 4 AND jogo_id = 5;

UPDATE partidas
SET partida_situacao_id = 3,
publico_presente = 81000, 
penaltis_convertidos = 2,
chutes = 30,
chutes_gol = 21,
impedimentos = 6,
escanteios = 6,
faltas_cometidas = 10,
faltas_sofridas = 10,
fase_id = 2
WHERE selecao_id = 5 AND jogo_id = 6;

UPDATE partidas
SET partida_situacao_id = 1,
publico_presente = 81000, 
penaltis_convertidos = 0,
chutes = 54,
chutes_gol = 29,
impedimentos = 2,
escanteios = 7,
faltas_cometidas = 10,
faltas_sofridas = 10,
fase_id = 2
WHERE selecao_id = 7 AND jogo_id = 6;

UPDATE partidas
SET partida_situacao_id = 3,
publico_presente = 69000, 
penaltis_convertidos = 0,
chutes = 56,
chutes_gol = 33,
impedimentos = 5,
escanteios = 9,
faltas_cometidas = 11,
faltas_sofridas = 18,
fase_id = 2
WHERE selecao_id = 8 AND jogo_id = 7;

UPDATE partidas
SET partida_situacao_id = 1,
publico_presente = 69000, 
penaltis_convertidos = 1,
chutes = 58,
chutes_gol = 37,
impedimentos = 9,
escanteios = 4,
faltas_cometidas = 18,
faltas_sofridas = 11,
fase_id = 2
WHERE selecao_id = 6 AND jogo_id = 7;

UPDATE partidas
SET partida_situacao_id = 3,
publico_presente = 67000, 
penaltis_convertidos = 0,
chutes = 34,
chutes_gol = 16,
impedimentos = 4,
escanteios = 6,
faltas_cometidas = 12,
faltas_sofridas = 5,
fase_id = 2
WHERE selecao_id = 3 AND jogo_id = 8;

UPDATE partidas
SET partida_situacao_id = 1,
publico_presente = 67000, 
penaltis_convertidos = 2,
chutes = 44,
chutes_gol = 21,
impedimentos = 5,
escanteios = 8,
faltas_cometidas = 5,
faltas_sofridas = 12,
fase_id = 2
WHERE selecao_id = 2 AND jogo_id = 8;
-- atualização de dados - FIM



    