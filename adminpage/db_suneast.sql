-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Des 2016 pada 03.40
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_suneast`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` tinyint(4) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'adi', 'adi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_blog`
--

CREATE TABLE `tb_blog` (
  `id_blog` int(11) NOT NULL,
  `slug` text NOT NULL,
  `image` text NOT NULL,
  `blog` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_blog`
--

INSERT INTO `tb_blog` (`id_blog`, `slug`, `image`, `blog`, `title`, `description`) VALUES
(10, '', 'images/suneast/Andre-Gomes.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?</p>\r\n', 'test', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?'),
(11, '', 'images/suneast/Andre-Gomes.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?</p>\r\n', 'title long text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` tinyint(11) NOT NULL,
  `nama_kategori` varchar(100) DEFAULT NULL,
  `desk_kategori` text,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`, `desk_kategori`, `gambar`) VALUES
(1, 'Middle Kitchen', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,&nbsp;</p>\r\n', 'images/suneast/2.jpg'),
(2, 'Gas Range', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'images/suneast/5.jpg'),
(3, 'Bakery Equipment', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'images/suneast/2.jpg'),
(4, 'Induction Cooker', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'images/suneast/1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_page`
--

CREATE TABLE `tb_page` (
  `id_page` int(11) NOT NULL,
  `slug` int(11) NOT NULL,
  `image` text NOT NULL,
  `article` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_page`
--

INSERT INTO `tb_page` (`id_page`, `slug`, `image`, `article`, `title`, `description`) VALUES
(5, 0, 'images/suneast/Andre-Gomes.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?</p>\r\n', 'Testimonial', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius accusantium quaerat, ab facere odio, vero libero ducimus eligendi eaque cum ullam, aperiam molestias. Ipsa nisi, dolores odio blanditiis assumenda minus?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_portofolio`
--

CREATE TABLE `tb_portofolio` (
  `id_port` tinyint(11) NOT NULL,
  `id_admin` tinyint(4) DEFAULT NULL,
  `port_tittle` text,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_portofolio`
--

INSERT INTO `tb_portofolio` (`id_port`, `id_admin`, `port_tittle`, `gambar`) VALUES
(1, NULL, 'test', 'images/suneast/port002.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` tinyint(4) DEFAULT NULL,
  `id_admin` tinyint(4) DEFAULT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `desk_produk` text,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `id_kategori`, `id_admin`, `nama_produk`, `desk_produk`, `gambar`) VALUES
(15, 3, NULL, 'SE-BRF-15H', '<table border="0" cellpadding="1" cellspacing="1" style="width:520px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-BRF-15H &quot;Profer 15Tray&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W: 610</p>\r\n\r\n			<p>D: 810</p>\r\n\r\n			<p>H: 2020</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power</td>\r\n			<td>:</td>\r\n			<td>2.600 watt</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Voltage</td>\r\n			<td>:</td>\r\n			<td>220V/1P/50Hz</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-brf-15h.jpg'),
(16, 2, NULL, 'SE-DBR48/96A', '<table border="0" cellpadding="1" cellspacing="1" style="width:340px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-DBR48/96A</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>L:215</p>\r\n\r\n			<p>W: 115</p>\r\n\r\n			<p>H:80/125</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Blower</td>\r\n			<td>:</td>\r\n			<td>220V/250W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BTU</td>\r\n			<td>:</td>\r\n			<td>2x163.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>260</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-dbr48-96a.jpg'),
(17, 4, NULL, 'C7001-S', '<table border="0" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>C7001-S</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W: 730</p>\r\n\r\n			<p>D: 425</p>\r\n\r\n			<p>H: 132,5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Voltage</td>\r\n			<td>:</td>\r\n			<td>120V/240V</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frequency</td>\r\n			<td>:</td>\r\n			<td>50/60Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power</td>\r\n			<td>:</td>\r\n			<td>120V~3500W/240V~7000W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Temperature</td>\r\n			<td>:</td>\r\n			<td>60&deg;C~240&deg;C,10 Levels</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/c7001-s.jpg'),
(18, 1, NULL, 'SE-WBL10EB', '<table border="0" cellpadding="2" cellspacing="2" style="width:300px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>Water Boiler</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-WBL10EB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W: 282</p>\r\n\r\n			<p>D: 530</p>\r\n\r\n			<p>H: 600</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Electrical</td>\r\n			<td>:</td>\r\n			<td>240V, 3Kw</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Recovery per Minute</td>\r\n			<td>:</td>\r\n			<td>0,5L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rapid Draw Off</td>\r\n			<td>:</td>\r\n			<td>10L</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/SE-WBL10EB.jpg'),
(19, 3, NULL, 'SE-BRA-24J', '<table border="0" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-BRA-24J &quot;2Deck, 4Tray&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimension</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W : 1300<br />\r\n			D &nbsp;: 840<br />\r\n			H &nbsp;: 590</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power</td>\r\n			<td>:</td>\r\n			<td>13kW</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Voltage</td>\r\n			<td>:</td>\r\n			<td>380V</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-bra-24j.jpg'),
(20, 3, NULL, 'SE-BRA-12J', '<table border="0" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-BRA-12J &quot;1Deck, 2Tray&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimension</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W : 1300<br />\r\n			D &nbsp;: 840<br />\r\n			H &nbsp;: 590</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power</td>\r\n			<td>:</td>\r\n			<td>6,5kW</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Voltage</td>\r\n			<td>:</td>\r\n			<td>220V-240V</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-bra-12j.jpg'),
(21, 3, NULL, 'SE-BRA-11J', '<table border="0" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-BRA-11J &quot;1Deck, 1Tray&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dimension</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W : 870<br />\r\n			D &nbsp;: 840<br />\r\n			H &nbsp;: 590</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power</td>\r\n			<td>:</td>\r\n			<td>4.2kW</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Voltage</td>\r\n			<td>:</td>\r\n			<td>220V/380V</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-bra-11j.jpg'),
(22, 4, NULL, 'C3501-ST2', '<table border="0" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>C3501-ST2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W: 360</p>\r\n\r\n			<p>D: 360</p>\r\n\r\n			<p>H: 109</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Voltage</td>\r\n			<td>:</td>\r\n			<td>120V/240V</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frequency</td>\r\n			<td>:</td>\r\n			<td>50/60Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power</td>\r\n			<td>:</td>\r\n			<td>120V~1800W/240V~3500W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Temperature</td>\r\n			<td>:</td>\r\n			<td>60&deg;C~240&deg;C,10 Levels</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/c3501-st2.jpg'),
(23, 4, NULL, 'C3510-S2', '<table border="0" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>C3510-S2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W: 360</p>\r\n\r\n			<p>D: 100</p>\r\n\r\n			<p>H: 415</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Voltage</td>\r\n			<td>:</td>\r\n			<td>120V/240V</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frequency</td>\r\n			<td>:</td>\r\n			<td>50/60Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power</td>\r\n			<td>:</td>\r\n			<td>120V~1800W/240V~3500W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Temperature</td>\r\n			<td>:</td>\r\n			<td>60&deg;C~240&deg;C,10 Levels</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/c3510-s2.jpg'),
(24, 4, NULL, 'C5102-KW', '<table border="0" cellpadding="1" cellspacing="1" style="width:430px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>C5102-KW</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W: 420</p>\r\n\r\n			<p>D: 230</p>\r\n\r\n			<p>H: 450</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Voltage</td>\r\n			<td>:</td>\r\n			<td>120V/240V</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frequency</td>\r\n			<td>:</td>\r\n			<td>50/60Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power</td>\r\n			<td>:</td>\r\n			<td>240V~5000W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Temperature</td>\r\n			<td>:</td>\r\n			<td>60&deg;C~240&deg;C,10 Levels</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/c5102-kw.jpg'),
(25, 4, NULL, 'C3514-BW', '<table border="0" cellpadding="1" cellspacing="1" style="width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>C3514-BW</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W: 350</p>\r\n\r\n			<p>D: 450</p>\r\n\r\n			<p>H: 115</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Voltage</td>\r\n			<td>:</td>\r\n			<td>120V/240V</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frequency</td>\r\n			<td>:</td>\r\n			<td>50/60Hz</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power</td>\r\n			<td>:</td>\r\n			<td>120V~1800W/240V~3500W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Temperature</td>\r\n			<td>:</td>\r\n			<td>60&deg;C~240&deg;C,10 Levels</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/c3514-bw.jpg'),
(26, 1, NULL, 'OPTIONAL TROLLEY', '<table border="0" cellpadding="1" cellspacing="1" style="width:700px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>1. OPTIONAL TROLLEY &quot;2burner&quot;</p>\r\n			<p>2. OPTIONAL TROLLEY &quot;3burner&quot;</p>\r\n			</td>\r\n		</tr>\r\n		\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/optionaltrolley.jpg'),
(27, 1, NULL, 'BPLOPP3B+S', '<table border="0" cellpadding="2" cellspacing="2" style="width:530px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>OPP PLANCHA SILVER</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>BPLOPP3B+S</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W: 670</p>\r\n\r\n			<p>D: 414</p>\r\n\r\n			<p>H: 190</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight(Kg)</td>\r\n			<td>:</td>\r\n			<td>7,5</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/bplopp3b+s.jpg'),
(28, 1, NULL, 'BPLOPP2B+S', '<table border="0" cellpadding="2" cellspacing="2" style="width:530px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>OPP PLANCHA SILVER</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>BPLOPP2B+S</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W: 525</p>\r\n\r\n			<p>D: 414</p>\r\n\r\n			<p>H: 190</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight(Kg)</td>\r\n			<td>:</td>\r\n			<td>5</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/bplopp2b+s.jpg'),
(29, 1, NULL, 'SE-WBL5EB', '<table border="0" cellpadding="2" cellspacing="2" style="width:300px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>Water Boiler</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-WBL5EB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W: 223</p>\r\n\r\n			<p>D: 450</p>\r\n\r\n			<p>H: 462</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Electrical</td>\r\n			<td>:</td>\r\n			<td>240V, 3Kw</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Recovery per Minute</td>\r\n			<td>:</td>\r\n			<td>0,5L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rapid Draw Off</td>\r\n			<td>:</td>\r\n			<td>4L</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/SE-WBL5EB.jpg'),
(30, 1, NULL, 'SE-2', '<table border="0" cellpadding="1" cellspacing="1" style="width:530px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>Insect Killer Glue Pad</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>SE-2</p>\r\n			</td>\r\n		</tr>\r\n		\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-2.jpg'),
(31, 1, NULL, 'SE-12', '<table border="0" cellpadding="1" cellspacing="1" style="width:510px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>Insect Killer Electric</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>SE-12</p>\r\n			</td>\r\n		</tr>\r\n		\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-12.jpg'),
(32, 2, NULL, 'SE-DBR48', '<table border="0" cellpadding="1" cellspacing="1" style="width:300px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-DBR48</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>L:120</p>\r\n\r\n			<p>W: 115</p>\r\n\r\n			<p>H:80/125</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Blower</td>\r\n			<td>:</td>\r\n			<td>220V/250W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BTU</td>\r\n			<td>:</td>\r\n			<td>163.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>120</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-dbr48.jpg'),
(33, 2, NULL, 'SE-CS2111', '<table border="0" cellpadding="1" cellspacing="1" style="width:300px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-CS2111</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>L:215</p>\r\n\r\n			<p>W: 115</p>\r\n\r\n			<p>H:80/130.5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Blower</td>\r\n			<td>:</td>\r\n			<td>220V/250W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BTU</td>\r\n			<td>:</td>\r\n			<td>2 x 163.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>260</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-cs2111.jpg'),
(34, 2, NULL, 'SE-CS1995', '<table border="0" cellpadding="1" cellspacing="1" style="width:300px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-CS1995</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>L:190</p>\r\n\r\n			<p>W: 95</p>\r\n\r\n			<p>H:85/120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Blower</td>\r\n			<td>:</td>\r\n			<td>220V/250W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BTU</td>\r\n			<td>:</td>\r\n			<td>2 x 163.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>190</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-cs1995.jpg'),
(35, 2, NULL, 'SE-CS1095', '<table border="0" cellpadding="1" cellspacing="1" style="width:300px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-CS1095</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>L:105</p>\r\n\r\n			<p>W: 95</p>\r\n\r\n			<p>H:85/120</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Blower</td>\r\n			<td>:</td>\r\n			<td>220V/250W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BTU</td>\r\n			<td>:</td>\r\n			<td>163.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>100</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-cs1095.jpg'),
(36, 2, NULL, 'SE-CS1880', '<table border="0" cellpadding="1" cellspacing="1" style="width:300px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-CS1880</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:180</p>\r\n\r\n			<p>D: 80</p>\r\n\r\n			<p>H:81.5/99</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BTU</td>\r\n			<td>:</td>\r\n			<td>2 x 163.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>247</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-cs1880.jpg'),
(37, 2, NULL, 'SE-CS1480', '<table border="0" cellpadding="1" cellspacing="1" style="width:300px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-CS1480</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:140</p>\r\n\r\n			<p>D: 80</p>\r\n\r\n			<p>H:81.5/99</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BTU</td>\r\n			<td>:</td>\r\n			<td>2 x 163.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>170</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-cs-1480.jpg'),
(38, 2, NULL, 'SE-CS9080', '<table border="0" cellpadding="1" cellspacing="1" style="width:300px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-CS9080</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:90</p>\r\n\r\n			<p>D: 80</p>\r\n\r\n			<p>H:81.5/99</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>BTU</td>\r\n			<td>:</td>\r\n			<td>163.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>130</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-cs9080.jpg'),
(39, 2, NULL, 'JDM-40', '<table border="0" cellpadding="1" cellspacing="1" style="width:300px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>Pasta Cooker</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>JDM-40</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:400</p>\r\n\r\n			<p>D: 900</p>\r\n\r\n			<p>H:800+70</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power(KW)</td>\r\n			<td>:</td>\r\n			<td>6.2 x 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Voltage (V)</td>\r\n			<td>:</td>\r\n			<td>2200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frequency(Hz)</td>\r\n			<td>:</td>\r\n			<td>50</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/jdm-40.jpg'),
(40, 2, NULL, 'SE-POG76', '<table border="0" cellpadding="1" cellspacing="1" style="width:350px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>Pizza Oven Gas</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-POG76</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:762</p>\r\n\r\n			<p>D: 682</p>\r\n\r\n			<p>H:787</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gas	BTU/HR</td>\r\n			<td>:</td>\r\n			<td>22.500</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>135</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-pog76.jpg'),
(41, 2, NULL, 'SE-BS86L', '<table border="0" cellpadding="1" cellspacing="1" style="width:300px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>Salamander</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-BS86L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:860</p>\r\n\r\n			<p>D: 515</p>\r\n\r\n			<p>H:440</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gas	BTU/HR</td>\r\n			<td>:</td>\r\n			<td>6.700</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>78</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-bs-86l.jpg'),
(42, 2, NULL, 'SE-BB36L', '<table border="0" cellpadding="1" cellspacing="1" style="width:330px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>Charboiler 36&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-BB36L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:915</p>\r\n\r\n			<p>D: 800</p>\r\n\r\n			<p>H:420</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gas	BTU/HR</td>\r\n			<td>:</td>\r\n			<td>3 x 28.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>91</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-bb36l.jpg'),
(43, 2, NULL, 'SE-BB24L', '<table border="0" cellpadding="1" cellspacing="1" style="width:340px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>Charboiler 24&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-BB24L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:610</p>\r\n\r\n			<p>D: 800</p>\r\n\r\n			<p>H:420</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gas	BTU/HR</td>\r\n			<td>:</td>\r\n			<td>2 x 28.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>63</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-bb24l.jpg'),
(44, 2, NULL, 'SE-BT36-0-36GL', '<table border="0" cellpadding="1" cellspacing="1" style="width:460px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>Counter Top 36&quot; Griddle</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-BT36-0-36GL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:915</p>\r\n\r\n			<p>D: 800</p>\r\n\r\n			<p>H:420</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gas	BTU/HR</td>\r\n			<td>:</td>\r\n			<td>2 x 22.500</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>39</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-bt36-0-36gl.jpg'),
(45, 2, NULL, 'SE-BT24-0-24GL', '<table border="0" cellpadding="1" cellspacing="1" style="width:460px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>Counter Top 24&quot; Griddle</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-BT24-0-24GL</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:610</p>\r\n\r\n			<p>D: 800</p>\r\n\r\n			<p>H:420</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gas	BTU/HR</td>\r\n			<td>:</td>\r\n			<td>2 x 22.000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>84</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-bt24-0-24gl.jpg'),
(46, 2, NULL, 'SE-BT36-6L', '<table border="0" cellpadding="1" cellspacing="1" style="width:510px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>Counter Top 6 Open Burners</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-BT36-6l</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:915</p>\r\n\r\n			<p>D: 800</p>\r\n\r\n			<p>H:420</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gas	BTU/HR</td>\r\n			<td>:</td>\r\n			<td>27.000 x 3 + 20.000 x 3</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>31</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-bt36-6l.jpg'),
(47, 2, NULL, 'SE-BT24-4L', '<table border="0" cellpadding="1" cellspacing="1" style="width:510px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>Counter Top 4 Open Burners</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-BT24-4L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:610</p>\r\n\r\n			<p>D: 800</p>\r\n\r\n			<p>H:420</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gas	BTU/HR</td>\r\n			<td>:</td>\r\n			<td>27.000 x 2 + 20.000 x 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>28</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-bt24-4l.jpg'),
(48, 2, NULL, 'SE-BT12-2L', '<table border="0" cellpadding="1" cellspacing="1" style="width:510px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>Counter Top 2 Open Burners</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>SE-BT12-2L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:305</p>\r\n\r\n			<p>D: 800</p>\r\n\r\n			<p>H:420</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gas	BTU/HR</td>\r\n			<td>:</td>\r\n			<td>27.000 x 1 + 20.000 x 1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>25</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-bt12-2l.jpg'),
(49, 2, NULL, 'SE-BR36-36L', '<table border="0" cellpadding="1" cellspacing="1" style="width:400px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>6 Burner With Oven</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>BR-36-6L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:900</p>\r\n\r\n			<p>D: 800</p>\r\n\r\n			<p>H:950</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gas	BTU/HR</td>\r\n			<td>:</td>\r\n			<td>27.000 </td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>52</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-br36-36l.jpg'),
(50, 2, NULL, 'SE-BR30-4L', '<table border="0" cellpadding="1" cellspacing="1" style="width:400px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>4 Burner With Oven</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>BR-30-4L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:760</p>\r\n\r\n			<p>D: 800</p>\r\n\r\n			<p>H:950</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gas	BTU/HR</td>\r\n			<td>:</td>\r\n			<td>27.000 </td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>36</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-br30-4l.jpg'),
(51, 2, NULL, 'SE-GF3L', '<table border="0" cellpadding="1" cellspacing="1" style="width:400px">\r\n	<tbody>\r\n		<tr>\r\n			<td>Description</td>\r\n			<td>:</td>\r\n			<td>Gas Fryer 3 Burner</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Type</td>\r\n			<td>:</td>\r\n			<td>GF3L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dimension</p>\r\n\r\n			<p>(MM)</p>\r\n			</td>\r\n			<td>:</td>\r\n			<td>\r\n			<p>W:393</p>\r\n\r\n			<p>D: 800</p>\r\n\r\n			<p>H:910</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gas	BTU/HR</td>\r\n			<td>:</td>\r\n			<td>93.000 </td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight (Kg)</td>\r\n			<td>:</td>\r\n			<td>42</td>\r\n		</tr>\r\n		\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 'images/suneast/se-gf3l.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_blog`
--
ALTER TABLE `tb_blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_page`
--
ALTER TABLE `tb_page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `tb_portofolio`
--
ALTER TABLE `tb_portofolio`
  ADD PRIMARY KEY (`id_port`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_blog`
--
ALTER TABLE `tb_blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_page`
--
ALTER TABLE `tb_page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_portofolio`
--
ALTER TABLE `tb_portofolio`
  MODIFY `id_port` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_portofolio`
--
ALTER TABLE `tb_portofolio`
  ADD CONSTRAINT `tb_portofolio_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tb_admin` (`id_admin`);

--
-- Ketidakleluasaan untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD CONSTRAINT `tb_produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`),
  ADD CONSTRAINT `tb_produk_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `tb_admin` (`id_admin`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
