-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 30 Haz 2023, 19:55:12
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `hotel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `Pass` text NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `phone`, `Pass`, `is_admin`) VALUES
(1, 'Omer Faruk', 'teknopluse12@gmail.com', '5385028957', '12345678', 0),
(2, 'Kaito Kuroba', 'test@test.com', '5385028957', 'JR3L5Wm5ApXNPaM', 0),
(3, 'Omer Faruk', 'teknopluse12@gmail.com', '5385028957', '12345678', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hotelSettings`
--

CREATE TABLE `hotelSettings` (
  `id` int(11) NOT NULL,
  `hotelName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `hotelSettings`
--

INSERT INTO `hotelSettings` (`id`, `hotelName`) VALUES
(1, 'BYA');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reverasyonlar`
--

CREATE TABLE `reverasyonlar` (
  `id` int(11) NOT NULL,
  `cikisTarihi` text NOT NULL,
  `odaAdi` int(11) NOT NULL,
  `isDatePast` int(11) NOT NULL,
  `email` text NOT NULL,
  `musteriAdi` text NOT NULL,
  `kisiSayisi` int(11) NOT NULL,
  `girisTarihi` text NOT NULL,
  `telefon` text NOT NULL,
  `durum` text NOT NULL DEFAULT '0',
  `cinsiyet` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `reverasyonlar`
--

INSERT INTO `reverasyonlar` (`id`, `cikisTarihi`, `odaAdi`, `isDatePast`, `email`, `musteriAdi`, `kisiSayisi`, `girisTarihi`, `telefon`, `durum`, `cinsiyet`) VALUES
(1, '2023-07-01', 1, 0, 'teknopluse12@gmail.com', 'Omer Faruk', 2, '2023-06-30', '5385028957', '1', 'erkek'),
(3, '2023-07-02', 1, 0, 'test@test.com', 'Kaito Kuroba', 1, '2023-07-01', '5385028957', '0', 'erkek'),
(4, '2023-07-02', 4, 0, 'teknopluse12@gmail.com', 'Omer Faruk', 2, '2023-07-01', '5385028957', '0', 'erkek');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` int(11) NOT NULL,
  `salePrice` int(11) NOT NULL,
  `saleActive` int(11) NOT NULL,
  `image` text NOT NULL,
  `soldCount` int(11) NOT NULL,
  `maxRoomCount` int(11) NOT NULL,
  `avabilve` int(11) NOT NULL DEFAULT 1,
  `maxCust` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `room`
--

INSERT INTO `room` (`id`, `name`, `price`, `salePrice`, `saleActive`, `image`, `soldCount`, `maxRoomCount`, `avabilve`, `maxCust`) VALUES
(1, 'Süit', 1000, 850, 0, 'img/xroom-1.jpg.pagespeed.ic.0q4Bp6Qeo7.webp', 0, 4, 1, 2),
(2, 'Aile Odası', 1500, 1450, 0, 'img/xroom-2.jpg.pagespeed.ic.qQEQzEZcIj.webp', 0, 3, 1, 7),
(3, 'Lüx Oda', 2000, 1850, 0, 'img/xroom-3.jpg.pagespeed.ic.-BqmSKjZKz.webp', 0, 4, 1, 4),
(4, 'Luxury Oda', 2500, 2250, 0, 'img/xroom-4.jpg.pagespeed.ic.5v9gH2L7pP.webp', 0, 3, 1, 4),
(5, 'Superior Oda', 3000, 2850, 0, 'img/xroom-6.jpg.pagespeed.ic.jmpfruk5EA.webp', 0, 3, 1, 3);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hotelSettings`
--
ALTER TABLE `hotelSettings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reverasyonlar`
--
ALTER TABLE `reverasyonlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `hotelSettings`
--
ALTER TABLE `hotelSettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `reverasyonlar`
--
ALTER TABLE `reverasyonlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
