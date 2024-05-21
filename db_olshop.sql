-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2023 at 03:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_olshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `berat` int(11) NOT NULL,
  `stok` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `deskripsi`, `gambar`, `berat`, `stok`) VALUES
(14, 'Hoodie VCT Kremlin', 2, 799900, 'Hoodie Larang', 'hoodie_vct.jpg', 500, 5),
(15, 'T-Shirt Anime Kremlin', 2, 69900, 'T-Shirt Larang', 'tshirt_anime.jpg', 250, 5),
(16, 'Varsity Hoodie Jacket Kremlin', 2, 499900, 'Varsity Larang', 'varsity_kremlin.jpg', 500, 5),
(17, 'Jacket Biker Kremlin', 2, 549900, 'Jacket Larang', 'jacket_kremlin.jpg', 500, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gambar`
--

CREATE TABLE `tbl_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_gambar`
--

INSERT INTO `tbl_gambar` (`id_gambar`, `id_barang`, `ket`, `gambar`) VALUES
(3, 5, 'Layar Depan', '349466096_3035637576731003_2490979534546143365_n.jpg'),
(4, 5, 'Atas', '350086382_248832521065620_1455172901211716850_n.jpg'),
(5, 5, 'Bawah', '349442334_1230753287805224_777625263636331104_n.jpg'),
(6, 5, 'Kanan', '350234720_257708473588686_5217192434026398199_n.jpg'),
(7, 5, 'Kiri', '350087833_760628069029833_1490310443077148378_n.jpg'),
(10, 6, 'Layar Depan', '347551607_793624898643132_4994953283246209083_n.jpg'),
(11, 6, 'Atas', '347593467_1013369330022240_4994043946566732153_n.jpg'),
(12, 6, 'Kanan', '347296399_984146452602617_3968776733672915204_n.jpg'),
(13, 7, 'Layar Depan', '349470110_598700442047440_3379719977234425899_n.jpg'),
(14, 7, 'Atas', '349493049_545315507580460_1961023667484185128_n.jpg'),
(15, 7, 'Bawah', '350466252_204560275857598_2495588176359708782_n.jpg'),
(16, 7, 'Kanan', '350089008_577282544474801_7870625841957719992_n.jpg'),
(17, 7, 'Kiri', '350466255_199465022989443_5551428418382350340_n.jpg'),
(23, 8, 'Atas', '351036687_599056642291132_1741646481423477916_n.jpg'),
(24, 8, 'Bawah', '351212205_953622329016101_1127416513123024033_n.jpg'),
(25, 8, 'Lecet', '350730249_792979059165765_8495314071917969032_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Pakaian Wanita'),
(2, 'Pakaian Pria'),
(3, 'Perhiasan'),
(4, 'Aksesoris'),
(5, 'Sepatu Wanita'),
(6, 'Sepatu Pria'),
(7, 'Elektronik');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `password`, `foto`) VALUES
(3, 'Rama', 'rahmandaa07@gmail.com', '12345', 'foto.jpg'),
(4, 'Rizal', 'rizalroe@gmail.com', '12345', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`id_rekening`, `nama_bank`, `no_rek`, `atas_nama`) VALUES
(1, 'BCA', '127483756', 'Rahmanda'),
(2, 'MANDIRI', '135002786274', 'Rizal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `id_review` int(11) NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review_text` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rinci_transaksi`
--

CREATE TABLE `tbl_rinci_transaksi` (
  `id_rinci` int(11) NOT NULL,
  `no_order` varchar(25) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_rinci_transaksi`
--

INSERT INTO `tbl_rinci_transaksi` (`id_rinci`, `no_order`, `id_barang`, `qty`) VALUES
(2, '20230611JZWRIZVG', 6, 1),
(3, '20230611JZWRIZVG', 5, 2),
(4, '20230611JZWRIZVG', 7, 3),
(5, '20230611JIOUVED7', 6, 1),
(6, '20230611JIOUVED7', 5, 1),
(7, '20230611JIOUVED7', 7, 1),
(8, '20230611AO6Y7ELX', 5, 1),
(9, '20230612A9W4ES0B', 6, 2),
(10, '20230612A9W4ES0B', 7, 1),
(11, '20230612HS5SIRWN', 6, 1),
(12, '20230612HS5SIRWN', 7, 1),
(13, '20230612HS5SIRWN', 5, 1),
(14, '20230613SROK0TUZ', 5, 1),
(15, '20230613SROK0TUZ', 6, 1),
(16, '20230613SROK0TUZ', 7, 1),
(17, '20230614G3JMNU4I', 5, 1),
(18, '20230614G3JMNU4I', 6, 1),
(19, '20230614G3JMNU4I', 7, 1),
(20, '202306142B8AL7PG', 5, 1),
(21, '202306142B8AL7PG', 5, 1),
(22, '202306142B8AL7PG', 5, 1),
(23, '20230614LMO9YXQC', 5, 1),
(24, '20230614ED6EFL4G', 7, 1),
(25, '20230614ED6EFL4G', 7, 1),
(26, '20230614SX0CIR1A', 6, 1),
(27, '20230614SX0CIR1A', 5, 1),
(28, '20230618CFP1ABYJ', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_toko` varchar(255) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `alamat_toko` text DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `lokasi`, `alamat_toko`, `no_telepon`) VALUES
(1, 'Mann Shop', 399, 'Jl Singaparna no 15, Kota Semarang', '089574651584');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `no_order` varchar(25) NOT NULL,
  `tgl_order` date DEFAULT NULL,
  `nama_penerima` varchar(25) DEFAULT NULL,
  `hp_penerima` varchar(15) DEFAULT NULL,
  `provinsi` varchar(25) DEFAULT NULL,
  `kota` varchar(25) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kode_pos` varchar(8) DEFAULT NULL,
  `ekspedisi` varchar(255) DEFAULT NULL,
  `paket` varchar(255) DEFAULT NULL,
  `estimasi` varchar(255) DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `status_bayar` int(1) DEFAULT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `status_order` int(1) DEFAULT NULL,
  `no_resi` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_pelanggan`, `no_order`, `tgl_order`, `nama_penerima`, `hp_penerima`, `provinsi`, `kota`, `alamat`, `kode_pos`, `ekspedisi`, `paket`, `estimasi`, `ongkir`, `berat`, `sub_total`, `total_bayar`, `status_bayar`, `bukti_bayar`, `atas_nama`, `nama_bank`, `no_rek`, `status_order`, `no_resi`) VALUES
(5, 3, '20230611JZWRIZVG', '2023-06-11', 'Kamu', '5757', 'Bali', 'Badung', 'Jalan Jalan Saja', '12345', 'jne', 'OKE', '3-6 Hari', 30000, 1200, 57994000, 58024000, 1, 'bukti_bayar1.jpg', 'Ayub', 'MANDIRI', '135008736947', 3, 'SMG123456789'),
(7, 3, '20230611AO6Y7ELX', '2023-06-11', 'Aku', '5758', 'Bali', 'Badung', 'Jalan Jalan Saja', '12345', 'jne', 'OKE', '3-6 Hari', 30000, 200, 6499000, 6529000, 1, 'bukti_bayar.jpg', 'Ilham', 'BCA', '123948075', 3, 'JKT123456789'),
(10, 3, '20230613SROK0TUZ', '2023-06-13', 'Test 1', '111', 'DKI Jakarta', 'Jakarta Pusat', 'Test 1', '11111', 'jne', 'REG', '1-2 Hari', 18000, 600, 28497000, 28515000, 1, 'ava.png', 'Test 1', 'Test 1', 'Test 1', 3, 'TST1111111111'),
(18, 3, '20230614SX0CIR1A', '2023-06-14', 'Aku', '5758', 'Jawa Tengah', 'Kudus', 'Jalan Jalan Saja', '12345', 'jne', 'REG', '3-6 Hari', 10000, 400, 14998000, 15008000, 0, NULL, NULL, NULL, NULL, 0, NULL),
(19, 3, '20230618CFP1ABYJ', '2023-06-18', 'Rossi', '081273846829', 'Bali', 'Denpasar', 'Pantai Dewata', '273813', 'jne', 'OKE', '2-3 Hari', 28000, 200, 11499000, 11527000, 0, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `level_user` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`, `level_user`) VALUES
(1, 'Rama', 'admin1', 'admin1', 1),
(2, 'Ayub', 'user1', 'user1', 2),
(3, 'Rizal', 'admin2', 'admin2', 1),
(4, 'Ilham', 'user2', 'user2', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  ADD PRIMARY KEY (`id_rinci`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  MODIFY `id_rinci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD CONSTRAINT `tbl_reviews_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tbl_barang` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
