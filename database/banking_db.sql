-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Jun-2022 às 18:57
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banking_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `accounts`
--

CREATE TABLE `accounts` (
  `id` int(30) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `pin` text NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `middlename` varchar(250) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `generated_password` text NOT NULL,
  `balance` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `accounts`
--

INSERT INTO `accounts` (`id`, `account_number`, `pin`, `firstname`, `lastname`, `middlename`, `email`, `password`, `generated_password`, `balance`, `date_created`, `date_updated`) VALUES
(1, '009821', '35214', 'Jaime', 'Marcos', 'Mateus', 'jaime.marcos@gmail.com', '', 'jp6z5nlq', 5000, '2022-06-05 18:45:08', '2022-06-05 18:53:41'),
(4, '1234231', '112341', 'Allen', 'Cumbana', 'Aires', 'allen.cumbana@gmail.com', '', 'gtyho5ym', 10000, '2022-06-05 18:53:25', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `announcements`
--

CREATE TABLE `announcements` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `announcement` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `announcement`, `date_created`, `date_updated`) VALUES
(4, 'Standard Bank mantém expectativas de recuperação lenta da economia em 2022', '&lt;div class=&quot;attribute-short&quot; style=&quot;color: rgb(102, 102, 102); font-family: bentonsans-medium-webfont; font-size: 14.4px;&quot;&gt;&lt;div class=&quot;ezxmltext-field&quot;&gt;&lt;p style=&quot;margin-bottom: 0.5rem; text-align: justify;&quot;&gt;Ap&oacute;s dois anos dif&iacute;ceis caracterizados pelo impacto negativo da pandemia da Covid-19, o Standard Bank prev&ecirc; uma ligeira recupera&ccedil;&atilde;o do crescimento econ&oacute;mico para um ritmo de 2.8%, em 2022, ap&oacute;s 2.2%, em 2021, e uma contrac&ccedil;&atilde;o de 1.2%, em 2020.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;attribute-long&quot; style=&quot;color: rgb(102, 102, 102); font-family: bentonsans-medium-webfont; font-size: 14.4px;&quot;&gt;&lt;div class=&quot;ezxmltext-field&quot;&gt;&lt;p style=&quot;margin-bottom: 0.5rem; text-align: justify;&quot;&gt;Estima-se que as intemp&eacute;ries, que assolaram o Pa&iacute;s desde o &uacute;ltimo trimestre de 2021, tenham desacelerado o ritmo de crescimento do Produto Interno Bruto (PIB) para 3%, em termos hom&oacute;logos, no primeiro trimestre deste ano, de um crescimento de 3.3%, no &uacute;ltimo trimestre do ano passado.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.5rem; text-align: justify;&quot;&gt;O crescimento previsto est&aacute;, em parte, associado ao al&iacute;vio das restri&ccedil;&otilde;es relacionadas com a Covid-19.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.5rem; text-align: justify;&quot;&gt;Por outro lado, o pa&iacute;s elegeu implementar um conjunto de reformas estruturais para melhorar a governa&ccedil;&atilde;o, apoiar o combate &agrave; corrup&ccedil;&atilde;o e a luta contra o terrorismo, melhorar a gest&atilde;o das finan&ccedil;as p&uacute;blicas e do sector empresarial do Estado e criar maior resili&ecirc;ncia contra os choques naturais.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.5rem; text-align: justify;&quot;&gt;Para tal, o Governo conta com o apoio de um programa do Fundo Monet&aacute;rio Internacional (FMI), associado a um pacote de financiamento de cerca de 470 milh&otilde;es de d&oacute;lares, que dever&aacute; ser aprovado pelo Board desta institui&ccedil;&atilde;o nos pr&oacute;ximos dias.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.5rem; text-align: justify;&quot;&gt;Com o programa do FMI, espera-se, igualmente, o aumento do apoio externo pelos parceiros de coopera&ccedil;&atilde;o, o que dever&aacute; contribuir para a melhoria das disponibilidades de financiamento &agrave; economia.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;', '2022-06-05 18:51:11', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Graduation Program Online Banking System'),
(6, 'short_name', 'DRK_OBS'),
(11, 'logo', 'uploads/logo.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/162649540_dark-bg.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transactions`
--

CREATE TABLE `transactions` (
  `id` int(30) NOT NULL,
  `account_id` int(30) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1=Cash in, 2= Withdraw, 3=transfer',
  `amount` float NOT NULL,
  `remarks` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `transactions`
--

INSERT INTO `transactions` (`id`, `account_id`, `type`, `amount`, `remarks`, `date_created`) VALUES
(17, 4, 1, 10000, 'Beginning balance', '2022-06-05 18:53:25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Administrator', 'admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2022-06-05 17:27:34', NULL),
(2, 'Derick', 'Cumabana', 'derick_cumbana', 'derick', NULL, NULL, 0, '2022-06-05 18:15:50', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
