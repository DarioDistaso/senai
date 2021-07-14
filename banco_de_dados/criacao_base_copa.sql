
-- -----------------------------------------------------
-- Schema copa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `copa` DEFAULT CHARACTER SET utf8 ;

USE `copa` ;

-- -----------------------------------------------------
-- Table `copa`.`fases`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`fases` (
  `fase_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`fase_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`grupos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`grupos` (
  `grupo_id` INT NOT NULL AUTO_INCREMENT,
  `nome` CHAR(10) NULL,
  PRIMARY KEY (`grupo_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`selecoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`selecoes` (
  `selecao_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL,
  `grupo_id` INT NOT NULL,
  PRIMARY KEY (`selecao_id`),
  INDEX `fk_selecoes_grupos_idx` (`grupo_id` ASC) VISIBLE,
  CONSTRAINT `fk_selecoes_grupos`
    FOREIGN KEY (`grupo_id`)
    REFERENCES `copa`.`grupos` (`grupo_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`jogadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`jogadores` (
  `jogador_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL,
  `selecao_id` INT NOT NULL,
  PRIMARY KEY (`jogador_id`),
  INDEX `fk_jogadores_selecoes1_idx` (`selecao_id` ASC) VISIBLE,
  CONSTRAINT `fk_jogadores_selecoes1`
    FOREIGN KEY (`selecao_id`)
    REFERENCES `copa`.`selecoes` (`selecao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`locais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`locais` (
  `local_id` INT NOT NULL AUTO_INCREMENT,
  `cidade` VARCHAR(45) NOT NULL,
  `estadio` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`local_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`jogos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`jogos` (
  `jogo_id` INT NOT NULL AUTO_INCREMENT,
  `data` DATE NULL,
  `hora` TIME NULL,
  `local_id` INT NOT NULL,
  `grupo_id` INT NOT NULL,
  PRIMARY KEY (`jogo_id`),
  INDEX `fk_jogos_locais1_idx` (`local_id` ASC) VISIBLE,
  INDEX `fk_jogos_grupos1_idx` (`grupo_id` ASC) VISIBLE,
  CONSTRAINT `fk_jogos_locais1`
    FOREIGN KEY (`local_id`)
    REFERENCES `copa`.`locais` (`local_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_jogos_grupos1`
    FOREIGN KEY (`grupo_id`)
    REFERENCES `copa`.`grupos` (`grupo_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`partida_situacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`partida_situacoes` (
  `partida_situacao_id` INT NOT NULL AUTO_INCREMENT,
  `situacao` VARCHAR(100) NULL,
  PRIMARY KEY (`partida_situacao_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`partidas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`partidas` (
  `selecao_id` INT NOT NULL,
  `jogo_id` INT NOT NULL,
  `gols_feitos` TINYINT(99) NULL,
  `gols_levados` TINYINT(99) NULL,
  `partida_situacao_id` INT NOT NULL,
  INDEX `fk_selecoes_has_jogos_jogos1_idx` (`jogo_id` ASC) VISIBLE,
  INDEX `fk_selecoes_has_jogos_selecoes1_idx` (`selecao_id` ASC) VISIBLE,
  PRIMARY KEY (`selecao_id`, `jogo_id`),
  INDEX `fk_partidas_partida_situacoes1_idx` (`partida_situacao_id` ASC) VISIBLE,
  CONSTRAINT `fk_selecoes_has_jogos_selecoes1`
    FOREIGN KEY (`selecao_id`)
    REFERENCES `copa`.`selecoes` (`selecao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_selecoes_has_jogos_jogos1`
    FOREIGN KEY (`jogo_id`)
    REFERENCES `copa`.`jogos` (`jogo_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_partidas_partida_situacoes1`
    FOREIGN KEY (`partida_situacao_id`)
    REFERENCES `copa`.`partida_situacoes` (`partida_situacao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`escalacao_situacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`escalacao_situacoes` (
  `escalacao_situacao_id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`escalacao_situacao_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`escalacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`escalacoes` (
  `jogo_id` INT NOT NULL,
  `jogador_id` INT NOT NULL,
  `situacao_id` INT NOT NULL,
  PRIMARY KEY (`jogo_id`, `jogador_id`),
  INDEX `fk_jogos_has_jogadores_jogadores1_idx` (`jogador_id` ASC) VISIBLE,
  INDEX `fk_jogos_has_jogadores_jogos1_idx` (`jogo_id` ASC) VISIBLE,
  INDEX `fk_escalacoes_escalacao_situacao1_idx` (`situacao_id` ASC) VISIBLE,
  CONSTRAINT `fk_jogos_has_jogadores_jogos1`
    FOREIGN KEY (`jogo_id`)
    REFERENCES `copa`.`jogos` (`jogo_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_jogos_has_jogadores_jogadores1`
    FOREIGN KEY (`jogador_id`)
    REFERENCES `copa`.`jogadores` (`jogador_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_escalacoes_escalacao_situacao1`
    FOREIGN KEY (`situacao_id`)
    REFERENCES `copa`.`escalacao_situacoes` (`escalacao_situacao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`cartao_tipos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`cartao_tipos` (
  `cartao_tipo_id` INT NOT NULL AUTO_INCREMENT,
  `cor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cartao_tipo_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`cartoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`cartoes` (
  `cartao_tipo_id` INT NOT NULL,
  `jogo_id` INT NOT NULL,
  `jogador_id` INT NOT NULL,
  PRIMARY KEY (`cartao_tipo_id`, `jogo_id`, `jogador_id`),
  INDEX `fk_cartao_tipo_has_escalacoes_escalacoes1_idx` (`jogo_id` ASC, `jogador_id` ASC) VISIBLE,
  INDEX `fk_cartao_tipo_has_escalacoes_cartao_tipo1_idx` (`cartao_tipo_id` ASC) VISIBLE,
  CONSTRAINT `fk_cartao_tipo_has_escalacoes_cartao_tipo1`
    FOREIGN KEY (`cartao_tipo_id`)
    REFERENCES `copa`.`cartao_tipos` (`cartao_tipo_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cartao_tipo_has_escalacoes_escalacoes1`
    FOREIGN KEY (`jogo_id` , `jogador_id`)
    REFERENCES `copa`.`escalacoes` (`jogo_id` , `jogador_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`substituicao_condicoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`substituicao_condicoes` (
  `substituicao_condicao_id` INT NOT NULL AUTO_INCREMENT,
  `condicao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`substituicao_condicao_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`substituicoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`substituicoes` (
  `substituicao_condicao_id` INT NOT NULL,
  `jogo_id` INT NOT NULL,
  `jogador_id` INT NOT NULL,
  PRIMARY KEY (`substituicao_condicao_id`, `jogo_id`, `jogador_id`),
  INDEX `fk_substituicao_condicao_has_escalacoes_escalacoes1_idx` (`jogo_id` ASC, `jogador_id` ASC) VISIBLE,
  INDEX `fk_substituicao_condicao_has_escalacoes_substituicao_condic_idx` (`substituicao_condicao_id` ASC) VISIBLE,
  CONSTRAINT `fk_substituicao_condicao_has_escalacoes_substituicao_condicao1`
    FOREIGN KEY (`substituicao_condicao_id`)
    REFERENCES `copa`.`substituicao_condicoes` (`substituicao_condicao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_substituicao_condicao_has_escalacoes_escalacoes1`
    FOREIGN KEY (`jogo_id` , `jogador_id`)
    REFERENCES `copa`.`escalacoes` (`jogo_id` , `jogador_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `copa`.`pontuacoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `copa`.`pontuacoes` (
  `pontuacao_id` INT NOT NULL AUTO_INCREMENT,
  `numero_jogos` INT NULL,
  `numero_vitorias` INT NULL,
  `numero_empates` INT NULL,
  `numero_derrotas` INT NULL,
  `gols_pro` INT NULL,
  `gols_contra` INT NULL,
  `saldo_gols` INT NULL,
  `pontos` INT NULL,
  `selecao_id` INT NOT NULL,
  PRIMARY KEY (`pontuacao_id`),
  INDEX `fk_pontuacoes_selecoes1_idx` (`selecao_id` ASC) VISIBLE,
  CONSTRAINT `fk_pontuacoes_selecoes1`
    FOREIGN KEY (`selecao_id`)
    REFERENCES `copa`.`selecoes` (`selecao_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


