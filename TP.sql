-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LCCinema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LCCinema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LCCinema` DEFAULT CHARACTER SET utf8 ;
USE `LCCinema` ;

-- -----------------------------------------------------
-- Table `LCCinema`.`Filme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`Filme` (
  `id_filme` INT NOT NULL,
  `Nome` VARCHAR(75) NOT NULL,
  `Duracao` INT NOT NULL,
  `Ano_lancamento` VARCHAR(45) NOT NULL,
  `Sinopse` TEXT(2500) NULL,
  `Idade_minima` INT NULL,
  PRIMARY KEY (`id_filme`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`Cliente` (
  `id_cliente` INT NOT NULL,
  `Nome` VARCHAR(75) NOT NULL,
  `Data_nascimento` DATETIME NOT NULL,
  `NIF` VARCHAR(9) NOT NULL,
  `Num_tel` VARCHAR(13) NOT NULL,
  `Email` VARCHAR(75) NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`Menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`Menu` (
  `id_menu` INT NOT NULL,
  `Tamanho` VARCHAR(10) NOT NULL,
  `Preço` DECIMAL(3,2) NOT NULL,
  PRIMARY KEY (`id_menu`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`Realizador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`Realizador` (
  `id_realizador` INT NOT NULL,
  `Nome` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`id_realizador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`Ator`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`Ator` (
  `id_ator` INT NOT NULL,
  `Nome` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`id_ator`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`Bilhete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`Bilhete` (
  `id_bilhete` INT NOT NULL,
  `Preco` DECIMAL(4,2) NOT NULL,
  `Categoria` VARCHAR(10) NOT NULL,
  `Desconto` INT NULL,
  PRIMARY KEY (`id_bilhete`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`Genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`Genero` (
  `Nome` VARCHAR(75) NOT NULL,
  `Descricao` TEXT(2500) NULL,
  PRIMARY KEY (`Nome`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`Funcionario` (
  `id_funcionario` INT NOT NULL,
  `Nome` VARCHAR(75) NOT NULL,
  `Data_nascimento` DATETIME NOT NULL,
  `NIF` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`id_funcionario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`Fatura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`Fatura` (
  `id_fatura` INT NOT NULL,
  `Preco_total` INT NOT NULL,
  `Data_emissao` DATETIME NOT NULL,
  `NIF` VARCHAR(9) NULL,
  PRIMARY KEY (`id_fatura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`ClienteFatura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`ClienteFatura` (
  `id_cliente` INT NOT NULL,
  `id_fatura` INT NOT NULL,
  INDEX `fk_cliente_idx` (`id_cliente` ASC) VISIBLE,
  INDEX `fk_ClienteFatura_Fatura1_idx` (`id_fatura` ASC) VISIBLE,
  CONSTRAINT `fk_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `LCCinema`.`Cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ClienteFatura_Fatura1`
    FOREIGN KEY (`id_fatura`)
    REFERENCES `LCCinema`.`Fatura` (`id_fatura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`FaturaMenu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`FaturaMenu` (
  `id_fatura` INT NOT NULL,
  `id_menu` INT NOT NULL,
  INDEX `fk_menu_idx` (`id_menu` ASC) VISIBLE,
  INDEX `fk_fatura_idx` (`id_fatura` ASC) VISIBLE,
  CONSTRAINT `fk_menu`
    FOREIGN KEY (`id_menu`)
    REFERENCES `LCCinema`.`Menu` (`id_menu`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fatura`
    FOREIGN KEY (`id_fatura`)
    REFERENCES `LCCinema`.`Fatura` (`id_fatura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`FaturaBilhete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`FaturaBilhete` (
  `id_Fatura` INT NOT NULL,
  `id_bilhete` INT NOT NULL,
  INDEX `fk_FaturaBilhete_Fatura1_idx` (`id_Fatura` ASC) VISIBLE,
  INDEX `fk_FaturaBilhete_Bilhete1_idx` (`id_bilhete` ASC) VISIBLE,
  CONSTRAINT `fk_FaturaBilhete_Fatura1`
    FOREIGN KEY (`id_Fatura`)
    REFERENCES `LCCinema`.`Fatura` (`id_fatura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FaturaBilhete_Bilhete1`
    FOREIGN KEY (`id_bilhete`)
    REFERENCES `LCCinema`.`Bilhete` (`id_bilhete`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`AtorFilme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`AtorFilme` (
  `id_ator` INT NOT NULL,
  `id_filme` INT NOT NULL,
  INDEX `fk_AtorFilme_Ator1_idx` (`id_ator` ASC) VISIBLE,
  INDEX `fk_AtorFilme_Filme1_idx` (`id_filme` ASC) VISIBLE,
  CONSTRAINT `fk_AtorFilme_Ator1`
    FOREIGN KEY (`id_ator`)
    REFERENCES `LCCinema`.`Ator` (`id_ator`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_AtorFilme_Filme1`
    FOREIGN KEY (`id_filme`)
    REFERENCES `LCCinema`.`Filme` (`id_filme`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`BilheteFilme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`BilheteFilme` (
  `id_bilhete` INT NOT NULL,
  `id_filme` INT NOT NULL,
  INDEX `fk_BilheteFilme_Bilhete1_idx` (`id_bilhete` ASC) VISIBLE,
  INDEX `fk_BilheteFilme_Filme1_idx` (`id_filme` ASC) VISIBLE,
  CONSTRAINT `fk_BilheteFilme_Bilhete1`
    FOREIGN KEY (`id_bilhete`)
    REFERENCES `LCCinema`.`Bilhete` (`id_bilhete`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_BilheteFilme_Filme1`
    FOREIGN KEY (`id_filme`)
    REFERENCES `LCCinema`.`Filme` (`id_filme`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`RealizadorFilme`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`RealizadorFilme` (
  `id_realizador` INT NOT NULL,
  `id_filme` INT NOT NULL,
  INDEX `fk_RealizadorFilme_Realizador1_idx` (`id_realizador` ASC) VISIBLE,
  INDEX `fk_RealizadorFilme_Filme1_idx` (`id_filme` ASC) VISIBLE,
  CONSTRAINT `fk_RealizadorFilme_Realizador1`
    FOREIGN KEY (`id_realizador`)
    REFERENCES `LCCinema`.`Realizador` (`id_realizador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RealizadorFilme_Filme1`
    FOREIGN KEY (`id_filme`)
    REFERENCES `LCCinema`.`Filme` (`id_filme`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`FilmeGenero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`FilmeGenero` (
  `id_filme` INT NOT NULL,
  `nome_genero` VARCHAR(75) NULL,
  INDEX `fk_FilmeGenero_Filme1_idx` (`id_filme` ASC) VISIBLE,
  INDEX `fk_FilmeGenero_Genero1_idx` (`nome_genero` ASC) VISIBLE,
  CONSTRAINT `fk_FilmeGenero_Filme1`
    FOREIGN KEY (`id_filme`)
    REFERENCES `LCCinema`.`Filme` (`id_filme`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_FilmeGenero_Genero1`
    FOREIGN KEY (`nome_genero`)
    REFERENCES `LCCinema`.`Genero` (`Nome`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LCCinema`.`FuncionarioCliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LCCinema`.`FuncionarioCliente` (
  `id_cliente` INT NOT NULL,
  `id_funcionario` INT NOT NULL,
  INDEX `fk_ClienteFuncionario_Cliente1_idx` (`id_cliente` ASC) VISIBLE,
  INDEX `fk_ClienteFuncionario_Funcionario1_idx` (`id_funcionario` ASC) VISIBLE,
  CONSTRAINT `fk_ClienteFuncionario_Cliente1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `LCCinema`.`Cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ClienteFuncionario_Funcionario1`
    FOREIGN KEY (`id_funcionario`)
    REFERENCES `LCCinema`.`Funcionario` (`id_funcionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- DROP database LCCinema;

-- mostrar os filmes todos
SELECT Nome AS Filme , Ano_lancamento AS Ano , Duracao AS Duração, Sinopse 
	FROM Filme
ORDER BY Nome ASC;

-- mostrar os atores nos filmes
SELECT Filme.Nome AS Filme, Ator.Nome AS Ator 
	FROM AtorFilme AS AF
			INNER JOIN Filme
				ON Filme.id_filme = AF.id_filme
			INNER JOIN Ator
				ON Ator.id_ator = AF.id_ator;

-- mostrar os realizadores dos filmes                 
SELECT Filme.Nome AS Filme, Realizador.Nome AS Realizador 
	FROM RealizadorFilme AS RF
		INNER JOIN Realizador
			ON Realizador.id_realizador = RF.id_realizador
				INNER JOIN Filme
					ON Filme.id_filme = RF.id_filme;

-- ---------------------------------------------------------------------------------------------
-- mostrar os realizadores e atores dos filmes
SELECT Filme.Nome AS Filme, Realizador.Nome AS Realizador, Ator.Nome AS Ator 
	FROM RealizadorFilme AS RF
		INNER JOIN Realizador
			ON Realizador.id_realizador = RF.id_realizador
		INNER JOIN Ator
        INNER JOIN AtorFilme AS AF
            ON Ator.id_ator = AF.id_ator
				INNER JOIN Filme
					ON Filme.id_filme = RF.id_filme AND Filme.id_filme = AF.id_filme;
-- ----------------------------------------------------------------------------------------------

-- filmes associados aos género
SELECT Genero.Nome AS Género, Filme.Nome AS Filme 
	FROM FilmeGenero AS FG
		INNER JOIN Genero
			ON Genero.Nome = FG.Nome_genero
				INNER JOIN Filme
					ON Filme.id_filme = FG.id_filme
ORDER BY Género ASC;

-- filme mais visto no ultimo ano
SELECT Filme.Nome AS Filme, COUNT(*) AS `Bilhetes vendidos`
	FROM BilheteFilme AS BF
			INNER JOIN Filme
				ON Filme.id_filme = BF.id_filme
					INNER JOIN Bilhete
						ON Bilhete.id_bilhete = BF.id_bilhete
					INNER JOIN FaturaBilhete AS FB
						ON FB.id_bilhete = Bilhete.id_bilhete
					INNER JOIN Fatura
						ON Fatura.id_fatura = FB.id_fatura
                                
WHERE DATE(Fatura.Data_emissao) BETWEEN "2021-01-01" AND "2021-12-31"
GROUP BY Filme
ORDER BY `Bilhetes vendidos` DESC;

-- Genero mais visto no ultimo ano
SELECT Genero.Nome AS Género, COUNT(*) AS `Bilhetes vendidos`
    FROM FilmeGenero AS FG
		INNER JOIN Genero
			ON Genero.Nome = FG.Nome_genero
				INNER JOIN Filme
					ON Filme.id_filme = FG.id_filme
						INNER JOIN BilheteFilme AS BF
							ON Filme.id_filme = BF.id_filme
								INNER JOIN Bilhete
									ON BF.id_bilhete = Bilhete.id_bilhete
								INNER JOIN FaturaBilhete AS FB
									ON FB.id_bilhete = Bilhete.id_bilhete
								INNER JOIN Fatura
									ON Fatura.id_fatura = FB.id_fatura
                                    
WHERE DATE(Fatura.Data_emissao) BETWEEN "2021-01-01" AND "2021-12-31"
GROUP BY Género
ORDER BY `Bilhetes vendidos` DESC;

-- mostrar os atores mais vistos
SELECT Ator.Nome AS Ator, COUNT(*) AS `Bilhetes vendidos` 
	FROM AtorFilme AS AF
			INNER JOIN Filme
				ON Filme.id_filme = AF.id_filme
			INNER JOIN Ator
				ON Ator.id_ator = AF.id_ator
			INNER JOIN BilheteFilme AS BF
							ON Filme.id_filme = BF.id_filme
            INNER JOIN Bilhete
				ON Bilhete.id_Bilhete=BF.id_bilhete
                
GROUP BY Ator
ORDER BY `Bilhetes vendidos` DESC;

-- mostrar os realizadores mais vistos                 
SELECT Realizador.Nome AS Realizador,COUNT(*) AS `Bilhetes vendidos`
	FROM RealizadorFilme AS RF
		INNER JOIN Realizador
			ON Realizador.id_realizador = RF.id_realizador
				INNER JOIN Filme
					ON Filme.id_filme = RF.id_filme
				INNER JOIN BilheteFilme AS BF
							ON Filme.id_filme = BF.id_filme
				INNER JOIN Bilhete
					ON Bilhete.id_Bilhete=BF.id_bilhete

GROUP BY Realizador
ORDER BY `Bilhetes vendidos` DESC;

-- Funcionário com mais cartões de cliente referidos
SELECT Funcionario.Nome AS Funcionário, COUNT(*) AS `cartões referidos`
	FROM Funcionario
		INNER JOIN FuncionarioCliente AS FC
			ON Funcionario.Id_funcionario = FC.Id_funcionario

GROUP BY Funcionário
ORDER BY `cartões referidos` DESC;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
