-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 01-Jun-2018 às 02:26
-- Versão do servidor: 5.7.22-0ubuntu18.04.1
-- PHP Version: 7.2.5-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testebevicred`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(11) NOT NULL,
  `menu_nome` varchar(45) NOT NULL,
  `menu_direitos` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `menus`
--

INSERT INTO `menus` (`menu_id`, `menu_nome`, `menu_direitos`) VALUES
(1, 'Usuários', '64'),
(2, 'Salas', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `niveis`
--

CREATE TABLE `niveis` (
  `nivel_id` int(11) NOT NULL,
  `nivel_nome` varchar(45) NOT NULL,
  `direitos` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `niveis`
--

INSERT INTO `niveis` (`nivel_id`, `nivel_nome`, `direitos`) VALUES
(1, 'Administrador', '255'),
(2, 'Usuário', '33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas`
--

CREATE TABLE `paginas` (
  `pag_id` int(11) NOT NULL,
  `pag_arquivo` varchar(45) NOT NULL,
  `pag_nome` varchar(45) DEFAULT NULL,
  `pag_direitos` varchar(45) DEFAULT NULL,
  `pag_edicao` int(11) NOT NULL,
  `pag_menu` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `paginas`
--

INSERT INTO `paginas` (`pag_id`, `pag_arquivo`, `pag_nome`, `pag_direitos`, `pag_edicao`, `pag_menu`) VALUES
(1, 'cad_usuario.php', 'Novo Usuário', '64', 64, '1'),
(2, 'lista_usuarios.php', 'Listar Usuários', '64', 64, '1'),
(3, 'index.php', 'Painel', '1', 64, '0'),
(4, 'cad_sala.php', 'Nova Sala', '64', 64, '2'),
(5, 'lista_salas.php', 'Listar Salas', '32', 64, '2'),
(6, 'reservarsala.php', 'Reserva de Sala', '1', 64, '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

CREATE TABLE `reservas` (
  `user_id` varchar(45) NOT NULL,
  `sala_id` varchar(45) NOT NULL,
  `dia_hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `salas`
--

CREATE TABLE `salas` (
  `sala_id` varchar(45) NOT NULL,
  `sala_nome` varchar(255) NOT NULL,
  `sala_abertura` time NOT NULL,
  `sala_fechamento` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `salas`
--

INSERT INTO `salas` (`sala_id`, `sala_nome`, `sala_abertura`, `sala_fechamento`) VALUES
('7167ee1709e5bf759bafed2bab898410', 'Sala 409', '08:00:00', '18:00:00'),
('b84c17be1df804e51a20607f766a4f39', 'Sala 408', '08:00:00', '18:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `timestamps`
--

CREATE TABLE `timestamps` (
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usu_id` varchar(45) NOT NULL,
  `usu_nome` varchar(32) NOT NULL,
  `usu_email` varchar(255) DEFAULT NULL,
  `usu_senha` varchar(32) NOT NULL,
  `usu_direitos` varchar(45) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usu_id`, `usu_nome`, `usu_email`, `usu_senha`, `usu_direitos`, `create_time`) VALUES
('527a8401361a2bc3fdaac4bd09515bb5', 'Jagunço do sertão', 'jagunco', '96e3162ab449f30450b30b11dae0cdaa', '2', '2018-06-01 04:05:57'),
('6b21b3d376d4a77bf96d1637afee057f', 'Pedro Henrique Domingos', 'pedrohdsantos', 'c82b14b60f076c608f2fb9d6e3046036', '1', '2017-06-04 06:37:47'),
('78883a778f9d632b3e49783afd591f22', 'João Das Neves', 'jhonsnow', '96e3162ab449f30450b30b11dae0cdaa', '1', '2018-06-01 03:57:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `niveis`
--
ALTER TABLE `niveis`
  ADD PRIMARY KEY (`nivel_id`);

--
-- Indexes for table `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`pag_id`);

--
-- Indexes for table `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`sala_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `niveis`
--
ALTER TABLE `niveis`
  MODIFY `nivel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paginas`
--
ALTER TABLE `paginas`
  MODIFY `pag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
