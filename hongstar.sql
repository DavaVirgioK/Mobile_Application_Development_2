-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20221112.e56633effc
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Des 2022 pada 17.11
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hongstar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `beverage`
--

CREATE TABLE `beverage` (
  `beverage_id` int(255) NOT NULL,
  `beverage_name` varchar(255) NOT NULL,
  `beverage_desc` varchar(255) NOT NULL,
  `beverage_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `beverage`
--

INSERT INTO `beverage` (`beverage_id`, `beverage_name`, `beverage_desc`, `beverage_price`) VALUES
(1, 'Mineral Water', 'Minuman dengan mineral terbaik dari pegunungan', '8000'),
(2, 'Fresh iced tea', 'Teh yang disajikan menggunakan teh yang terbaik', '13000'),
(3, 'Hot tea', 'Teh yang disajikan menggunakan teh yang terbaik', '11000'),
(4, 'Hot lemon tea', 'Teh yang disajikan menggunakan teh yang terbaik dan menggunakan lemon yang memberikan rasa asam', '15000'),
(5, 'Iced lemon tea', 'Teh yang disajikan menggunakan teh yang terbaik dan menggunakan lemon yang memberikan rasa asam', '17000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_price` varchar(255) NOT NULL,
  `total` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `food`
--

CREATE TABLE `food` (
  `food_id` int(255) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `food_desc` varchar(255) NOT NULL,
  `food_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `food`
--

INSERT INTO `food` (`food_id`, `food_name`, `food_desc`, `food_price`) VALUES
(1, 'Nasi Goreng', 'Nasi Yang digoreng menggunakan bumbu\" pilihan', '13000'),
(2, 'Nasi Goreng Bakso', 'Nasi goreng dengan toping bakso', '18000'),
(3, 'Nasi Goreng Sosis', 'Nasi Yang digoreng menggunakan bumbu-bumbu pilihan dengan topping sosis', '18000'),
(4, 'Nasi Goreng Ayam', 'Nasi Yang digoreng menggunakan bumbu-bumbu pilihan dengan topping suwiran ayam', '20000'),
(5, 'Nasi Goreng Gila', 'Nasi Yang digoreng menggunakan bumbu-bumbu pilihan dengan rasa pedas yang nampol dan toping lengkap', '25000'),
(10, 'Nasi Goreng Sapi', 'Nasi Yang digoreng menggunakan bumbu-bumbu pilihan dengan rasa pedas yang nampol dan toping lengkap', '25000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `trx_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `timetrx` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `TotalPrice` int(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(255) NOT NULL,
  `trx_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `timetrx` varchar(255) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_price` varchar(255) NOT NULL,
  `total` int(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `TotalPrice` int(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `trx_id`, `username`, `timetrx`, `menu_name`, `menu_price`, `total`, `payment_method`, `TotalPrice`, `status`) VALUES
(64, 31, 'naijel', '2022.12.12 AD at 16:06:42 GMT+07:00', 'Nasi Goreng', '15000', 1, 'BCA', 15000, 'DONE'),
(65, 32, 'NAIJEL', '2022.12.12 AD at 16:49:00 GMT+07:00', 'Nasi Goreng', '15000', 1, 'SHOPEEPAY', 105000, 'DONE'),
(66, 32, 'NAIJEL', '2022.12.12 AD at 16:49:00 GMT+07:00', 'Nasi Goreng Sosis', '18000', 2, 'SHOPEEPAY', 105000, 'DONE'),
(67, 32, 'NAIJEL', '2022.12.12 AD at 16:49:00 GMT+07:00', 'Nasi Goreng Ayam', '20000', 1, 'SHOPEEPAY', 105000, 'DONE'),
(68, 32, 'NAIJEL', '2022.12.12 AD at 16:49:00 GMT+07:00', 'Mineral Water', '10000', 1, 'SHOPEEPAY', 105000, 'DONE'),
(69, 32, 'NAIJEL', '2022.12.12 AD at 16:49:00 GMT+07:00', 'Fresh iced tea', '13000', 1, 'SHOPEEPAY', 105000, 'DONE'),
(81, 37, 'naijel', '2022.12.14 AD at 16:46:11 GMT+07:00', 'Nasi Goreng', '13000', 4, 'BCA', 52000, 'DONE'),
(82, 38, 'naijel', '2022.12.17 AD at 09:53:07 GMT+07:00', 'Nasi Goreng', '13000', 1, 'BCA', 81000, 'DONE'),
(83, 38, 'naijel', '2022.12.17 AD at 09:53:07 GMT+07:00', 'Nasi Goreng Bakso', '18000', 1, 'BCA', 81000, 'DONE'),
(84, 38, 'naijel', '2022.12.17 AD at 09:53:07 GMT+07:00', 'Nasi Goreng Sosis', '18000', 1, 'BCA', 81000, 'DONE'),
(85, 38, 'naijel', '2022.12.17 AD at 09:53:07 GMT+07:00', 'Mineral Water', '8000', 1, 'BCA', 81000, 'DONE'),
(86, 38, 'naijel', '2022.12.17 AD at 09:53:07 GMT+07:00', 'Fresh iced tea', '13000', 1, 'BCA', 81000, 'DONE'),
(87, 38, 'naijel', '2022.12.17 AD at 09:53:07 GMT+07:00', 'Hot tea', '11000', 1, 'BCA', 81000, 'DONE'),
(88, 39, 'umar', '2022.12.17 AD at 21:22:41 GMT+07:00', 'Mineral Water', '8000', 2, 'BCA', 16000, 'DONE'),
(89, 40, 'dava', '2022.12.17 AD at 22:34:37 GMT+07:00', 'Nasi Goreng', '13000', 1, 'BCA', 57000, 'DONE'),
(90, 40, 'dava', '2022.12.17 AD at 22:34:37 GMT+07:00', 'Nasi Goreng Bakso', '18000', 1, 'BCA', 57000, 'DONE'),
(91, 40, 'dava', '2022.12.17 AD at 22:34:37 GMT+07:00', 'Fresh iced tea', '13000', 2, 'BCA', 57000, 'DONE'),
(92, 41, 'naijel', '2022.12.17 AD at 22:36:18 GMT+07:00', 'Nasi Goreng', '13000', 2, 'OVO', 68000, 'DONE'),
(93, 41, 'naijel', '2022.12.17 AD at 22:36:18 GMT+07:00', 'Nasi Goreng Bakso', '18000', 1, 'OVO', 68000, 'DONE'),
(94, 41, 'naijel', '2022.12.17 AD at 22:36:18 GMT+07:00', 'Mineral Water', '8000', 3, 'OVO', 68000, 'DONE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `role`) VALUES
(5, 'naijel', '$2y$10$J04A.MGuA/sFWoiqVKsVuOqlC0j/tzhSev61.hXr3bcX5ZOCXs62a', 'naijel@gmail.com', 'customer'),
(6, 'owen', '$2y$10$GhwU3bBlUmOrB12IF1e/SucBZ3FQaZL1WApRMsmEmv9apOrnXlVXK', 'owen@gmail.com', 'customer'),
(9, 'umar', '$2y$10$a3iJFKAgQyJCK1Ppru6L9Oy1K0HPg7WOvXm9xWRXv9lCS89o3mOAS', 'umar@gmail.com', 'customer'),
(10, 'admin', '$2y$10$F0i19bOVx/WQ0AgN8II8EuoVM4ppqz9edoKgxccG2hzhR3CCku5jC', 'admin@gmail.com', 'admin'),
(11, 'dava', '$2y$10$BV/hs2.aBmNDwmVjUmiqd.sbeP5GI2jkMHvSPfP6zWiW7Bak222EW', 'dava@gmail.com', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `beverage`
--
ALTER TABLE `beverage`
  ADD PRIMARY KEY (`beverage_id`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`trx_id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `beverage`
--
ALTER TABLE `beverage`
  MODIFY `beverage_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `trx_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
