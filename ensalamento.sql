-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03-Dez-2018 às 18:52
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ensalamento`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `house_number` bigint(20) NOT NULL,
  `street` varchar(250) NOT NULL,
  `zip_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `authority`
--

CREATE TABLE `authority` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `authority`
--

INSERT INTO `authority` (`ID`, `NAME`) VALUES
(1, 'COMPANY_CREATE'),
(2, 'COMPANY_READ'),
(3, 'COMPANY_UPDATE'),
(4, 'COMPANY_DELETE'),
(5, 'DEPARTMENT_CREATE'),
(6, 'DEPARTMENT_READ'),
(7, 'DEPARTMENT_UPDATE'),
(8, 'DEPARTMENT_DELETE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nome_curso` varchar(250) NOT NULL,
  `datecreate` datetime NOT NULL,
  `dateupdate` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nome_curso`, `datecreate`, `dateupdate`, `status`) VALUES
(1, 'Ciencia da Computacao ', '2018-12-02 00:00:00', '2018-12-02 00:00:00', 1),
(2, 'Administracao', '2018-12-02 00:00:00', '2018-12-02 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `surname` varchar(250) NOT NULL,
  `addres_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grade_curso`
--

CREATE TABLE `grade_curso` (
  `id_grade` int(11) NOT NULL,
  `disciplina_curso` varchar(200) NOT NULL,
  `carga_horaria_disciplina` varchar(30) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `datecreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dateupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `grade_curso`
--

INSERT INTO `grade_curso` (`id_grade`, `disciplina_curso`, `carga_horaria_disciplina`, `id_curso`, `datecreate`, `dateupdate`, `status`) VALUES
(1, 'Calculo III', '400h', 1, '2018-12-03 17:42:23', '2018-12-03 17:42:23', 1),
(2, 'Teoria da administracao', '200h', 2, '2018-12-03 17:42:23', '2018-12-03 17:42:23', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_client_details`
--

CREATE TABLE `oauth_client_details` (
  `CLIENT_ID` int(11) NOT NULL,
  `RESOURCE_IDS` varchar(250) NOT NULL,
  `CLIENT_SECRET` varchar(250) NOT NULL,
  `SCOPE` varchar(250) NOT NULL,
  `AUTHORIZED_GRANT_TYPES` varchar(250) NOT NULL,
  `AUTHORITIES` varchar(250) NOT NULL,
  `ACCESS_TOKEN_VALIDITY` varchar(250) NOT NULL,
  `REFRESH_TOKEN_VALIDITY` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `oauth_client_details`
--

INSERT INTO `oauth_client_details` (`CLIENT_ID`, `RESOURCE_IDS`, `CLIENT_SECRET`, `SCOPE`, `AUTHORIZED_GRANT_TYPES`, `AUTHORITIES`, `ACCESS_TOKEN_VALIDITY`, `REFRESH_TOKEN_VALIDITY`) VALUES
(1, 'resource-server-rest-api', '$2a$04$WGq2P9egiOYoOFemBRfsiO9qTcyJtNRnPKNBl5tokP7IP.eZn93km', 'read', 'password,authorization_code,refresh_token,implicit', 'USER', '10800', '2592000'),
(2, 'resource-server-rest-api', '$2a$04$soeOR.QFmClXeFIrhJVLWOQxfHjsJLSpWrU1iGxcMGdu.a5hvfY4W', 'read,write', 'password,authorization_code,refresh_token,implicit', 'USER', '10800', '2592000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `user_id`) VALUES
(1, 'ROLE_USER', 2),
(2, 'ROLE_ADMIN', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `roms`
--

CREATE TABLE `roms` (
  `id_roms` int(11) NOT NULL,
  `nome_roms` varchar(200) NOT NULL,
  `datecreate` datetime NOT NULL,
  `dateupdate` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `name` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `username`, `created_at`, `updated_at`) VALUES
(1, 'teste@teste', 'teste1', '$2a$10$tzeEYLuv3xZo2A3Tf3BYj.8c.sHe7AeefTrwLibE/2LppfLdKAZeG', 'teste', '2018-10-05 17:01:21', '2018-10-05 17:01:21'),
(2, 'teste@teste2', 'teste1', '$2a$10$86qPKwuCX9q1V2HU8TxFSuWGQgX5o0LD11mjKrf7pIqvuDhyttu52', 'teste2', '2018-10-06 03:09:22', '2018-10-08 16:47:41'),
(3, 'teste@teste3', 'teste1', '$2a$10$NB8DlmV7kFNfDdwL6IbXQ.CM0Gb9Tl6GOZ.ZCf0iYWdzBxBu2k/Ge', 'teste3', '2018-10-05 22:23:12', '2018-10-05 22:23:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_authorities`
--

CREATE TABLE `users_authorities` (
  `USER_ID` int(11) NOT NULL,
  `AUTHORITY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users_authorities`
--

INSERT INTO `users_authorities` (`USER_ID`, `AUTHORITY_ID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(2, 2),
(2, 6),
(3, 3),
(3, 7),
(4, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addres_id` (`addres_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `grade_curso`
--
ALTER TABLE `grade_curso`
  ADD PRIMARY KEY (`id_grade`);

--
-- Indexes for table `oauth_client_details`
--
ALTER TABLE `oauth_client_details`
  ADD PRIMARY KEY (`CLIENT_ID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_nb4h0p6txrmfc0xbrd1kglp9t` (`name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roms`
--
ALTER TABLE `roms`
  ADD PRIMARY KEY (`id_roms`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Indexes for table `users_authorities`
--
ALTER TABLE `users_authorities`
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `AUTHORITY_ID` (`AUTHORITY_ID`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authority`
--
ALTER TABLE `authority`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_curso`
--
ALTER TABLE `grade_curso`
  MODIFY `id_grade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_client_details`
--
ALTER TABLE `oauth_client_details`
  MODIFY `CLIENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roms`
--
ALTER TABLE `roms`
  MODIFY `id_roms` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
