USE VendaIngressos;

/* Inserindo cinemas */
insert into cinema values
(99823250000199, "Cine Tavares"),
(53832447000193, "Mário Plex"),
(24148511000113, "Priscine");

/* Inserindo salas dos cinemas */
-- Cine Tavares
insert into sala values
(default, 1, 'Sala climatizada com tela 3D', 99823250000199), -- id = 1
(default, 2, 'Sala climatizada com tela 3D', 99823250000199), -- id = 2
-- Mario Plex
(default, 1, 'Sala climatizada com tela 3D', 53832447000193), -- id = 3
(default, 2, 'Sala climatizada com tela 3D', 53832447000193), -- id = 4
-- Priscine
(default, 1, 'Sala climatizada com tela 3D', 24148511000113), -- id = 5
(default, 2, 'Sala climatizada com tela 3D', 24148511000113); -- id = 6

/* Inserindo Poltronas Imaginárias 5x5 */
insert into poltrona values
('E5'),('E4'),('E3'),('E2'),('E1'),
('D5'),('D4'),('D3'),('D2'),('D1'),
('C5'),('C4'),('C3'),('C2'),('C1'),
('B5'),('B4'),('B3'),('B2'),('B1'),
('A5'),('A4'),('A3'),('A2'),('A1');

/* Inserindo Poltronas Reais */
-- Sala 1, CineTavares (id=1) 4x3
insert into poltrona_sala values
('D3', 1),('D2', 1),('D1', 1),
('C3', 1),('C2', 1),('C1', 1),
('B3', 1),('B2', 1),('B1', 1),
('A3', 1),('A2', 1),('A1', 1),

-- Sala 2, CineTavares (id=2) 4x3
('D3', 2),('D2', 2),('D1', 2),
('C3', 2),('C2', 2),('C1', 2),
('B3', 2),('B2', 2),('B1', 2),
('A3', 2),('A2', 2),('A1', 2),

-- Sala 1, MarioPlex (id=3) 4x3
('D3', 3),('D2', 3),('D1', 3),
('C3', 3),('C2', 3),('C1', 3),
('B3', 3),('B2', 3),('B1', 3),
('A3', 3),('A2', 3),('A1', 3),

-- Sala 2, MarioPlex (id=4) 4x3
('D3', 4),('D2', 4),('D1', 4),
('C3', 4),('C2', 4),('C1', 4),
('B3', 4),('B2', 4),('B1', 4),
('A3', 4),('A2', 4),('A1', 4),

-- Sala 1, Priscine (id=5) 5x5
('D3', 5),('D2', 5),('D1', 5),
('C3', 5),('C2', 5),('C1', 5),
('B3', 5),('B2', 5),('B1', 5),
('A3', 5),('A2', 5),('A1', 5),

-- Sala 2, Priscine (id=6) 5x5
('D3', 6),('D2', 6),('D1', 6),
('C3', 6),('C2', 6),('C1', 6),
('B3', 6),('B2', 6),('B1', 6),
('A3', 6),('A2', 6),('A1', 6);

/* Inserindo os filmes */
INSERT INTO filme VALUES 
(default,'Os Vingadores','2019-04-26','Joe Russo, Anthony',NULL,NULL,12,'Ação, Aventura, Ficção científica', '02:00:00'), -- 1
(default,'Rei Leão','2019-05-09','Jon Favreau',NULL,NULL,10,'Musical, Drama, Animacao', '02:00:00'),
(default,'Scarface','1984-01-13', 'Brian De Palma', NULL,NULL,18, 'Ação, Drama', '02:00:00'),
(default,'Brilho Eterno de uma Mente Sem Lembranças','2004-07-23', 'Michel Gondry', NULL,NULL, 14, 'Comédia dramática, Ficção científica', '02:00:00'),
(default,'Beleza Americana','1999-02-25', 'Sam Mendes',NULL,NULL,18,'Drama', '02:00:00'), -- 5
(default,'Con Air','1997-02-25', ' Simon West',NULL,NULL,16,'Policial', '02:00:00'),
(default,'O Resgate do Soldado Ryan','1998-08-11', 'Steven Spielberg',NULL,NULL,16,'Guerra, Drama', '02:00:00'),
(default,'Sociedade dos Poetas Mortos','1998-02-25', 'Peter Weir',NULL,NULL,16,'Comédia dramática', '02:00:00'),
(default,'Nascido para Matar','1987-02-25', 'Stanley Kubrick',NULL,NULL,16, 'Guerra, Drama', '02:00:00'),
(default,'Um sonho de Liberdade','1995-02-25', 'Frank Darabont',NULL,NULL,16, 'Drama', '02:00:00'), -- 10
(default,'O Jogo da Imitação','2015-02-05', 'Morten Tyldum',NULL,NULL,16, 'Biografia, Drama', '02:00:00'),
(default,'O Grande Mestre','2008-02-25', 'Wilson Yip',NULL,NULL,16, 'Artes Marciais, Biografia', '02:00:00'),
(default,'Tomb Raider','2018-03-15', 'Roar Uthaug',NULL,NULL,16, 'Aventura, Ação', '02:00:00'),
(default,'Indiana Jones','1984-05-23', ' Steven Spielberg',NULL,NULL,16, ' Aventura, Ação', '02:00:00'),
(default,'Homem de Ferro','2008-04-30', 'Jon Favreau',NULL,NULL,16, 'Ação, Ficção científica', '02:00:00'), -- 15
(default,'X-Men: Fênix Negra','2019-06-06', 'Simon Kinberg',NULL,NULL,16, 'Aventura, Ação, Ficção científica', '02:00:00'), -- 16
(default,'Shazam!','2019-04-04', 'David F. Sandberg',NULL,NULL,16, 'Ação, Fantasia', '02:00:00'), -- 17
(default,'Pokémon: Detetive Pikachu','2019-05-09', 'Rob Letterman',NULL,NULL,16, 'Aventura, Ação, Ficção científica', '02:00:00'); -- 18


/* Programando as sessões */
insert into sessao values
-- idSessao    DataHoraIni             DataHoraFim            idFilme   idSala
-- Sessões para os Vingadores
(default,      '2019-04-27 20:30:00', '2019-04-27 22:15:00', 1        ,1      ),
-- Rei Leão
(default,      '2019-04-27 14:00:00', '2019-04-27 16:00:00', 2        ,1      ),
(default,      '2019-04-28 14:00:00', '2019-04-28 16:00:00', 2        ,3      ),
-- Shazam
(default,      '2019-04-27 16:00:00', '2019-04-27 18:00:00', 17       ,1      ),
-- Pokemon
(default,      '2019-04-27 16:00:00', '2019-04-27 18:00:00', 18       ,2      );

-- Select para gerar código insert para cada poltrona de cada sessão
/*select concat('(default,    20.00,   null     ,   ', se.id ,',         ''', ps.idPos,'''),')
from sessao se join sala sa
     on se.idSala = sa.idSala
     join poltrona_sala ps
     on ps.idSala = sa.idSala*/

/* Inserindo ingressos */
insert into ingresso values 
-- código    valor    descrição    idSessao   idPos
(default,    20.00,   null     ,   1,         'A1'),
(default,    20.00,   null     ,   1,         'A2'),
(default,    20.00,   null     ,   1,         'A3'),
(default,    20.00,   null     ,   1,         'B1'),
(default,    20.00,   null     ,   1,         'B2'),
(default,    20.00,   null     ,   1,         'B3'),
(default,    20.00,   null     ,   1,         'C1'),
(default,    20.00,   null     ,   1,         'C2'),
(default,    20.00,   null     ,   1,         'C3'),
(default,    20.00,   null     ,   1,         'D1'),
(default,    20.00,   null     ,   1,         'D2'),
(default,    20.00,   null     ,   1,         'D3'),
(default,    20.00,   null     ,   2,         'A1'),
(default,    20.00,   null     ,   2,         'A2'),
(default,    20.00,   null     ,   2,         'A3'),
(default,    20.00,   null     ,   2,         'B1'),
(default,    20.00,   null     ,   2,         'B2'),
(default,    20.00,   null     ,   2,         'B3'),
(default,    20.00,   null     ,   2,         'C1'),
(default,    20.00,   null     ,   2,         'C2'),
(default,    20.00,   null     ,   2,         'C3'),
(default,    20.00,   null     ,   2,         'D1'),
(default,    20.00,   null     ,   2,         'D2'),
(default,    20.00,   null     ,   2,         'D3'),
(default,    20.00,   null     ,   4,         'A1'),
(default,    20.00,   null     ,   4,         'A2'),
(default,    20.00,   null     ,   4,         'A3'),
(default,    20.00,   null     ,   4,         'B1'),
(default,    20.00,   null     ,   4,         'B2'),
(default,    20.00,   null     ,   4,         'B3'),
(default,    20.00,   null     ,   4,         'C1'),
(default,    20.00,   null     ,   4,         'C2'),
(default,    20.00,   null     ,   4,         'C3'),
(default,    20.00,   null     ,   4,         'D1'),
(default,    20.00,   null     ,   4,         'D2'),
(default,    20.00,   null     ,   4,         'D3'),
(default,    20.00,   null     ,   5,         'A1'),
(default,    20.00,   null     ,   5,         'A2'),
(default,    20.00,   null     ,   5,         'A3'),
(default,    20.00,   null     ,   5,         'B1'),
(default,    20.00,   null     ,   5,         'B2'),
(default,    20.00,   null     ,   5,         'B3'),
(default,    20.00,   null     ,   5,         'C1'),
(default,    20.00,   null     ,   5,         'C2'),
(default,    20.00,   null     ,   5,         'C3'),
(default,    20.00,   null     ,   5,         'D1'),
(default,    20.00,   null     ,   5,         'D2'),
(default,    20.00,   null     ,   5,         'D3'),
(default,    20.00,   null     ,   3,         'A1'),
(default,    20.00,   null     ,   3,         'A2'),
(default,    20.00,   null     ,   3,         'A3'),
(default,    20.00,   null     ,   3,         'B1'),
(default,    20.00,   null     ,   3,         'B2'),
(default,    20.00,   null     ,   3,         'B3'),
(default,    20.00,   null     ,   3,         'C1'),
(default,    20.00,   null     ,   3,         'C2'),
(default,    20.00,   null     ,   3,         'C3'),
(default,    20.00,   null     ,   3,         'D1'),
(default,    20.00,   null     ,   3,         'D2'),
(default,    20.00,   null     ,   3,         'D3');


/* Cadastrando clientes */
INSERT INTO cliente VALUES 
('Jaspe Lime','JaspeLime@zmail.com',sha2('123', 256),'1999-09-09',13243546576),
('Herbert Richers','HerbertRichers@zmail.com', sha2('123456', 256),'1980-03-11',26831444318),
('Dom Pedro','dompedroca@zmail.com', sha2('br0709', 256),'1964-01-02',55131442317);

/* Registrando Compras */
INSERT INTO ingresso_comprado VALUES 
(13243546576,6,'2019-05-09 21:50:00'),
(26831444318,1,'2019-01-10 16:35:00'),
(26831444318,13,'2019-04-08 16:35:00'),
(55131442317,14,'2019-04-08 16:35:00');
