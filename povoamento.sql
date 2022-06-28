USE `LCCinema` ;

INSERT INTO `LCCinema`.`Ator`
	(id_ator,Nome) 
VALUES
	(1,'Liam Neeson'),
	(2,'Ewan McGregor'),
	(3,'Natalie Portman'),
	(4,'Jake Lloyd'),
	(5,'Ian McDiarmid'),
	(6,'Keanu Reeves'),
	(7,'Laurence Fishburne'),
	(8,'Carrie-Anne Moss'),
	(9,'Hugo Weaving'),
	(10,'Robert Downey, Jr.'),
	(11,'Jeff Bridges'),
	(12,'Gwyneth Paltrow'),
	(13,'Terrence Howard'),
	(14,'Stan Lee'),
	(15,'Samuel L. Jackson'),
	(16,'Michael Schumacher'),
	(17,'Matt Damon'),
	(18,'Eliot Spitzer'),
	(19,'George Soros'),
	(20,'Bryan Fogel'),
    (21,'Jake Gyllenhaal'),  
	(22,'Bryan Cranston'),
	(23,'Leonardo DiCaprio'),
	(24,'Bradley Cooper'),
	(25,'Zach Galifianakis'),
	(26,'Rowan Atkinson'),
	(27,'Aaron Paul'),
    (28,'Amalia Kassai'),
	(29,'Rainer Krause'),
    (30,'David Blair'),
	(31,'William S. Burroughs'),
    (32,'Aubrey Plaza'),
	(33,'Telfar Clemens'),
	(34,'Akemi Look'),
	(35,'Galen Pehrson'),
	(36,'Alia Shawkat'),
	(37,'Murphy Maxwell'),
	(38,'Lizzie Fitch'),
    (39,'Don Hertzfeldt'),
    (40,'Adan Jodorowsky'),
	(41,'Brontis Jodorowsky'),
	(42,'Pamela Flores'),
	(43,'Alejandro Jodorowsky'),
	(44,'Jeremias Herskovits'),
	(45,'Bastián Bodenhöfer'),
	(46,'Cosmo Gonik'),
	(47,'Felipe Ríos');
    
INSERT INTO `LCCinema`.`Realizador`
	(Id_realizador,Nome) 
VALUES
	(1,'Joaquín Cociña'),
	(2, 'Cristobal León'),
	(3,'David Blair'),
	(4,'Ryan Trecartin'),
	(5,'Don Hertzfeldt'),
	(6,'Alejandro Jodorowsky'),
	(7,'Oliver Parker'),
	(8,'Vicky Jenson'),
	(9,'Todd Phillips'),
	(10,'Martin Scorsese'),
	(11,'Vince Gilligan'),
	(12,'Antoine Fuqua'),
	(13,'George Lucas'),
	(14,'Lilly Wachowski'),
	(15,'Jon Favreu'),
	(16,'Bryan Fogel'),
	(17,'Hans-Bruno Kammertons'),
	(18,'Charles Ferguson');
    
INSERT INTO `LCCinema`.`Genero`
	(Nome,Descricao) 
VALUES
	('Ficção científica','Ficção científica é um vasto géreno que envolve futurismo, cientificamente impossível(improvável) e conceitos imaginários. Estes conceitos originam de hipotéticos avanços científicos e tecnológicos, assim como envolvimentos extra-terrestres. Esta é a principal origem de inspiração que distingue ficção cientifica de fantasia, que partilha a sua especulação e imaginação natural, mas focando-se em em temas relacionados com magia, elementos supernaturais e mitológicos'),
	('Documentários', 'Um documentário é uma género de filme que, como o nome sugere, a intenção de documentar algo. Estes filmes podem ser reais, isto é, que não contem atores a representar uma personagem e muito raramente vemos uma recriação do passado.'),
    ('Comédia','A comédia é um dos vários géneros principais do cinema e os filmes são um dos primeiros géneros a aparecer no cinema. Os filmes de comédia enfatizam principalmente o humor e / ou a sátira, e tentam entreter os espectadores usando elementos de tal.'),
	('Crime','Os filmes policiais giram em torno de temas de atividades criminosas, a vida de criminosos e seus efeitos sobre as pessoas ao seu redor. Esses filmes podem ser baseados em personagens fictícios ou ser um filme biográfico de criminosos / organizações criminosas da vida real.'),
	('Experimental', 'Experimental refere-se a filmes que são experimentais por natureza e não estão em conformidade com as normas teatrais de produção cinematográfica. Este estilo de realização cinematográfica ganhou impulso no início da década de 1920 com o surgimento do movimento cinematográfico Dada e do género Filme Abstracto'),
	('Surrealismo',' O surrealismo é um género que, embora não contenha uma estética persistente, tenta captar hipnagogia e pensamentos subconscientes sobre o cinema. O surrealismo no cinema carece frequentemente - mas nem sempre - de estilo, forma, estrutura narrativa, desenvolvimento de personagens, e até mesmo de histórias completas. O termo surrealismo foi cunhado em 1903 por Guillaume Apollinaire enquanto escrevia a sua peça Les Mamelles de Tirésias, que foi apresentada publicamente pela primeira vez em 1917.Dentro do cinema, o surrealismo surgiu pela primeira vez com o Movimento Surrealista e o movimento Dada do início dos anos 20. Ambos os movimentos foram notáveis pela sua rejeição da metodologia de produção tradicional, dramatismo, e abordagem geral da técnica cinematográfica padrão. A imagem era frequentemente chocante, pelo menos para o seu tempo, e era pesada na sua utilização de justaposição e estrutura subconsciente.');

INSERT INTO `LCCinema`.`Filme`
	(Id_filme,Nome,Duracao,Ano_lancamento,sinopse,idade_minima) 
VALUES
	(1, 'Star Wars Episode I: The Phantom Menace', 133, '1999', 'Obi-Wan e seu mentor embarcam em uma perigosa aventura na tentativa de salvar o planeta das garras de Darth Sidious. Durante a viagem, eles conhecem um habilidoso menino e decidem treiná-lo para se tornar um Jedi. Mas o tempo irá revelar que as coisas nem sempre são o que aparentam ser.', 13),
	(2, 'Matrix', 136, '1999', 'Um jovem programador é atormentado por estranhos pesadelos nos quais sempre está conectado por cabos a um imenso sistema de computadores do futuro. À medida que o sonho se repete, ele começa a levantar dúvidas sobre a realidade. E quando encontra os misteriosos Morpheus e Trinity, ele descobre que é vítima do Matrix, um sistema inteligente e artificial que manipula a mente das pessoas e cria a ilusão de um mundo real enquanto usa os cérebros e corpos dos indivíduos para produzir energia.', 14),
	(3, 'Iron Man', 136, '2008', 'Tony Stark constroi uma armadura "high tech" e promete proteger o mundo enquanto Iron Man', 10),
	(4, 'Icarus', 121, '2017', 'Neste filme vencedor de um óscar, um ciclista norte-americano é envolvido num escandalo de dopagem em que está implicado um cientista russo a quem Putin quer silenciar.', 10),
	(5, 'Schumacher', 112, '2021', 'Este documentário com entrevistas exclusivas e imagens de arquivo traça um retrato intimo de Michael Schumacher', 3),
	(6, 'Inside Job', 120, '2010', NULL, 10),
    (7,'La Casa Lobo', 75, '2018', 'María, uma jovem mulher, encontra refúgio numa casa no sul do Chile após escapar de uma seita de fanáticos religiosos alemães. Ela é recebida em casa por dois porcos, os únicos habitantes do lugar. Como num sonho, o universo da casa reage aos sentimentos de Maria. Os animais transformam-se lentamente em humanos, e a casa transforma-se num mundo de pesadelo. Inspirado no caso real de Colonia Dignidad, "La Casa Lobo" disfarça-se de um conto de fadas animado produzido pelo líder da seita, a fim de doutrinar os seus seguidores.',12),
	(8,'Wax, or the Discovery of Television Among the Bees', 85, '1991', 'Blair actua no filme, que apresenta ainda um camafeu de William Burroughs. Como declaração anti-guerra, Wax fez uma crítica antecipada à Guerra do Golfo e à actual guerra de drones. Uma combinação de animação digital inovadora, imagens encontradas, e acção ao vivo, a forma visual de Wax é uma representação única das tecnologias e políticas que ele critica, que ainda hoje reverberam.', 12),
	(9,'Its Such a Beautiful Day', 61, '2012', 'Bill é um jovem cujas rotinas diárias, percepções e sonhos são ilustrados no ecrã através de múltiplas janelas de ecrã dividido, que por sua vez são narradas (por Don Hertzfeldt). O Narrador explica subtilmente que Bill sofre de uma perturbação de memória problemática, que interfere com a sua vida aparentemente mundana. Bill tem frequentemente reuniões com a sua ex-namorada sem nome e tinha sido recentemente encaminhado para uma clínica devido ao seu estado. Numa visita à clínica, o médico de Bill recomenda que Bill tenha um novo lote de medicamentos, uma vez que o seu recente tratamento não produziu quaisquer resultados positivos. Não se sabe se Bill tomou o novo medicamento, uma vez que se submete a uma experiência alucinatória na manhã seguinte e depois fica acordado na noite seguinte. No dia seguinte, Bill sofre mais alucinações, vendo monstros e rasgando a sua própria cabeça.', NULL),
    (10,'Poesía sin fin', 128, '2016', 'Alejandro Jodorowsky, actualmente a viver em Santiago do Chile e a trabalhar na loja do seu pai, rejeita a pressão da sua família judia para entrar na faculdade de medicina e, em vez disso, prossegue uma carreira de poeta. Através da sua criação de bonecos, entra em contacto com um homem que lhe dá um estúdio como sua primeira residência. Nesta nova vida encontra artistas, poetas e intérpretes notáveis e amadores, entre eles Nicanor Parra, a quem insulta durante um mal-entendido sobre Stella Díaz Varín, a mulher que inspirou o seu poema "A Víbora".', NULL),
	(11,'Center Jenny', 53, '2013', NULL, NULL),
    (12 ,'O Regresso de Johnny English',102,'2011',NULL,NULL),
	(13 ,'Shrek',90,'2001','Era uma vez um pântano distante, onde vivia um ogro chamado Shrek. De repente, seu sossego é interrompido pela invasão de personagens de contos de fadas que foram banidos de seu reino pelo maldoso Lorde Farquaad. Determinado a salvar o lar das pobres criaturas, e também o dele, Shrek faz um acordo com Farquaad e parte para resgatar a princesa Fiona. Resgatar a princesa pode não ser nada comparado com seu segredo profundo e sombrio.',NULL),
	(14 ,'A Ressaca',100,'2009',NULL,18),
	(15 ,'Ilha do Medo',138,'2010','As pertubações de um agente federal põem em perigo a investigação de um desaparecimento de uma paciente de um hospital psiquiátrico para delinquentes',16),
	(16 ,'El Camino: Um Filme de Breaking Bad',122,'2019','Jesse Pinkman tenta superar o seu passado',16 ),
	(17 ,'O Culpado',91,'2021','Durante um dia frenético repleto de revelações, um detetive destacado para operador de chmadas de emergência tenta salvar uma mulher desesperada',16);
		
INSERT INTO `LCCinema`.`Bilhete`
	(Id_bilhete,Preco,Categoria,Desconto) 
VALUES
	(1, 5, 'Normal', 25), 
	(2, 5, 'Normal', 25),
	(3, 5, 'Normal', NULL), 
	(4, 7, '3D', NULL), 
	(5, 7, '3D', 50), 
	(6, 7, '3D', 25), 
	(7, 7, '3D', 50), 
	(8, 8, '4DX', NULL), 
	(9, 8, '4DX', 50),
	(10, 8, '4DX', 25), 
	(11, 8, '4DX', 25), 
	(12, 8, '4DX', 25), 
	(13, 10, 'IMAX', 50), 
	(14, 10, 'IMAX', 25), 
	(15, 10, 'IMAX', 10), 

    (16,5,'NORMAL',NULL),
	(17,7,'3D',NULL),
	(18,8,'4DX',NULL),
	(19,10,'IMAX',NULL),
	(20,5,'NORMAL',NULL),
	(21,10,'IMAX',NULL),
	(22,5,'NORMAL',NULL),
	(23,7,'3D',NULL),
	(24,10,'IMAX',NULL),
	(25,8,'4DX',NULL),
	(26,7,'3D',NULL),
	(27,5,'NORMAL',NULL),
	(28,7,'3D',NULL),
	(29,10,'IMAX',NULL),
	(30,5,'NORMAL',NULL),
	(31,5.00,'NORMAL',NULL),
	(32,8.00,'4DX',NULL),
	(33,8.00,'4DX',NULL),
	(34,5.00,'NORMAL',25),
	(35,5.00,'NORMAL',25),
	(36,5.00,'NORMAL',25),
	(37,10.00,'IMAX',NULL),
	(38,7.00,'3D',NULL),
	(39,7.00,'3D',50),
	(40,5.00,'NORMAL',NULL),
	(41,5.00,'NORMAL',NULL),
	(42,5.00,'NORMAL',50),
	(43,5.00,'NORMAL',NULL),
	(44,5.00,'NORMAL',NULL);
    
INSERT INTO `LCCinema`.`Fatura`
	(Id_fatura,Preco_total,Data_emissao,NIF) 
VALUES
	(1, 19.5, '2018-10-10 23:06:03', '267340010'), 
	(2, 11.5, '2019-03-15 12:06:26', '219063842'), 
	(3, 12.5, '2020-01-01 15:32:50', '293699887'),  
	(4, 11.5, '2018-11-13 21:46:01', '265847303'),
	(5, 17.5, '2019-04-23 17:55:14', '256748470'),
	(6, 7.5, '2021-12-1 19:21:20','243940467'),
	(7, 9.5, '2018-12-1 20:25:32', '250040310'),
	(8, 5.25, '2020-07-20 20:56:20','213488361'),
	(9, 9, '2019-06-10 13:28:55', NULL),
	(10, 18, '2020-02-18 20:37:50', '209107375'), 
    
	(11,10,'2020-02-14 15:25:14','248695203'),
	(12,8,'2021-06-14 20:10:59',NULL),
	(13,7,'2020-01-22 21:45:47',NULL),
	(14,21,'2020-06-30 16:32:12','219364258'),
	(15,8,'2020-01-22 22:41:42','225478996'),
	(16,10,'2020-06-30 12:02:36','215326879'),
	(17,10,'2020-02-14 18:23:49',NULL),
	(18,10,'2020-05-26 14:23:47','236154789'),
	(19,25,'2021-06-25 13:47:52','214569356'),
	(20,10,'2019-04-25 17:25:36',215369753),
    
	(21,9.50,'2021-06-12 11:23:12',NULL),
	(22,21.50,'2021-05-03 10:54:22','221171851'),
    (23,11.25,'2021-01-18 12:22:34','208201092'),
	(24,13.50,'2019-12-12 01:01:34','266260950'),
	(25,18.50,'2019-03-30 12:12:00','230037704'),
	(26,5.00,'2020-02-02 02:20:02','135478553'),
	(27,9.50,'2020-12-10 11:11:11','180774077'),
	(28,2.50,'2021-10-12 10:02:34',NULL),
	(29,10.00,'2020-01-23 12:00:45','162170858'),
    (30,9.5,'2021-06-21 11:23:12', NULL);
    
INSERT INTO `LCCinema`.`Cliente`
	(Id_cliente,Nome,Data_nascimento,NIF,Num_tel,Email) 
VALUES
	(1, 'Carlos Sainz', '1995-05-20', '267340010', '935842318', 'el_chili@gmail.com'),
	(2, 'Daniel Riccardo', '1996-03-21', '250040310', '965641321', 'honeybadger@outlook.com'),
	(3, 'Lando Norris', '1999-01-02', '219063842', '931254768', 'lando.norris@gmail.com'),
	(4, 'George Russel', '1998-06-20', '293699887', '911358749', 'gr63@gmail.com'),
	(5, 'Fernando Alonso', '1985-07-23', '265847303', '924587561', 'oldfox@gmail.com'),
	(6, 'Max Verstappen', '1998-05-30', '256748470', '961458234', 'flyingdutch@outlook.com'),
	(7, 'Lewis Hamilton', '1990-02-05', '243940467', '912222358', 'hammertime@outlook.com'),
	(8, 'Sebastian Vettel', '1989-11-20', '213488361', '933752147', 'seb.vet@gmail.com'),
	(9, 'Charles Leclerc', '1995-10-15', '209107375', '921472583', 'theprince@outlook.com'),
    (10,'João Cardoso da Silva','2000-03-15','215326879','96147852','staz_26@gmail.com'),
	(11,'João Gouveia','2000-02-14','214569356','921456333',NULL),
	(12,'Orlando Belo','1995-06-26','236154789','910236489','prof-bd@outlook.com'),
	(13,'Rita Gomes','2000-06-24','221456237','915687452','taberna.belga@gmail.com'),
	(14,'Sara Fontes','2002-04-19','248695203','936472102','lana.fontes@gmail.com'),
	(15,'Ines Presa','2001-04-30','219364258','914558663',NULL),
	(16,'Sara Alves','2000-07-20','225478996','965442338',NULL),
	(17,'Manuela Dias','1999-03-20','215369753','934568997','faria_probilidade@outlook.com'),
    (18,'Mia Marreiro Alcaide','1989-02-24','162170858','914674295',NULL),
	(19,'Debora Águeda Valadares','2000-07-12','180774077','924295049','debora.valadares@tugamail.pt'),
	(20,'Alberto Carmo Perdigão','1993-03-23','230037704','912056821','albertinho343211@gmail.com'),
	(21,'Júlia Saloio Mata','1976-10-02','208201092','963348044','mata.julia.s@outlook.com'),
	(22,'Renato Frazão Pastana','1999-06-17','221171851','922785422','ren.frazao23@gmail.com'),
	(23,'Caetano Inês Correia','1994-03-03','135478553','915294670','correia69caetano@gmail.com'),
	(24,'Tatiana Frois Medeiros','2000-10-13','266260950','912323666','tatiana.sempre.rija@gmail.com');

INSERT INTO `LCCinema`.`Funcionario`
	(Id_funcionario,Nome,Data_nascimento,NIF) 
VALUES
	(1,'Helton Varão Medina','1999-06-17','116808764'),
	(2,'António Amoedo Caldeira','1999-02-11','197161740'),
	(3,'Lourenço Cadaval Benevides','1976-10-02','257699945'),
	(4,'Beatriz Godoi Pontes','1983-04-24','102258953'),
	(5,'Pablo Escobar','1989-06-21','201569845'),
	(6,'Daniela Cunha','1990-09-14','203549625'),
	(7,'Francisco Barros','1992-12-22','202259673'),
	(8,'Barbara Puyol','1992-08-15','202569751'),
	(9, 'Mattia Binotto', '1991-02-28', '251428885'),
	(10, 'Toto Wolf', '1989-06-26', '205015395'),
	(11, 'Christian Horner', '2000-12-03', '200136372'), 
	(12, 'Zak Brown', '1995-07-10', '204629063');

INSERT INTO `LCCinema`.`Menu`
	(Id_menu,Tamanho,Preço) 
VALUES
	(1,'Pequeno',3.50),
    (2,'Medio',4.5),
	(3,'Grande',5.5);
    
 INSERT INTO `LCCinema`.`FilmeGenero`
	(Id_filme,Nome_genero) 
VALUES
	(1,'Ficção Científica'),
    (2,'Ficção Científica'),
    (3,'Ficção Científica'),
    (4,'Documentário'),
    (5,'Documentário'),
    (6,'Documentário'),
    (6,'Crime'),
    (7,'Experimental'),
    (7,'Surrealismo'),
    (8,'Surrealismo'),
    (8,'Experimental'),
    (8,'Ficção Científica'),
    (9,'Surrealismo'),
    (10,'Surrealismo'),
    (10,'Documentário'),
    (11,'Experimental'),
    (12,'Comédia'),
    (13,'Comédia'),
    (14,'Comédia'),
    (15,'Crime'),
    (16,'Crime'),
    (17,'Crime');
    
 INSERT INTO `LCCinema`.`Clientefatura`
	(Id_cliente,Id_Fatura) 
VALUES
	(1,1),
    (3,2),
    (4,3),
    (5,4),
    (6,5),
    (7,6),
    (2,7),
    (8,8),
    (14,9),
    (9,10),
    (14,11),
    (23,12),
    (2,13),
    (15,14),
    (16,15),
    (10,16),
    (13,17),
    (12,18),
    (11,19),
    (17,20),
    (3,21),
    (22,22),
    (21,23),
    (24,24),
    (20,25),
    (23,26),
    (19,27),
    (15,28),
    (18,29),
    (17,30);
    
INSERT INTO `LCCinema`.`RealizadorFilme`
	(id_realizador,id_filme)
VALUES
	(13,1),
	(14,2),
	(15,3),
	(16,4),
	(17,5),
	(18,6),
	(1,7),
	(2,7),
	(3,8),
	(4,9),
	(5,10),
	(6,11),
	(7,12),
	(8,13),
	(9,14),
	(10,15),
	(11,16),
	(12,17);


INSERT INTO `LCCinema`.`FaturaMenu`
	(id_fatura,id_menu)
VALUES
	(1,1),
	(1,1),
	(2,2),
	(3,3),
	(3,3),
	(4,1),
	(5,3),
	(6,1),
	(7,1),
	(10,3),
	(21,2),
	(22,3),
	(29,2),
	(29,3);

INSERT INTO `LCCinema`.`FuncionarioCliente`
	(id_funcionario,id_cliente)
VALUES
	(1,1),
	(3,2),
	(6,3),
	(8,4),
	(2,5),
	(11,6),
	(8,7),
	(9,8),
	(2,9),
	(12,10),
	(1,11),
	(11,12),
	(9,13),
	(2,14),
	(5,15),
	(9,16),
	(12,17),
	(1,18),
	(8,19),
	(8,20),
	(5,21),
	(7,22),
	(1,23),
	(7,24),
	(8,25);

INSERT INTO `LCCinema`.`BilheteFilme`
	(id_bilhete,id_filme)
VALUES
	(1,9),
	(2,13),
	(3,12),
	(4,6),
	(5,10),
	(6,14),
	(7,12),
	(8,1),
	(9,11),
	(10,14),
	(11,1),
	(12,8),
	(13,15),
	(14,7),
	(15,13),
	(16,16),
	(17,3),
	(18,2),
	(19,8),
	(20,11),
	(21,5),
	(22,7),
	(23,3),
	(24,16),
	(25,2),
	(26,9),
	(27,2),
	(28,14),
	(29,9),
	(30,8),
	(31,7),
	(32,13),
	(33,12),
	(34,14),
	(35,15),
	(36,15),
	(37,10),
	(38,4),
	(39,13),
	(40,13),
	(41,6),
	(42,16),
	(43,17),
	(44,5),
	(45,3);
    
INSERT INTO `LCCinema`.`AtorFilme`
    (id_ator,id_filme)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,2),
	(7,2),
	(8,2),
	(9,2),
	(10,3),
	(11,3),
	(12,3),
	(13,3),
	(14,3),
	(15,3),
	(16,5),
	(17,4),
	(18,4),
	(19,4),
	(20,6),
	(26,12),
	(24,14),
	(25,14),
	(23,15),
	(22,16),
	(27,16),
	(21,17),
	(28,7),
	(29,7),
	(30,8),
	(31,8),
	(32,11),
	(33,11),
	(34,11),
	(35,11),
	(36,11),
	(37,11),
	(38,11),
	(39,9),
	(40,10),
	(41,10),
	(42,10),
	(43,10),
	(44,10),
	(45,10),
	(46,10),
	(47,10);
    
INSERT INTO `LCCinema`.`FaturaBilhete`
    (id_fatura,id_bilhete)
VALUES
	(1,1),
	(1,2),
	(1,3),
	(2,4),
	(3,5),
	(3,7),
	(4,8),
	(5,10),
	(5,11),
	(6,9),
	(7,12),
	(8,7),
	(9,15),
	(10,13),
	(10,14),
	(11,16),
	(11,20),
	(12,18),
	(13,17),
	(14,23),
	(14,26),
	(14,28),
	(15,25),
	(16,21),
	(17,24),
	(18,29),
	(19,22),
	(19,27),
	(19,30),
	(20,19),
	(21,31),
	(22,32),
	(22,33),
	(23,34),
	(23,35),
	(23,36),
	(24,37),
	(25,38),
	(25,39),
	(26,40),
	(27,41),
	(28,42),
	(29,43),
	(29,44),
	(30,45);
    
    

	
