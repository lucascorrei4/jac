-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Máquina: localhost:3306
-- Data de Criação: 28-Ago-2016 às 11:25
-- Versão do servidor: 5.5.50-cll
-- versão do PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `acampame_jac`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Registration`
--

CREATE TABLE IF NOT EXISTS `Registration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `agreeTerm` bit(1) NOT NULL,
  `allergy` varchar(255) DEFAULT NULL,
  `anyChurch` bit(1) NOT NULL,
  `asthma` bit(1) NOT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `church` varchar(255) DEFAULT NULL,
  `cityId` bigint(20) NOT NULL,
  `complement` varchar(255) DEFAULT NULL,
  `countryId` bigint(20) NOT NULL,
  `diabetes` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emergencyCall` varchar(255) DEFAULT NULL,
  `emergencyCall2` varchar(255) DEFAULT NULL,
  `fainting` bit(1) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `headache` bit(1) NOT NULL,
  `highPressure` bit(1) NOT NULL,
  `isActive` bit(1) NOT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `lowPressure` bit(1) NOT NULL,
  `medicine` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `postedAt` datetime DEFAULT NULL,
  `responsable` varchar(255) DEFAULT NULL,
  `responsableRG` varchar(255) DEFAULT NULL,
  `sleepwalk` bit(1) NOT NULL,
  `stateId` bigint(20) NOT NULL,
  `swim` bit(1) NOT NULL,
  `theVoice` bit(1) NOT NULL,
  `userCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Extraindo dados da tabela `Registration`
--

INSERT INTO `Registration` (`id`, `address`, `age`, `agreeTerm`, `allergy`, `anyChurch`, `asthma`, `birthdate`, `cep`, `church`, `cityId`, `complement`, `countryId`, `diabetes`, `email`, `emergencyCall`, `emergencyCall2`, `fainting`, `gender`, `headache`, `highPressure`, `isActive`, `lastName`, `lowPressure`, `medicine`, `message`, `name`, `phone1`, `phone2`, `postedAt`, `responsable`, `responsableRG`, `sleepwalk`, `stateId`, `swim`, `theVoice`, `userCode`) VALUES
(1, 'Pça Ubim Qd 214 Lt 11', 28, b'1', '', b'1', b'0', '27/11/1987', '74835-580', 'PIB Gyn', 977, 'Em frente Colégio CEAOS', 1, b'0', 'lucascorreiaevangelista@gmail.com', '', '', b'0', 'Masculino', b'0', b'0', b'0', 'Evangelista', b'0', '', '“Estaremos lado a lado em um momento em que não poderíamos estar mais distantes” – Magneto.', 'Lucas Correia', '(62) 99267-0199', '', '2016-08-05 04:16:37', '', '', b'0', 9, b'0', b'1', NULL),
(2, 'Rua Borba Gato Quadra-27 Lote-10', 23, b'1', '', b'1', b'0', '13/02/1993', '75063-733', 'IBRC', 898, '', 1, b'0', 'luiseduardoneveslima@gmail.com', '', '', b'0', 'Masculino', b'0', b'0', b'0', 'Lima', b'0', '', 'Por favor, precisamos de você pra salvar o M U N D O!!!!', 'Luis Eduardo', '(62) 99311-4815', '', '2016-08-07 04:40:44', 'Luis Eduardo Neves Lima', '', b'0', 9, b'0', b'1', NULL),
(3, 'Rua nossa senhora da Conceição qd 32 lt 11', 21, b'1', 'Enxaqueca ', b'1', b'0', '19/03/1995', '75060-140', 'Igreja Batista Regular do Calvário', 898, 'Casa 2 ', 1, b'0', 'Camilla.paaula@hotmail.com', '', '', b'0', 'Feminino', b'0', b'0', b'0', 'Souza de Paula ', b'0', 'Não ', '#bora lá galero. Animadíssima para o Jac', 'Camilla', '(62) 99301-2092', '', '2016-08-07 04:55:55', '', '', b'0', 9, b'0', b'1', NULL),
(4, 'rua perola quadra 09 lote 14', 17, b'1', '', b'1', b'0', '05/05/1999', '75000-000', 'Igreja Batista Regular do Calvário', 898, 'são Sebastião', 1, b'0', 'Klisman.mc@outlook.com', '(62) 99257-5540', '(62) 99241-3740', b'0', 'Masculino', b'0', b'0', b'0', 'Dias', b'0', '', 'Boooora Galera esse será o melhora', 'Klisman ', '(62) 99146-8486', '(62) 3701-1050', '2016-08-07 07:24:20', 'Nivaldo Dias Alves', '3803724', b'0', 9, b'0', b'1', NULL),
(5, 'Avenida 10', 20, b'1', 'Não', b'1', b'0', '29/01/1996', '75063-425', 'Igreja Batista Regular do Calvário', 898, 'Qd 22, Lt 18, Village Jardim', 1, b'0', 'fabianeleaao@gmail.com', '', '', b'0', 'Feminino', b'1', b'0', b'0', 'Leão', b'0', 'Cefaliv para enxaqueca ', 'Se não vê o perigo, não altera o fato que ele existe!! #Boraaa #Acamps #top', 'Fabiane', '(62) 99257-1859', '(62) 3387-2007', '2016-08-08 14:30:44', '', '', b'0', 9, b'0', b'1', NULL),
(6, 'Rua P 24', 18, b'1', 'Mosquito', b'1', b'0', '10/03/1998', '75063-430', 'IBRC', 898, 'Qd 15 Lt 17', 1, b'0', 'maracaipe@gmail.com', '', '', b'0', 'Masculino', b'1', b'0', b'0', 'Carvalho', b'0', 'Cefaliv', 'Se você não acampa, não venha desacampar os acampantes', 'Gabriel', '(62) 99676-1998', '(62) 3098-4081', '2016-08-08 14:47:30', '', '', b'0', 9, b'0', b'1', NULL),
(7, 'Av.24 de Agosto Qd. 02 Lt. 16', 14, b'1', 'Sim, dipirona', b'1', b'0', '23/05/2002', '75060-470', 'Igreja Batista Regular do Calvário', 898, '', 1, b'0', 'sa.brine_23@hotmail.com', '(62) 99995-6282', '(62) 98425-5742', b'0', 'Feminino', b'0', b'0', b'0', 'Moreira', b'0', 'Sim, Tolrest', 'Bora animar porque esse acampamento vai ser toop!!', 'Sabrine ', '(62) 99803-6860', '(62) 3315-6216', '2016-08-08 16:49:17', 'Wilian ', '2436363', b'0', 9, b'1', b'0', NULL),
(8, 'rua 18 ', 21, b'1', 'sim , Neomicina', b'1', b'0', '07/06/1995', '75063-743', 'A melhor do mundo. IBRC', 898, 'qd 25 lt 09 village jardim', 1, b'0', 'deborah.almeidab@gmail.com', '', '', b'0', 'Feminino', b'1', b'0', b'0', 'Almeida', b'0', '', 'é preciso cantar bem pra participar do The Voice? ////// bora bora galeraaa... que dessa vez vamo tira a dona agnes da cama de tao bão que vai ser', 'Deborah', '(62) 99234-4257', '(62) 3315-5840', '2016-08-08 17:12:16', '', '', b'0', 9, b'0', b'0', NULL),
(9, 'Avenida 24 de agosto, Qd.02 Lt.16', 20, b'1', 'Dipirona', b'1', b'0', '23/05/1996', '75060-470', 'Igreja Batista Regular do Calvário', 898, 'Bairro Alexandrina', 1, b'0', 'suziideoliveira@gmail.com', '', '', b'0', 'Feminino', b'0', b'0', b'0', 'Oliveira', b'0', 'Não', 'Já preparei o grito de guerra. Vai Levi!! lol', 'Suzane', '(62) 9215-4692', '(62) 3315-6216', '2016-08-10 02:43:37', '', '', b'0', 9, b'1', b'1', NULL),
(10, 'Pça Independencia Qd. 11 Lt.01 Bairro Alvorada', 26, b'1', 'Não', b'1', b'0', '06/10/1989', '75084-560', 'IBRC', 898, '', 1, b'0', 'thatiane_6@hotmail.com', '', '', b'0', 'Feminino', b'0', b'0', b'0', 'Nascimento Silva', b'0', 'Não', '', 'Thatiane', '(62) 98126-0203', '(62) 3318-3471', '2016-08-10 14:38:12', '', '', b'0', 9, b'1', b'0', NULL),
(11, 'Qr 423 conjunto 07 casa 06 ', 28, b'1', '', b'1', b'0', '02/12/1987', '72325-208', 'IBRRedentor', 5576, '', 1, b'0', 'candim_maverick@hotmail.com', '', '', b'0', 'Masculino', b'0', b'0', b'0', 'Teixeira Gomes de Amorim', b'0', '', '', 'Marcondes', '(61) 99149-8053', '', '2016-08-13 23:41:27', '', '', b'0', 7, b'0', b'0', NULL),
(12, 'Qr 421 conjunto 01 casa 18', 47, b'1', '', b'1', b'0', '13/06/1969', '72325-101', 'IBRREDENTOR', 5576, '', 1, b'0', 'rogeriocastro13@hotmail.com', '', '', b'0', 'Masculino', b'0', b'0', b'0', 'Dias de Castro', b'0', '', 'Firmes e Avante, para o grande dia!', 'Rogerio ', '(61) 98154-2179', '(61) 3434-5259', '2016-08-13 23:48:26', '', '', b'0', 7, b'0', b'0', NULL),
(13, 'QI 416 CONJ 2 LOTES 4/5', 15, b'1', 'acido salitil salicilico / dipirona ', b'1', b'0', '25/12/2000', '72302-320', '', 5576, 'AP 1501B', 1, b'0', 'felipe14dl@gmail.com', '(61) 98149-1646', '', b'0', 'Masculino', b'0', b'0', b'0', 'dias', b'0', '', '', 'felipe', '(61) 98149-1646', '(61) 3475-2614', '2016-08-13 23:49:01', 'rogerio dias de castro', '922432', b'0', 7, b'0', b'0', NULL),
(14, 'qr 421 conjunto 18 casa 06', 17, b'1', 'Dermatite', b'1', b'0', '02/11/1998', '72325-121', 'Igreja Batista Regular do Redentor', 5576, '', 1, b'0', 'iris.gomesjacobina@hotmail.com', '(61) 8500-6729', '(61) 9229-8230', b'0', 'Feminino', b'1', b'0', b'0', 'Nogueira', b'1', 'Euthyrox, Noripurum', 'Que saudades de vocês, aguardo ansiosamente revê-los!! <3 <3 ', 'Rebeca', '(61) 8500-6729', '(61) 3359-7682', '2016-08-13 23:52:03', 'Rogério Dias de Castro', '922432', b'0', 7, b'1', b'1', NULL),
(15, 'Qr 423 conjunto 07 casa 06', 28, b'1', '', b'1', b'0', '30/12/1987', '72325-208', 'IBRRedentor', 5576, '', 1, b'0', 'maverick06@ig.com.br', '', '', b'0', 'Feminino', b'0', b'0', b'0', 'Ferreira Gomes de Amorim', b'0', '', '', 'Adriane', '(61) 99279-9633', '', '2016-08-13 23:54:25', '', '', b'0', 7, b'1', b'0', NULL),
(16, 'Qnp 18 conjunto H casa 4', 15, b'1', 'Não', b'1', b'0', '17/10/2000', '72231-808', 'Igreja Batista Regular do Redentor', 5573, '', 1, b'0', 'teteusgcastro@hotmail.com', '(61) 98319-4619', '(61) 3377-4778', b'0', 'Masculino', b'0', b'0', b'0', 'Gomes de Castro', b'0', 'Não', '', 'Matheus', '(61) 98373-3342', '(61) 3377-4778', '2016-08-13 23:56:04', 'Rogério Dias de Castro', '922432', b'0', 7, b'0', b'1', NULL),
(17, 'Qr 421 conjunto 1 casa 18', 15, b'1', 'Não', b'1', b'0', '03/05/2001', '72325-101', 'Igreja Batista Regular do Redentor', 5576, '', 1, b'0', 'josuemarquescastro@hotmail.com', '(61) 8330-9049', '(61) 8154-2179', b'0', 'Masculino', b'0', b'0', b'0', 'Marques de Castro', b'0', 'Não', 'Que Deus esteja sempre com você, mas que acima de tudo, que estaja sempre com Deus', 'Josué', '(61) 8128-2354', '(61) 3434-5259', '2016-08-14 00:03:34', 'Rogério Dias de Castro', '922432', b'0', 7, b'0', b'1', NULL),
(18, 'QNP 18 CONJUNTO H ', 20, b'1', '', b'1', b'0', '13/11/1995', '72231-808', 'Igreja Batista Regular do Redentor ', 5573, 'CASA 4 ', 1, b'0', 'biankagcastro@gmail.com.br', '', '', b'0', 'Feminino', b'0', b'0', b'0', 'Gomes de Castro', b'0', '', '', 'Bianka ', '(61) 8125-4547', '(61) 3377-4778', '2016-08-14 00:09:04', '', '', b'0', 7, b'0', b'1', NULL),
(19, 'Qr 421 conjunto 01 casa 18', 40, b'1', '', b'1', b'0', '16/09/1975', '72325-101', 'IBRREDENTOR', 5576, '', 1, b'0', 'lucianagm_castro@hotmail.com', '', '', b'0', 'Feminino', b'0', b'0', b'0', 'Galeno Marques de Castro', b'0', '', '', 'Luciana', '(61) 98330-9049', '', '2016-08-14 00:14:36', '', '', b'0', 7, b'0', b'0', NULL),
(20, 'qr 621 conjunto 02', 20, b'1', '', b'1', b'0', '01/11/1995', '72333-202', 'IBRREDENTOR', 5576, 'casa 05', 1, b'0', 'marinalvaoliveira@hotmail.com', '', '', b'0', 'Feminino', b'0', b'0', b'0', 'Sousa Oliveira', b'0', '', '', 'Lídia', '(61) 98613-4172', '(61) 3359-1999', '2016-08-14 00:17:18', '', '', b'0', 7, b'0', b'0', NULL),
(21, 'Qr 621 conjunto 02 casa 05', 50, b'1', '', b'1', b'0', '22/07/1966', '72333-210', 'IBRREDENTOR', 5576, '', 1, b'0', 'rebeca.ngomes@hotmail.com', '', '', b'0', 'Feminino', b'0', b'0', b'0', 'Sousa Oliveira', b'0', '', '', 'Marinalva', '(61) 98613-4172', '', '2016-08-14 00:20:21', '', '', b'0', 7, b'0', b'0', NULL),
(22, 'Rua Riachuelo  ', 22, b'1', '', b'1', b'0', '03/05/1994', '75000-000', 'IBRC', 898, 'qd 09 lt 05A', 1, b'0', 'ayrtonoliveira_brito@hotmail.com', '', '', b'0', 'Masculino', b'0', b'0', b'0', 'Brito', b'0', '', 'BOOOORAAAAAA MEU POLVO E MINHA POLVA!!!!! ESSE ANO VAI SER TOP... TO NA PARADA, RENTE NO BATENTE...', 'Ayrton', '(62) 99104-9663', '(62) 3099-6380', '2016-08-14 03:04:40', '', '', b'0', 9, b'0', b'1', NULL),
(23, 'Qnm 18 conj e casa 39', 23, b'1', 'Não', b'0', b'0', '09/10/1992', '72210-185', 'Igreja batista esperança', 5577, '', 1, b'0', 'Daniel_mendes92@yahoo.com.br', '', '', b'0', 'Masculino', b'0', b'0', b'0', 'Gomes mendes', b'0', 'Não', 'Em setembro é nós galera, a Dona Agnes que se prepare.', 'Daniel', '(61) 99957-7537', '(61) 3371-5572', '2016-08-15 05:00:43', '', '', b'0', 7, b'0', b'1', NULL),
(24, 'QS 410 conjunto c LT 1 SAMAMBAIA NORTE', 15, b'1', 'Sim.. Besouro ', b'1', b'0', '20/03/2001', '72320-523', 'Igreja Batista Regular Esperança', 804, 'Igreja Batista Regular Esperança', 1, b'0', 'fabioeviviane.lima@hotmail.com.br', '(61) 98273-8211', '(61) 9829-7889', b'0', 'Feminino', b'0', b'0', b'0', 'Nunes Carvalho', b'0', 'Não', 'Estou ansiosa para conhecer.... :) ', 'Leticia Thauane ', '(61) 99872-1956', '', '2016-08-18 01:36:31', 'Viviane', '2236743', b'0', 7, b'0', b'0', NULL),
(25, 'Avenida João Florentino qd 42 Lt 29', 16, b'1', '', b'0', b'0', '15/12/99', '75085-630', 'Batista Regular do Calvário ', 898, 'Residencial das flores ', 1, b'0', 'Thaisinha.slb_@hotmail.com', '(62) 99480-3778', '', b'0', 'Feminino', b'0', b'0', b'0', 'Bonifácio ', b'0', '', 'Não perco 1 ❤', 'Thais ', '(62) 99177-2705', '', '2016-08-22 02:24:46', 'Ellen Cristina ', '4352141', b'0', 9, b'0', b'1', NULL),
(26, 'Rua P-037 Q-22 Lt-15', 17, b'1', 'Ovo e banana', b'1', b'0', '06/04/1999', '75063-530', 'IBRC', 898, 'Jardim Proguesso', 1, b'0', 'arturw9@hotmail.com', '', '', b'0', 'Masculino', b'0', b'0', b'0', 'Andrade', b'0', '', '', 'Artur ', '(62) 99409-4465', '', '2016-08-22 03:38:19', 'Maria de Fatima Silva', '', b'0', 9, b'0', b'0', NULL),
(27, 'Qr 423 conjunto 07 casa 06', 16, b'1', '', b'0', b'0', '11/02/2000', '72325-208', 'IBRRedentor', 5576, '', 1, b'0', 'adriane.ga87@gmail.com', '(61) 99279-9633', '(61) 99149-8053', b'0', 'Feminino', b'0', b'0', b'0', 'Duarte de Oliveira', b'0', '', '', 'Amanda ', '(61) 98665-1604', '(61) 3358-1000', '2016-08-22 15:09:27', 'Adriane Ferreira Gomes de Amorim', '2566483', b'0', 7, b'0', b'0', NULL),
(28, 'Rua Celso máximo Pereira qd 52 Lt. 8 casa -1', 17, b'1', '', b'0', b'0', '26/05/99', '75084-110', '', 898, 'São Carlos', 1, b'0', 'T_hayler_gato@hotmail.com', '(62) 9482-5634', '', b'0', 'Masculino', b'0', b'0', b'0', 'Oliveira ', b'0', '', '', 'Thayler ', '(62) 8431-4868', '', '2016-08-23 02:47:04', 'Diva Dos Reis ', '07161193150', b'0', 9, b'0', b'1', NULL),
(29, 'Rua Ostra ', 22, b'1', 'Cachorro', b'1', b'0', '05/11/1993', '75091-444', 'PIBA', 898, 'Qd  14 Lt 13', 1, b'0', 'matheus93gs@hotmail.com', '', '', b'0', 'Masculino', b'0', b'0', b'0', 'Guimarães', b'0', 'Não', 'CHAMA QUE É NOIS', 'Matheus', '(62) 98170-6654', '', '2016-08-24 23:31:32', '', '', b'1', 9, b'0', b'1', NULL),
(30, 'Rua P-24', 50, b'1', 'Que eu saiba não...rs', b'1', b'0', '30/03/1966', '75063-430', 'Igreja Batista Regular do Calvário em Anápolis', 898, 'Qd 15, Lt 17', 1, b'0', 'maracaipe66@gmail.com', '', '', b'0', 'Masculino', b'0', b'0', b'0', 'Maracaípe', b'0', 'Cafezinho básico hehehe', 'Que Deus, por meio de seu Espírito use esses dias para nossa transformar cada vez mais à imagem de seu Filho.', 'Mário', '(62) 99331-0403', '(62) 3098-4081', '2016-08-25 23:42:21', '', '', b'0', 9, b'0', b'0', NULL),
(31, 'Rua P 24', 48, b'1', '', b'1', b'0', '31/12/1967', '75063-430', 'Igreja Batista Regular Calvário em Anápolis', 898, 'Qd 15, Lt 17', 1, b'0', 'crisped10@gmail.com', '', '', b'0', 'Feminino', b'0', b'0', b'0', 'Maracaípe', b'0', '', 'Desde já sei que será uma benção! Que Jesus nos abençoe!', 'Cristiane', '(63) 99384-6387', '(62) 3098-4081', '2016-08-25 23:50:24', '', '', b'0', 9, b'0', b'0', NULL),
(32, 'Av Bernardo Sayão qd 21 lt 06 B ', 24, b'1', '', b'1', b'0', '22/07/1992', '75070-020', 'Assembléia de Deus Ministério de Anápolis', 898, 'Jardim das Américas', 1, b'0', 'israelfernandesbezerra@gmail.com', '', '', b'0', 'Masculino', b'0', b'0', b'0', 'Fernandes Bezerra', b'0', '', 'Ser vilão nem sempre é querer o mal. Mais sim ter um pensamento diferente dos que acham estar fazendo o bem!!!', 'Israel', '(62) 9239-3745', '', '2016-08-26 03:06:15', '', '', b'0', 9, b'0', b'0', NULL),
(33, 'Rua pp 18 qd 44 lt 4', 32, b'1', '', b'1', b'0', '18/01/1985', '75071-750', 'Batista', 898, '', 1, b'0', 'thiagoferreiradasneves@gmail.com', '', '', b'0', 'Masculino', b'1', b'0', b'0', 'Ferreira das neves', b'0', '', 'Vai ser top.', 'Thiago ', '(62) 99105-3616', '', '2016-08-27 13:13:56', '', '', b'0', 9, b'0', b'0', NULL),
(34, 'Rua pp 18 qd 44 lt 4', 32, b'1', '', b'1', b'0', '15/01/1985', '75071-750', 'Batista', 898, '', 1, b'0', 'Denisesouzanascimentoferreira@gmail.com', '', '', b'0', 'Feminino', b'0', b'0', b'0', 'Souza nascimento ferreira', b'0', '', 'Que Jesus abençoe este evento.', 'Denise', '(62) 99464-7482', '', '2016-08-27 13:20:01', '', '', b'0', 9, b'0', b'1', NULL),
(35, 'Qs 410 conjunto c', 36, b'1', '', b'1', b'0', '29/08/1979', '72320-523', 'Batista Regular Esperança', 5576, 'casa 01', 1, b'0', 'rrdosanjos@hotmail.com', '', '', b'0', 'Masculino', b'0', b'0', b'0', 'dos Anjos', b'0', '', 'Tá chegando a hora!!!', 'Rodrigo', '(61) 98478-3326', '(61) 3024-6810', '2016-08-27 21:56:57', '', '', b'0', 7, b'0', b'0', NULL),
(36, 'Qs 410 conjunto c ', 34, b'1', '', b'1', b'0', '18/06/1982', '72320-523', 'Batista Regular Esperança', 5576, 'casa 01', 1, b'0', 'cassiana_82@hotmail.com', '', '', b'0', 'Feminino', b'0', b'0', b'0', 'dos Anjos', b'0', '', 'Com certeza será dias de bençãos e muita diversão!*)', 'Cassiana', '(61) 8628-2119', '(61) 3024-6810', '2016-08-27 22:03:10', '', '', b'0', 7, b'0', b'0', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
