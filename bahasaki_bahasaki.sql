-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 11 Mar 2020 pada 10.38
-- Versi server: 10.3.22-MariaDB-cll-lve
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bahasaki_bahasaki`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(2, 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2017-01-23 04:30:01', 'Drs. Joko', 0, 'ab9a183ff240deadbedaff78e639af2f.pdf'),
(3, '14 Teknik Komunikasi Yang Paling Efektif', 'Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar', '2017-01-23 15:26:06', 'Drs. Joko', 0, 'ab2cb34682bd94f30f2347523112ffb9.pdf'),
(4, 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2017-01-23 15:27:07', 'Drs. Joko', 0, '30f588eb5c55324f8d18213f11651855.pdf'),
(5, '7 Tips Penting mengatasi Kritik', '7 Tips Penting mengatasi Kritik', '2017-01-23 15:27:44', 'Drs. Joko', 0, '329a62b25ad475a148e1546aa3db41de.docx'),
(6, '8 Racun dalam kehidupan kita', '8 Racun dalam kehidupan kita', '2017-01-23 15:28:17', 'Drs. Joko', 0, '8e38ad4948ba13758683dea443fbe6be.docx'),
(7, 'Jurnal Teknolgi Informasi', 'Jurnal Teknolgi Informasi', '2017-01-25 03:18:53', 'Gunawan, S.Pd', 0, '87ae0f009714ddfdd79e2977b2a64632.pdf'),
(8, 'Jurnal Teknolgi Informasi 2', 'Jurnal Teknolgi Informasi', '2017-01-25 03:19:22', 'Gunawan, S.Pd', 0, 'c4e966ba2c6e142155082854dc5b3602.pdf'),
(9, 'Naskah Publikasi IT', 'Naskah Teknolgi Informasi', '2017-01-25 03:21:04', 'Gunawan, S.Pd', 0, '71380b3cf16a17a02382098c028ece9c.pdf'),
(10, 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2017-01-25 03:22:08', 'Gunawan, S.Pd', 0, '029143a3980232ab2900d94df36dbb0c.pdf'),
(11, 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2017-01-25 03:22:54', 'Gunawan, S.Pd', 0, 'ea8f3f732576083156e509657614f551.pdf'),
(12, 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2017-01-25 03:23:21', 'Gunawan, S.Pd', 0, 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(10, 'muhammad faqih sopyan', 'faqihsopyan@gmail.com', NULL, 'hai haia haia', '2020-02-12 11:17:20', 0),
(11, 'Muhammad Sopyan', 'faqihsopyan@gmail.com', NULL, 'halo!\r\nsaya ingin bertanya tentang detail produk', '2020-02-19 02:55:35', 0),
(12, 'Kennethkek', 'raphaeIrrariecrync@gmail.com', NULL, 'Hi!  bahasakita.co.id \r\n \r\nDid you know that it is possible to send proposal perfectly legally? \r\nWe put a new unique way of sending proposal through feedback forms. Such forms are located on many sites. \r\nWhen such proposals are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals. \r\nAlso, messages sent through feedback Forms do not get into spam because such messages are considered important. \r\nWe offer you to test our service for free. We will send up to 50,000 messages for you. \r\nThe cost of sending one million messages is 49 USD. \r\n \r\nThis message is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  live:feedbackform2019 \r\nEmail - feedbackform@make-success.com', '2020-03-01 16:30:14', 0),
(13, 'dewi', 'dewi@bahasakita.co.id', NULL, 'hai gezzz ku coba ya', '2020-03-03 09:52:55', 0),
(14, 'Kathy Hunter', 'kathy@keywordtraffic.club', NULL, 'Hi, we noticed something seems wrong with your website.\r\n\r\nIt&#039;s a great site for sure, BUT it&#039;s not getting as many visitors as similar businesses. Not even close.\r\n\r\nHave you considered using a service like this?\r\nhttps://keywordtraffic.club/up/?=bahasakita.co.id\r\n\r\nIt&#039;s a guaranteed way to get targeted traffic in just days (not weeks or months).\r\n\r\nJust a friendly suggestion, \r\nKathy\r\n\r\n\r\n\r\n\r\n\r\nKeyword Traffic Club\r\n410 East Santa Clara Street Suite#814\r\nSan Jose, CA 95113\r\n\r\n\r\n\r\n\r\n\r\n\r\nIf you are unintersted in this type of marketing:\r\nhttps://keywordtraffic.club/unsubscribe.php/?site=bahasakita.co.id', '2020-03-04 07:47:04', 0),
(15, 'dewi', 'dewi@bahasakita.co.id', NULL, 'sadsd', '2020-03-06 04:19:52', 0),
(16, 'dewi', 'dewinoviastutitkjb@gmail.com', NULL, 'efdre', '2020-03-06 04:20:52', 0),
(17, 'Eric Jones', 'eric@talkwithwebvisitor.com', NULL, 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - bahasakita.co.id - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across bahasakita.co.id, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you&#039;d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=bahasakita.co.id', '2020-03-06 09:23:25', 0),
(18, 'contacteihwgw', 'tula_knaus72@rambler.ru', NULL, 'Dear sir! \r\n \r\nWe will send viacontact configurationss to the sites of companies via any countries and domain zones of the world in any languages.  \r\n \r\nhttp://xn----7sbb1bbndheurc1a.xn--p1ai \r\n \r\nYour offer is sent to email of organization hundred % will get to inside of the inbox folder! \r\n \r\nTest: \r\nten thousand messages on foreign zones to your email address - 20 dollars. \r\nWe need from You only E-mail, title and text of the letter. \r\n \r\nIn our price list there are more 800 databases for all countries of the world. \r\nCommon databases: \r\nAll Europe 44 countries 60726150 of sites - 1100$ \r\nAll European Union 28 countries 56752547 of domains- 1000$ \r\nAll Asia 48 countries 14662004 of sites - 300$ \r\nAll Africa 50 countries 1594390 of sites - 200$ \r\nAll North and Central America in 35 countries 7441637 of sites - 300$ \r\nAll South America 14 countries 5826884 of domain names - 200$ \r\nEnterprises and organizations of the Russian Federation - 300$ \r\nUkraine 605745 of domains - 100$ \r\nAll Russian-speaking countries minus RF are 15 countries and there are 1526797 of sites - 200$ \r\n \r\nOur databases: \r\nWhois-service databases of domain names for all countries of the world. \r\nYou can purchase our databases separately from newsletter&#039;s service at the request. \r\n \r\nP/S \r\nPls., do not respond to this offer from your mailbox, as it has been generated automatically and will not reach us! \r\nUse the contact form from the site http://xn----7sbb1bbndheurc1a.xn--p1ai \r\n \r\nPRICE LIST: \r\n \r\nTest mailing: $20 – 10000 contact forms websites \r\n \r\nAll Europe 44 countries there are 60726150 websites – $1100 \r\n \r\nAll EU 28 countries there are 56752547 websites – $1000 \r\n \r\nAll Asia 48 countries there are 14662004 websites – $500 \r\n \r\nAll Africa 50 countries there are 1594390 websites – $200 \r\n \r\nAll North and Central America is 35 countries there are 7441637 websites – $300 \r\n \r\nAll South America 14 countries there are 5826884 websites – $200 \r\n \r\nTop 1 Million World’s Best websites – $100 \r\n \r\nTop 16821856 the most visited websites in the world – $200 \r\n \r\nBusinesses and organizations of the Russian Federation – there are 3012045 websites – $300 \r\n \r\nUkraine 605745 websites – $100 \r\n \r\nAll Russian-speaking countries minus Russia – there are 15 countries and 1526797 websites – $200 \r\n \r\n1499203 of hosting websites around the world (there are selections for all countries, are excluded from databases for mailings) – $200 \r\n \r\n35439 websites of public authorities of all countries of the world (selections for all countries, are excluded from databases for mailings) – $100 \r\n \r\nCMS mailings: \r\nAmiro 2294 websites $50 \r\nBitrix 175513 websites $80 \r\nConcrete5 49721 websites $50 \r\nCONTENIDO 7769 websites $50 \r\nCubeCart 1562 websites $50 \r\nDatalife Engine 29220 websites $50 \r\nDiscuz 70252 websites $50 \r\nDotnetnuke 31114 websites $50 \r\nDrupal 802121 websites $100 \r\nHostCMS 6342 websites $50 \r\nInstantCMS 4936 websites $50 \r\nInvision Power Board 510 websites $50 \r\nJoomla 1906994 websites $200 \r\nLiferay 5937 websites $50 \r\nMagento 269488 websites $80 \r\nMODx 67023 websites $50 \r\nMovable Type 13523 websites $50 \r\nNetCat 6936 websites $50 \r\nNopCommerce 5313 websites $50 \r\nOpenCart 321057 websites $80 \r\nosCommerce 65468 websites $50 \r\nphpBB 3582 websites $50 \r\nPrestashop 92949 websites $50 \r\nShopify 365755 websites $80 \r\nSimpla 8963 websites $50 \r\nSitefinity 4883 websites $50 \r\nTYPO3 227167 websites $80 \r\nUMI.CMS 15943 websites $50 \r\nvBulletin 154677 websites $80 \r\nWix 2305768 websites $230 \r\nWordPress 14467405 websites $450 \r\nWooCommerce 2097367 websites $210 \r\n \r\n.com 133766112 websites commercial – $1950 \r\n.biz 2361884 websites business – $150 \r\n.info 6216929 websites information – $250 \r\n.net 15689222 websites network – $450 \r\n.org 10922428 websites organization – $350 \r\n \r\n.abogado 279 websites – $50 \r\n.ac 16799 websites – $50 \r\n.academy 27306 websites – $50 \r\n.accountant 96542 websites – $50 \r\n.actor 1928 websites – $50 \r\n.ad 414 websites – $50 \r\n.adult 10540 websites- $50 \r\n.ae 1821 websites International zone UAE:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ae 199533 websites UAE – $50 \r\n.aero 18325 websites- $50 \r\n.af 3315 websites – $50 \r\n.africa 15056 websites- $50 \r\n.ag 10339 websites – $50 \r\n.agency 47508 websites – $50 \r\n.ai 17199 websites – $50 \r\n.airforce 560 websites – $50 \r\n.al 6078 websites – $50 \r\n.alsace 1982 websites – $50 \r\n.am 17987 websites Armenia – $50 \r\n.am 1684 websites International zone Armenia:.com.net.biz.info.org.name.tel.mobi.asia \r\n.amsterdam 28141 websites Amsterdam, Kingdom of the Netherlands – $50 \r\n.ao 518 websites – $50 \r\n.apartments 3758 websites – $50 \r\n.ar 551804 websites Argentina – $80 \r\n.ar 64008 websites International zone Argentina:.com .net .biz .info .name .tel .mobi .asia – $50 \r\n.archi 2084 websites – $50 \r\n.army 1842 websites – $50 \r\n.art 26402 websites – $50 \r\n.as 10025 websites – $50 \r\n.asia 228418 websites – $80 \r\n.associates 3340 websites – $50 \r\n.at 1356722 websites Austria – $100 \r\n.at 181907 websites International zone Austria :.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.attorney 8224 websites- $50 \r\n.attorney 7204 websites – $50 \r\n.au 2243263 websites Australia – $150 \r\n.au 461279 websites International zone Australia:.com.net.biz.info.org.name.tel.mobi.asia-$80 \r\n.auction 3625 websites- $50 \r\n.audio 23052 websites- $50 \r\n.auto 400 websites- $50 \r\n.aw 235 websites- $50 \r\n.az 11104 websites Azerbaijan – $50 \r\n.az 2036 websites International zone Azerbaijan:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ba 7012 websites – $50 \r\n.ba 2291 websites International zone Bosnia and Herzegovina:.com.net.biz.info.org.name.tel.mobi.asia \r\n.band 11515 websites – $50 \r\n.bank 1621 websites- $50 \r\n.bar 5506 websites – $50 \r\n.barcelona 7919 websites – $50 \r\n.bargains 2997 websites- $50 \r\n.bayern 32565 websites – $50 \r\n.bb 2277 websites – $50 \r\n.be 1349658 websites Belgium – $100 \r\n.be 184810 websites International zone Belgium:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.beer 11834 websites- $50 \r\n.berlin 58088 websites Berlin – $50 \r\n.best 2912 websites – $50 \r\n.bet 17637 websites – $50 \r\n.bf 238 websites – $50 \r\n.bg 33252 websites Bulgaria – $50 \r\n.bg 50685 websites International zone Bulgaria:.com.net.biz.info.org.name.tel.mobi.asia \r\n.bh 453 websites – $50 \r\n.bi 2328 websites Burundi- $50 \r\n.bible 1160 websites – $50 \r\n.bid 474509 websites – $80 \r\n.bike 15729 websites – $50 \r\n.bingo 1332 websites – $50 \r\n.bio 15531 websites- $50 \r\n.bj 147 websites- $50 \r\n.black 6582 websites – $50 \r\n.blackfriday 12106 websites – $50 \r\n.blog 145463 websites – $50 \r\n.blue 16852 websites – $50 \r\n.bm 8089 websites Bermuda – $50 \r\n.bo 2302 websites- $50 \r\n.boats 266 websites- $50 \r\n.boston 21762 websites- $50 \r\n.boutique 8834 websites – $50 \r\n.br 2367290 websites Brazil – $150 \r\n.br 933750 websites International zone Brazil:.com.net.biz.info.org.name.tel.mobi.asia-$100 \r\n.bradesco 129 websites- $50 \r\n.broadway 261 websites- $50 \r\n.broker 660 websites- $50 \r\n.brussels 7181 websites – $50 \r\n.bs 330 websites- $50 \r\n.bt 284 websites- $50 \r\n.build 3857 websites- $50 \r\n.builders 3906 websites- $50 \r\n.business 35168 websites – $50 \r\n.buzz 11257 websites – $50 \r\n.bw 656 websites – $50 \r\n.by 1574 websites International zone Belarus:.com.net.biz.info.org.name.tel.mobi.asia \r\n.by 92679 websites Belarus – $50 \r\n.bz 7751 websites – $50 \r\n.bzh 5403 websites – $50 \r\n.ca 2587463 websites Canada – $150 \r\n.ca 288395 websites International zone Canada:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.cab 3223 websites – $50 \r\n.cafe 13606 websites – $50 \r\n.cam 5156 websites – $50 \r\n.camera 5236 websites – $50 \r\n.camp 6315 websites – $50 \r\n.capetown 4750 websites – $50 \r\n.capital 11387 websites – $50 \r\n.car 342 websites – $50 \r\n.cards 5992 websites – $50 \r\n.care 18204 websites – $50 \r\n.career 1217 websites – $50 \r\n.careers 7055 websites – $50 \r\n.cars 309 websites – $50 \r\n.casa 18918 websites – $50 \r\n.cash 13193 websites – $50 \r\n.casino 4354 websites – $50 \r\n.cat 108569 websites – $50 \r\n.catering 3482 websites – $50 \r\n.cc 1920589 websites Cocos Keeling Islands- $150 \r\n.cd 5365 websites – $50 \r\n.center 35353 websites – $50 \r\n.ceo 2458 websites – $50 \r\n.cf 476142 websites Central African Republic – $50 \r\n.cg 166 – $50 \r\n.ch 1471685 websites Switzerland – $100 \r\n.ch 205292 websites International zone Switzerland:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.chat 11126 websites – $50 \r\n.cheap 3267 websites – $50 \r\n.christmas 15255 websites – $50 \r\n.church 21104 websites – $50 \r\n.ci 112 websites International zone Cote d’Ivoire:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ci 5663 websites Cote d’Ivoire- $50 \r\n.city 46171 websites – $50 \r\n.cl 498401 websites Chile – $80 \r\n.claims 2374 websites – $50 \r\n.cleaning 2385 websites – $50 \r\n.click 181015 websites – $50 \r\n.clinic 7006 websites – $50 \r\n.clothing 13639 websites – $50 \r\n.cloud 134113 websites – $50 \r\n.club 1045323 websites – $100 \r\n.cm 12001 websites Cameroon- $50 \r\n.cn 1372416 websites International zone China:.com.net.biz.info.org.name.tel.mobi.asia-$100 \r\n.cn 7264587 websites China – $300 \r\n.co 1778923 websites Colombia – $150 \r\n.coach 12002 websites- $50 \r\n.codes 6844 websites – $50 \r\n.coffee 17257 websites – $50 \r\n.cologne 5137 websites – $50 \r\n.cologne 5198 websites – $50 \r\n.com.ar 657716 websites Argentina – $80 \r\n.com.br 942898 websites Brazil – $100 \r\n.com.cy 11153 websites Cyprus – $50 \r\n.com.ni 23747 websites – $50 \r\n.com.np 38828 websites – $50 \r\n.com.ru, .net.ru, .org.ru, .spb.ru, .msk.ru 79058 websites Russia – $50 \r\n.community 13013 websites – $50 \r\n.company 61217 websites – $50 \r\n.computer 5039 websites – $50 \r\n.condos 2192 websites – $50 \r\n.construction 6804 websites – $50 \r\n.consulting 22128 websites – $50 \r\n.contractors 3982 websites – $50 \r\n.cooking 1476 websites – $50 \r\n.cool 16008 websites – $50 \r\n.coop 7879 websites – $50 \r\n.corsica 1042 websites – $50 \r\n.country 7144 websites – $50 \r\n.cr 7934 websites – $50 \r\n.credit 4020 websites – $50 \r\n.creditcard 825 websites – $50 \r\n.creditunion 511 websites – $50 \r\n.cricket 33413 websites – $50 \r\n.cruises 2234 websites – $50 \r\n.cu 137 websites – $50 \r\n.cv 1879 websites – $50 \r\n.cx 15753 websites – $50 \r\n.cy 11092 websites Cyprus – $50 \r\n.cy 710 websites International zone Cyprus:.com.net.biz.info.org.name.tel.mobi.asia \r\n.cymru 7114 websites – $50 \r\n.cz 193400 websites International zone Czech Republic:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.cz 930208 websites Czech Republic – $80 \r\n.dance 6290 websites – $50 \r\n.date 123037 websites – $50 \r\n.dating 2892 websites – $50 \r\n.de 15078512 websites Germany – $450 \r\n.de 3894156 websites International zone Germany:.com.net.biz.info.org.name.tel.mobi.asia-$200 \r\n.deals 8132 websites – $50 \r\n.degree 2178 websites – $50 \r\n.delivery 4782 websites – $50 \r\n.democrat 1072 websites – $50 \r\n.dental 7541 websites – $50 \r\n.dentist 3046 websites – $50 \r\n.desi 2647 websites – $50 \r\n.design 71711 websites – $50 \r\n.diamonds 2730 websites – $50 \r\n.diet 18291 websites – $50 \r\n.digital 31449 websites – $50 \r\n.direct 10629 websites – $50 \r\n.directory 18157 websites – $50 \r\n.discount 3898 websites – $50 \r\n.dj 7280 websites – $50 \r\n.dk 1320155 websites Denmark – $100 \r\n.dk 148164 websites International zone Denmark:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.dm 23318 websites – $50 \r\n.do 5255 websites Dominican Republic- $50 \r\n.dog 10030 websites – $50 \r\n.domains 6553 websites – $50 \r\n.download 129223 websites – $50 \r\n.durban 2247 websites – $50 \r\n.dz 982 websites – $50 \r\n.earth 8139 websites – $50 \r\n.ec 11731 websites – $50 \r\n.edu 4445 websites – $50 \r\n.edu.np 4883 websites- $50 \r\n.education 22003 websites – $50 \r\n.ee 10490 websites International zone Estonia:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ee 119701 websites Estonia- $50 \r\n.eg 1699 websites – $50 \r\n.email 77321 websites – $50 \r\n.energy 9769 websites – $50 \r\n.engineer 2785 websites – $50 \r\n.engineering 5533 websites – $50 \r\n.enterprises 6153 websites – $50 \r\n.equipment 5760 websites – $50 \r\n.es 1685048 websites Spain – $100 \r\n.es 541916 websites International zone Spain:.com.net.biz.info.org.name.tel.mobi.asia-$80 \r\n.estate 9185 websites – $50 \r\n.et 124 websites – $50 \r\n.eu 3321576 websites Europe – $150 \r\n.eu 633384 websites International zone Europe:.com.net.biz.info.org.name.tel.mobi.asia-$80 \r\n.eus 8116 websites – $50 \r\n.events 22115 websites – $50 \r\n.exchange 9432 websites – $50 \r\n.expert 31240 websites – $50 \r\n.exposed 3147 websites – $50 \r\n.express 6919 websites – $50 \r\n.fail 3322 websites – $50 \r\n.faith 54195 websites – $50 \r\n.family 15577 websites – $50 \r\n.fans 1388 websites – $50 \r\n.farm 13499 websites – $50 \r\n.fashion 12475 websites – $50 \r\n.feedback 2301 websites – $50 \r\n.fi 178337 websites Finland – $50 \r\n.fi 69631 websites International zone Finland:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.film 3601 websites – $50 \r\n.finance 7982 websites – $50 \r\n.financial 4086 websites – $50 \r\n.fish 4162 websites – $50 \r\n.fishing 1423 websites – $50 \r\n.fit 17007 websites – $50 \r\n.fitness 9689 websites – $50 \r\n.flights 2119 websites – $50 \r\n.florist 2286 websites – $50 \r\n.flowers 25590 websites – $50 \r\n.fm 5407 websites – $50 \r\n.fo 3098 websites- $50 \r\n.football 4877 websites – $50 \r\n.forex 212 websites – $50 \r\n.forsale 7118 websites – $50 \r\n.foundation 10118 websites – $50 \r\n.fr 2391045 websites France – $150 \r\n.fr 639546 websites International zone France:.com.net.biz.info.org.name.tel.mobi.asia-$80 \r\n.frl 14028 websites – $50 \r\n.fun 86419 websites – $50 \r\n.fund 11205 websites – $50 \r\n.furniture 2246 websites – $50 \r\n.futbol 2783 websites – $50 \r\n.fyi 9772 websites – $50 \r\n.ga 12048 websites Gabon – $50 \r\n.gal 4606 websites – $50 \r\n.gallery 17263 websites – $50 \r\n.game 1996 websites – $50 \r\n.games 13234 websites – $50 \r\n.garden 914 websites – $50 \r\n.gd 4238 websites – $50 \r\n.ge 1676 websites International zone Georgia:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ge 17361 websites Georgia – $50 \r\n.gent 3389 websites – $50 \r\n.gf 121 websites – $50 \r\n.gg 9443 websites – $50 \r\n.gh 693 websites – $50 \r\n.gi 1063 websites – $50 \r\n.gift 6281 websites – $50 \r\n.gifts 3757 websites – $50 \r\n.gives 1563 websites – $50 \r\n.gl 3575 websites – $50 \r\n.glass 3539 websites – $50 \r\n.global 38972 websites – $50 \r\n.gm 468 websites – $50 \r\n.gmbh 19186 websites – $50 \r\n.gold 9081 websites – $50 \r\n.golf 8319 websites – $50 \r\n.gop 1341 websites – $50 \r\n.gov 4525 websites – $50 \r\n.gov.np 1937 websites- $50 \r\n.gp 416 websites – $50 \r\n.gq 23306 websites – $50 \r\n.gr 356168 websites Greece – $80 \r\n.gr 57984 websites International zone Greece:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.graphics 7155 websites – $50 \r\n.gratis 4283 websites – $50 \r\n.green 3661 websites – $50 \r\n.gripe 1075 websites – $50 \r\n.group 54983 websites – $50 \r\n.gs 5108 websites – $50 \r\n.gt 15351 websites – $50 \r\n.guide 16044 websites – $50 \r\n.guitars 1278 websites – $50 \r\n.guru 60588 websites – $50 \r\n.gy 2447 websites – $50 \r\n.hamburg 23885 websites – $50 \r\n.haus 5186 websites – $50 \r\n.health 6211 websites – $50 \r\n.healthcare 8051 websites – $50 \r\n.help 13500 websites – $50 \r\n.hiphop 1064 websites – $50 \r\n.hiv 331 websites – $50 \r\n.hk 116093 websites – $50 \r\n.hm 249 websites – $50 \r\n.hn 4732 websites – $50 \r\n.hockey 1102 websites – $50 \r\n.holdings 5412 websites – $50 \r\n.holiday 5017 websites – $50 \r\n.homes 432 websites – $50 \r\n.horse 2116 websites – $50 \r\n.host 31309 websites – $50 \r\n.hosting 4132 websites – $50 \r\n.house 18096 websites – $50 \r\n.how 1957 websites – $50 \r\n.hr 16592 websites International zone Croatia:.com.net.biz.info.org.name.tel.mobi.asia \r\n.hr 43565 websites Croatia – $50 \r\n.ht 2559 websites – $50 \r\n.hu 53940 websites International zone Hungary:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.hu 618532 websites Hungary – $80 \r\n.id 37212 websites – $50 \r\n.ie 195987 websites Ireland – $50 \r\n.ie 49861 websites International zone Ireland:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.il 224167 websites Israel – $80 \r\n.il 38537 websites International zone Israel:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.im 20701 websites – $50 \r\n.immo 16009 websites – $50 \r\n.immobilien 7094 websites – $50 \r\n.in 1143482 websites India – $100 \r\n.in 266179 websites International zone India:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.industries 3749 websites – $50 \r\n.ink 27117 websites – $50 \r\n.institute 10134 websites – $50 \r\n.insure 4615 websites – $50 \r\n.int 191 websites – $50 \r\n.international 23930 websites – $50 \r\n.investments 4113 websites – $50 \r\n.io 314287 websites British Indian Ocean – $50 \r\n.iq 1118 websites – $50 \r\n.ir 15487 websites International zone Iran:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ir 427735 websites Iran- $80 \r\n.irish 3326 websites – $50 \r\n.is 31176 websites Iceland – $50 \r\n.ist 10060 websites – $50 \r\n.istanbul 13139 websites – $50 \r\n.it 2258105 websites Italy – $200 \r\n.it 954040 websites International zone Italy:.com.net.biz.info.org.name.tel.mobi.asia-$100 \r\n.je 2716 websites – $50 \r\n.jetzt 11118 websites – $50 \r\n.jetzt 11704 websites – $50 \r\n.jewelry 3350 websites – $50 \r\n.jo 555 websites – $50 \r\n.jobs 46350 websites- $50 \r\n.joburg 3139 websites – $50 \r\n.jp 1146243 websites Japan – $100 \r\n.juegos 844 websites – $50 \r\n.kaufen 7134 websites – $50 \r\n.kg 664 websites International zone Kyrgyzstan:.com.net.biz.info.org.name.tel.mobi.asia \r\n.kg 8919 websites Kyrgyzstan – $50 \r\n.ki 1146 websites – $50 \r\n.kim 16637 websites- $50 \r\n.kitchen 6581 websites – $50 \r\n.kiwi 19426 websites – $50 \r\n.kn 1271 websites – $50 \r\n.koeln 23489 websites – $50 \r\n.kr 254447 websites Korea- $50 \r\n.krd 375 websites – $50 \r\n.kred 6120 websites – $50 \r\n.kw 423 websites – $50 \r\n.ky 1201 websites – $50 \r\n.kyoto 659 websites – $50 \r\n.kz 112459 websites Kazakhstan – $50 \r\n.kz 5876 websites International zone Kazakhstan:.com.net.biz.info.org.name.tel.mobi.asia \r\n.la 32189 websites Laos – $50 \r\n.land 14474 websites- $50 \r\n.lat 2971 websites – $50 \r\n.law 11842 websites – $50 \r\n.lawyer 11600 websites- $50 \r\n.lc 651 websites- $50 \r\n.lease 1855 websites- $50 \r\n.leclerc 127 websites- $50 \r\n.legal 11047 websites- $50 \r\n.lgbt 2249 websites- $50 \r\n.li 12044 websites – $50 \r\n.life 170053 websites – $50 \r\n.lighting 6096 websites – $50 \r\n.limited 5365 websites – $50 \r\n.limo 2409 websites- $50 \r\n.link 133123 websites – $50 \r\n.live 160896 websites – $50 \r\n.lk 6601 websites – $50 \r\n.loan 1932173 websites- $200 \r\n.loans 3914 websites – $50 \r\n.lol 7470 websites- $50 \r\n.london 82443 websites London, United Kingdom- $50 \r\n.love 22287 websites- $50 \r\n.lt 27710 websites International zone Lithuania:.com.net.biz.info.org.name.tel.mobi.asia \r\n.lt 89073 websites Lithuania- $50 \r\n.ltd 329225 websites – $50 \r\n.lu 43052 websites Luxembourg – $50 \r\n.lu 4125 websites International zone Luxembourg:.com.net.biz.info.org.name.tel.mobi.asia \r\n.luxury 905 websites – $50 \r\n.lv 61886 websites Latvia- $50 \r\n.lv 8887 websites International zone Latvia:.com.net.biz.info.org.name.tel.mobi.asia \r\n.ly 8013 websites – $50 \r\n.ma 51862 websites Morocco – $50 \r\n.maison 1123 websites – $50 \r\n.management 10088 websites- $50 \r\n.market 22167 websites- $50 \r\n.marketing 18262 websites- $50 \r\n.markets 816 websites- $50 \r\n.mba 3023 websites- $50 \r\n.mc 3036 websites Monaco – $50 \r\n.md 15435 websites Moldova – $50 \r\n.md 1293 websites International zone Moldova:.com.net.biz.info.org.name.tel.mobi.asia \r\n.me 761596 websites Montenegro – $80 \r\n.me 86897 websites International zone Montenegro:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.media 40573 websites – $50 \r\n.melbourne 10041 websites – $50 \r\n.memorial 512 websites – $50 \r\n.men 470140 websites – $80 \r\n.menu 5512 websites restaurants- $50 \r\n.mg 3380 websites Madagascar- $50 \r\n.miami 14431 websites Miami, USA – $50 \r\n.mk 12704 websites – $50 \r\n.ml 70170 websites – $50 \r\n.mma 1706 websites – $50 \r\n.mn 16710 websites – $50 \r\n.mo 573 websites – $50 \r\n.mobi 462419 websites- $80 \r\n.moda 3015 websites – $50 \r\n.moe 7709 websites – $50 \r\n.mom 3145 websites – $50 \r\n.money 9731 websites – $50 \r\n.mortgage 3126 websites – $50 \r\n.moscow 22097 websites Moscow Russian Federation- $50 \r\n.movie 2575 websites – $50 \r\n.mr 1725 websites – $50 \r\n.ms 7565 websites – $50 \r\n.mt 1623 websites Malta – $50 \r\n.mu 6175 websites – $50 \r\n.museum 34464 websites – $50 \r\n.mv 1907 websites – $50 \r\n.mw 8579 websites Malawi – $50 \r\n.mx 609278 websites Mexico- $80 \r\n.mx 86593 websites International zone Mexico:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.my 283349 websites Malaysia- $80 \r\n.mz 263 websites – $50 \r\n.na 781 websites – $50 \r\n.nagoya 7807 websites – $50 \r\n.name 135818 websites- $50 \r\n.navy 698 websites – $50 \r\n.nc 1240 websites – $50 \r\n.network 40018 websites – $50 \r\n.news 65546 websites – $50 \r\n.ng 16608 websites – $50 \r\n.ngo 3422 websites – $50 \r\n.ninja 49007 websites – $50 \r\n.nl 1019697 websites International zone Netherlands:.com.net.biz.info.org.name.tel.mobi.asia-$100 \r\n.nl 3566172 websites Netherlands – $200 \r\n.no 579185 websites Norway – $80 \r\n.no 74318 websites International zone Norway:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.nra 144 websites – $50 \r\n.nrw 18487 websites – $50 \r\n.nu 489605 websites Niue- $50 \r\n.nyc 67153 websites – $50 \r\n.nz 576127 websites New Zealand – $80 \r\n.om 1603 websites – $50 \r\n.one 63063 websites – $50 \r\n.ong 3422 websites – $50 \r\n.onl 3790 websites – $50 \r\n.online 695007 websites – $50 \r\n.ooo 6400 websites – $50 \r\n.org.np 7082 websites – $50 \r\n.org.ua 41362 websites – $50 \r\n.organic 1633 websites – $50 \r\n.osaka 628 websites – $50 \r\n.ovh 50056 websites – $50 \r\n.pa 1558 websites – $50 \r\n.paris 19283 websites – $50 \r\n.partners 6576 websites – $50 \r\n.parts 5514 websites – $50 \r\n.party 115578 websites- $50 \r\n.pe 59157 websites International zone Peru:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.pe 69367 websites Peru – $50 \r\n.pet 8487 websites – $50 \r\n.pf 349 websites – $50 \r\n.pg 1979 websites Papua – $50 \r\n.ph 17940 websites Philippines – $50 \r\n.photo 17165 websites- $50 \r\n.photography 50434 websites- $50 \r\n.photos 19107 websites- $50 \r\n.physio 1160 websites- $50 \r\n.pics 7659 websites- $50 \r\n.pictures 7807 websites- $50 \r\n.pink 6373 websites- $50 \r\n.pizza 5949 websites – $50 \r\n.pk 44464 websites Pakistan – $50 \r\n.pl 1675325 websites Poland – $100 \r\n.pl 327587 websites International zone Poland:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.place 7002 websites – $50 \r\n.plumbing 3005 websites – $50 \r\n.plus 9892 websites – $50 \r\n.pm 4401 websites – $50 \r\n.poker 3209 websites – $50 \r\n.porn 10023 websites- $50 \r\n.post 3481 websites – $50 \r\n.pr 18419 websites – $50 \r\n.press 35032 websites – $50 \r\n.pro 280776 websites – $50 \r\n.productions 6144 websites – $50 \r\n.promo 5020 websites – $50 \r\n.properties 14144 websites – $50 \r\n.property 4366 websites – $50 \r\n.ps 2050 websites – $50 \r\n.pt 17691 websites International zone Portugal:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.pt 225136 websites Portugal – $80 \r\n.pub 16703 websites – $50 \r\n.pw 16206 websites – $50 \r\n.py 4635 websites – $50 \r\n.qa 8503 websites – $50 \r\n.quebec 8042 websites – $50 \r\n.racing 55001 websites – $50 \r\n.re 11082 websites – $50 \r\n.realtor 39465 websites – $50 \r\n.realty 55291 websites – $50 \r\n.recipes 3251 websites – $50 \r\n.red 25701 websites – $50 \r\n.rehab 1816 websites – $50 \r\n.reise 4146 websites – $50 \r\n.reisen 9228 websites – $50 \r\n.reit 126 websites – $50 \r\n.ren 108303 websites – $50 \r\n.rent 3788 websites – $50 \r\n.rentals 11823 websites- $50 \r\n.repair 6628 websites- $50 \r\n.report 5869 websites – $50 \r\n.republican 952 websites – $50 \r\n.rest 1894 websites – $50 \r\n.restaurant 7703 websites – $50 \r\n.review 229514 websites – $80 \r\n.reviews 16132 websites- $50 \r\n.rio 1062 websites- $50 \r\n.rip 3199 websites- $50 \r\n.ro 42046 websites International zone Romania:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.ro 483266 websites Romania – $80 \r\n.rocks 81108 websites – $50 \r\n.rs 75503 websites Serbia – $50 \r\n.ru 5292104 websites Russian- $250 \r\n.ru 514668 websites International zone Russian:.com.net.biz.info.org.name.tel.mobi.asia -$80 \r\n.ru.com 6499 websites Russia – $50 \r\n.ruhr 9887 websites – $50 \r\n.run 10622 websites – $50 \r\n.rw 244 websites – $50 \r\n.sa 5064 websites International zone Saudi Arabia:.com.net.biz.info.org.name.tel.mobi.asia \r\n.sa 11604 websites Saudi Arabia- $50 \r\n.saarland 3825 websites – $50 \r\n.sale 35407 websites – $50 \r\n.salon 1782 websites – $50 \r\n.sarl 939 websites – $50 \r\n.sc 4942 websites Seychelles- $50 \r\n.school 11672 websites – $50 \r\n.schule 4678 websites – $50 \r\n.science 74115 websites – $80 \r\n.scot 11175 websites – $50 \r\n.sd 619 websites – $50 \r\n.se 293316 websites International zone Sweden:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.se 1799365 websites Sweden – $150 \r\n.seat 618 websites – $50 \r\n.security 255 websites – $50 \r\n.services 52098 websites – $50 \r\n.sex 7655 websites – $50 \r\n.sexy 18260 websites – $50 \r\n.sg 164351 websites Republic Of Singapore – $50 \r\n.sh 9408 websites – $50 \r\n.shiksha 1626 websites – $50 \r\n.shoes 5007 websites – $50 \r\n.shop 402139 websites – $80 \r\n.shopping 6297 websites – $50 \r\n.show 6946 websites – $50 \r\n.si 12879 websites International zone Slovenia:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.si 39749 websites Slovenia- $50 \r\n.singles 3559 websites – $50 \r\n.site 384414 websites – $80 \r\n.sk 31572 websites International zone Slovakia:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.sk 347101 websites Slovakia- $80 \r\n.ski 5071 websites – $50 \r\n.sl 418 websites – $50 \r\n.sm 2009 websites – $50 \r\n.sn 344 websites International zone Senegal:.com.net.biz.info.org.name.tel.mobi.asia \r\n.sn 4954 websites Senegal – $50 \r\n.so 9003 websites – $50 \r\n.soccer 2833 websites – $50 \r\n.social 19134 websites – $50 \r\n.software 13001 websites – $50 \r\n.solar 7095 websites – $50 \r\n.solutions 81282 websites – $50 \r\n.soy 1200 websites – $50 \r\n.space 220771 websites – $80 \r\n.sr 638 – $50 \r\n.srl 4391 – $50 \r\n.st 7683 websites – $50 \r\n.storage 623 – $50 \r\n.store 167141 websites – $50 \r\n.stream 239795 websites – $80 \r\n.studio 39132 websites – $50 \r\n.study 5132 websites – $50 \r\n.style 9248 websites – $50 \r\n.su 125358 websites Russian- $50 \r\n.sucks 7629 websites – $50 \r\n.supplies 3082 websites – $50 \r\n.supply 4580 websites – $50 \r\n.support 20377 websites – $50 \r\n.surf 2573 websites – $50 \r\n.surgery 1778 websites – $50 \r\n.sv 8132 websites Salvador- $50 \r\n.swiss 17323 websites – $50 \r\n.sx 3240 websites – $50 \r\n.sy 2063 websites – $50 \r\n.sydney 10073 websites – $50 \r\n.systems 26094 websites – $50 \r\n.sz 194 websites – $50 \r\n.taipei 5664 websites – $50 \r\n.tattoo 2004 websites- $50 \r\n.tax 5788 websites – $50 \r\n.taxi 5784 websites – $50 \r\n.tc 16384 websites Turks and Caicos Islands- $50 \r\n.team 18421 websites- $50 \r\n.tech 196321 websites – $50 \r\n.technology 40181 websites- $50 \r\n.tel 80752 websites- $50 \r\n.tennis 1494 websites – $50 \r\n.tf 2049 websites – $50 \r\n.tg 521 websites – $50 \r\n.th 23968 websites Kingdom Of Thailand- $50 \r\n.theater 1053 websites – $50 \r\n.tickets 1141 websites – $50 \r\n.tienda 2951 websites – $50 \r\n.tips 31287 websites- $50 \r\n.tires 960 websites – $50 \r\n.tirol 5412 websites – $50 \r\n.tj 34 websites International zone Tajikistan:.com.net.biz.info.org.name.tel.mobi.asia \r\n.tj 6804 websites Tajikistan- $50 \r\n.tk 12799253 websites Tokelau – $450 \r\n.tl 2728 websites – $50 \r\n.tm 6056 websites Turkmenistan- $50 \r\n.tm 44 websites International zone Turkmenistan:.com.net.biz.info.org.name.tel.mobi.asia \r\n.tn 27383 websites – $50 \r\n.to 16987 websites Tonga- $50 \r\n.today 98034 websites – $50 \r\n.tokyo 90132 websites – $50 \r\n.tools 10439 websites – $50 \r\n.top 2140480 websites – $200 \r\n.tours 9151 websites – $50 \r\n.town 3328 websites – $50 \r\n.toys 4391 websites – $50 \r\n.tr 138818 International zone Turkey:.com.net.biz.info.org.name.tel.mobi.asia -$50 \r\n.tr 317690 websites Turkey – $80 \r\n.trade 151130 websites – $50 \r\n.trading 896 websites – $50 \r\n.training 18192 websites – $50 \r\n.travel 18054 websites – $50 \r\n.tt 516 websites – $50 \r\n.tube 2104 websites – $50 \r\n.tv 559502 websites Tuvalu – $80 \r\n.tw 243062 websites Taiwan – $50 \r\n.tz 1874 websites – $50 \r\n.ua 117701 websites International zone Ukraine:.com.net.biz.info.org.name.tel.mobi.asia-$50 \r\n.ua 553216 websites Ukraina – $80 \r\n.ug 2331 websites Ukraina \r\n.uk 3304606 websites International zone United Kingdom:.com.net.biz.info.org.name.tel.mobi.asia-$150 \r\n.uk 5496382 websites United Kingdom – $250 \r\n.university 5799 websites – $50 \r\n.uno 16394 websites – $50 \r\n.us 3139563 websites USA – $200 \r\n.us 578927 websites International zone USA:.com.net.biz.info.org.name.tel.mobi.asia-$80 \r\n.uy 14683 websites Uruguay – $50 \r\n.uz 365 websites International zone Uzbekistan:.com.net.biz.info.org.name.tel.mobi.asia \r\n.uz 14689 websites Uzbekistan – $50 \r\n.vacations 3926 websites – $50 \r\n.vc 16606 websites – $50 \r\n.ve 14015 websites Venezuela – $50 \r\n.vegas 18008 websites Las Vegas NV United States of America – $50 \r\n.ventures 10066 websites – $50 \r\n.versicherung 2009 websites – $50 \r\n.vet 5760 websites – $50 \r\n.vg 8389 site – $50 \r\n.viajes 2512 site – $50 \r\n.video 16204 websites- $50 \r\n.villas 1940 site – $50 \r\n.vin 5094 websites – $50 \r\n.vip 755289 websites – $80 \r\n.vision 6420 websites – $50 \r\n.vlaanderen 6114 websites – $50 \r\n.vn 161855 websites International zone Vietnam:.com.net.biz.info.org.name.tel.mobi.asia – $50 \r\n.vn 436005 websites Vietnam – $80 \r\n.vodka 1420 websites – $50 \r\n.vote 2316 websites – $50 \r\n.voto 269 websites – $50 \r\n.voyage 2773 websites – $50 \r\n.vu 1201 websites – $50 \r\n.wales 13063 websites – $50 \r\n.wang 604718 websites – $80 \r\n.watch 6120 websites – $50 \r\n.webcam 60142 websites – $50 \r\n.website 207002 websites -$50 \r\n.wedding 22162 websites – $50 \r\n.wf 1188 websites – $50 \r\n.wien 14464 websites – $50 \r\n.wien 14913 websites – $50 \r\n.wiki 14129 websites wikis – $50 \r\n.win 655735 websites – $80 \r\n.wine 13095 websites – $50 \r\n.work 256086 websites – $80 \r\n.works 15112 websites – $50 \r\n.world 86012 websites – $50 \r\n.ws 97008 websites Samoa- $80 \r\n.wtf 10038 websites – $50 \r\n.xin 178450 websites – $50 \r\n.xn--3ds443g 44019 websites – $50 \r\n.xn--55qx5d 47456 websites – $50 \r\n.xn--6qq986b3xl 18188 websites – $50 \r\n.xn--czr694b 21109 websites – $50 \r\n.xn--czru2d 9020 websites – $50 \r\n.xn--fiq228c5hs 12145 websites – $50 \r\n.xn--io0a7i 30199 websites – $50 \r\n.xn--j6w193g 31764 websites – $50 \r\n.xn--kput3i 31856 websites – $50 \r\n.xn--mgbaam7a8h 2038 websites – $50 \r\n.xn--mgberp4a5d4ar 2534 websites – $50 \r\n.xn--mk1bu44c 6001 websites – $50 \r\n.xn--rhqv96g 7723 websites – $50 \r\n.xn--ses554g 198539 websites – $80 \r\n.xn--tckwe 6197 websites – $50 \r\n.xn--vuq861b 19706 websites – $50 \r\n.xxx 119879 websites- $50 \r\n.xyz 1888763 websites – $150 \r\n.yachts 154 websites – $50 \r\n.yoga 7963 websites – $50 \r\n.yokohama 8140 websites – $50 \r\n.yt 2004 websites – $50 \r\n.za 837189 websites South Africa – $100 \r\n.zm 224 websites – $50 \r\n.zone 25798 websites – $50 \r\n.?? (.xn--90ae) 2470 websites – $50 \r\n.???? 169 websites – $50 \r\n.?????? (.xn--80adxhks) 19582 websites Moscow – $50 \r\n.?????? 3403 websites – $50 \r\n.??? 1160 websites – $50 \r\n.??? (.xn--p1acf) 110789 websites – $50 \r\n.?? (.xn--p1ai) 869759 websites Russia – $80 \r\n.???? 1146 websites – $50 \r\n.??? (.xn--j1amh) 10563 websites- $50 \r\n.????? 105  sites – $50 \r\n&gt;.??? 166  sites – $50 \r\n.??    6532  sites – $50 \r\n.??    4171  sites – $50 \r\n.??    46161  sites – $50 \r\n.??    6 907  sites – $50 \r\n.??    9865  sites – $50 \r\n.??? 15465  sites – $50 \r\n.??    31543  sites – $50 \r\n.??    243  sites – $50 \r\n.??    187  sites – $50 \r\n.??    3277  sites – $50 \r\n.??    3711  sites – $50 \r\n.??    30808  sites – $50 \r\n.??    5937  sites – $50 \r\n.?????  sites 648 – $50 \r\n.????   sites 833 – $50 \r\n.????   sites 478 – $50', '2020-03-08 09:12:17', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Biografi', '2016-09-06 05:49:04'),
(2, 'Teknologi', '2016-09-06 05:50:01'),
(3, 'Tips and Triks', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_web` varchar(100) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` int(2) DEFAULT 0,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pekerjaan`
--

CREATE TABLE `tbl_pekerjaan` (
  `pekerjaan_id` int(11) NOT NULL,
  `pekerjaan_title` varchar(200) NOT NULL,
  `pekerjaan_deskripsi` text NOT NULL,
  `pekerjaan_gambar` varchar(40) NOT NULL,
  `pekerjaan_tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pekerjaan_views` int(11) NOT NULL,
  `pekerjaan_slug` varchar(250) NOT NULL,
  `pekerjaan_img_slider` varchar(2) NOT NULL,
  `pekerjaan_pengguna_id` int(11) NOT NULL,
  `pekerjaan_rating` int(11) NOT NULL,
  `tulisan_kategori_id` int(11) NOT NULL,
  `tulisan_author` varchar(40) NOT NULL,
  `tulisan_kategori_nama` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(2, 'administrator', NULL, 'L', 'admin', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'faqih@bahasakita.co.id', '087783942616', NULL, NULL, NULL, NULL, 1, '1', '2020-01-26 12:14:35', 'eee42c27b4fbc0a03f47cd130e4f6bf7.png'),
(3, 'faqih sopyan', NULL, 'L', 'faqih', '06ea70e0f3748d147a589777f31e672e', NULL, 'faqih@bahasakita.co.id', '087783942616', NULL, NULL, NULL, NULL, 1, '2', '2020-03-03 04:04:11', 'eec09ac9854673e52c6e4ce01c78d61e.jpg'),
(4, 'Dewi Noviastuti', NULL, 'P', 'dewicantik', '6033f2d6a594dee803ef0084ca88cf73', NULL, 'dewi@bahasakita.co.id', '089513475485', NULL, NULL, NULL, NULL, 1, '1', '2020-03-04 05:05:39', '86e1425eba9663cfdb3c7361dba70fd6.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(951, '2020-02-03 08:21:27', '::1', 'Chrome'),
(952, '2020-02-06 08:16:26', '::1', 'Chrome'),
(953, '2020-02-10 04:06:30', '::1', 'Chrome'),
(954, '2020-02-12 09:31:05', '::1', 'Chrome'),
(955, '2020-02-13 04:17:52', '::1', 'Chrome'),
(956, '2020-02-13 09:59:04', '10.226.174.81', 'Firefox'),
(957, '2020-02-14 03:00:01', '::1', 'Chrome'),
(958, '2020-02-18 07:47:55', '::1', 'Chrome'),
(959, '2020-02-19 02:25:48', '::1', 'Chrome'),
(960, '2020-02-20 02:22:09', '::1', 'Chrome'),
(961, '2020-02-20 02:23:19', '10.226.174.40', 'Chrome'),
(962, '2020-02-21 03:18:16', '10.226.174.229', 'Chrome'),
(963, '2020-02-21 03:20:32', '10.226.174.40', 'Chrome'),
(964, '2020-02-21 03:21:03', '::1', 'Chrome'),
(965, '2020-02-23 04:21:50', '::1', 'Spartan'),
(966, '2020-02-24 02:20:47', '10.226.174.40', 'Chrome'),
(967, '2020-02-24 02:41:36', '10.226.174.203', 'Chrome'),
(968, '2020-02-24 04:15:43', '10.226.174.126', 'Chrome'),
(969, '2020-02-24 06:20:51', '10.226.174.81', 'Firefox'),
(970, '2020-02-24 07:22:13', '10.226.174.68', 'Chrome'),
(971, '2020-02-24 08:47:47', '10.226.174.153', 'Firefox'),
(972, '2020-02-25 03:05:42', '10.226.174.203', 'Chrome'),
(973, '2020-02-25 03:10:40', '10.226.174.40', 'Chrome'),
(974, '2020-02-25 03:26:48', '10.226.174.120', 'Chrome'),
(975, '2020-02-25 03:45:38', '10.226.174.147', 'Chrome'),
(976, '2020-02-25 05:37:09', '10.226.174.153', 'Firefox'),
(977, '2020-02-25 09:40:55', '::1', 'Chrome'),
(978, '2020-02-25 10:08:20', '10.226.174.81', 'Safari'),
(979, '2020-02-26 03:57:38', '10.226.174.40', 'Chrome'),
(980, '2020-02-26 04:42:52', '10.226.174.203', 'Chrome'),
(981, '2020-02-26 06:36:57', '::1', 'Chrome'),
(982, '2020-02-26 06:54:37', '10.226.174.147', 'Chrome'),
(983, '2020-02-26 09:24:11', '10.226.174.120', 'Chrome'),
(984, '2020-02-26 09:47:03', '10.226.174.81', 'Firefox'),
(985, '2020-02-26 10:54:34', '10.226.174.68', 'Chrome'),
(986, '2020-02-27 01:24:25', '::1', 'Chrome'),
(987, '2020-02-27 01:36:58', '10.226.174.40', 'Chrome'),
(988, '2020-02-27 02:12:10', '10.226.174.68', 'Chrome'),
(989, '2020-02-27 02:43:41', '10.226.174.147', 'Chrome'),
(990, '2020-02-27 04:11:08', '10.226.174.153', 'Firefox'),
(991, '2020-02-27 08:11:50', '10.226.174.203', 'Chrome'),
(992, '2020-02-28 00:52:04', '140.213.14.176', 'Chrome'),
(993, '2020-02-28 02:01:03', '125.166.153.245', 'Firefox'),
(994, '2020-02-28 02:02:37', '64.233.173.100', 'Chrome'),
(995, '2020-02-28 02:12:01', '103.119.141.243', 'Opera'),
(996, '2020-02-28 02:31:24', '114.124.206.24', 'Safari'),
(997, '2020-02-28 02:31:41', '140.213.128.219', 'Chrome'),
(998, '2020-02-28 02:31:57', '114.124.228.169', 'Safari'),
(999, '2020-02-28 02:55:55', '188.40.131.176', 'Chrome'),
(1000, '2020-02-28 03:08:39', '125.166.101.12', 'Chrome'),
(1001, '2020-02-28 03:18:33', '134.249.141.83', 'Chrome'),
(1002, '2020-02-28 03:23:07', '112.215.45.41', 'Firefox'),
(1003, '2020-02-28 03:35:30', '2a03:2880:ff:24::face:b00c', 'Other'),
(1004, '2020-02-28 03:35:30', '2a03:2880:ff:32::face:b00c', 'Other'),
(1005, '2020-02-28 03:35:30', '2a03:2880:ff:18::face:b00c', 'Other'),
(1006, '2020-02-28 03:35:30', '2a03:2880:ff:18::face:b00c', 'Other'),
(1007, '2020-02-28 03:35:30', '2a03:2880:ff:32::face:b00c', 'Other'),
(1008, '2020-02-28 03:35:30', '2a03:2880:ff:32::face:b00c', 'Other'),
(1009, '2020-02-28 03:35:30', '2a03:2880:ff:33::face:b00c', 'Other'),
(1010, '2020-02-28 03:35:30', '2a03:2880:ff:f::face:b00c', 'Other'),
(1011, '2020-02-28 03:35:30', '2a03:2880:ff:15::face:b00c', 'Other'),
(1012, '2020-02-28 03:39:17', '103.217.167.215', 'Chrome'),
(1013, '2020-02-28 04:00:11', '110.138.125.40', 'Chrome'),
(1014, '2020-02-28 04:00:19', '180.244.1.191', 'Chrome'),
(1015, '2020-02-28 04:21:48', '118.99.103.170', 'Chrome'),
(1016, '2020-02-28 04:33:08', '140.213.132.124', 'Chrome'),
(1017, '2020-02-28 05:29:32', '181.214.179.11', 'Firefox'),
(1018, '2020-02-28 05:32:24', '45.40.121.78', 'Safari'),
(1019, '2020-02-28 05:36:00', '191.96.86.47', 'Chrome'),
(1020, '2020-02-28 06:15:29', '38.145.87.17', 'Safari'),
(1021, '2020-02-28 06:31:31', '115.124.71.182', 'Chrome'),
(1022, '2020-02-28 07:23:35', '36.69.238.225', 'Chrome'),
(1023, '2020-02-28 08:20:43', '207.46.13.129', 'Bing'),
(1024, '2020-02-28 08:36:01', '3.0.163.208', 'Chrome'),
(1025, '2020-02-28 08:36:01', '202.3.214.148', 'Chrome'),
(1026, '2020-02-28 08:36:02', '52.64.156.81', 'Chrome'),
(1027, '2020-02-28 08:36:03', '202.3.214.132', 'Chrome'),
(1028, '2020-02-28 08:37:00', '141.0.9.233', 'Opera'),
(1029, '2020-02-28 09:02:28', '114.142.172.13', 'Opera'),
(1030, '2020-02-28 09:08:59', '112.215.151.52', 'Chrome'),
(1031, '2020-02-28 09:30:21', '2a03:2880:ff:d::face:b00c', 'Other'),
(1032, '2020-02-28 09:30:21', '2a03:2880:ff:2b::face:b00c', 'Other'),
(1033, '2020-02-28 09:31:28', '111.68.117.198', 'Chrome'),
(1034, '2020-02-28 09:41:46', '125.162.202.52', 'Chrome'),
(1035, '2020-02-28 09:41:53', '202.91.11.174', 'Chrome'),
(1036, '2020-02-28 09:49:27', '64.246.165.210', 'Firefox'),
(1037, '2020-02-28 09:53:08', '36.70.229.230', 'Chrome'),
(1038, '2020-02-28 10:19:34', '103.23.243.5', 'Chrome'),
(1039, '2020-02-28 10:21:53', '40.77.167.162', 'Bing'),
(1040, '2020-02-28 10:26:30', '40.77.167.150', 'Bing'),
(1041, '2020-02-28 10:26:34', '40.77.167.223', 'Bing'),
(1042, '2020-02-28 10:26:39', '40.77.167.199', 'Bing'),
(1043, '2020-02-28 10:26:49', '40.77.167.19', 'MSNBot'),
(1044, '2020-02-28 10:27:09', '13.56.79.57', 'Chrome'),
(1045, '2020-02-28 10:42:40', '207.46.13.125', 'MSNBot'),
(1046, '2020-02-28 10:42:52', '207.46.13.4', 'MSNBot'),
(1047, '2020-02-28 10:51:10', '130.203.136.75', 'Firefox'),
(1048, '2020-02-28 11:20:25', '140.213.43.42', 'Other'),
(1049, '2020-02-28 12:19:54', '114.125.228.122', 'Chrome'),
(1050, '2020-02-28 13:08:20', '108.178.61.58', 'Chrome'),
(1051, '2020-02-28 13:35:29', '140.213.135.243', 'Chrome'),
(1052, '2020-02-28 14:32:46', '139.194.23.73', 'Chrome'),
(1053, '2020-02-28 15:09:11', '162.210.196.129', 'Majestic-12'),
(1054, '2020-02-28 15:51:40', '66.249.70.35', 'Googlebot'),
(1055, '2020-02-28 16:00:48', '3.12.84.203', 'Chrome'),
(1056, '2020-02-28 16:14:43', '66.249.71.82', 'Googlebot'),
(1057, '2020-02-28 16:21:08', '103.10.66.30', 'Chrome'),
(1058, '2020-02-28 18:01:39', '66.249.71.108', 'Googlebot'),
(1059, '2020-02-28 18:01:53', '66.249.71.77', 'Googlebot'),
(1060, '2020-02-28 20:15:49', '34.221.133.141', 'Other'),
(1061, '2020-02-28 21:45:39', '216.244.66.231', 'Mozilla'),
(1062, '2020-02-28 22:02:15', '3.218.145.48', 'Other'),
(1063, '2020-02-28 22:04:51', '207.46.13.129', 'Bing'),
(1064, '2020-02-28 22:10:27', '63.141.231.10', 'Majestic-12'),
(1065, '2020-02-28 22:23:45', '34.236.37.73', 'Other'),
(1066, '2020-02-28 23:57:58', '2a02:c207:2022:5436::1', 'Chrome'),
(1067, '2020-02-29 00:18:30', '180.248.123.69', 'Chrome'),
(1068, '2020-02-29 00:19:24', '50.16.241.114', 'Mozilla'),
(1069, '2020-02-29 01:54:37', '216.151.20.198', 'Mozilla'),
(1070, '2020-02-29 02:03:58', '114.5.208.127', 'Chrome'),
(1071, '2020-02-29 02:29:49', '40.77.167.71', 'Bing'),
(1072, '2020-02-29 03:03:25', '2a03:2880:10ff:10::face:b00c', 'Other'),
(1073, '2020-02-29 03:03:25', '2a03:2880:10ff:6::face:b00c', 'Other'),
(1074, '2020-02-29 03:03:25', '2a03:2880:10ff:4::face:b00c', 'Other'),
(1075, '2020-02-29 03:47:37', '64.233.173.168', 'Chrome'),
(1076, '2020-02-29 03:57:42', '82.193.102.149', 'Majestic-12'),
(1077, '2020-02-29 04:56:10', '2a03:2880:10ff:24::face:b00c', 'Other'),
(1078, '2020-02-29 04:56:10', '2a03:2880:10ff:b::face:b00c', 'Other'),
(1079, '2020-02-29 04:56:13', '2a03:2880:10ff:13::face:b00c', 'Other'),
(1080, '2020-02-29 04:56:17', '2607:5300:120:363::1', 'Majestic-12'),
(1081, '2020-02-29 06:01:23', '182.253.20.186', 'Chrome'),
(1082, '2020-02-29 06:17:55', '54.36.150.17', 'Mozilla'),
(1083, '2020-02-29 07:45:28', '103.129.105.30', 'Chrome'),
(1084, '2020-02-29 08:55:02', '120.188.95.34', 'Chrome'),
(1085, '2020-02-29 08:58:32', '207.46.13.102', 'Bing'),
(1086, '2020-02-29 11:06:45', '66.249.71.52', 'Googlebot'),
(1087, '2020-02-29 11:11:41', '66.249.71.39', 'Googlebot'),
(1088, '2020-02-29 11:11:55', '103.78.114.46', 'Chrome'),
(1089, '2020-02-29 11:46:42', '66.249.71.45', 'Googlebot'),
(1090, '2020-02-29 12:20:49', '66.249.71.133', 'Googlebot'),
(1091, '2020-02-29 12:23:18', '103.213.131.57', 'Opera'),
(1092, '2020-02-29 13:05:13', '180.244.11.6', 'Firefox'),
(1093, '2020-02-29 14:12:51', '13.66.139.0', 'Bing'),
(1094, '2020-02-29 14:27:21', '182.0.239.3', 'Safari'),
(1095, '2020-02-29 14:46:46', '66.249.71.44', 'Googlebot'),
(1096, '2020-02-29 15:47:07', '66.249.71.41', 'Googlebot'),
(1097, '2020-02-29 16:31:33', '2a03:2880:ff::face:b00c', 'Other'),
(1098, '2020-02-29 16:38:11', '202.67.42.21', 'Chrome'),
(1099, '2020-02-29 16:40:25', '66.249.71.35', 'Googlebot'),
(1100, '2020-02-29 16:44:29', '182.0.176.166', 'Safari'),
(1101, '2020-02-29 17:18:22', '104.236.12.253', 'Internet Explorer'),
(1102, '2020-02-29 17:19:45', '157.245.163.233', 'Other'),
(1103, '2020-02-29 17:41:14', '66.249.71.40', 'Googlebot'),
(1104, '2020-02-29 17:53:15', '54.183.194.112', 'Other'),
(1105, '2020-02-29 18:01:07', '199.58.86.209', 'Majestic-12'),
(1106, '2020-02-29 18:36:13', '5.1.74.30', 'Chrome'),
(1107, '2020-02-29 21:46:43', '66.249.71.35', 'Googlebot'),
(1108, '2020-02-29 21:58:46', '139.194.122.66', 'Chrome'),
(1109, '2020-02-29 22:48:14', '66.249.71.44', 'Googlebot'),
(1110, '2020-02-29 23:17:30', '66.249.71.41', 'Googlebot'),
(1111, '2020-02-29 23:20:36', '207.46.13.129', 'Bing'),
(1112, '2020-02-29 23:58:06', '66.249.71.45', 'Googlebot'),
(1113, '2020-03-01 00:05:11', '216.244.66.231', 'Mozilla'),
(1114, '2020-03-01 00:31:07', '2a03:2880:ff:e::face:b00c', 'Other'),
(1115, '2020-03-01 00:31:07', '2a03:2880:ff::face:b00c', 'Other'),
(1116, '2020-03-01 00:31:07', '2a03:2880:ff:f::face:b00c', 'Other'),
(1117, '2020-03-01 01:23:49', '209.95.171.234', 'Chrome'),
(1118, '2020-03-01 03:51:05', '66.249.71.39', 'Googlebot'),
(1119, '2020-03-01 05:51:38', '54.36.148.136', 'Mozilla'),
(1120, '2020-03-01 06:00:28', '103.129.105.31', 'Chrome'),
(1121, '2020-03-01 06:39:18', '176.32.32.145', 'Chrome'),
(1122, '2020-03-01 07:15:28', '142.93.87.106', 'Chrome'),
(1123, '2020-03-01 07:15:28', '142.93.87.106', 'Chrome'),
(1124, '2020-03-01 07:38:21', '54.36.148.176', 'Mozilla'),
(1125, '2020-03-01 08:27:48', '114.5.212.145', 'Chrome'),
(1126, '2020-03-01 09:35:40', '118.151.221.46', 'Chrome'),
(1127, '2020-03-01 09:40:49', '40.77.167.25', 'Bing'),
(1128, '2020-03-01 09:43:43', '178.137.88.65', 'Chrome'),
(1129, '2020-03-01 10:05:10', '36.71.213.8', 'Safari'),
(1130, '2020-03-01 10:20:55', '2a03:2880:ff:23::face:b00c', 'Other'),
(1131, '2020-03-01 10:20:55', '2a03:2880:ff:21::face:b00c', 'Other'),
(1132, '2020-03-01 10:20:55', '2a03:2880:ff:10::face:b00c', 'Other'),
(1133, '2020-03-01 11:18:30', '34.207.75.201', 'Chrome'),
(1134, '2020-03-01 11:41:31', '66.249.71.18', 'Googlebot'),
(1135, '2020-03-01 11:41:32', '66.249.71.16', 'Googlebot'),
(1136, '2020-03-01 11:41:32', '66.249.71.17', 'Googlebot'),
(1137, '2020-03-01 12:45:28', '182.1.3.207', 'Chrome'),
(1138, '2020-03-01 12:46:09', '114.125.13.247', 'Chrome'),
(1139, '2020-03-01 12:54:09', '202.80.215.167', 'Chrome'),
(1140, '2020-03-01 13:57:57', '3.229.212.218', 'Chrome'),
(1141, '2020-03-01 14:13:05', '13.66.139.0', 'Bing'),
(1142, '2020-03-01 14:23:19', '139.192.105.236', 'Chrome'),
(1143, '2020-03-01 14:36:12', '36.77.92.249', 'Chrome'),
(1144, '2020-03-01 15:12:54', '180.249.241.113', 'Firefox'),
(1145, '2020-03-01 15:45:06', '64.233.172.12', 'Chrome'),
(1146, '2020-03-01 16:01:30', '103.70.68.194', 'Chrome'),
(1147, '2020-03-01 16:27:34', '114.125.81.96', 'Chrome'),
(1148, '2020-03-01 16:28:18', '182.1.88.159', 'Chrome'),
(1149, '2020-03-01 16:30:10', '40.77.167.16', 'Bing'),
(1150, '2020-03-01 16:30:11', '37.120.156.23', 'Chrome'),
(1151, '2020-03-01 18:02:27', '108.59.8.80', 'Majestic-12'),
(1152, '2020-03-01 18:12:44', '167.71.212.177', 'Chrome'),
(1153, '2020-03-01 18:45:29', '51.15.109.255', 'Chrome'),
(1154, '2020-03-01 18:51:26', '45.76.138.171', 'Firefox'),
(1155, '2020-03-01 19:08:03', '54.37.244.187', 'Chrome'),
(1156, '2020-03-01 19:08:03', '54.37.244.187', 'Chrome'),
(1157, '2020-03-01 19:58:14', '40.77.167.195', 'Bing'),
(1158, '2020-03-01 21:58:52', '54.36.150.158', 'Mozilla'),
(1159, '2020-03-01 22:01:39', '40.77.167.16', 'Bing'),
(1160, '2020-03-01 22:12:39', '114.5.242.163', 'Chrome'),
(1161, '2020-03-01 22:48:22', '223.255.229.24', 'Chrome'),
(1162, '2020-03-01 23:37:36', '2a03:2880:ff:1d::face:b00c', 'Other'),
(1163, '2020-03-01 23:37:36', '2a03:2880:ff:1d::face:b00c', 'Other'),
(1164, '2020-03-01 23:37:36', '2a03:2880:ff:16::face:b00c', 'Other'),
(1165, '2020-03-01 23:37:36', '2a03:2880:ff:13::face:b00c', 'Other'),
(1166, '2020-03-01 23:37:37', '2a03:2880:ff:d::face:b00c', 'Other'),
(1167, '2020-03-02 00:53:28', '203.130.226.243', 'Chrome'),
(1168, '2020-03-02 01:17:46', '182.0.214.174', 'Chrome'),
(1169, '2020-03-02 01:20:16', '36.83.200.219', 'Chrome'),
(1170, '2020-03-02 01:51:33', '3.0.163.208', 'Chrome'),
(1171, '2020-03-02 01:51:33', '202.3.214.148', 'Chrome'),
(1172, '2020-03-02 01:51:33', '52.64.156.81', 'Chrome'),
(1173, '2020-03-02 02:32:55', '120.188.95.115', 'Chrome'),
(1174, '2020-03-02 02:53:59', '202.179.187.226', 'Chrome'),
(1175, '2020-03-02 02:54:34', '139.255.91.146', 'Chrome'),
(1176, '2020-03-02 02:55:04', '117.54.140.18', 'Chrome'),
(1177, '2020-03-02 03:11:27', '36.70.96.68', 'Chrome'),
(1178, '2020-03-02 03:17:40', '174.138.41.66', 'Chrome'),
(1179, '2020-03-02 03:29:48', '165.225.112.83', 'Chrome'),
(1180, '2020-03-02 04:20:56', '114.124.161.160', 'Firefox'),
(1181, '2020-03-02 04:22:26', '114.124.177.111', 'Firefox'),
(1182, '2020-03-02 04:24:01', '173.249.2.13', 'Majestic-12'),
(1183, '2020-03-02 05:09:11', '66.249.71.35', 'Googlebot'),
(1184, '2020-03-02 05:10:02', '182.0.180.159', 'Chrome'),
(1185, '2020-03-02 05:46:06', '114.124.147.192', 'Safari'),
(1186, '2020-03-02 05:46:11', '182.0.229.104', 'Chrome'),
(1187, '2020-03-02 05:46:22', '182.0.235.195', 'Chrome'),
(1188, '2020-03-02 05:52:34', '182.0.176.88', 'Safari'),
(1189, '2020-03-02 07:08:27', '139.0.253.143', 'Chrome'),
(1190, '2020-03-02 07:23:56', '103.16.223.12', 'Chrome'),
(1191, '2020-03-02 07:47:42', '66.249.71.50', 'Googlebot'),
(1192, '2020-03-02 07:52:52', '13.66.139.0', 'Bing'),
(1193, '2020-03-02 07:58:14', '103.129.105.28', 'Chrome'),
(1194, '2020-03-02 08:48:46', '103.119.141.14', 'Chrome'),
(1195, '2020-03-02 09:31:46', '182.253.232.132', 'Chrome'),
(1196, '2020-03-02 10:24:09', '2a03:2880:21ff:12::face:b00c', 'Other'),
(1197, '2020-03-02 10:50:36', '46.229.168.163', 'Mozilla'),
(1198, '2020-03-02 10:58:00', '103.105.69.249', 'Chrome'),
(1199, '2020-03-02 11:18:18', '140.213.130.120', 'Chrome'),
(1200, '2020-03-02 11:43:12', '182.0.206.114', 'Chrome'),
(1201, '2020-03-02 11:47:30', '2a03:2880:10ff:13::face:b00c', 'Other'),
(1202, '2020-03-02 11:47:30', '2a03:2880:10ff:e::face:b00c', 'Other'),
(1203, '2020-03-02 11:47:30', '2a03:2880:10ff:20::face:b00c', 'Other'),
(1204, '2020-03-02 12:06:22', '207.46.13.149', 'Bing'),
(1205, '2020-03-02 12:52:35', '66.249.71.135', 'Googlebot'),
(1206, '2020-03-02 13:45:00', '66.249.64.109', 'Googlebot'),
(1207, '2020-03-02 13:57:14', '66.249.71.120', 'Googlebot'),
(1208, '2020-03-02 14:52:51', '207.46.13.225', 'Bing'),
(1209, '2020-03-02 14:56:16', '66.102.6.216', 'Chrome'),
(1210, '2020-03-02 15:12:05', '13.59.17.208', 'Chrome'),
(1211, '2020-03-02 17:20:50', '54.36.148.97', 'Mozilla'),
(1212, '2020-03-02 18:43:06', '2a03:b0c0:2:f0::be:7001', 'Chrome'),
(1213, '2020-03-02 18:51:35', '18.236.80.221', 'Chrome'),
(1214, '2020-03-02 19:31:00', '207.46.13.225', 'Bing'),
(1215, '2020-03-02 20:02:54', '216.244.66.231', 'Mozilla'),
(1216, '2020-03-02 20:25:39', '66.249.71.121', 'Googlebot'),
(1217, '2020-03-02 21:06:04', '17.58.96.248', 'Safari'),
(1218, '2020-03-02 21:30:21', '199.58.86.211', 'Majestic-12'),
(1219, '2020-03-02 21:39:28', '36.68.79.191', 'Firefox'),
(1220, '2020-03-02 22:15:36', '103.129.105.28', 'Chrome'),
(1221, '2020-03-02 23:15:14', '36.57.76.53', 'Safari'),
(1222, '2020-03-02 23:36:53', '107.21.1.8', 'Mozilla'),
(1223, '2020-03-02 23:36:53', '54.208.102.37', 'Mozilla'),
(1224, '2020-03-02 23:36:54', '36.77.94.190', 'Firefox'),
(1225, '2020-03-03 00:00:23', '141.8.188.19', 'YandexBot'),
(1226, '2020-03-03 00:00:23', '5.255.253.33', 'YandexBot'),
(1227, '2020-03-03 00:34:30', '207.46.13.149', 'Bing'),
(1228, '2020-03-03 00:51:46', '61.138.222.31', 'Chrome'),
(1229, '2020-03-03 01:25:50', '5.45.207.33', 'YandexBot'),
(1230, '2020-03-03 01:26:27', '101.86.58.14', 'Safari'),
(1231, '2020-03-03 02:25:43', '2405:6580:120:5200:5cb7:a85b:2894:9c90', 'Chrome'),
(1232, '2020-03-03 02:29:09', '2a01:4f8:190:4449::2', 'Majestic-12'),
(1233, '2020-03-03 03:00:55', '114.124.212.236', 'Chrome'),
(1234, '2020-03-03 03:01:15', '114.124.234.124', 'Chrome'),
(1235, '2020-03-03 03:23:39', '120.188.72.70', 'Chrome'),
(1236, '2020-03-03 03:27:06', '118.137.86.35', 'Chrome'),
(1237, '2020-03-03 03:38:35', '3.0.163.208', 'Internet Explorer'),
(1238, '2020-03-03 03:38:35', '112.78.187.130', 'Chrome'),
(1239, '2020-03-03 03:40:46', '222.165.217.242', 'Chrome'),
(1240, '2020-03-03 04:33:31', '207.46.13.71', 'Bing'),
(1241, '2020-03-03 04:51:04', '114.5.219.12', 'Chrome'),
(1242, '2020-03-03 05:16:26', '140.213.12.68', 'Chrome'),
(1243, '2020-03-03 06:06:48', '125.160.138.163', 'Chrome'),
(1244, '2020-03-03 06:10:44', '180.254.21.38', 'Chrome'),
(1245, '2020-03-03 06:35:35', '36.83.200.219', 'Chrome'),
(1246, '2020-03-03 06:59:53', '124.158.149.50', 'Chrome'),
(1247, '2020-03-03 07:01:06', '103.87.155.99', 'Chrome'),
(1248, '2020-03-03 07:40:06', '125.163.223.204', 'Chrome'),
(1249, '2020-03-03 07:47:58', '66.249.71.73', 'Googlebot'),
(1250, '2020-03-03 07:48:29', '43.252.138.171', 'Other'),
(1251, '2020-03-03 07:50:12', '103.105.66.226', 'Chrome'),
(1252, '2020-03-03 08:03:46', '182.253.229.31', 'Chrome'),
(1253, '2020-03-03 08:11:35', '103.29.150.92', 'Chrome'),
(1254, '2020-03-03 08:36:45', '199.16.157.182', 'Other'),
(1255, '2020-03-03 08:39:13', '125.160.112.83', 'Safari'),
(1256, '2020-03-03 08:45:54', '103.83.94.102', 'Chrome'),
(1257, '2020-03-03 08:46:16', '182.253.229.47', 'Chrome'),
(1258, '2020-03-03 08:51:33', '170.251.208.189', 'Chrome'),
(1259, '2020-03-03 09:09:31', '66.249.71.122', 'Googlebot'),
(1260, '2020-03-03 09:47:18', '66.249.71.82', 'Googlebot'),
(1261, '2020-03-03 09:52:34', '125.160.112.66', 'Safari'),
(1262, '2020-03-03 09:52:35', '125.161.136.220', 'Chrome'),
(1263, '2020-03-03 10:21:56', '66.102.6.218', 'Chrome'),
(1264, '2020-03-03 10:39:50', '202.94.83.196', 'Firefox'),
(1265, '2020-03-03 11:50:35', '103.129.105.31', 'Firefox'),
(1266, '2020-03-03 12:04:04', '112.215.238.98', 'Chrome'),
(1267, '2020-03-03 12:29:49', '2a03:2880:11ff:25::face:b00c', 'Other'),
(1268, '2020-03-03 12:29:51', '2a03:2880:11ff:16::face:b00c', 'Other'),
(1269, '2020-03-03 13:45:25', '115.178.223.78', 'Chrome'),
(1270, '2020-03-03 15:22:35', '3.15.172.95', 'Chrome'),
(1271, '2020-03-03 15:29:33', '66.102.6.215', 'Chrome'),
(1272, '2020-03-03 15:29:33', '66.102.6.213', 'Chrome'),
(1273, '2020-03-03 15:52:25', '66.249.71.112', 'Googlebot'),
(1274, '2020-03-03 16:16:37', '13.66.139.0', 'Bing'),
(1275, '2020-03-03 20:48:59', '66.249.71.112', 'Googlebot'),
(1276, '2020-03-03 21:23:52', '66.249.71.121', 'Googlebot'),
(1277, '2020-03-03 21:40:51', '216.244.66.231', 'Mozilla'),
(1278, '2020-03-03 22:40:18', '52.90.205.103', 'Other'),
(1279, '2020-03-03 22:46:54', '54.197.19.192', 'Other'),
(1280, '2020-03-03 23:00:14', '139.194.88.167', 'Chrome'),
(1281, '2020-03-03 23:10:16', '66.249.71.120', 'Googlebot'),
(1282, '2020-03-03 23:22:47', '216.151.20.198', 'Mozilla'),
(1283, '2020-03-03 23:27:01', '66.249.71.122', 'Googlebot'),
(1284, '2020-03-03 23:40:53', '162.210.196.100', 'Majestic-12'),
(1285, '2020-03-03 23:49:38', '207.46.13.225', 'Bing'),
(1286, '2020-03-03 23:52:53', '182.0.198.131', 'Chrome'),
(1287, '2020-03-04 01:23:53', '223.25.76.133', 'Chrome'),
(1288, '2020-03-04 01:49:56', '115.178.206.191', 'Chrome'),
(1289, '2020-03-04 01:50:52', '114.5.247.32', 'Chrome'),
(1290, '2020-03-04 02:49:20', '110.138.151.25', 'Chrome'),
(1291, '2020-03-04 03:27:43', '114.124.174.201', 'Chrome'),
(1292, '2020-03-04 03:35:54', '36.83.200.219', 'Chrome'),
(1293, '2020-03-04 03:44:47', '182.0.246.59', 'Chrome'),
(1294, '2020-03-04 04:13:00', '13.66.139.0', 'MSNBot'),
(1295, '2020-03-04 04:16:27', '3.0.163.208', 'Internet Explorer'),
(1296, '2020-03-04 04:16:28', '112.78.187.130', 'Chrome'),
(1297, '2020-03-04 04:22:09', '125.160.114.19', 'Chrome'),
(1298, '2020-03-04 04:24:40', '36.82.107.6', 'Firefox'),
(1299, '2020-03-04 04:31:43', '40.77.167.116', 'Bing'),
(1300, '2020-03-04 05:41:39', '103.3.221.62', 'Chrome'),
(1301, '2020-03-04 05:47:39', '116.206.29.69', 'Chrome'),
(1302, '2020-03-04 05:47:39', '54.208.102.37', 'Mozilla'),
(1303, '2020-03-04 05:47:39', '107.21.1.8', 'Mozilla'),
(1304, '2020-03-04 05:48:17', '152.118.231.230', 'Safari'),
(1305, '2020-03-04 05:48:59', '114.124.148.41', 'Chrome'),
(1306, '2020-03-04 06:13:05', '66.102.6.218', 'Chrome'),
(1307, '2020-03-04 06:34:40', '110.138.149.155', 'Chrome'),
(1308, '2020-03-04 06:39:15', '103.122.202.20', 'Chrome'),
(1309, '2020-03-04 06:47:46', '114.124.149.169', 'Chrome'),
(1310, '2020-03-04 06:49:03', '2a03:2880:10ff:29::face:b00c', 'Other'),
(1311, '2020-03-04 06:49:06', '2a03:2880:10ff:6::face:b00c', 'Other'),
(1312, '2020-03-04 06:50:58', '219.74.248.156', 'Chrome'),
(1313, '2020-03-04 07:47:02', '104.129.48.8', 'Chrome'),
(1314, '2020-03-04 07:47:03', '192.227.164.93', 'Chrome'),
(1315, '2020-03-04 07:49:09', '139.193.116.237', 'Chrome'),
(1316, '2020-03-04 09:23:23', '182.0.232.121', 'Chrome'),
(1317, '2020-03-04 09:51:48', '114.4.222.35', 'Chrome'),
(1318, '2020-03-04 09:51:50', '18.136.197.5', 'Chrome'),
(1319, '2020-03-04 10:33:56', '114.124.205.60', 'Chrome'),
(1320, '2020-03-04 10:39:09', '40.77.167.156', 'Bing'),
(1321, '2020-03-04 10:50:34', '112.215.236.21', 'Chrome'),
(1322, '2020-03-04 10:58:39', '61.247.48.70', 'Mozilla'),
(1323, '2020-03-04 10:59:56', '2a03:2880:10ff:24::face:b00c', 'Other'),
(1324, '2020-03-04 10:59:56', '2a03:2880:20ff:21::face:b00c', 'Other'),
(1325, '2020-03-04 11:20:36', '36.90.16.100', 'Chrome'),
(1326, '2020-03-04 11:25:41', '36.90.16.56', 'Chrome'),
(1327, '2020-03-04 12:09:27', '2604:a880:800:c1::20b:a001', 'Chrome'),
(1328, '2020-03-04 12:10:59', '36.71.214.135', 'Chrome'),
(1329, '2020-03-04 12:36:22', '116.213.55.228', 'Chrome'),
(1330, '2020-03-04 14:19:30', '140.213.131.148', 'Spartan'),
(1331, '2020-03-04 14:22:56', '66.249.71.82', 'Googlebot'),
(1332, '2020-03-04 14:25:32', '140.213.8.8', 'Chrome'),
(1333, '2020-03-04 15:23:43', '180.244.126.138', 'Firefox'),
(1334, '2020-03-04 15:24:37', '112.215.45.2', 'Chrome'),
(1335, '2020-03-04 15:47:00', '3.235.30.115', 'Chrome'),
(1336, '2020-03-04 16:28:45', '36.68.59.151', 'Chrome'),
(1337, '2020-03-04 16:49:22', '3.18.213.163', 'Chrome'),
(1338, '2020-03-04 16:49:22', '3.18.213.163', 'Chrome'),
(1339, '2020-03-04 17:16:57', '40.77.167.116', 'Bing'),
(1340, '2020-03-04 17:28:36', '114.99.64.79', 'Safari'),
(1341, '2020-03-04 17:32:28', '2a03:2880:ff:1c::face:b00c', 'Other'),
(1342, '2020-03-04 17:32:28', '2a03:2880:ff:6::face:b00c', 'Other'),
(1343, '2020-03-04 17:32:28', '2a03:2880:ff:21::face:b00c', 'Other'),
(1344, '2020-03-04 17:32:37', '2a03:2880:11ff:1f::face:b00c', 'Other'),
(1345, '2020-03-04 17:51:11', '40.77.167.156', 'Bing'),
(1346, '2020-03-04 18:06:53', '66.249.71.122', 'Googlebot'),
(1347, '2020-03-04 18:52:54', '54.236.1.12', 'Mozilla'),
(1348, '2020-03-04 19:56:19', '114.125.231.251', 'Chrome'),
(1349, '2020-03-04 20:00:42', '66.249.71.112', 'Googlebot'),
(1350, '2020-03-04 20:59:22', '2a03:2880:ff:24::face:b00c', 'Other'),
(1351, '2020-03-04 20:59:22', '2a03:2880:ff:7::face:b00c', 'Other'),
(1352, '2020-03-04 21:46:48', '199.58.86.211', 'Majestic-12'),
(1353, '2020-03-04 21:48:54', '13.66.139.0', 'MSNBot'),
(1354, '2020-03-04 22:15:44', '112.215.45.2', 'Chrome'),
(1355, '2020-03-04 23:54:08', '116.206.29.96', 'Opera'),
(1356, '2020-03-05 00:19:15', '139.194.69.86', 'Safari'),
(1357, '2020-03-05 00:27:23', '66.249.71.120', 'Googlebot'),
(1358, '2020-03-05 00:41:40', '112.113.155.182', 'Chrome'),
(1359, '2020-03-05 00:47:30', '167.71.100.194', 'Mozilla'),
(1360, '2020-03-05 00:57:23', '2604:a880:800:c1::3c8:4001', 'Mozilla'),
(1361, '2020-03-05 00:57:41', '103.213.129.144', 'Chrome'),
(1362, '2020-03-05 01:07:35', '36.83.200.219', 'Chrome'),
(1363, '2020-03-05 01:30:02', '66.249.71.121', 'Googlebot'),
(1364, '2020-03-05 01:31:35', '66.102.6.216', 'Chrome'),
(1365, '2020-03-05 02:09:01', '216.244.66.231', 'Mozilla'),
(1366, '2020-03-05 02:15:00', '73.15.208.6', 'Chrome'),
(1367, '2020-03-05 02:43:17', '180.246.63.66', 'Chrome'),
(1368, '2020-03-05 03:30:40', '38.99.62.94', 'Mozilla'),
(1369, '2020-03-05 03:55:17', '216.151.20.198', 'Mozilla'),
(1370, '2020-03-05 04:23:39', '54.36.149.87', 'Mozilla'),
(1371, '2020-03-05 04:24:07', '23.254.36.13', 'Other'),
(1372, '2020-03-05 04:25:39', '182.253.1.146', 'Safari'),
(1373, '2020-03-05 04:31:41', '114.125.125.108', 'Chrome'),
(1374, '2020-03-05 04:33:19', '114.125.109.86', 'Chrome'),
(1375, '2020-03-05 04:33:21', '182.1.112.95', 'Chrome'),
(1376, '2020-03-05 04:33:24', '2a03:2880:13ff:b::face:b00c', 'Other'),
(1377, '2020-03-05 04:53:10', '36.80.91.47', 'Chrome'),
(1378, '2020-03-05 04:59:03', '36.89.48.186', 'Chrome'),
(1379, '2020-03-05 05:01:20', '67.212.187.106', 'Mozilla'),
(1380, '2020-03-05 05:01:27', '74.125.210.42', 'Chrome'),
(1381, '2020-03-05 05:01:38', '66.249.84.40', 'Chrome'),
(1382, '2020-03-05 05:01:42', '66.249.84.42', 'Chrome'),
(1383, '2020-03-05 06:02:41', '66.102.6.218', 'Chrome'),
(1384, '2020-03-05 06:02:51', '66.102.6.214', 'Chrome'),
(1385, '2020-03-05 06:02:55', '66.249.81.106', 'Chrome'),
(1386, '2020-03-05 06:03:02', '66.249.81.104', 'Chrome'),
(1387, '2020-03-05 06:16:50', '36.82.107.6', 'Firefox'),
(1388, '2020-03-05 06:36:17', '180.253.12.53', 'Chrome'),
(1389, '2020-03-05 06:38:52', '36.67.191.11', 'Chrome'),
(1390, '2020-03-05 07:12:09', '114.79.55.233', 'Chrome'),
(1391, '2020-03-05 07:25:47', '2a03:2880:ff:12::face:b00c', 'Other'),
(1392, '2020-03-05 07:25:50', '2a03:2880:ff::face:b00c', 'Other'),
(1393, '2020-03-05 07:39:08', '61.247.48.70', 'Chrome'),
(1394, '2020-03-05 07:40:39', '114.124.239.191', 'Safari'),
(1395, '2020-03-05 08:16:36', '182.0.168.182', 'Chrome'),
(1396, '2020-03-05 08:20:41', '202.58.238.52', 'Chrome'),
(1397, '2020-03-05 09:07:27', '182.253.21.237', 'Safari'),
(1398, '2020-03-05 09:09:51', '43.252.138.171', 'Other'),
(1399, '2020-03-05 09:17:09', '182.253.90.33', 'Chrome'),
(1400, '2020-03-05 10:02:38', '114.5.245.115', 'Chrome'),
(1401, '2020-03-05 10:09:10', '195.181.172.69', 'Firefox'),
(1402, '2020-03-05 11:03:07', '158.69.241.225', 'Chrome'),
(1403, '2020-03-05 11:22:17', '64.233.173.168', 'Chrome'),
(1404, '2020-03-05 11:22:25', '140.213.52.134', 'Chrome'),
(1405, '2020-03-05 11:31:10', '3.84.225.48', 'Mozilla'),
(1406, '2020-03-05 11:53:45', '139.0.200.198', 'Chrome'),
(1407, '2020-03-05 12:31:58', '34.221.153.3', 'Other'),
(1408, '2020-03-05 14:41:54', '36.65.235.28', 'Chrome'),
(1409, '2020-03-05 15:24:12', '141.8.188.19', 'YandexBot'),
(1410, '2020-03-05 15:27:48', '3.228.3.62', 'Other'),
(1411, '2020-03-05 15:48:38', '34.204.192.224', 'Chrome'),
(1412, '2020-03-05 16:55:15', '66.249.83.40', 'Chrome'),
(1413, '2020-03-05 19:06:44', '40.77.167.156', 'Bing'),
(1414, '2020-03-05 19:10:02', '216.151.20.198', 'Mozilla'),
(1415, '2020-03-05 19:31:01', '3.235.60.51', 'Other'),
(1416, '2020-03-05 20:04:14', '216.244.66.231', 'Mozilla'),
(1417, '2020-03-05 21:38:03', '13.66.139.0', 'MSNBot'),
(1418, '2020-03-05 22:06:14', '54.191.149.238', 'Other'),
(1419, '2020-03-05 23:10:35', '2a02:440:0:11::26ee', 'Firefox'),
(1420, '2020-03-06 02:09:47', '58.96.237.215', 'Chrome'),
(1421, '2020-03-06 02:15:36', '207.46.13.74', 'Bing'),
(1422, '2020-03-06 03:06:07', '36.83.200.219', 'Chrome'),
(1423, '2020-03-06 03:20:56', '103.129.105.30', 'Chrome'),
(1424, '2020-03-06 03:33:25', '2a03:2880:31ff:e::face:b00c', 'Other'),
(1425, '2020-03-06 03:33:30', '2a03:2880:31ff:16::face:b00c', 'Other'),
(1426, '2020-03-06 03:50:18', '114.124.244.197', 'Safari'),
(1427, '2020-03-06 04:41:48', '114.124.166.172', 'Chrome'),
(1428, '2020-03-06 05:06:43', '2a01:4f8:191:8463::2', 'Majestic-12'),
(1429, '2020-03-06 05:09:54', '40.113.199.183', 'Other'),
(1430, '2020-03-06 05:11:38', '2a01:4f8:200:54aa::2', 'Majestic-12'),
(1431, '2020-03-06 05:19:57', '207.46.13.181', 'Bing'),
(1432, '2020-03-06 05:22:14', '114.124.137.142', 'Safari'),
(1433, '2020-03-06 06:48:33', '66.249.71.82', 'Googlebot'),
(1434, '2020-03-06 07:10:46', '219.74.248.156', 'Chrome'),
(1435, '2020-03-06 07:40:23', '103.122.202.20', 'Chrome'),
(1436, '2020-03-06 08:32:50', '66.249.71.75', 'Googlebot'),
(1437, '2020-03-06 08:57:50', '61.247.48.70', 'Chrome'),
(1438, '2020-03-06 09:12:04', '103.121.159.254', 'Chrome'),
(1439, '2020-03-06 09:23:07', '192.3.4.208', 'Chrome'),
(1440, '2020-03-06 09:23:20', '45.152.34.18', 'Chrome'),
(1441, '2020-03-06 09:25:54', '66.249.71.121', 'Googlebot'),
(1442, '2020-03-06 09:45:52', '103.49.223.180', 'Chrome'),
(1443, '2020-03-06 10:42:53', '66.249.71.112', 'Googlebot'),
(1444, '2020-03-06 10:50:19', '3.233.204.242', 'Other'),
(1445, '2020-03-06 10:57:47', '31.31.77.31', 'Majestic-12'),
(1446, '2020-03-06 11:05:07', '182.0.211.67', 'Safari'),
(1447, '2020-03-06 11:33:05', '151.80.39.195', 'Mozilla'),
(1448, '2020-03-06 12:16:10', '182.0.241.66', 'Safari'),
(1449, '2020-03-06 12:53:00', '202.129.188.234', 'Chrome'),
(1450, '2020-03-06 13:19:29', '2a03:2880:11ff:5::face:b00c', 'Other'),
(1451, '2020-03-06 13:19:29', '2a03:2880:11ff:2a::face:b00c', 'Other'),
(1452, '2020-03-06 13:19:32', '2a03:2880:11ff:b::face:b00c', 'Other'),
(1453, '2020-03-06 13:35:03', '17.58.96.248', 'Safari'),
(1454, '2020-03-06 13:53:51', '114.124.206.132', 'Chrome'),
(1455, '2020-03-06 14:05:36', '54.36.150.132', 'Mozilla'),
(1456, '2020-03-06 14:25:14', '2a01:4f8:162:14e::2', 'Majestic-12'),
(1457, '2020-03-06 14:32:49', '36.80.193.52', 'Chrome'),
(1458, '2020-03-06 14:43:47', '139.192.88.93', 'Firefox'),
(1459, '2020-03-06 14:46:27', '103.139.26.244', 'Chrome'),
(1460, '2020-03-06 14:55:55', '36.90.239.158', 'Firefox'),
(1461, '2020-03-06 15:00:16', '114.122.107.75', 'Chrome'),
(1462, '2020-03-06 15:02:03', '114.124.205.130', 'Safari'),
(1463, '2020-03-06 15:20:16', '18.221.7.87', 'Chrome'),
(1464, '2020-03-06 16:06:31', '139.194.26.72', 'Chrome'),
(1465, '2020-03-06 17:02:37', '207.46.13.95', 'Bing'),
(1466, '2020-03-06 17:10:15', '220.178.225.6', 'Chrome'),
(1467, '2020-03-06 17:19:04', '13.66.139.0', 'Bing'),
(1468, '2020-03-06 17:36:56', '66.249.71.73', 'Googlebot'),
(1469, '2020-03-06 17:39:39', '182.0.201.77', 'Safari'),
(1470, '2020-03-06 17:40:04', '66.249.71.121', 'Googlebot'),
(1471, '2020-03-06 17:40:30', '182.0.234.90', 'Safari'),
(1472, '2020-03-06 17:41:11', '66.249.71.122', 'Googlebot'),
(1473, '2020-03-06 17:46:22', '141.8.188.19', 'YandexBot'),
(1474, '2020-03-06 20:56:39', '216.244.66.231', 'Mozilla'),
(1475, '2020-03-06 22:10:41', '207.46.13.80', 'Bing'),
(1476, '2020-03-06 22:38:34', '3.94.31.227', 'Other'),
(1477, '2020-03-06 22:51:11', '207.46.13.129', 'Bing'),
(1478, '2020-03-06 23:02:01', '216.151.20.198', 'Mozilla'),
(1479, '2020-03-07 00:53:17', '1.197.187.54', 'Chrome'),
(1480, '2020-03-07 02:47:11', '199.58.86.209', 'Majestic-12'),
(1481, '2020-03-07 03:11:37', '2a03:2880:ff:d::face:b00c', 'Other'),
(1482, '2020-03-07 03:12:34', '114.124.147.41', 'Safari'),
(1483, '2020-03-07 03:14:16', '64.233.173.116', 'Chrome'),
(1484, '2020-03-07 03:14:20', '36.72.211.236', 'Chrome'),
(1485, '2020-03-07 04:01:28', '114.124.147.185', 'Safari'),
(1486, '2020-03-07 04:06:06', '36.70.150.194', 'Safari'),
(1487, '2020-03-07 04:41:24', '180.125.17.124', 'Chrome'),
(1488, '2020-03-07 04:55:12', '66.102.6.218', 'Chrome'),
(1489, '2020-03-07 05:30:28', '2a03:2880:10ff:e::face:b00c', 'Other'),
(1490, '2020-03-07 06:46:38', '2401:5f80:5001:3:2000::215', 'Chrome'),
(1491, '2020-03-07 07:25:08', '13.90.248.41', 'Firefox'),
(1492, '2020-03-07 08:59:28', '180.245.42.110', 'Safari'),
(1493, '2020-03-07 09:35:14', '125.163.49.5', 'Chrome'),
(1494, '2020-03-07 11:55:55', '207.46.13.143', 'Bing'),
(1495, '2020-03-07 12:22:47', '125.161.130.109', 'Chrome'),
(1496, '2020-03-07 12:33:41', '77.243.61.193', 'Chrome'),
(1497, '2020-03-07 12:48:05', '175.45.189.36', 'Firefox'),
(1498, '2020-03-07 13:44:11', '175.42.87.203', 'Chrome'),
(1499, '2020-03-07 14:34:18', '36.80.193.52', 'Chrome'),
(1500, '2020-03-07 15:37:49', '182.0.151.129', 'Chrome'),
(1501, '2020-03-07 16:56:49', '2a03:2880:ff:13::face:b00c', 'Other'),
(1502, '2020-03-07 16:56:49', '2a03:2880:ff:b::face:b00c', 'Other'),
(1503, '2020-03-07 17:41:04', '209.242.206.88', 'Chrome'),
(1504, '2020-03-07 17:41:10', '195.216.180.78', 'Chrome'),
(1505, '2020-03-07 17:41:20', '38.145.105.127', 'Chrome'),
(1506, '2020-03-07 17:41:31', '201.148.168.41', 'Chrome'),
(1507, '2020-03-07 17:50:58', '92.53.78.136', 'Chrome'),
(1508, '2020-03-07 18:05:45', '207.46.13.129', 'Bing'),
(1509, '2020-03-07 18:39:15', '36.80.193.52', 'Chrome'),
(1510, '2020-03-07 18:52:03', '198.50.243.189', 'Other'),
(1511, '2020-03-07 19:31:30', '51.77.249.198', 'Firefox'),
(1512, '2020-03-07 22:34:07', '66.249.71.73', 'Googlebot'),
(1513, '2020-03-07 23:00:27', '66.249.71.82', 'Googlebot'),
(1514, '2020-03-07 23:12:30', '207.46.13.80', 'Bing'),
(1515, '2020-03-07 23:40:42', '66.249.71.120', 'Googlebot'),
(1516, '2020-03-08 00:19:28', '5.62.49.31', 'Chrome'),
(1517, '2020-03-08 00:57:01', '66.249.71.108', 'Googlebot'),
(1518, '2020-03-08 01:32:43', '66.249.71.122', 'Googlebot'),
(1519, '2020-03-08 01:43:09', '66.249.71.112', 'Googlebot'),
(1520, '2020-03-08 01:58:28', '66.42.61.252', 'Chrome'),
(1521, '2020-03-08 02:26:44', '66.249.71.77', 'Googlebot'),
(1522, '2020-03-08 03:28:47', '139.162.221.245', 'Firefox'),
(1523, '2020-03-08 03:28:50', '212.71.255.152', 'Firefox'),
(1524, '2020-03-08 03:35:29', '140.213.45.161', 'Chrome'),
(1525, '2020-03-08 03:50:16', '66.102.6.214', 'Chrome'),
(1526, '2020-03-08 04:07:57', '5.255.253.33', 'YandexBot'),
(1527, '2020-03-08 04:07:57', '141.8.188.19', 'YandexBot'),
(1528, '2020-03-08 05:00:15', '195.123.237.254', 'Chrome'),
(1529, '2020-03-08 05:14:14', '202.67.42.22', 'Chrome'),
(1530, '2020-03-08 05:22:31', '178.79.150.162', 'Firefox'),
(1531, '2020-03-08 05:48:07', '2a03:2880:10ff:f::face:b00c', 'Other'),
(1532, '2020-03-08 05:48:08', '2a03:2880:10ff:5::face:b00c', 'Other'),
(1533, '2020-03-08 05:48:10', '2a03:2880:10ff:7::face:b00c', 'Other'),
(1534, '2020-03-08 05:52:12', '139.162.224.195', 'Firefox'),
(1535, '2020-03-08 06:03:49', '23.129.64.230', 'Other'),
(1536, '2020-03-08 06:29:59', '3.124.212.17', 'Firefox'),
(1537, '2020-03-08 06:41:08', '182.0.171.33', 'Chrome'),
(1538, '2020-03-08 06:54:45', '66.249.83.206', 'Chrome'),
(1539, '2020-03-08 06:54:45', '66.249.83.42', 'Chrome'),
(1540, '2020-03-08 07:03:03', '178.137.88.65', 'Chrome'),
(1541, '2020-03-08 07:28:35', '178.171.64.65', 'Chrome'),
(1542, '2020-03-08 08:30:56', '54.36.150.101', 'Mozilla'),
(1543, '2020-03-08 08:33:55', '118.96.212.186', 'Chrome'),
(1544, '2020-03-08 08:34:15', '36.72.213.222', 'Chrome'),
(1545, '2020-03-08 09:12:13', '91.79.50.107', 'Spartan'),
(1546, '2020-03-08 09:16:08', '38.99.62.94', 'Mozilla'),
(1547, '2020-03-08 09:46:44', '115.178.223.203', 'Chrome'),
(1548, '2020-03-08 10:43:11', '66.102.6.211', 'Chrome'),
(1549, '2020-03-08 11:18:56', '3.17.27.86', 'Chrome'),
(1550, '2020-03-08 11:21:32', '140.213.44.29', 'Chrome'),
(1551, '2020-03-08 11:46:21', '188.93.56.216', 'Firefox'),
(1552, '2020-03-08 12:02:22', '202.80.212.222', 'Chrome'),
(1553, '2020-03-08 12:02:28', '114.122.73.96', 'Other'),
(1554, '2020-03-08 12:03:13', '114.124.179.178', 'Chrome'),
(1555, '2020-03-08 12:03:33', '182.0.178.98', 'Chrome'),
(1556, '2020-03-08 12:09:27', '182.0.167.165', 'Chrome'),
(1557, '2020-03-08 12:11:43', '114.124.174.188', 'Chrome'),
(1558, '2020-03-08 12:16:28', '139.194.134.44', 'Safari'),
(1559, '2020-03-08 12:39:40', '115.178.223.210', 'Chrome'),
(1560, '2020-03-08 13:07:38', '2a00:5ba0:10:2242:3c52:7dff:fee6:7714', 'Chrome'),
(1561, '2020-03-08 13:47:06', '182.253.251.59', 'Chrome'),
(1562, '2020-03-08 14:12:44', '124.131.108.104', 'Chrome'),
(1563, '2020-03-08 15:41:48', '110.138.148.194', 'Internet Explorer'),
(1564, '2020-03-08 16:00:34', '114.5.221.73', 'Chrome'),
(1565, '2020-03-08 16:14:49', '35.195.102.223', 'Other'),
(1566, '2020-03-08 16:20:48', '110.138.80.138', 'Chrome'),
(1567, '2020-03-08 16:31:04', '162.210.196.129', 'Majestic-12'),
(1568, '2020-03-08 16:46:00', '140.213.137.38', 'Chrome'),
(1569, '2020-03-08 16:47:58', '36.73.150.67', 'Chrome'),
(1570, '2020-03-08 17:46:41', '66.249.71.82', 'Googlebot'),
(1571, '2020-03-08 18:14:14', '207.46.13.151', 'Bing'),
(1572, '2020-03-08 18:28:17', '2a03:2880:ff:20::face:b00c', 'Other'),
(1573, '2020-03-08 18:28:17', '2a03:2880:ff:c::face:b00c', 'Other'),
(1574, '2020-03-08 19:11:19', '2a00:5ba0:10:2242:3c52:7dff:fee6:7714', 'Chrome'),
(1575, '2020-03-08 20:04:53', '66.249.71.84', 'Googlebot'),
(1576, '2020-03-08 20:38:22', '66.249.71.112', 'Googlebot'),
(1577, '2020-03-08 21:36:47', '116.203.96.197', 'Chrome'),
(1578, '2020-03-08 23:05:36', '42.236.10.84', 'Chrome'),
(1579, '2020-03-09 00:03:58', '2a03:2880:11ff:2a::face:b00c', 'Chrome'),
(1580, '2020-03-09 00:29:24', '207.46.13.129', 'Bing'),
(1581, '2020-03-09 00:34:33', '64.233.173.172', 'Chrome'),
(1582, '2020-03-09 00:51:50', '222.124.95.33', 'Chrome'),
(1583, '2020-03-09 01:53:11', '216.244.66.231', 'Mozilla'),
(1584, '2020-03-09 01:54:24', '114.5.212.49', 'Chrome'),
(1585, '2020-03-09 02:04:33', '134.117.143.143', 'Firefox'),
(1586, '2020-03-09 02:12:21', '182.253.5.30', 'Chrome'),
(1587, '2020-03-09 02:38:24', '180.242.249.21', 'Chrome'),
(1588, '2020-03-09 03:06:45', '103.224.139.2', 'Chrome'),
(1589, '2020-03-09 03:18:13', '182.253.1.146', 'Safari'),
(1590, '2020-03-09 03:25:08', '36.70.151.218', 'Safari'),
(1591, '2020-03-09 03:27:07', '198.143.133.154', 'Chrome'),
(1592, '2020-03-09 03:31:57', '103.129.105.31', 'Chrome'),
(1593, '2020-03-09 03:40:07', '202.146.1.59', 'Chrome'),
(1594, '2020-03-09 03:55:23', '180.252.109.161', 'Chrome'),
(1595, '2020-03-09 04:06:17', '2a03:2880:ff:16::face:b00c', 'Other'),
(1596, '2020-03-09 04:06:17', '2a03:2880:ff:22::face:b00c', 'Other'),
(1597, '2020-03-09 04:27:36', '182.0.210.100', 'Chrome'),
(1598, '2020-03-09 05:08:15', '114.5.252.246', 'Chrome'),
(1599, '2020-03-09 05:18:13', '2607:5300:60:3b27::1', 'Majestic-12'),
(1600, '2020-03-09 05:23:40', '66.102.6.211', 'Chrome'),
(1601, '2020-03-09 06:44:03', '125.165.71.145', 'Firefox'),
(1602, '2020-03-09 08:47:11', '125.165.47.36', 'Opera'),
(1603, '2020-03-09 08:57:11', '2a01:4f8:140:2155::2', 'Majestic-12'),
(1604, '2020-03-09 09:03:50', '125.163.166.75', 'Chrome'),
(1605, '2020-03-09 09:07:52', '36.88.159.20', 'Chrome'),
(1606, '2020-03-09 09:14:10', '66.102.6.218', 'Chrome'),
(1607, '2020-03-09 09:38:46', '202.77.124.60', 'Firefox'),
(1608, '2020-03-09 09:42:30', '36.90.81.39', 'Chrome'),
(1609, '2020-03-09 10:14:00', '2a03:2880:10ff::face:b00c', 'Other'),
(1610, '2020-03-09 10:14:03', '2a03:2880:10ff:4::face:b00c', 'Other'),
(1611, '2020-03-09 10:14:05', '2a03:2880:10ff:c::face:b00c', 'Other'),
(1612, '2020-03-09 10:14:08', '2a03:2880:10ff:2::face:b00c', 'Other'),
(1613, '2020-03-09 11:01:41', '125.213.155.18', 'Chrome'),
(1614, '2020-03-09 12:11:53', '69.58.178.59', 'Mozilla'),
(1615, '2020-03-09 12:29:27', '114.124.208.160', 'Firefox'),
(1616, '2020-03-09 13:16:34', '141.8.188.19', 'YandexBot'),
(1617, '2020-03-09 13:52:15', '5.255.253.33', 'YandexBot'),
(1618, '2020-03-09 14:16:26', '180.254.19.13', 'Chrome'),
(1619, '2020-03-09 14:20:28', '2a03:2880:ff:8::face:b00c', 'Other'),
(1620, '2020-03-09 14:25:24', '80.81.28.101', 'Chrome'),
(1621, '2020-03-09 15:42:00', '18.191.107.48', 'Chrome'),
(1622, '2020-03-09 16:26:18', '66.249.73.171', 'Googlebot'),
(1623, '2020-03-09 17:10:03', '207.46.13.151', 'Bing'),
(1624, '2020-03-09 17:14:22', '66.249.73.11', 'Googlebot'),
(1625, '2020-03-09 17:39:23', '216.244.66.231', 'Mozilla'),
(1626, '2020-03-09 17:41:31', '2a00:5ba0:10:2242:3c52:7dff:fee6:7714', 'Chrome'),
(1627, '2020-03-09 19:20:06', '129.56.83.167', 'Firefox'),
(1628, '2020-03-09 19:56:59', '207.46.13.93', 'Bing'),
(1629, '2020-03-09 20:15:08', '35.173.49.144', 'Chrome'),
(1630, '2020-03-09 20:49:24', '54.183.162.135', 'Chrome'),
(1631, '2020-03-09 21:00:38', '54.187.13.33', 'Chrome'),
(1632, '2020-03-09 23:04:04', '157.55.39.170', 'Bing'),
(1633, '2020-03-09 23:54:56', '36.72.215.199', 'Chrome'),
(1634, '2020-03-10 00:08:48', '162.210.196.130', 'Majestic-12'),
(1635, '2020-03-10 00:27:03', '114.125.60.26', 'Chrome'),
(1636, '2020-03-10 00:27:05', '180.245.77.185', 'Chrome'),
(1637, '2020-03-10 00:47:50', '115.178.221.140', 'Chrome'),
(1638, '2020-03-10 00:49:52', '36.71.233.182', 'Chrome'),
(1639, '2020-03-10 01:04:40', '182.253.234.203', 'Firefox'),
(1640, '2020-03-10 01:25:41', '52.5.190.19', 'Mozilla'),
(1641, '2020-03-10 01:37:09', '3.230.158.25', 'Other'),
(1642, '2020-03-10 02:13:17', '157.55.39.246', 'Bing'),
(1643, '2020-03-10 02:20:45', '66.102.6.214', 'Chrome'),
(1644, '2020-03-10 02:35:36', '180.242.249.21', 'Chrome'),
(1645, '2020-03-10 03:00:31', '182.253.1.146', 'Safari'),
(1646, '2020-03-10 03:03:08', '2a03:2880:ff:24::face:b00c', 'Other'),
(1647, '2020-03-10 03:03:09', '2a03:2880:ff:e::face:b00c', 'Other'),
(1648, '2020-03-10 03:13:30', '69.28.91.78', 'Chrome'),
(1649, '2020-03-10 03:55:50', '117.69.47.100', 'Chrome'),
(1650, '2020-03-10 04:12:33', '192.29.97.49', 'Other'),
(1651, '2020-03-10 04:26:36', '2001:67c:198c:906:4::f', 'Opera'),
(1652, '2020-03-10 05:44:37', '114.124.211.66', 'Safari'),
(1653, '2020-03-10 06:15:16', '140.213.129.3', 'Chrome'),
(1654, '2020-03-10 06:16:54', '180.242.183.93', 'Safari'),
(1655, '2020-03-10 06:29:15', '114.125.28.118', 'Chrome'),
(1656, '2020-03-10 07:01:12', '112.215.151.7', 'Chrome'),
(1657, '2020-03-10 07:21:42', '138.75.34.255', 'Chrome'),
(1658, '2020-03-10 08:12:38', '66.249.71.39', 'Googlebot'),
(1659, '2020-03-10 08:13:41', '94.130.219.230', 'Mozilla'),
(1660, '2020-03-10 08:28:48', '210.57.223.170', 'Safari'),
(1661, '2020-03-10 08:58:27', '202.179.187.226', 'Chrome'),
(1662, '2020-03-10 08:58:44', '139.255.91.146', 'Chrome'),
(1663, '2020-03-10 08:58:50', '117.54.140.18', 'Chrome'),
(1664, '2020-03-10 09:06:44', '114.124.206.14', 'Chrome'),
(1665, '2020-03-10 09:08:16', '182.23.62.82', 'Safari'),
(1666, '2020-03-10 09:19:53', '184.94.240.92', 'Firefox'),
(1667, '2020-03-10 10:12:46', '182.1.29.140', 'Chrome'),
(1668, '2020-03-10 10:35:11', '66.249.71.41', 'Googlebot'),
(1669, '2020-03-10 11:32:11', '66.249.71.43', 'Googlebot'),
(1670, '2020-03-10 12:27:47', '110.89.5.74', 'Firefox'),
(1671, '2020-03-10 12:41:54', '140.213.0.131', 'Chrome'),
(1672, '2020-03-10 12:57:06', '139.194.89.231', 'Chrome'),
(1673, '2020-03-10 13:00:39', '140.213.128.89', 'Firefox'),
(1674, '2020-03-10 13:27:58', '152.118.150.197', 'Safari'),
(1675, '2020-03-10 15:06:54', '2a03:2880:ff:f::face:b00c', 'Other'),
(1676, '2020-03-10 15:06:56', '2a03:2880:ff:1e::face:b00c', 'Other'),
(1677, '2020-03-10 15:06:59', '2a03:2880:ff:1b::face:b00c', 'Other'),
(1678, '2020-03-10 15:07:15', '2a03:2880:ff:a::face:b00c', 'Other'),
(1679, '2020-03-10 15:07:16', '2a03:2880:ff:23::face:b00c', 'Other'),
(1680, '2020-03-10 15:07:16', '2a03:2880:ff:22::face:b00c', 'Other'),
(1681, '2020-03-10 15:07:18', '2a03:2880:ff:8::face:b00c', 'Other'),
(1682, '2020-03-10 15:57:18', '54.36.150.138', 'Mozilla'),
(1683, '2020-03-10 16:05:24', '66.249.71.58', 'Googlebot'),
(1684, '2020-03-10 16:13:04', '203.78.117.159', 'Chrome'),
(1685, '2020-03-10 16:24:25', '114.4.213.234', 'Safari'),
(1686, '2020-03-10 16:24:30', '3.234.218.24', 'Other'),
(1687, '2020-03-10 16:42:54', '66.249.71.57', 'Googlebot'),
(1688, '2020-03-10 18:24:55', '138.197.167.250', 'Other'),
(1689, '2020-03-10 19:17:40', '13.66.139.0', 'Bing'),
(1690, '2020-03-10 20:00:12', '66.249.71.55', 'Googlebot'),
(1691, '2020-03-10 21:17:54', '157.55.39.246', 'Bing'),
(1692, '2020-03-10 21:18:49', '118.96.75.137', 'Chrome'),
(1693, '2020-03-10 22:27:21', '161.69.99.11', 'Firefox'),
(1694, '2020-03-10 22:53:22', '17.58.96.248', 'Safari'),
(1695, '2020-03-10 22:56:22', '36.82.79.3', 'Chrome'),
(1696, '2020-03-11 00:43:59', '162.210.196.100', 'Majestic-12'),
(1697, '2020-03-11 01:08:53', '110.138.150.70', 'Safari'),
(1698, '2020-03-11 01:36:42', '40.77.167.45', 'Bing'),
(1699, '2020-03-11 01:36:48', '54.244.166.93', 'Other'),
(1700, '2020-03-11 02:04:07', '36.91.179.30', 'Chrome'),
(1701, '2020-03-11 02:18:30', '114.124.134.173', 'Safari'),
(1702, '2020-03-11 02:45:40', '66.102.6.215', 'Chrome'),
(1703, '2020-03-11 03:02:33', '120.188.36.123', 'Chrome'),
(1704, '2020-03-11 03:05:52', '180.242.249.21', 'Chrome'),
(1705, '2020-03-11 03:29:01', '114.122.70.118', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post_rating`
--

CREATE TABLE `tbl_post_rating` (
  `rate_id` int(11) NOT NULL,
  `rate_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `rate_ip` varchar(40) DEFAULT NULL,
  `rate_point` int(11) DEFAULT NULL,
  `rate_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_post_rating`
--

INSERT INTO `tbl_post_rating` (`rate_id`, `rate_tanggal`, `rate_ip`, `rate_point`, `rate_tulisan_id`) VALUES
(2, '2017-08-07 05:58:14', '::1', 1, 30),
(4, '2017-08-07 05:59:03', '::1', 1, 29),
(5, '2017-08-07 06:23:40', '::1', 3, 31),
(6, '2017-08-07 06:26:14', '::1', 4, 28),
(7, '2017-08-08 01:15:56', '::1', 2, 27),
(8, '2017-08-25 18:20:57', '::1', 4, 26),
(9, '2020-02-10 04:12:24', '::1', 3, 32);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post_views`
--

CREATE TABLE `tbl_post_views` (
  `views_id` int(11) NOT NULL,
  `views_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `views_ip` varchar(40) DEFAULT NULL,
  `views_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_post_views`
--

INSERT INTO `tbl_post_views` (`views_id`, `views_tanggal`, `views_ip`, `views_tulisan_id`) VALUES
(55, '2020-01-26 15:42:30', '::1', 30),
(56, '2020-01-26 15:42:32', '::1', 0),
(57, '2020-02-06 09:42:14', '::1', 32),
(58, '2020-02-06 09:42:17', '::1', 0),
(59, '2020-02-10 04:12:16', '::1', 32),
(60, '2020-02-10 04:12:18', '::1', 0),
(61, '2020-02-13 05:41:09', '::1', 0),
(62, '2020-02-13 05:42:35', '::1', 32),
(63, '2020-02-13 05:42:47', '::1', 37),
(64, '2020-02-13 09:42:09', '::1', 39),
(65, '2020-02-14 06:49:54', '::1', 39),
(66, '2020-02-14 06:49:56', '::1', 0),
(67, '2020-02-14 06:52:48', '::1', 32),
(68, '2020-02-21 03:21:20', '10.226.174.229', 0),
(69, '2020-02-21 09:36:13', '10.226.174.40', 0),
(70, '2020-02-21 09:36:22', '10.226.174.40', 39),
(71, '2020-02-24 08:48:36', '10.226.174.153', 40),
(72, '2020-02-24 08:48:37', '10.226.174.153', 0),
(73, '2020-02-25 09:38:15', '10.226.174.203', 40),
(74, '2020-02-25 09:38:16', '10.226.174.203', 0),
(75, '2020-02-28 02:05:53', '125.166.153.245', 39),
(76, '2020-02-28 02:05:54', '125.166.153.245', 0),
(77, '2020-02-28 22:10:31', '63.141.231.10', 39),
(78, '2020-02-28 22:10:33', '63.141.231.10', 40),
(79, '2020-02-28 22:10:35', '63.141.231.10', 0),
(80, '2020-02-29 00:20:55', '50.16.241.114', 0),
(81, '2020-02-29 03:58:00', '82.193.102.149', 0),
(82, '2020-02-29 04:56:51', '2607:5300:120:363::1', 0),
(83, '2020-02-29 14:31:05', '182.0.239.3', 39),
(84, '2020-02-29 14:31:06', '182.0.239.3', 0),
(85, '2020-03-01 11:41:34', '66.249.71.17', 40),
(86, '2020-03-01 11:41:35', '66.249.71.16', 39),
(87, '2020-03-01 11:41:35', '66.249.71.17', 0),
(88, '2020-03-01 11:41:43', '66.249.71.35', 0),
(89, '2020-03-02 02:57:55', '117.54.140.18', 39),
(90, '2020-03-02 02:57:57', '117.54.140.18', 0),
(91, '2020-03-02 02:58:06', '202.179.187.226', 40),
(92, '2020-03-02 02:58:08', '202.179.187.226', 0),
(93, '2020-03-02 08:49:53', '103.119.141.14', 40),
(94, '2020-03-02 08:49:54', '103.119.141.14', 0),
(95, '2020-03-03 02:29:09', '2a01:4f8:190:4449::2', 0),
(96, '2020-03-03 09:20:40', '36.83.200.219', 0),
(97, '2020-03-03 10:17:26', '36.83.200.219', 40),
(98, '2020-03-03 10:17:38', '36.83.200.219', 39),
(99, '2020-03-04 03:28:26', '114.124.174.201', 0),
(100, '2020-03-04 09:48:01', '36.83.200.219', 0),
(101, '2020-03-04 09:48:11', '36.83.200.219', 39),
(102, '2020-03-04 09:48:24', '36.83.200.219', 40),
(103, '2020-03-05 00:41:40', '112.113.155.182', 0),
(104, '2020-03-05 02:44:06', '180.246.63.66', 0),
(105, '2020-03-05 02:44:40', '180.246.63.66', 40),
(106, '2020-03-05 02:57:02', '36.83.200.219', 0),
(107, '2020-03-05 04:28:22', '182.253.1.146', 0),
(108, '2020-03-05 04:28:33', '182.253.1.146', 40),
(109, '2020-03-05 07:32:31', '36.83.200.219', 40),
(110, '2020-03-06 04:08:03', '36.83.200.219', 0),
(111, '2020-03-06 04:08:10', '36.83.200.219', 40),
(112, '2020-03-06 04:11:03', '36.83.200.219', 42),
(113, '2020-03-06 04:13:23', '36.83.200.219', 44),
(114, '2020-03-06 04:13:47', '36.83.200.219', 43),
(115, '2020-03-06 05:03:14', '216.244.66.231', 0),
(116, '2020-03-06 05:06:43', '2a01:4f8:191:8463::2', 0),
(117, '2020-03-06 10:57:47', '31.31.77.31', 43),
(118, '2020-03-06 13:16:00', '66.249.71.121', 44),
(119, '2020-03-06 17:40:04', '66.249.71.121', 0),
(120, '2020-03-07 00:24:35', '216.244.66.231', 44),
(121, '2020-03-08 01:32:43', '66.249.71.122', 0),
(122, '2020-03-09 03:55:25', '180.252.109.161', 44),
(123, '2020-03-09 03:55:26', '180.252.109.161', 0),
(124, '2020-03-09 05:18:13', '2607:5300:60:3b27::1', 0),
(125, '2020-03-09 06:41:36', '216.244.66.231', 0),
(126, '2020-03-09 08:58:47', '180.242.249.21', 43),
(127, '2020-03-09 08:58:47', '180.242.249.21', 0),
(128, '2020-03-09 09:05:04', '180.242.249.21', 44),
(129, '2020-03-09 10:14:00', '2a03:2880:10ff::face:b00c', 43),
(130, '2020-03-09 10:14:03', '2a03:2880:10ff:4::face:b00c', 43),
(131, '2020-03-09 13:16:34', '141.8.188.19', 0),
(132, '2020-03-10 01:27:16', '52.5.190.19', 44),
(133, '2020-03-10 03:00:50', '182.253.1.146', 43),
(134, '2020-03-10 03:00:50', '182.253.1.146', 0),
(135, '2020-03-10 03:14:04', '216.244.66.231', 0),
(136, '2020-03-10 04:38:20', '180.242.249.21', 43),
(137, '2020-03-10 04:38:21', '180.242.249.21', 0),
(138, '2020-03-10 06:39:35', '180.242.249.21', 44),
(139, '2020-03-10 08:58:50', '117.54.140.18', 43),
(140, '2020-03-10 08:58:50', '117.54.140.18', 0),
(141, '2020-03-10 12:48:48', '216.244.66.231', 43),
(142, '2020-03-10 16:26:19', '114.4.213.234', 44),
(143, '2020-03-10 16:26:19', '114.4.213.234', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(200) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(250) DEFAULT NULL,
  `tulisan_rating` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`, `tulisan_rating`) VALUES
(43, 'T-Man milik Bahasa Kita terpilih di Telkomsel Innovation Center', '<p>Program Telkomsel Innovation Center (TINC) kembali dibuka pada tahun 2019. Program ini tercipta untuk mendorong lahirnya inovator-inovator Indonesia yang mampu menjadi roda penggerak bagi kemajuan bangsa menuju Digital Nation dan Industri 4.0.</p>\r\n\r\n<p>Program ini juga membuka pintu untuk berkolaborasi dengan para inovator dalam melahirkan solusi-solusi seperti Internet of Things (IoT), Big Data Analytics, Financial Technology, Artificial Intelligence (AI), Machine Learning, pemanfaatan teknologi 5G, Digital Lifestyle, dan solusi berbasis digital lainnya.</p>\r\n\r\n<p>Tepat pada tanggal 20 Januari 2020, TINC mengumumkan 5 startup yang telah disaring dari ratusan peserta untuk menjadi peserta batch #4. Di antaranya adalah Birru, Cryptoscope, Chatbiz, Neurafarm dan T-Man. Para startup yang telah lolos akan mendapatkan beragam benefit mulai dari fasilitas Innovation Lab, bisnis mentorship hingga akses pendanaan.</p>\r\n\r\n<p>T-Man adalah inovasi terbaru berupa platform edukasi untuk anak dan orang tua. Berbentuk komik dan podcast dengan teknologi suara akan memberikan experience baru bagi penggunanya kelak.</p>\r\n', '2020-03-06 04:12:14', 5, 'Penelitian', 9, 'e0791b4cc9f8fe7813d06ca5f0843f62.jpg', 2, 'administrator', 0, 't-man-milik-bahasa-kita-terpilih-di-telkomsel-innovation-center.html', 0),
(44, 'Kolaborasi Text to Speech Engine dengan Bahasakita.com', '<p>Text to Speech adalah suatu sistem yang dapat mengubah teks menjadi suara secara otomatis. Penggunaan Text to Speech dapat kita temukan di berbagai bentuk seperti smart speaker, pengumuman di ruang publik hingga website.</p>\r\n\r\n<p>Salah satu penerapan Text to Speech Bahasa Indonesia kini dapat ditemukan dalam kolaborasi antara Bahasa Kita dengan Bahasakita.com, sebuah website untuk penutur asing maupun warga negara asing yang memiliki minat dalam mempelajari Bahasa Indonesia.</p>\r\n\r\n<p>Dalam artikelnya yang berjudul &quot;Temporal Marker: Udah &amp; Bakal&quot;, bahasakita.com mampu menyuarakan beberapa kalimat dalam artikelnya berkat kolaborasi sistem Text to Speech Bahasa Kita dalam Bahasa Indonesia.</p>\r\n\r\n<p>Ke depannya, berbagai artikel dari bahasakita.com akan memiliki fitur Text to Speech berbahasa Indonesia milik Bahasakita yang terbukti memudahkan pembacanya mengerti Bahasa Indonesia secara pelafalan dengan kaidah yang telah ditentukan.</p>\r\n\r\n<p>Jika bisnis atau komunitas anda membutuhkan sistem Text to Speech dalam Bahasa Indonesia, jangan ragu untuk menghubungi kami untuk berkolaborasi.</p>\r\n', '2020-03-06 04:13:17', 2, 'Teknologi', 8, 'da15cb925caf172261e3a6379570681c.jpg', 2, 'administrator', 0, 'kolaborasi-text-to-speech-engine-dengan-bahasakita.com.html', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indeks untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indeks untuk tabel `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  ADD PRIMARY KEY (`views_id`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1706;

--
-- AUTO_INCREMENT untuk tabel `tbl_post_rating`
--
ALTER TABLE `tbl_post_rating`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_post_views`
--
ALTER TABLE `tbl_post_views`
  MODIFY `views_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
