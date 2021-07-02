-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 23/10/2018 às 10:04
-- Versão do servidor: 5.7.23-0ubuntu0.16.04.1
-- Versão do PHP: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `quiz`
--
CREATE DATABASE IF NOT EXISTS `quiz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quiz`;

-- --------------------------------------------------------
CREATE TABLE usuario (
nome varchar(40),
email varchar(30),
primary key (matricula)
);

--
-- Estrutura para tabela `pergunta`
--

DROP TABLE IF EXISTS `pergunta`;

CREATE TABLE `pergunta` (
  `id` int(11) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `pergunta`
--

INSERT INTO `pergunta` (`id`, `texto`) VALUES
(1,'Como era conhecida a idade média?'),
(2,'Qual o período que durou a idade média?'),
(3,'Qual o marco para o estopim da idade média?'),
(4,'O que foram as cruzadas?'),
(5, ' Quais as motivações para as cruzadas?'),
(6,'A expansão do trabalho serviu o fortalecimento do poder dos nobres e a consagração das relações de dependência e fidelidade no meio aristocrático. Essas características são de qual sistema?'),
(7,' Quem eram os suseranos?'),
(8,'O que corresponde a primeira fase da idade média?'),
(9,'Por quem era representado o grupo dos aristocratas?'),
(10,'Como era a mulher na idade média?'),
(11,' O que é clero secular?'),
(12,'Quem foram os germânicos?'),
(13,' Qual o nome da Antiga Constantinopla na atualidade?'),
(14,'Qual a língua oficial do Império Bizantino?'),
(15,'Quem tentou restaurar o Império Romano?'),
(16,'Qual a cidade mais importante do islã?'),
(17,'Na sociedade feudal, as classes sociais eram divididas em estamentos. Por ordem de importância, quais eram eles?'),
(18,'A Idade Média é separada em "períodos", quais foram eles?'),
(19,' Doença que matou quase 1/3 da Europa, como principal causadora uma bactéria que se aloja em pulgas, e consequentemente, em ratos'),
(20,'Quais foram as 3 classes sociais durante o período feudal?'),
(21,'Uma cidade foi conquistada no final da Idade Média, e alguns'),
(22,'Os nobres tinham o dever de zelar pela proteção de quem?'),
(23,'Qual era a base da economia feudal?'),
(24,'O que foi o Tribunal da Inquisição, ou Santo Ofício?'),
(25,'O surgimento de escolas e a conservação e transmissão da cultura clássica se deu o que chamamos de:'),
(26,'Em qual ano houve a crise do Império Romano do Ocidente?'),
(27,'Como eram conhecidos os povos que aos poucos, foram enfraquecendo as fronteiras do Império Romano do Ocidente?'),
(28,'Com base no sistema feudal, qual manso era utilizado por todos os habitantes do feudo que compreendia florestas e bosques?'),
(29,'.Quais eram os grupos dominantes da sociedade feudal ?'),
(30,'Quantos mansos havia num feudo?');

--
-- Estrutura para tabela `resposta`
--

DROP TABLE IF EXISTS `resposta`;
CREATE TABLE `resposta` (
  `id` int(11) NOT NULL,
  `texto` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `idpergunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `resposta`
--

INSERT INTO `resposta` (`id`, `texto`, `status`, `idpergunta`) VALUES
(1,' Idade das trevas',1,1),
(2, 'Idade das luzes',0,1),
(3,' Idade da pedra',0,1),

(4,'V - XV',1,2),
(5, ' IV - X',0,2),
(6,' VII - XII',0,2),

(7,'Queda do Império Romano do Ocidente.',1,3),
(8 ,'Expansão do Império Carolíngia.',0,3),
( 9,'As migrações dos Bárbaros.',0,3),

( 10,' Expedições militares de cristãos contra muçulmanos.',1,4),
( 11,'Expedições militares de cristãos contra protestantes.',0,4),
(12 ,'Expedições militares de protestantes contra muçulmanos.',0,4),

(13 ,'Os militares seriam salvos e todos os pecados seriam perdoados',1,5),
( 14,'Os militares que participavam recebiam muito dinheiro.',0,5),
(15 ,' Os militares que participavam recebiam espaço na nobreza',0,5),

(16 ,'Feudalismo',1,6),
( 17,' Pré história',0,6),
( 18,'luminismo',0,6),

(19 ,' Eram quem cediam terras para os vassalos',1,7),
( 20,' Recebiam terras dos vassalos',0,7),
( 21,'Eram soldados',0,7),

(22 ,' Corresponde a fase das invasões bárbaras do crescimento do cristianismo na Europa e do desmantelamento do Império Romano.',1,8),
( 23,'Desenvolvimento do sistema feudal e a expansão islâmica',0,8),
( 24,' Invasões e pilhagens de bárbaros, como os vikings',0,8),

(25 ,' Por indivíduos detentores de terras, poder político e com forte educação guerreira',1,9),
( 26,'Padres e bispos.',0,9),
( 27,'Suseranos e vassalos',0,9),

( 28,'Ocupavam uma posição inferior na sociedade medieval.',1,10),
(29,'Tinham os mesmos direitos que os homens.',0,10),
(30,'Eram bem vistas na sociedade e tinha influências na monarquia. ',0,10),

(31,'Os monges que vivem em mosteiros',0,11),
(32,'Os homens do clero que trabalham diretamente junto aos fiéis com a organização administrativa da Igreja',1,11),
(33,' A Igreja Ortodoxa',0,11),

(34,' Bárbaros',1,12),
(35,'Romanos',0,12),
(36,'Gregos',0,12),

(37,'Istambul',1,13),
(38,'Atenas',0,13),
(39,' Síria',0,13),

(40,'Grego',1,14),
(41,'Espanhol',0,14),
(42,'Latim',0,14),

(43,'Justiniano',1,15),
(44,'Constantino',0,15),
(45,'Carlos Magno',0,15),

(46,'MECA',1,16),
(47,'Roma',0,16),
(48,'Constantinopla',0,16),

(49,'  O Clero, a Nobreza e os Servos.',1,17),
(50,'O Clero, a Nobreza, os Servos e os escravos',0,17),
(51,' A Nobreza, o Clero e os Servos.',0,17),

(52,'Alta Idade Média e Baixa Idade Média.',1,18),
(53,' Alta Idade Média, Sub Idade Média,Baixa Idade Média.',0,18),
(54,' Baixa Idade Média, Sub Idade Média, Baixa Idade Média e Regular Idade Média.',0,18),

(55,'Peste negra',1,19),
(56,'Gripe',0,19),
(57,'Lepra',0,19),

(58,'Clero, Nobreza e Servos.',1,20),
(59,'Eupátridas, Metecos e Escravos. ',0,20),
(60,'Faraó, Hilotas e escravos.',0,20),

(61,'Constantinopla, pelos mouros.',0,21),
(62,'Jerusalém, pelos católicos.',0,21),
(63,'Constantinopla, pelos católicos.',0,21),

(64,'Os reis, duques, marqueses, barões, condes e cavaleiros. ',1,22),
(65,' Somente os cavaleiros.',0,22),
(66,' Patrícios e cavaleiros.',0,22),

(67,'A terra.',1,23),
(68,'Os animais',0,23),
(69,'A moeda.',0,23),

(70,'O Tribunal que julgava hereges e os mandava à morte na fogueira por punição.',1,24),
(71,'O Tribunal que julgava os camponeses acusados de roubo, e os condenava à forca.',0,24),

(72,' Renascença carolíngia.',0,25),
(73,'Surgimento da pirâmide feudal ',0,25),
(74,'Tomada de Constantinopla pelos turcos.',0,25),

(75,'476 d.c.',1,26),
(76,'576 d.c',0,26),
(77,' 456 d.c.',0,26),

(78,' Bárbaros',1,27),
(79,'Beduínos',0,27),
(80	,'Cristãos',0,27),

(81,'Manso Comunal',1,28),
(82,'Manso Senhorial',0,28),
(83,'Manso Servil',0,28),

(84,'Clero, Nobreza e Servidão',1,29),
(85,'Nobreza e Servidão',0,29),
(86,'Suserania e Vassalagem',0,29),

(87,'Três',1,30),
(88,'Dois',0,30),
(89,'Um',0,30);


--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpergunta` (`idpergunta`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `resposta`
--
ALTER TABLE `resposta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `resposta`
--
ALTER TABLE `resposta`
  ADD CONSTRAINT `pergunta` FOREIGN KEY (`idpergunta`) REFERENCES `pergunta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




