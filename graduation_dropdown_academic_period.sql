-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 08:22 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classroo_uii_gateway`
--

-- --------------------------------------------------------

--
-- Table structure for table `graduation_dropdown_academic_period`
--

CREATE TABLE `graduation_dropdown_academic_period` (
  `nama_tahun_akademik` varchar(9) NOT NULL,
  `kd_semester` int(11) NOT NULL,
  `nama_semester` varchar(15) NOT NULL,
  `uuid_periode` varchar(36) NOT NULL,
  `sort` int(10) NOT NULL,
  `periode_akademik` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `graduation_dropdown_academic_period`
--

INSERT INTO `graduation_dropdown_academic_period` (`nama_tahun_akademik`, `kd_semester`, `nama_semester`, `uuid_periode`, `sort`, `periode_akademik`) VALUES
('2020/2021', 1, 'Ganjil', '0c47ebd2-af9a-11ea-abc6-506b8d3ba17a', 2020, '2020/2021 - Ganjil'),
('1995/1996', 1, 'Ganjil', '13c2fa10-b13b-11e9-aba8-506b8da0b30a', 1995, '1995/1996 - Ganjil'),
('2021/2022', 1, 'Ganjil', '28b25853-eb8e-11eb-a5c7-506b8db8fcca', 2021, '2021/2022 - Ganjil'),
('2019/2020', 2, 'Genap', '3ffa1090-31bd-11ea-807f-506b8d2f0e5e', 2019, '2019/2020 - Genap'),
('1998/1999', 1, 'Ganjil', '8cd92186-f6dd-11e8-9733-005056804a5c', 1998, '1998/1999 - Ganjil'),
('1998/1999', 2, 'Genap', '8cd93186-f6dd-11e8-9733-005056804a5c', 1998, '1998/1999 - Genap'),
('1999/2000', 1, 'Ganjil', '8cd95730-f6dd-11e8-9733-005056804a5c', 1999, '1999/2000 - Ganjil'),
('1999/2000', 2, 'Genap', '8cd96f24-f6dd-11e8-9733-005056804a5c', 1999, '1999/2000 - Genap'),
('2000/2001', 1, 'Ganjil', '8cdb7125-f6dd-11e8-9733-005056804a5c', 2000, '2000/2001 - Ganjil'),
('2000/2001', 2, 'Genap', '8cdb7811-f6dd-11e8-9733-005056804a5c', 2000, '2000/2001 - Genap'),
('2001/2002', 1, 'Ganjil', '8cdc9f29-f6dd-11e8-9733-005056804a5c', 2001, '2001/2002 - Ganjil'),
('2001/2002', 2, 'Genap', '8cdca5de-f6dd-11e8-9733-005056804a5c', 2001, '2001/2002 - Genap'),
('2022/2023', 1, 'Ganjil', '8d01503b-f762-11ec-bbad-86ecae4b7be0', 2022, '2022/2023 - Ganjil'),
('2020/2021', 2, 'Genap', '987dd584-49af-11eb-92df-506b8db8fcca', 2020, '2020/2021 - Genap'),
('2002/2003', 1, 'Ganjil', '9a199200-f6b2-11e8-9733-005056804a5c', 2002, '2002/2003 - Ganjil'),
('2002/2003', 2, 'Genap', '9a1a4d14-f6b2-11e8-9733-005056804a5c', 2002, '2002/2003 - Genap'),
('2003/2004', 1, 'Ganjil', '9a1efeae-f6b2-11e8-9733-005056804a5c', 2003, '2003/2004 - Ganjil'),
('2003/2004', 2, 'Genap', '9a1fd4c2-f6b2-11e8-9733-005056804a5c', 2003, '2003/2004 - Genap'),
('2004/2005', 1, 'Ganjil', '9a2368a4-f6b2-11e8-9733-005056804a5c', 2004, '2004/2005 - Ganjil'),
('2004/2005', 2, 'Genap', '9a248ee2-f6b2-11e8-9733-005056804a5c', 2004, '2004/2005 - Genap'),
('2005/2006', 1, 'Ganjil', '9a25e9f9-f6b2-11e8-9733-005056804a5c', 2005, '2005/2006 - Ganjil'),
('2005/2006', 2, 'Genap', '9a272dfd-f6b2-11e8-9733-005056804a5c', 2005, '2005/2006 - Genap'),
('2006/2007', 1, 'Ganjil', '9a29f4d9-f6b2-11e8-9733-005056804a5c', 2006, '2006/2007 - Ganjil'),
('2006/2007', 2, 'Genap', '9a2a87ba-f6b2-11e8-9733-005056804a5c', 2006, '2006/2007 - Genap'),
('2007/2008', 1, 'Ganjil', '9a2c0fd5-f6b2-11e8-9733-005056804a5c', 2007, '2007/2008 - Ganjil'),
('2007/2008', 2, 'Genap', '9a2c1cf3-f6b2-11e8-9733-005056804a5c', 2007, '2007/2008 - Genap'),
('2008/2009', 1, 'Ganjil', '9a377873-f6b2-11e8-9733-005056804a5c', 2008, '2008/2009 - Ganjil'),
('2008/2009', 2, 'Genap', '9a38fe3c-f6b2-11e8-9733-005056804a5c', 2008, '2008/2009 - Genap'),
('2009/2010', 1, 'Ganjil', '9a3a1e48-f6b2-11e8-9733-005056804a5c', 2009, '2009/2010 - Ganjil'),
('2009/2010', 2, 'Genap', '9a3b7aca-f6b2-11e8-9733-005056804a5c', 2009, '2009/2010 - Genap'),
('2010/2011', 1, 'Ganjil', '9a3ba609-f6b2-11e8-9733-005056804a5c', 2010, '2010/2011 - Ganjil'),
('2010/2011', 2, 'Genap', '9a3cfdd1-f6b2-11e8-9733-005056804a5c', 2010, '2010/2011 - Genap'),
('2011/2012', 1, 'Ganjil', '9a40bd59-f6b2-11e8-9733-005056804a5c', 2011, '2011/2012 - Ganjil'),
('2011/2012', 2, 'Genap', '9a413e83-f6b2-11e8-9733-005056804a5c', 2011, '2011/2012 - Genap'),
('2012/2013', 1, 'Ganjil', '9a430dc7-f6b2-11e8-9733-005056804a5c', 2012, '2012/2013 - Ganjil'),
('2012/2013', 2, 'Genap', '9a43157d-f6b2-11e8-9733-005056804a5c', 2012, '2012/2013 - Genap'),
('2013/2014', 1, 'Ganjil', '9a45d879-f6b2-11e8-9733-005056804a5c', 2013, '2013/2014 - Ganjil'),
('2013/2014', 2, 'Genap', '9a45decb-f6b2-11e8-9733-005056804a5c', 2013, '2013/2014 - Genap'),
('2014/2015', 1, 'Ganjil', '9a470ad9-f6b2-11e8-9733-005056804a5c', 2014, '2014/2015 - Ganjil'),
('2014/2015', 2, 'Genap', '9a47a56f-f6b2-11e8-9733-005056804a5c', 2014, '2014/2015 - Genap'),
('2015/2016', 1, 'Ganjil', '9a4966fe-f6b2-11e8-9733-005056804a5c', 2015, '2015/2016 - Ganjil'),
('2015/2016', 2, 'Genap', '9a498f38-f6b2-11e8-9733-005056804a5c', 2015, '2015/2016 - Genap'),
('2016/2017', 1, 'Ganjil', '9a4ae8c7-f6b2-11e8-9733-005056804a5c', 2016, '2016/2017 - Ganjil'),
('2016/2017', 2, 'Genap', '9a4bf614-f6b2-11e8-9733-005056804a5c', 2016, '2016/2017 - Genap'),
('2017/2018', 1, 'Ganjil', '9a50f469-f6b2-11e8-9733-005056804a5c', 2017, '2017/2018 - Ganjil'),
('2017/2018', 2, 'Genap', '9a5162b7-f6b2-11e8-9733-005056804a5c', 2017, '2017/2018 - Genap'),
('2018/2019', 1, 'Ganjil', '9a5183c3-f6b2-11e8-9733-005056804a5c', 2018, '2018/2019 - Ganjil'),
('2019/2020', 1, 'Ganjil', '9f03fa99-ad01-11e9-946e-506b8da96a87', 2019, '2019/2020 - Ganjil'),
('2023/2024', 1, 'Ganjil', 'b6a52561-7c20-11ed-933a-000c29b46a1e', 2023, '2023/2024 - Ganjil'),
('1994/1995', 1, 'Ganjil', 'cc5c8e4f-b13a-11e9-b329-506b8dc75467', 1994, '1994/1995 - Ganjil'),
('2021/2022', 2, 'Genap', 'dc5e80a5-7432-11ec-be09-525400d1af29', 2021, '2021/2022 - Genap'),
('1997/1998', 1, 'Ganjil', 'ea10db49-e571-11ec-9083-86ecae4b7be0', 1997, '1997/1998 - Ganjil'),
('1997/1998', 2, 'Genap', 'f5ec731a-e571-11ec-9083-86ecae4b7be0', 1997, '1997/1998 - Genap'),
('2018/2019', 2, 'Genap', 'fa61c094-0e5e-11e9-8d30-005056807484', 2018, '2018/2019 - Genap'),
('2022/2023', 2, 'Genap', 'ff1546b7-58e7-11ed-ad1b-000c29b46a1e', 2022, '2022/2023 - Genap');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `graduation_dropdown_academic_period`
--
ALTER TABLE `graduation_dropdown_academic_period`
  ADD UNIQUE KEY `uuid_periode` (`uuid_periode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
