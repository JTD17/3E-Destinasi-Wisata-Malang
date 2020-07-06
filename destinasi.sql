-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 04:52 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `destinasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(20) NOT NULL,
  `nama_kat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kat`) VALUES
(1, 'Gunung'),
(2, 'Pantai'),
(3, 'Wahana'),
(4, 'Taman'),
(5, 'Air Terjun');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(20) NOT NULL,
  `id_wisata` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `komentar` text NOT NULL,
  `rating` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_wisata`, `email`, `komentar`, `rating`) VALUES
(34, 21, 'putriayuzartika.pa@gmail.com', 'bagus dan menyenangkan', 5),
(35, 21, 'sabilillahselik@gmail.com', 'indah dan asli sekali, jangan buang sampah sembarangan yaaa', 4);

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(20) NOT NULL,
  `nama_wisata` varchar(40) NOT NULL,
  `id_kategori` int(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `info` text NOT NULL,
  `jam_buka` varchar(10) NOT NULL,
  `jam_tutup` varchar(10) NOT NULL,
  `harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_wisata`, `id_kategori`, `alamat`, `info`, `jam_buka`, `jam_tutup`, `harga`) VALUES
(21, 'Gunung Panderman', 1, 'Batu , Jawa Timur ,Indonesia', 'Gunung Panderman diambil dari nama orang belanda Van Der Man, lokasinya berada di Kota Batu, Kabupaten Malang, dan ketinggianya mencapai 2.045 mdpl. Gunung ini terlihat anggun dilihat dari Alun-alun Batu. Jalur berkelok-kelok dan juga menantang, akan menyambut para pendaki. Tetap hati-hati, apabila memasuki musim hujan, jalur akan sedikit licin. Melalui Jalur pendakian gunung Panderman ada dua yakni:\r\n(1) Dukuh Toyomerto, Desa Pesanggrahan\r\n(2) Jalur Curah Banteng\r\nEstimasi perjalanan sampai puncak hanya tiga jam, sampai di pos pertama berada di ketinggian 1.330 mdpl. Untuk jalur Toyomerto cukup mudah. Dari alun-alun batu, menuju ke arah barat, pada perempatan ke dua berbeloklah ke arah kiri. Berikutnya kita akan tiba di perempatan, tengok jalan ke kanan terdapat gapura â€œWisata Pandermanâ€. Gapura tersebut merupakan pintu masuk Desa Pesanggrahan. Dari tempat tersebut terus lurus ikuti jalan utama. Medan jalan disini sangat menanjak, dan terdapat 2 belokan tajam, sehingga harus berhati-hati melaluinya. Ikuti jalan utama hingga mentok di pertigaan, terdapat masjid di hadapan kita, ambilah jalan ke kanan yang sedikit menanjak. Tak jauh dari situ di kiri jalan terdapat Check Point Gunung Panderman. \r\nUntuk Jalur Curah Banteng mudah juga. Kusuma Agrowisata Hotel, dan terus naik melalui jalan beraspal yang cukup menanjak sampai ke titik awal pendakian.\r\n', '10:00 AM', '05:00 PM', '10.000'),
(22, 'Gunung Butak', 1, 'Antara Kota Blitar dan Kota Ma', 'Gunung Butak (2868 mdpl) merupakan salah satu gunung di kompleks Pegunungan Kawi yang terhampar di perbatasan Malang dan Blitar. Terdapat empat jalur yang dapat dilewati pendaki untuk mencapai puncak Butak, yakni melalui Gunung Panderman (Malang), melalui Batu (Malang), melalui Perkebunan Teh Sirah Kencong (Blitar) dan melalui Desa Wonosari (Malang). Dari keempat jalur tersebut, jalur yang paling panjang dan paling berat adalah jalur Desa Wonosari. Disebut jalur yang paling berat karena tanjakannya yang terjal dan licin di beberapa tempat serta tidak adanya titik air sampai di sabana Gunung Butak. Juga tidak adanya tempat camp sampai pos pertama di ketinggian Â± 2350 mdpl. Walaupun jalur ini sulit untuk dilewati, namun kerja keras pendaki akan terbayar dengan panorama yang disuguhkan. Ditambah lagi tracknya yang berganti â€“ ganti seiring bertambahnya ketinggian, pendaki dijamin tidak akan bosan dan akan terkagum â€“ kagum dengan bentangan alam dan keheterogenan dari vegetasi di sepanjang jalur. Mulai dari Hutan Hujan, Hutan Pinus, Sabana, Hutan Lumut sampai rerumputan tinggi semuanya lengkap tersedia di jalur ini.\r\nNamun walaupun pemandangannya indah, gunung ini masih minim pengunjung. Mengingat Gunung Butak memiliki tetangga â€“ tetangga yang lebih tinggi dan terkenal seperti Arjuno â€“ Welirang, Bromo â€“ Tengger â€“ Semeru dan Gunung Kelud. Hanya beberapa peziarah dan penduduk sekitar dan pendaki tradisional yang mendaki gunung ini. Namun seiring maraknya tren wisata alam, mulai banyak orang yang melirik gunung ini.\r\nBerikut penjelasan singkat mengenai jalur pendakian Gunung Butak melalui desa Wonosari, Kab. Malang.\r\n', '10:00 AM', '05:00 PM', '10.000'),
(23, 'Gunung Arjuno', 1, 'Malang , Jawa Timur ,Indonesia', 'Gunung Arjuno atau â€œArjunaâ€ adalah gunung api yang terletak di Malang, Jawa Timur. Gunung ini adalah gunung yang memiliki kembaran bernama Gunung Welirang. Karena puncak gunung Arjuno yang berdekatan dengan puncak gunung Welirang maka orang banyak menyebut dua gunung kembar tersebut sebagai Gunung Arjuno-Welirang.Gunung Arjuno memiliki ketinggian 3.339 mdpl. Gunung Arjuno masuk dalam kawasan Taman Hutan Raya Raden Soeryo. Di gunung ini juga terdapat objek wisata yang cukup menarik yakni air terjun Kakek Bodo. Selain itu gunung komplek Gunung Arjuno-Welirang juga memiliki kekayaan alam yang sangat indah seperti sabana, lembah, berbagai macam bunga, fauna, dan sumber air.\r\nSeperti kebanyakan gunung di Jawa, gunung Arjuno juga kental akan mitos. Gunung Arjuno tak jarang dijadikan tempat orang untuk bersemedi dan ritual mencari ketenangan lainnya. Sepanjang jalur menuju puncak gunung Arjuno banyak ditemui situs peninggalan sejarah berupa batu atau arca bekas kerajaan Majapahit.\r\nGunung lain yang dekat dengan gunung Arjuno antara lain Gunung Kembar I (3051 mdpl) dan Gunung Kembar II (3126 mdpl).Di kawasan lereng, dapat ditemui mata air Sungai Brantas, berasal dari simpanan air Gunung Arjuno. Mata air Sungai Brantas terletak di Desa Sumber Brantas, Bumiaji, Kota Batu yang merupakan sungai terpanjang kedua di Pulau Jawa setelah Bengawan Solo. \r\nJalur pendakian  gunung Arjuno ada banyak, yang paling populer yakni Jalur Lawang (Timur), Tretes (Utara) ,Batu (Barat), Karangploso (Selatan), Sumberawan dan Purwosari. Melalui transportasi Jika naik kereta maka turun di stasiun Malang. Jika naik bus turun di terminal Arjosari. Jika kendaraan pribadi maka bisa langsung menuju Malang kota. selanjutnya pilihlah tujuan jalur pendakian. Jalur Lawang, Tretes, Batu, Karangploso atau Purwosari. Gunakan GPS, atau google maps deh.\r\n', '10:00 AM', '05:00 PM', '15.000'),
(24, 'Gunung Semeru', 1, 'Malang , Jawa Timur ,Indonesia', 'Gunung Semeru menjadi gunung yang tertinggi di Pulau Jawa, dengan puncak ketinggian 3.676 mdpl. Suguhan danau air tawar di Ranu Kumbolo akan menyambut setiap pendaki yang datang. Gunung Semeru berada di antara 2 kabupaten, yakni kabupaten Lumajang dan kabupaten Malang, Jawa Timur. Gunung ini merupakan bagian dari Taman Nasional Bromo Tengger semeru dengan Posisi geografis terletak antara 8Â°06 LS dan 112Â°55BT.\r\nTransportasi Menuju Gunung Semeru.\r\n\r\nDari Malang: Terminal Malang/ Statsiun Malang >> Desa Jemplang >> Desa Ranu Pani.\r\nDari Problinggo: Terminal Probolinggo >> Suka Pura >> Desa Ranu Pani.\r\nDari Pasuruan: Simpang Dengklik >> Jalur sama seperti dari Probolinggo.\r\nBagi kamu yang berniat menggunakan jasa kereta api, maka hendaknya kamu turun di statsiun Baru Malang, dari statsiun itu, kamu bisa naik angkutan kota AMG atau ADL menuju terminal Arjosari, Malang, dengan waktu tempuh 15 menit. Dari terminal Arjosari, kamu bisa naik angkot warna putih menuju ke Tumpang Arjosari yang memakan waktu sekitar 45 menit, jangan lupa, turun di pasar Tumpang Arjosari. Setelah di pasar Tumpang, kamu bisa melanjutkan perjalajan menuju Ranu Pani dengan menyewa Jeep atau naik truk engkel pengangkut sayuran. Biasanya per orang akan diminta biaya Rp. 30.000,-/orang dan untuk menyewa Jeep biayanya adalah 450.000,-/Jeep. Ranu Pani sendiri adalah desa terakhir di kaki gunung Semeru, sekaligus menjadi garis start dalam pendakian gunung Semeru, letak desa ini berada pada ketinggian 2.200 mdpl. Di desa ini juga kamu bisa menemukan 2 danau, yakni Ranu Pani dan Ranu Regulo.\r\n\r\nMasih di Ranu Pani, di sini terdapat pos penjaga, warung dan penginapan. Bagi para pendaki yang membawa tenda, akan diminta biaya Rp 20.000 per tenda, dan bagi yang membawa kamera akan diminta biaya Rp 5.000 per kamera.\r\nJalur Pendakian Dari Ranu Pani Menuju Puncak Mahameru.\r\nâ€¢	Ranu Pani - Ranu Kumbolo.\r\nâ€¢	Ranu Kumbolo - Kalimati.\r\nâ€¢	Kalimati â€“ Arcopodo\r\nâ€¢	Arcopodo - Puncak Mahameru.\r\nâ€¢	Puncak Mahameru.\r\n', '10:00 AM', '05:00 PM', '19.000'),
(25, 'Gunung Bromo', 1, 'Malang , Jawa Timur ,Indonesia', 'Gunung Bromo merupakan salah satu tujuan wisata di Jawa Timur. Tempat wisata alam ini terletak di Taman Nasional Bromo Tengger Semeru di timur kota Malang, Jawa Timur. Pengunjungnya bukan hanya wisatawan lokal, bahkan banyak yang berasal dari luar negeri. Dengan pemandangan yang khas membuat Bromo layak menjadi tujuan wisata.\r\nAda 3 jalur untuk menuju Bromo, yaitu jalur Tumpang, Nongko Jajar dan Probolinggo. Yang paling dekat dari Malang adalah jalur Tumpang, tapi Nongko Jajar menjadi jalur favorit wisatawan. Hal itu tidak lain karena akses jalan yang bagus dan ada satu spot yang tidak bisa dijajal jika lewat Tumpang, yaitu Puncak Pananjakan.\r\nDingin, begitulah yang akan Anda rasakan saat pertama kali Anda keluar dari mobil. Suhu disini mencapai 10 derajat bahkan sampai 0 derajat Celsius saat menjelang pagi. Maka, Anda hendaknya mempersiapkan pakaian dingin, topi kupluk, sarung tangan, kaos kaki, syal untuk mengatasinya. Tapi, bila Anda melupakan perlengkapan tersebut, ada banyak penjaja keliling yang menawarkan dagangannya berupa topi, sarung tangan, atau syal. Banyak spot yang bisa disambangi di kawasan Gunung Bromo, antara lain Puncak Pananjakan, Kawah Bromo, Gunung Batok, Pasir Berbisik dan Bukit Teletubbies. Pengunjung biasa mengunjungi kawasan ini sejak dini hari dengan tujuan melihat terbitnya matahari. Untuk melihatnya, Anda harus menaiki Gunung Pananjakan yang merupakan gunung tertinggi di kawasan ini. Medan yang harus dilalui untuk menuju Gunung Pananjakan merupakan medan yang berat. Untuk menuju kaki Gunung Pananjakan, Anda harus melalui daerah yang menyerupai gurun yang dapat membuat Anda tersesat. Saat harus menaiki Gunung Pananjakan, jalan yang sempit dan banyak tikungan tajam tentu membutuhkan ketrampilan menyetir yang tinggi. Untuk itu, banyak pengunjung yang memilih menyewa mobil hardtop (sejenis mobil jeep) yang dikemudikan oleh masyarakat sekitar. Masyarakat sekitar berasal dari suku Tengger yang ramah dengan para pengunjung.\r\nSampai diatas, ada banyak toko yang menyediakan kopi atau teh hangat dan api unggun untuk menghangatkan tubuh sambil menunggu waktu tebitnya matahari. Ada pula toko yang menyewakan pakaian hangat. Menyaksikan terbitnya matahari memang merupakan peristiwa yang menarik. Buktinya, para pengunjung rela menunggu sejak pukul 5 pagi menghadap sebelah timur agar tidak kehilangan moment ini. Anda pun tidak selalu bisa melihat peristiwa ini, karena bila langit berawan, kemunculan matahari ini tidak terlihat secara jelas. Namun, saat langit cerah, Anda dapat melihat bulatan matahari yang pertama-tama hanya sekecil pentul korek api, perlahan-lahan membesar dan akhirnya membentuk bulatan utuh dan memberi penerangan sehingga kita dapat melihat pemandangan gunung-gunung yang ada di kawasan ini. Antara lain, Gunung Bromo, Gunung Batok, atau Gunung Semeru yang merupakan gunung tertinggi di Pulau Jawa. \r\n', '10:00 AM', '05:00 PM', '35.000'),
(26, 'Pantai Batu Bengkung', 2, 'Desa Gajah Rejo, Kecamatan Ged', 'Beberapa fasilitas yang ada di pantai Batu Bengkung yaitu terdapat beberapa saung / gubuk yang bisa digunakan untuk tempat istirahat atau berteduh sementara, toilet air tawar, warung, serta juga lahan parkir kendaraan 24 jam. pantai Batu Bengkung adalah pantai yang terletak di pesisir selatan Kabupaten Malang. Langsung berhadapan dengan Samudera Hindia sehingga Batu Bengkung memiliki ombak yang lumayan besar. \r\nâ€¢	Rute menuju pantai batu bengkung \r\nPantai ini berada di pesisir selatan Pulau Jawa, lebih tepatnya di Desa Gajahrejo, kec. Gedangan, kab. Malang. Jika kamu ingin pergi ke pantai ini dari Kota Malang, ambil arah ke Turen, lalu menuju ke selatan (arah Sumbermanjing Wetan) lalu lanjutkan ke arah Pantai Sendang Biru.\r\nLalu kamu akan bertemu dengan pertigaan dan belok ke kanan menuju Pantia Goa Cina dan Bajul Mati. Pantai Batu Bengkung hanya berjarak sekitar 3 km dari Pantai Bajul Mati ke arah barat. Saat menuju pantai ini, kamu akan dimanjakan dengan pemandangan pegunungan yang sangat asri.\r\nâ€¢	Fasilitas pantai batu bengkung\r\nKarena sudah menjadi salah satu destinasi wisata favorit di Malang, Pantai Batu Bengkung sudah dilengkapi dengan fasilitas yang cukup lengkap. Di sini kamu bisa menemukan warung penjual makanan serta minuman.\r\nFasilitas umum di pantai ini meliputi mushola, kamar mandi, dan lahan parkir yang luas, fasilitas tersebut buka selama 24 jam. Jadi jika kamu ingin bermalam di sini tidak usah bingung lagi.\r\nSelain itu disini juga terdapat saung dan gubuk yang sangaja disediakan oleh pengelola Pantai Batu Bengkung. Tapi sayangnya disini belum disediakan tempat penyewaaan tenda, jadi pengunjung yang ingin bermalam harus membawa tenda sendiri.\r\n', '12:00 PM', '12:00 AM', '7.500'),
(27, 'Pantai Goa Cina', 2, 'Desa Sitiarjo, Kecamatan Sumbe', 'Panti Goa Cina Malang memiliki nama asli Pantai Rowo Indah, menurut warga sekitar pernah ada peristiwa kematian seseorang berasal dari Cina ketika sedang bertapa didalam goa yang ada di dikawasan tersebut, Yang membuat pantai tersebut sekarang lebih dikenal dengan pantai Goa Cina. Jika pelesir ke wilayah Malang Selatan, Anda benar-benar bakal dimanjakan deretan pantai indah yang punya ciri khas masing-masing. Salah satunya yang layak dikunjungi adalah Pantai Goa Cina. Pantai yang sebenarnya bernama Pantai Rowo Indah ini terletak di pesisir selatan Pulau Jawa, tepatnya di Dusun Tumpak Awu, Desa Sitiarjo, Kecamatan Sumbermanjing Wetan, Kabupaten Malang.\r\nLokasi Pantai Goa Cina berdekat dengan pantai lain seperti Sendang Biru dan Bajulmati. Salah satu keunikan yang dimiliki Pantai Goa Cina adalah pemandangan sunrise alias matahari terbit-nya yang begitu indah. Apabila Anda ingin menginap, sebenarnya di Pantai Goa Cina sudah tersedia camping ground untuk mendirikan tenda. Tetapi bila ingin menginap di penginapan yang lebih nyaman, berikut pilihan lokasinya.\r\n', '12:00 PM', '12:00 AM', '10.000'),
(28, 'Pulau Sempu', 2, 'Sumbermanjing, Kabupaten Malan', 'Kecil namun menarik, menantang, dan menyimpan pesona luar biasa merupakan deskripsi yang cocok untuk Pulau Sempu, sebuah pulau kecil di Jawa Timur. Terletak di kabupaten Malang Selatan, Pulau Sempu menjadi daya tarik bagi para wisatawan terutama karena keindahan laguna di tengahnya, yakni Segara Anakan.\r\nPulau Sempu yang terletak di Desa Tambak Rejo ini merupakan lokasi yang dikelola oleh Balai Konservasi Sumber Daya Alam Jawa Timur. Difungsikan sebagai cagar alam, pulau tak berpenduduk ini dihuni oleh bermacam-macam flora dan fauna khas hutan tropis seperti babi hutan dan kancil. Untuk mencapai pulau ini, Anda dapat bertolak dari Pantai Sendang Biru menggunakan perahu dan melanjutkan perjalanan dengan berjalan kaki menuju atraksi utamanya, Segara Anakan, kombinasi cantik air biru yang tenang dan pasir putih seluas empat hektar. Pulau Sempu sebenarnya adalah sebuah cagar alam yang sudah ada sejak zaman pemerintahan Belanda dan diresmikan pada tanggal 15 Maret 1928. Untuk memasuki tempat wisata ini, wisatawan harus meminta izin kepada balai konservasi sumber daya alam.\r\n', '12:00 PM', '12:00 AM', '20.000'),
(29, 'Pantai Tiga Warna', 2, 'Desa Tambak Rejo, Pedukuhan Se', 'Pantai Tiga Warna Malang adalah salah satu pantai yang wajib kalian kunjungi jika kalian sedang mencari vitamin sea. Pantai yang masuk ke dalam kawasan konservasi Sendangbiru ini, memiliki daya tarik tersendiri terhadap wisatawan yang berkunjung.Selain menikmati indahnya pantai di Tiga Warna kita juga bisa snorkling dengan menyewa peralatan snorkling untuk menikmati keindahan bawah laut pantai tiga warna. Degradasi warna biru yang epic sehingga menghasilkan tiga warna yang berbeda, ditambah suasana pantai Tiga Warna Malang yang bersih dan masih asli, seolah membius setiap pasang mata yang berkunjung ke pantai ini.\r\nSalah satu keunikan dari pantai ini, yaitu jumlah pengunjung yang dibatasi 10 orang perombongan dan wajib menyewa 1 guide untuk setiap rombongan yang masuk. Selain itu kalian yang ingin berkunjung kesana, wajib menjaga kebersihan pantai ini.\r\nKalau ternyata kalian nekat melanggar aturan ini, siap-siap deh merogok kocek sebesar Rp 100.000,- untuk bayar denda, dan ini itungannya per sampah lho. Jadi kalau kalian membuang dua botol bekas di pantai Tiga Warna Malang ini, tinggal dikaliin aja dendanya.\r\nBisa-bisa jadi bokek nih setelah keluar dari pantai Tiga Warna Malang, haha. Toh aturan ini dibuat untuk kelestarian pantai juga kan, yang untuk kan kita juga nantinya kalau pantai ini bersih.\r\nPantai yang memiliki terumbu karang dan biota laut didalamnya ini terletak di kabupaten Malang, tepatnya di Jl. Sendang Biru, area sawah/kebun, Tambakrejo, Sumbermanjing, Jawa Timur.\r\nSelain mampu memanjakan mata, rupanya para pengunjung dipersilahkan melakukan aktifitas snorkeling di area pantai ini. Wihh, makin kece aja nih pantai. Bisa dibanyangin kan, snorkeling sambil mengamati indahnya terumbu karang beserta biota laut disana.\r\n', '07:00 AM', '05:00 PM', '50.000'),
(30, 'Pantai Balekambang', 2, 'Dusun Sumber Jambe, Desa Srigo', 'Pantai balekambang merupakan salah satu pantai yang menjadi tujuan favorit wisata di Malang, pantai Balekambang tidak kalah indah dengan jejeran pantai lain yang ada di pulau jawa, bahkan pantai ini sering disebut sebagai Miniatur Tanah Lot dari Pulau Dewata. Pantai Balekambang selain disebut sebagai wisata alam, juga dikenal dengan wisata religinya. Pasalnya, pada hari-hari tertentu ada ribuan pengunjung yang datang ke pantai hanya untuk melakukan ritual. Ritual religi yang dilakukan oleh umat islam ialah berziarah ke makam Syaikh Abdul Jalil. Beliau adalah orang pertama yang membabat pantai Balekambang.\r\nKunjungan dilakukan setiap tanggal 1 Syaâ€™ban oleh para peziarah yang terletak di daerah terpencil di tepi Kali Berek. Lokasi Wisata Pnatai Balekembang Malang sebagai tempat religi yang memiliki jarak sekitar 1 km dari arah Bantur sebelum masuk ke Pantai Balekambang.\r\nSelain wisata religi untuk umat Islam, umat Hindu pun menjadikan pantai Balekambang sebagi tempat beribadah. Ibadah yang dimaksud ialah ibadah untuk hari raya Nyepi yang dilakukan setiap setahun sekali.\r\nLokasi Wisata pantai Balekambang terletak di pesisir pantai selatan tepi Samudra Indonesia tepatnya di Dusun Sumber Jambe, Desa Srigonco, Kecamatan Bantur, Malang, Jawa Timur.\r\nJalan menuju wisata pantai kambang kini sudah mudah untuk diakses, karena jalan sudah diaspal dengan mulus. Hanya saja pengunjung kesulitan dengan tanjakan yang menikung tajam di kawasan Jurang Mayit. Karena akses yang bagus tersebut, kini hanya butuh kurang lebih 30 menit saja dari Kota Kecamatan Bantur menuju Balekambang.\r\nUntuk menuju lokasi Pantai Balekambang ini bisa melalui 2 rute. Dan Anda tidak perlu cemas kesasar, karena disetiap persimpangan terdapat penunjuk arah yang mudah ditemukan dan dimengerti. Berikut ke dua rute yang dimaksud:\r\n1.	Rute Pertama Kota Malang-Gadang-Turen-Gondangglegi-Bantur-Pantai Balekambang.\r\n2.	Rute Kedua Kota Malang-Kepanjen-Pagak-Bantur-Pantai Balekambang.\r\n', '12:00 PM', '12:00 AM', '15.000'),
(31, 'Jatim Park I', 3, 'Kota Batu , Jawa Timur', 'Jawa Timur Park I atau yang lebih dikenal dengan Jatim Park I ini merupakan tempat wisata di Malang yang menjadi favorit banyak pengunjung lokal dan luar kota. Dengan konsep taman rekreasi dan edukasi, Jatim Park I menawarkan puluhan wahana yang siap menghibur Anda dan keluarga. Yang menjadi ciri khas dari tempat wisata ini tentu saja kolam renang dengan latar relief wajah Ken Arok. Kolam renang ini bisa digunakan oleh orang dewasa dan anak-anak sesuai dengan kedalaman yang telah disesuaikan. Selain itu, kolam renang ini juga dilengkapi dengan bermacam papan seluncur air. Jatim Park 1 Malang merupakan salah satu wahana rekreasi keluarga yang terletak di lereng bagian timur gunung Panderman Kota Batu dengan ketinggian 850 MDPL, sehingga tidak saja menawarkan rekreasi yang mengasyikkan namun juga hawa yang sejuk dan panorama yang indah. Selain media untuk rekreasi, Jatim Park 1 juga mengusung konsep edukasi dengan dilengkapi wahana Galeri Belajar bernama Science Stadium. Bangunan yang berkapasitas 300 orang ini dilengkapi dengan alat peraga ilmu terapan baik yang indoor maupun outdoor. Keberadaan alat-alat peraga ini didukung oleh PLN, Telkom, Rimba Raya, dan sejumlah Universitas di Jawa Timur.', '10:00 AM', '05:00 PM', '35.000'),
(32, 'Jatim Park II', 3, 'Kota Batu ,Jawa Timur', 'Jatim Park 2 merupakan salah satu objek wisata yang masih terbilang baru di Kota Batu, Malang. Wahana wisata ini menyajikan konsep taman bermain sekaligus sebagai tempat pembelajaran yang dikemas secara apik dan menarik. Oleh karena itu, tak heran jika objek wisata ini selalu ramai dikunjungi para wisatawan yang datang dari seluruh penjuru Indonesia.\r\nKonsep yang ditawarkan Jatim Park 2 memang agak berbeda dengan pendahulunya, yakni Jatim park 1 yang lebih mengutamakan taman bermain dan panggung hiburan. Untuk konsepnya sendiri, objek wisata yang satu ini lebih mengedepankan kombinasi antara tempat belajar dan taman bermain. Selain itu, keunikan lainnya yang bisa kamu dapatkan di sini adalah bentuk bangunan yang terdapat di tempat wisata ini. Bangunan-bangunan berbentuk super megah ini telah didesain sedemikian rupa sehingga membentuk sebuah mahakarya seni yang cukup mengagumkan. Maka tak heran jika bangunan tersebut sering dipakai sebagai tempat foto prewedding bagi calon pengantin. Untuk luas wilayahnya, Jatim Park 2 dibangun di atas lahan seluas 14 hektar. Areanya sendiri dibagi menjadi tiga bagian, yakni Area Museum Satwa, Area Secret Zoo, dan yang terakhir adalah Area Eco Green Park. Untuk area Secret Zoo dan Eco Green Park, keduanya sama-sama memiliki koleksi binatang dan wahana permainan. Meskipun hampir serupa, tapi keduanya memiliki karakter dan keistimewaan masing-masing.\r\nCara Menuju Jatim Park 2\r\nSecara administratif, Jawa Timur Park 2 berada di Kecamatan Batu, Kabupaten Malang, Jawa Timur. Tepatnya di Jalan Oro-oro Ombo, No. 9, Kecamatan Batu, Kabupaten Malang, Jawa Timur. Lokasi Jatim Park 2 ini berada tak jauh dari objek wisata Jatim Park 1. Untuk mencapainya, kamu hanya perlu mengikuti petunjuk arah dari pusat Kota Malang menuju objek wisata Jatim Park 1. Setelah berada  di  Jatim Park 1, lurus saja hingga menemui ujung jalan. Nah, di situlah letak lokasi tempat wisata ini. Jika kamu masih bingung, kamu bisa menghubungi admin Jatim Park 2 untuk info lebih jelasnya. Berikut ini adalah nomor yang bisa kamu hubungi: (0341) 5025777\r\n', '08:30 AM', '05:00 PM', '120.000'),
(33, 'Eco Green Park', 3, 'Kota Batu ,Jawa Timur', 'Eco Green Park adalah sebuah kawasan ekosistem terbesar yang ada di Indonesia. Dimana kamu bisa merasakan seekor kalajengking berjalan diatas telapak tangan kamu dan juga melewati laba â€“ laba raksasa di tengah hutan buatan. Di sini kamu bisa melihat taman â€“ taman dengan teknologi ekologi yang menakjubkan hampir di setiap sudut. Selain itu kamu juga bisa melihat bagaimana tenaga surya itu bergerak, pengolahan susu, dan ada juga kerangka robot yang terbuat dari 1.001 hanphone.Fun & Study adalah tagline dari Eco Green Park. Memadukan antara keindahan alam, keceriaan dan juga pengalaman baru yang nantinya dirasakan oleh semua pengunjung yang datang.Mungkin kamu adalah orang yang cinta dengan pemanfaatan alam sebagai sarana penunjang kehidupan, di sini kamu bisa mendapatkan ide dan wawasan.Kamu bisa mempelajari biogas dan pemanfaatannya dalam kehidupan, memanfaatkan sampah menjadi pupuk kompos, dan melihat olahan barang bekas menjadi sesuatu yang lebih menarik dan bernilai disini.Kamu juga bisa berbagi keceriaan bersama sanak saudara lewat atraksi dan juga wahana yang ada di Eco Green Park tanpa menghilangkan nilai â€“ nilai edukasi. Eco Green Park adalah tempat dimana keindahan alam, keceriaan, teknologi dan wawasan pengetahuan berpadu menjadi satu dalam sebuah tempat wisata terbaik yang ada di Kota Wisata Batu, Jawa Timur.\r\n7 Atraksi Utama Eco Green Park\r\nâ€¢	World Of Parrot\r\nâ€¢	Recycle\r\nâ€¢	Rumah Terbalik\r\nâ€¢	Eco Journey\r\nâ€¢	Exotic White Peacock\r\nâ€¢	Bird Show\r\nâ€¢	Water Outbound\r\n', '09:45 AM', '05:00 PM', '70.000'),
(34, 'Museum Angkut', 3, 'Kota Batu ,Jawa Timur', 'Museum Angkut atau Museum Transportasi menghadirkan perpaduan antara Wisata yang unik yang berisi sejarah dan perkembangan dunia otomotif, serta dipadu dengan legenda movie star, yang cocok bagi keluarga, penggila otomotif, atau pecinta transportasi. Di museum yang spektakuler ini, mobil â€“ mobil  kuno yang berkelas turut dihadirkan lengkap disajikan dengan latar belakang kota-kota dan model bangunan eksotis di dunia yang terbagi dari beberapa zona antara lain, Zona Edukasi, Zona Batavia, Zona Gangster & Broadway, Zona Eropa, Zona Las Vegas serta Zona Hollywod. Selain itu, pengunjung juga dapat menikmati sajian Pasar Apung Nusantara yang dikemas secara unik.\r\nPengunjung dapat berfoto dengan Photo Spot berbagai angkutan dipadu dengan dekorasi dijamannya plus negara-negara asal Mobil-mobil dan Motor terkenal di dunia.\r\nTerletak di lereng Gunung Panderman dengan luas area sekitar 4 hektar, menyajikan lebih dari 300 koleksi berbagai jenis angkutan tradisional maupun  modern. Museum angkut ini dibangun untuk menghargai para pencipta berbagai angkutan di dunia, mengingat perkembangan tekhnologi angkutan terus berkembang setiap saat dengan cepat. Dan dunia angkutan itu sendiri telah membawa perubahan yang sangat berarti bagi kehidupan umat manusia.\r\n', '12:00 AM', '08:00 PM', '30.000'),
(35, 'Batu Night Spectacular', 3, 'Kota Batu ,Jawa Timur', 'Batu Night Spectacular atau BNS ini berdekatan dengan Jatim Park yang merupakan salah satu tempat rekreasi yang disukai di kota Malang. Terdapat berbagai wahana menarik yang bisa Anda coba bersama keluarga. Mulai dari wahana yang mengasyikan, menyeramkan, sampai wahana yang menantang siap menguji nyali Anda.\r\nBatu Night Spectacular (BNS) mulai dibuka pukul 15:00 hingga pukul 02:00 dini hari. Sesuai dengan namanya, tempat ini memang menyajikan keindahan wisata malam di kota Batu dengan suasana sejuk pegunungan. Anda akan dimanjakan dengan tata lampu yang indah di Batu Night Spectacular atau BNS.\r\nWahana BNS\r\nGokart menjadi salah satu wahana yang menarik untuk dicoba. Dengan lapangan gokart yang dikelilingi ban dan memiliki standar keamanan internasional, Anda dapat memacu kecepatan gokart untuk sejenak merasakan sensasi menjadi seorang pembalap. Sebelum melaju dengan gokart, Anda akan dilengkapi dengan pakaian balap lengkap dengan helm sebagai perlengkapan keselamatan wahana ini. Seru sekali merasakan melaju dengan kecepatan tinggi di atas gokart yang lincah ini.\r\nRasakan juga serunya berada di ketinggian dengan menaiki sepeda udara. Seperti sepeda pada umumnya, Anda dapat mengayuh sepeda ini agar dapat berjalan dengan lebih cepat. Tetapi, jika ingin berlama-lama berada di ketinggian, Anda tidak perlu mengayuhnya karena tanpa dikayuh sepeda ini tetap berjalan. Dengan menaiki wahana ini, bonusnya Anda dapat melihat wahana lain yang ada di Batu Night Spectacular atau BNS dari ketinggian yang terlihat layaknya mainan. Juga, pemandangan kota Malang dari atas yang terlihat indah, terlebih jika hari mulai gelap, lampu kota yang menyala membentuk kelap-kelip cahaya lampu yang indah.\r\nDi sini juga terdapat wahana rumah hantu yang membuat pengunjung ingin mencobanya. Pengunjung dapat memasuki rumah hantu dengan cara berjalan kaki atau dengan menggunakan kereta yang disediakan. Lalu melewati terowongan-terowongan dengan berbagai situasi yang bisa membuat Anda takut.\r\nMasih banyak wahana lain di Batu Night Spectacular (BNS) yang menarik. Misalnya, Bumper Car, Cinema 4 Dimensi, dan Flying Swinger. Di samping itu, berbagai fasilitas di arena ini menarik untuk dinikmati. Untuk dapat menikmati permainan yang ada BNS, pengunjung harus membayar tiket pada masing-masing wahana permainan.\r\n \r\nHiburan dan Jajanan di BNS\r\nSelain food court yang berisi berbagai penjual makanan untuk mengisi perut Anda yang kosong, Air Mancur Menari yang menghibur dengan lagu-lagunya, juga keindahan Lampion Garden, sebuah taman berisi lampu-lampu indah berbagai bentuk yang terlihat sangat indah di malam hari. Jika ingin berbelanja, Anda dapat mengunjungi toko-toko souvenir yang ada.\r\nAda juga pertunjukan laser di layar raksasa yang memukau para pengunjung di malam hari. Pertunjukkan ini membawa kita seperti berada di luar angkasa.Daerah Batu, Malang, memang menyediakan berbagai tempat wisata yang menarik. Kesejukan kota Batu dan juga berbagai tempat wisata seperti Batu Night Spectacular atau BNS, tentu membuat daerah ini menjadi tujuan wisata yang menarik. Beberapa tempat menarik yang bisa Anda kunjungi di kota Batu antara lain (silahkan kunjungi salah satu tautan berikut ini untuk ulasan selengkapnya):\r\n', '03:00 PM', '12:00 PM', '30.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `komentar_ibfk_1` (`id_wisata`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `wisata_ibfk_1` (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wisata`
--
ALTER TABLE `wisata`
  ADD CONSTRAINT `wisata_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
