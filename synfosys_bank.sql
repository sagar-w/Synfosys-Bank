-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Mar 17, 2021 at 08:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `synfosys_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Silene Oliveira', 'Ricardo', 7, '2021-03-17 12:44:09'),
(2, 'Silene Oliveira', 'Nairobi ', 150, '2021-03-17 12:36:24'),
(3, 'Sergio Marquina', ' Alison Parker', 1000, '2021-03-17 12:38:35'),
(4, ' Raquel Murillo', 'Nairobi ', 5, '2021-03-17 12:45:07'),
(5, ' Raquel Murillo', 'Sergio Marquina', 7, '2021-03-17 12:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Silene Oliveira', 'silene@gmail.com', 1959),
(2, 'Sergio Marquina', 'sergio@gmail.com', 86941),
(3, ' Raquel Murillo', ' raquel@gmail.com', 77582),
(4, 'Andrés de Fonollosa', 'andrés@gmail.com', 706),
(5, 'Agustín Ramos', 'agustín@gmail.com', 2013),
(6, 'Nairobi ', 'nairobi@gmail.com', 5826),
(7, 'Aníbal Cortés', 'rio@gmail.com', 21505),
(8, 'Ricardo', 'denver@gmail.com', 807),
(9, ' Alison Parker', ' alison@gmail.com', 87011),
(10, 'Mirko Dragic', 'mirko@gmail.com', 5441),
(11, 'Mariví Fuentes', 'mariví@gmail.com', 876);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
