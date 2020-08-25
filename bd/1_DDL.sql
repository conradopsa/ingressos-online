CREATE SCHEMA VendaIngressos;

USE VendaIngressos;

CREATE TABLE cinema (
  cnpj bigint NOT NULL PRIMARY KEY,
  nome varchar(255) NOT NULL  
);

CREATE TABLE cliente (
  nomeCompleto varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  senha varchar(255) NOT NULL,
  dataNasc date NOT NULL,
  cpf bigint NOT NULL PRIMARY KEY
);

CREATE TABLE filme (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  titulo varchar(255) NOT NULL,
  dataLanc date NOT NULL,
  diretor varchar(255) NOT NULL,
  sinopse text,
  trailer longblob,
  idadeMin int NOT NULL,
  genero varchar(255) NOT NULL,
  duracao time NOT NULL
);

CREATE TABLE sala (
  idSala int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  num int NOT NULL,
  descricao text,
  cnpjCinema bigint NOT NULL,
  FOREIGN KEY (cnpjCinema) REFERENCES cinema (cnpj)
);

CREATE TABLE poltrona (
  -- Letra = Linha, Número = Coluna
  -- A1, A2, A3, A4
  -- B1, B2, B3, B4
  -- C1, C2, C3, C4 ...
  idPos varchar(20) NOT NULL,
  PRIMARY KEY (idPos)
);

CREATE TABLE poltrona_sala(
  idPos varchar(20) NOT NULL,
  idSala int NOT NULL,
  FOREIGN KEY (idSala) REFERENCES sala(idSala),
  FOREIGN KEY (idPos) REFERENCES poltrona(idPos),
  PRIMARY KEY(idPos, idSala)
);

CREATE TABLE sessao (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  dataHoraIni datetime NOT NULL,
  dataHoraFim datetime NOT NULL,
  idFilme int NOT NULL,
  idSala int NOT NULL,
  FOREIGN KEY (idSala) REFERENCES sala (idSala),
  FOREIGN KEY (idFilme) REFERENCES filme (id)
);

CREATE TABLE ingresso (
  codigo int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  valor float NOT NULL,
  descricao varchar(255) DEFAULT NULL,

  idSessao int NOT NULL,
  FOREIGN KEY (idSessao) REFERENCES sessao (id),

  pS_idPos varchar(20) NOT NULL,
  FOREIGN KEY (pS_idPos) REFERENCES poltrona_sala(idPos)

);

CREATE TABLE ingresso_comprado (
  cpfCliente bigint NOT NULL,
  codigoIngresso int NOT NULL,
  dataHora datetime NOT NULL,
  PRIMARY KEY (cpfCliente, codigoIngresso),
  FOREIGN KEY (codigoIngresso) REFERENCES ingresso (codigo),
  FOREIGN KEY (cpfCliente) REFERENCES cliente (cpf)
);

