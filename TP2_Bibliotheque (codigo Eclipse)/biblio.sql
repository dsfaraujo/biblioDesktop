-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/09/2017 às 21:14
-- Versão do servidor: 10.1.8-MariaDB
-- Versão do PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblio`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `auteur`
--

CREATE TABLE `auteur` (
  `id_auteur` int(11) NOT NULL,
  `auteur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `auteur`
--

INSERT INTO `auteur` (`id_auteur`, `auteur`) VALUES
(1001, 'Leo Tolstoy'),
(1002, 'Charles Dickens'),
(1003, 'Jane Austen'),
(1004, 'William Shakespeare'),
(1005, 'Charles Baudelaire'),
(1006, 'J.K. Rowling'),
(1007, 'J. R. R. Tolkien'),
(1008, 'Aldous Huxley'),
(1009, 'George Orwell'),
(1010, 'Vladmir Nabokov'),
(1011, 'Franz Kafka'),
(1012, 'Antoine de Saint-Exupery'),
(1013, 'Robert Bauval'),
(1014, 'Corine Lesnes');

-- --------------------------------------------------------

--
-- Estrutura para tabela `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `prenom` text NOT NULL,
  `nom` text NOT NULL,
  `adresse` text NOT NULL,
  `telephone` text NOT NULL,
  `courriel` text,
  `dtNaissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `client`
--

INSERT INTO `client` (`id_client`, `prenom`, `nom`, `adresse`, `telephone`, `courriel`, `dtNaissance`) VALUES
(20170001, 'Diana', 'Soares', '111 Berri', '514-438-0001', 'dsoares@email.com', '1990-06-27'),
(20170002, 'Pedro', 'Alves', '222 Parc', '514-438-0002', 'palves@email.com', '1979-03-26'),
(20170003, 'Patricia', 'Shimizu', '333 Laurier', '514-438-0003', 'pshimizu@email.com', '1980-11-07'),
(20170004, 'Rian', 'Santos', '444 St Laurent', '514-438-0004', 'rsantos@email.com', '1989-04-07'),
(20170005, 'Leila', 'Wagner', '555 Papineau', '514-438-0005', 'lwagner@email.com', '1982-06-16'),
(20170006, 'Simon', 'Bellemare', '666 Fairmount', '514-438-0006', 'sbellemare@email.com', '1980-12-26');

-- --------------------------------------------------------

--
-- Estrutura para tabela `editeur`
--

CREATE TABLE `editeur` (
  `id_editeur` int(11) NOT NULL,
  `editeur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `editeur`
--

INSERT INTO `editeur` (`id_editeur`, `editeur`) VALUES
(3001, 'HarperCollins'),
(3002, 'Penguin'),
(3003, 'Macmillan Publishers'),
(3004, 'Du Rocher'),
(3005, 'Philippe Rey');

-- --------------------------------------------------------

--
-- Estrutura para tabela `file_attente`
--

CREATE TABLE `file_attente` (
  `id_file` int(11) NOT NULL,
  `dtEntree` date NOT NULL,
  `loue` tinyint(1) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_livreTitreAuteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `genre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `genre`
--

INSERT INTO `genre` (`id_genre`, `genre`) VALUES
(2001, 'Littérature'),
(2002, 'Fiction'),
(2003, 'Fantasie'),
(2004, 'Phoème'),
(2005, 'Histoire'),
(2006, 'Jeunesse'),
(2007, 'Roman'),
(2008, 'Science-fiction'),
(2009, 'Histoire'),
(2010, 'Politique');

-- --------------------------------------------------------

--
-- Estrutura para tabela `langue`
--

CREATE TABLE `langue` (
  `id_langue` int(11) NOT NULL,
  `langue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `langue`
--

INSERT INTO `langue` (`id_langue`, `langue`) VALUES
(101, 'English'),
(102, 'Français');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livre`
--

CREATE TABLE `livre` (
  `isbn` varchar(20) NOT NULL,
  `rare` tinyint(1) NOT NULL,
  `id_editeur` int(11) NOT NULL,
  `id_langue` int(11) NOT NULL,
  `id_livreTitreAuteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `livre`
--

INSERT INTO `livre` (`isbn`, `rare`, `id_editeur`, `id_langue`, `id_livreTitreAuteur`) VALUES
('978-0099589341', 0, 3002, 101, 5004),
('978-0141036137', 0, 3002, 101, 5013),
('978-0141036144', 0, 3002, 101, 5012),
('978-0156013987', 0, 3004, 102, 5017),
('978-0199232765', 1, 3003, 101, 5001),
('978-0199535583', 0, 3003, 101, 5007),
('978-0261102354', 0, 3001, 101, 5009),
('978-0261102361', 0, 3001, 101, 5010),
('978-0261102378', 0, 3001, 101, 5011),
('978-0307356543', 0, 3001, 101, 5008),
('978-0393347098', 0, 3002, 101, 5015),
('978-0486272788', 1, 3002, 101, 5005),
('978-0486275574', 0, 3002, 101, 5006),
('978-0486415864', 0, 3002, 101, 5003),
('978-0486437965', 1, 3003, 101, 5002),
('978-2070518425', 0, 3004, 102, 5018),
('978-2070643073', 0, 3004, 102, 5016),
('978-2081266445', 0, 3004, 102, 5014),
('978-2268033945', 0, 3004, 102, 5019),
('978-2848762142', 0, 3005, 102, 5020);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `livre2`
--
CREATE TABLE `livre2` (
`isbn` varchar(20)
,`rare` tinyint(1)
,`editeur` text
,`langue` text
,`id_livreTitreAuteur` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `livreinfo`
--
CREATE TABLE `livreinfo` (
`isbn` varchar(20)
,`rare` tinyint(1)
,`editeur` text
,`langue` text
,`titre` text
,`auteur` text
,`genre` text
,`adresse_ex` text
,`dtPublication` date
,`num_exemplaire` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `livrelocation`
--
CREATE TABLE `livrelocation` (
`isbn` varchar(20)
,`rare` tinyint(1)
,`editeur` text
,`langue` text
,`titre` text
,`auteur` text
,`genre` text
,`adresse_ex` text
,`dtPublication` date
,`num_exemplaire` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `livrelocationretour`
--
CREATE TABLE `livrelocationretour` (
`isbn` varchar(20)
,`rare` tinyint(1)
,`editeur` text
,`langue` text
,`titre` text
,`auteur` text
,`genre` text
,`adresse_ex` text
,`dtPublication` date
,`num_exemplaire` varchar(20)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `livretitreauteur2`
--
CREATE TABLE `livretitreauteur2` (
`id_livreTitreAuteur` int(11)
,`titre` text
,`auteur` text
,`genre` text
);

-- --------------------------------------------------------

--
-- Estrutura para tabela `livre_exemplaire`
--

CREATE TABLE `livre_exemplaire` (
  `num_ex` varchar(20) NOT NULL,
  `dtPublication` date NOT NULL,
  `adresse_ex` text NOT NULL,
  `isbn` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `livre_exemplaire`
--

INSERT INTO `livre_exemplaire` (`num_ex`, `dtPublication`, `adresse_ex`, `isbn`) VALUES
('978-0099589341/001', '1998-01-30', 'H 02 - 22 C', '978-0099589341'),
('978-0099589341/002', '1996-12-12', 'H 02 - 23 C', '978-0099589341'),
('978-0141036137/001', '2009-04-08', 'H 32 - 223 R', '978-0141036137'),
('978-0141036137/002', '2012-08-02', 'H 32 - 224 R', '978-0141036137'),
('978-0141036144/001', '2015-03-20', 'H 02 - 23 C', '978-0141036144'),
('978-0156013987/001', '2006-10-24', 'J 16 - 05 C', '978-0156013987'),
('978-0199232765/001', '1990-12-01', 'H 01 - 402 R', '978-0199232765'),
('978-0199535583/001', '2007-06-09', 'J 26 - 405 C', '978-0199535583'),
('978-0261102354/001', '2001-09-15', 'J 26 - 105 C', '978-0261102354'),
('978-0261102354/002', '2005-02-17', 'J 26 - 106 C', '978-0261102354'),
('978-0261102361/001', '2012-10-24', 'J 26 - 405 C', '978-0261102361'),
('978-0261102378/001', '2000-03-06', 'J 26 - 405 C', '978-0261102378'),
('978-0307356543/001', '2010-03-29', 'J 20 - 200 R', '978-0307356543'),
('978-0393347098/001', '2014-10-01', 'J 56 - 405 C', '978-0393347098'),
('978-0393347098/002', '2015-10-11', 'J 06 -  007 R', '978-0393347098'),
('978-0486272788/001', '1989-01-04', 'J 26 - 405 C', '978-0486272788'),
('978-0486275574/001', '2001-06-24', 'J 03 - 105 R', '978-0486275574'),
('978-0486415864/001', '2000-12-04', 'H 23 - 302 R', '978-0486415864'),
('978-0486437965/001', '1920-02-02', 'H 22 - 230 C', '978-0486437965'),
('978-2070518425/001', '2005-03-29', 'J 08 - 15 C', '978-2070518425'),
('978-2070518425/002', '2010-05-13', 'J 08 - 16 C', '978-2070518425'),
('978-2070518425/003', '2015-06-06', 'J 08 - 17 C', '978-2070518425'),
('978-2070643073/001', '2009-02-08', 'J 20 - 77 R', '978-2070643073'),
('978-2081266445/001', '1999-05-07', 'H 07 - 102 C', '978-2081266445'),
('978-2268033945/001', '2016-02-02', 'H 02 - 23 R', '978-2268033945'),
('978-2848762142/001', '2012-10-15', 'H 82 - 93 R', '978-2848762142'),
('978-2848762142/002', '2015-12-04', 'H 82 - 94 R', '978-2848762142');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livre_titre_auteur`
--

CREATE TABLE `livre_titre_auteur` (
  `id_livreTitreAuteur` int(11) NOT NULL,
  `id_auteur` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL,
  `id_titre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `livre_titre_auteur`
--

INSERT INTO `livre_titre_auteur` (`id_livreTitreAuteur`, `id_auteur`, `id_genre`, `id_titre`) VALUES
(5001, 1001, 2001, 4001),
(5002, 1001, 2007, 4002),
(5003, 1002, 2001, 4003),
(5004, 1003, 2007, 4004),
(5005, 1004, 2001, 4005),
(5006, 1004, 2007, 4006),
(5007, 1005, 2004, 4007),
(5008, 1008, 2008, 4008),
(5009, 1007, 2003, 4009),
(5010, 1007, 2003, 4010),
(5011, 1007, 2003, 4011),
(5012, 1009, 2008, 4012),
(5013, 1009, 2001, 4013),
(5014, 1011, 2002, 4014),
(5015, 1011, 2002, 4015),
(5016, 1006, 2006, 4016),
(5017, 1012, 2006, 4017),
(5018, 1006, 2006, 4018),
(5019, 1013, 2009, 4019),
(5020, 1013, 2009, 4020);

-- --------------------------------------------------------

--
-- Estrutura para tabela `location`
--

CREATE TABLE `location` (
  `id_location` int(11) NOT NULL,
  `dtDebut` date NOT NULL,
  `id_client` int(11) NOT NULL,
  `num_ex` varchar(20) NOT NULL,
  `dtFin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `location`
--

INSERT INTO `location` (`id_location`, `dtDebut`, `id_client`, `num_ex`, `dtFin`) VALUES
(0, '2017-09-01', 20170004, '978-0199232765/001', '2017-09-15'),
(1, '2017-08-31', 20170002, '978-0486437965/001', '2017-09-14');

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `recherche`
--
CREATE TABLE `recherche` (
`isbn` varchar(20)
,`rare` tinyint(1)
,`editeur` text
,`langue` text
,`titre` text
,`auteur` text
,`genre` text
);

-- --------------------------------------------------------

--
-- Estrutura para tabela `titre`
--

CREATE TABLE `titre` (
  `id_titre` int(11) NOT NULL,
  `titre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `titre`
--

INSERT INTO `titre` (`id_titre`, `titre`) VALUES
(4001, 'War and Peace'),
(4002, 'Anna Karenina'),
(4003, 'Great Expectations'),
(4004, 'Sense and Sensibility'),
(4005, 'Hamlet'),
(4006, 'Romeo and Juliet'),
(4007, 'The Flowers of Evil'),
(4008, 'Brave New World'),
(4009, 'The Lord of the Rings - The Fellowship of the Ring'),
(4010, 'The Lord of the Rings - The Two Towers'),
(4011, 'The Lord of the Rings - The Return of the King'),
(4012, '1984'),
(4013, 'Animal Farm'),
(4014, 'Le Procès'),
(4015, 'Metamorphosis'),
(4016, 'Harry Potter - Et le prince de sang-mêlé'),
(4017, 'Le Petit Prince'),
(4018, 'Harry Potter - À L école des Sorciers'),
(4019, 'Le Mystère du Grand Sphinx'),
(4020, 'Amérique, années Obama : Chroniques d un pays ingouvernable'),
(4021, 'titre test');

-- --------------------------------------------------------

--
-- Estrutura para view `livre2`
--
DROP TABLE IF EXISTS `livre2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `livre2`  AS  select `livre`.`isbn` AS `isbn`,`livre`.`rare` AS `rare`,`editeur`.`editeur` AS `editeur`,`langue`.`langue` AS `langue`,`livre`.`id_livreTitreAuteur` AS `id_livreTitreAuteur` from ((`livre` join `editeur` on((`livre`.`id_editeur` = `editeur`.`id_editeur`))) join `langue` on((`livre`.`id_langue` = `langue`.`id_langue`))) ;

-- --------------------------------------------------------

--
-- Estrutura para view `livreinfo`
--
DROP TABLE IF EXISTS `livreinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `livreinfo`  AS  select `livre`.`isbn` AS `isbn`,`livre`.`rare` AS `rare`,`editeur`.`editeur` AS `editeur`,`langue`.`langue` AS `langue`,`titre`.`titre` AS `titre`,`auteur`.`auteur` AS `auteur`,`genre`.`genre` AS `genre`,`livre_exemplaire`.`adresse_ex` AS `adresse_ex`,`livre_exemplaire`.`dtPublication` AS `dtPublication`,`livre_exemplaire`.`num_ex` AS `num_exemplaire` from (((((((`livre` join `editeur`) join `langue`) join `livre_titre_auteur`) join `titre`) join `auteur`) join `genre`) join `livre_exemplaire`) where ((`livre`.`id_editeur` = `editeur`.`id_editeur`) and (`livre`.`id_langue` = `langue`.`id_langue`) and (`livre`.`id_livreTitreAuteur` = `livre_titre_auteur`.`id_livreTitreAuteur`) and (`livre_titre_auteur`.`id_titre` = `titre`.`id_titre`) and (`livre_titre_auteur`.`id_auteur` = `auteur`.`id_auteur`) and (`livre_titre_auteur`.`id_genre` = `genre`.`id_genre`) and (`livre`.`isbn` = `livre_exemplaire`.`isbn`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `livrelocation`
--
DROP TABLE IF EXISTS `livrelocation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `livrelocation`  AS  select `livreinfo`.`isbn` AS `isbn`,`livreinfo`.`rare` AS `rare`,`livreinfo`.`editeur` AS `editeur`,`livreinfo`.`langue` AS `langue`,`livreinfo`.`titre` AS `titre`,`livreinfo`.`auteur` AS `auteur`,`livreinfo`.`genre` AS `genre`,`livreinfo`.`adresse_ex` AS `adresse_ex`,`livreinfo`.`dtPublication` AS `dtPublication`,`livreinfo`.`num_exemplaire` AS `num_exemplaire` from `livreinfo` where (not(`livreinfo`.`num_exemplaire` in (select `location`.`num_ex` from `location`))) ;

-- --------------------------------------------------------

--
-- Estrutura para view `livrelocationretour`
--
DROP TABLE IF EXISTS `livrelocationretour`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `livrelocationretour`  AS  select `livreinfo`.`isbn` AS `isbn`,`livreinfo`.`rare` AS `rare`,`livreinfo`.`editeur` AS `editeur`,`livreinfo`.`langue` AS `langue`,`livreinfo`.`titre` AS `titre`,`livreinfo`.`auteur` AS `auteur`,`livreinfo`.`genre` AS `genre`,`livreinfo`.`adresse_ex` AS `adresse_ex`,`livreinfo`.`dtPublication` AS `dtPublication`,`livreinfo`.`num_exemplaire` AS `num_exemplaire` from `livreinfo` where `livreinfo`.`num_exemplaire` in (select `location`.`num_ex` from `location`) ;

-- --------------------------------------------------------

--
-- Estrutura para view `livretitreauteur2`
--
DROP TABLE IF EXISTS `livretitreauteur2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `livretitreauteur2`  AS  select `livre_titre_auteur`.`id_livreTitreAuteur` AS `id_livreTitreAuteur`,`titre`.`titre` AS `titre`,`auteur`.`auteur` AS `auteur`,`genre`.`genre` AS `genre` from (((`livre_titre_auteur` join `titre` on((`livre_titre_auteur`.`id_titre` = `titre`.`id_titre`))) join `auteur` on((`livre_titre_auteur`.`id_auteur` = `auteur`.`id_auteur`))) join `genre` on((`livre_titre_auteur`.`id_genre` = `genre`.`id_genre`))) ;

-- --------------------------------------------------------

--
-- Estrutura para view `recherche`
--
DROP TABLE IF EXISTS `recherche`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recherche`  AS  select `livre`.`isbn` AS `isbn`,`livre`.`rare` AS `rare`,`editeur`.`editeur` AS `editeur`,`langue`.`langue` AS `langue`,`titre`.`titre` AS `titre`,`auteur`.`auteur` AS `auteur`,`genre`.`genre` AS `genre` from ((((((`livre` join `editeur`) join `langue`) join `livre_titre_auteur`) join `titre`) join `auteur`) join `genre`) where ((`livre`.`id_editeur` = `editeur`.`id_editeur`) and (`livre`.`id_langue` = `langue`.`id_langue`) and (`livre`.`id_livreTitreAuteur` = `livre_titre_auteur`.`id_livreTitreAuteur`) and (`livre_titre_auteur`.`id_titre` = `titre`.`id_titre`) and (`livre_titre_auteur`.`id_auteur` = `auteur`.`id_auteur`) and (`livre_titre_auteur`.`id_genre` = `genre`.`id_genre`)) ;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`id_auteur`);

--
-- Índices de tabela `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Índices de tabela `editeur`
--
ALTER TABLE `editeur`
  ADD PRIMARY KEY (`id_editeur`);

--
-- Índices de tabela `file_attente`
--
ALTER TABLE `file_attente`
  ADD PRIMARY KEY (`id_file`),
  ADD KEY `id_livreTitreAuteur` (`id_livreTitreAuteur`),
  ADD KEY `id_client` (`id_client`);

--
-- Índices de tabela `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Índices de tabela `langue`
--
ALTER TABLE `langue`
  ADD PRIMARY KEY (`id_langue`);

--
-- Índices de tabela `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `id_livreTitreAuteur` (`id_livreTitreAuteur`),
  ADD KEY `id_editeur` (`id_editeur`),
  ADD KEY `id_langue` (`id_langue`);

--
-- Índices de tabela `livre_exemplaire`
--
ALTER TABLE `livre_exemplaire`
  ADD PRIMARY KEY (`num_ex`),
  ADD KEY `isbn` (`isbn`);

--
-- Índices de tabela `livre_titre_auteur`
--
ALTER TABLE `livre_titre_auteur`
  ADD PRIMARY KEY (`id_livreTitreAuteur`),
  ADD KEY `id_auteur` (`id_auteur`),
  ADD KEY `id_genre` (`id_genre`),
  ADD KEY `id_titre` (`id_titre`);

--
-- Índices de tabela `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id_location`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `num_ex` (`num_ex`);

--
-- Índices de tabela `titre`
--
ALTER TABLE `titre`
  ADD PRIMARY KEY (`id_titre`);

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `file_attente`
--
ALTER TABLE `file_attente`
  ADD CONSTRAINT `file_attente_ibfk_1` FOREIGN KEY (`id_livreTitreAuteur`) REFERENCES `livre_titre_auteur` (`id_livreTitreAuteur`),
  ADD CONSTRAINT `file_attente_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);

--
-- Restrições para tabelas `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`id_livreTitreAuteur`) REFERENCES `livre_titre_auteur` (`id_livreTitreAuteur`),
  ADD CONSTRAINT `livre_ibfk_2` FOREIGN KEY (`id_editeur`) REFERENCES `editeur` (`id_editeur`),
  ADD CONSTRAINT `livre_ibfk_3` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`);

--
-- Restrições para tabelas `livre_exemplaire`
--
ALTER TABLE `livre_exemplaire`
  ADD CONSTRAINT `livre_exemplaire_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `livre` (`isbn`);

--
-- Restrições para tabelas `livre_titre_auteur`
--
ALTER TABLE `livre_titre_auteur`
  ADD CONSTRAINT `livre_titre_auteur_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `auteur` (`id_auteur`),
  ADD CONSTRAINT `livre_titre_auteur_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`),
  ADD CONSTRAINT `livre_titre_auteur_ibfk_3` FOREIGN KEY (`id_titre`) REFERENCES `titre` (`id_titre`);

--
-- Restrições para tabelas `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`num_ex`) REFERENCES `livre_exemplaire` (`num_ex`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
