-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Tem 2020, 19:50:34
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `xeberler`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_kadi` varchar(50) NOT NULL,
  `admin_sifre` varchar(100) NOT NULL,
  `admin_yetki` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_kadi`, `admin_sifre`, `admin_yetki`) VALUES
(1, 'Rashad', '0998098979', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haber`
--

CREATE TABLE `haber` (
  `haber_id` int(11) NOT NULL,
  `haber_zaman` datetime NOT NULL,
  `haber_ad` varchar(150) NOT NULL,
  `haber_detay` varchar(6000) NOT NULL,
  `haber_resimyol` varchar(100) NOT NULL,
  `haber_hit` varchar(500) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `haber`
--

INSERT INTO `haber` (`haber_id`, `haber_zaman`, `haber_ad`, `haber_detay`, `haber_resimyol`, `haber_hit`) VALUES
(47, '2020-06-14 18:52:00', 'Polis İsmayıllıda sərt karantin rejimi qaydalarına nəzarət edir - FOTO', '<p>&Ouml;lkəmizdə bir ne&ccedil;ə şəhər və rayonda tətbiq edilən sərt karantin rejiminin q&uuml;vvəyə minməsindən sonra İsmayıllı rayonunda da insanların k&uuml;&ccedil;əyə &ccedil;ıxması və nəqliyyatın hərəkəti qadağan edilib.</p>\r\n\r\n<p>DİN-in Mətbuat Xidmətinin Şəki regional qrupundan verilən məlumata g&ouml;rə, şəhərin daim sıxlıq m&uuml;şahidə olunan k&uuml;&ccedil;ə və prospektləri hazırda boşdur. Mərkəzlə yanaşı, məhəllə arası yollara da nəzarət edilir. Qurulan postlarda polis əməkdaşları ilə bərabər Daxili Qoşunların əsgərləri də xidmət aparır.</p>\r\n\r\n<p>Qeyd edək ki, digər rayon sakinlərinin İsmayıllı rayonu ərazisindən ke&ccedil;ərək getməsində məhdudiyyət yoxdur. Ancaq onların hər hansısa yaşayış məntəqəsinə girişinə icazə verilmir və qurulan postlarda onların hərəkətinə nəzarət olunur.</p>\r\n\r\n<p><img src=\"https://cdn.oxu.az/uploads/W1siZiIsIjIwMjAvMDYvMTQvMTkvMTMvNTgvN2Q2NzA2YmEtZDU2Yi00YzZjLTgwNTMtMmZmYWU4ZDE1MDFhLzEwMzk5MTUyMl8zMDg4MTc3MjAxMzA3OTVfMjE3OTEyOTkwNDk0Njk1NTY4MV9uLmpwZyJdLFsicCIsImVuY29kZSIsImpwZyIsIi1xdWFsaXR5IDgwIl0sWyJwIiwidGh1bWIiLCI1OTB4NTkwXHUwMDNlIl1d?sha=599730b2bb6c3444\" /></p>\r\n\r\n<p><img src=\"https://cdn.oxu.az/uploads/W1siZiIsIjIwMjAvMDYvMTQvMTkvMTMvNTgvZDJhOTJkMWYtMjYyYS00MDg4LTllOWUtZmRiNjRiNTQwZTI3LzgyOTMyNTM3XzM4NzU2Njk0ODg2OTQ1Ml8xMDE4MzU5MjQ3ODI2NDYxMDY4X24uanBnIl0sWyJwIiwiZW5jb2RlIiwianBnIiwiLXF1YWxpdHkgODAiXSxbInAiLCJ0aHVtYiIsIjU5MHg1OTBcdTAwM2UiXV0?sha=f961123e92b416d9\" /></p>\r\n', 'uploads/haberler/25943262052799626434104054048_292281668484401_1719733450063852745_n (1).jpg', '1'),
(48, '2020-06-14 18:53:00', 'Şəmkirdə gənc kanalda boğularaq ölüb', '<p>Şəmkirdə 18 yaşlı gənc boğularaq &ouml;l&uuml;b.</p>\r\n\r\n<p>Bu barədə&nbsp;<strong>Oxu.Az</strong>-a h&uuml;quq-m&uuml;hafizə orqanlarından məlumat verilib.</p>\r\n\r\n<p>Bildirilib ki, hadisə rayonun Qılıncbəyli kəndində qeydə alınıb. 2002-ci il təvəll&uuml;dl&uuml; Əliyev K&ouml;n&uuml;l İlham oğlu su kanalında boğulub.</p>\r\n\r\n<p>Onun meyiti &ccedil;ıxarılıb və aidiyyəti &uuml;zrə təhvil verilib.</p>\r\n\r\n<p><strong>İlhamə Əb&uuml;lfət</strong></p>\r\n', 'uploads/haberler/27413212462571420948unnamed (1).jpg', '3'),
(49, '2020-06-14 18:54:00', 'Bəhram Bağırzadə reanimasiyaya yerləşdirilib - HƏKİMDƏN AÇIQLAMA', '<p>Koronavirusa yoluxan Əməkdar artist Bəhram Bağırzadə hazırda Mərkəzi Gömrük Hospitalında m&uuml;alicə olunur.</p>\r\n\r\n<p>Bu barədə &ldquo;Qafqazinfo&rdquo;ya&nbsp;MGH-nın rəis m&uuml;avini&nbsp;Bəxtiyar Musayev məlumat verib.</p>\r\n\r\n<p>O bildirib ki, Bəhram Bağırzadə vəziyyətinin kəskin pisləşməsi səbəbindən daha əvvəl koronavirus xəstəliyindən müalicə olunduğu xəstəxanadan Mərkəzi Gömrük Hospitalının reanimasiya şöbəsinə köçürülüb:</p>\r\n\r\n<p>&ldquo;Xəstənin yeni çəkilən kompüter tomoqrafiyasında əvvəlkilərlə müqayisədə çox ciddi mənfi gedişatın olduğu aşkarlanıb. 90%-dən çox ağciyər toxumasının zədələndiyi məlum olub. Süni tənəffüs aparatında intensiv müalicəyə baxmayaraq saturasiyanın artırılmasına nail olunmayıb. Saturasiya günboyu aparılan müalicələr ilə yenə 50% ətrafında olduğuna görə saat 23:00 radələrində konsilium keçirilib və xəstənin EKMO cihazına qoşulmasına qərar verilib.</p>\r\n\r\n<p>Qeyd edək ki, EKMO- ekstrakorporal membran oksigenlənmə cihazı olub, ağciyər və ürək yerinə 2-3 həftə funksiya göstərərək, mövcud olan problemin həlli üçün həkimlərə vaxt qazandıran bir müalicə üsuludur. Bu gün gecə saat 02:00 radələrində Mərkəzi Gömrük Hospitalının reanimatoloqları və cərrahları tərəfindən xəstənin EKMO cihazına qoşulması əməliyyatından sonra onun vəziyyəti nisbətən stabilləşib və saturasiya 95 faizə qədər yüksəlib. Lakin xəstənin vəziyyəti kritik ağır olaraq qalır.</p>\r\n\r\n<p>Əməkdar artist Bəhram Bağırzadənin müalicəsi birbaşa Azərbaycanın Birinci vitse-prezidenti Mehriban Əliyevanın nəzarətindədir. EKMO dəstəyi ilə birlikdə intensiv müalicəsi davam edən aktyorun ailəsinə və sevənlərinə səbir diləyir, sənətkarımıza bu çətin mübarizədə şəfa arzu edirik&rdquo;.</p>\r\n', 'uploads/haberler/28257243582771929731hej5456.jpg', '0'),
(50, '2020-06-14 18:54:00', 'Bəhram Bağırzadə reanimasiyaya yerləşdirilib - HƏKİMDƏN AÇIQLAMA', '<p>Koronavirusa yoluxan Əməkdar artist Bəhram Bağırzadə hazırda Mərkəzi Gömrük Hospitalında m&uuml;alicə olunur.</p>\r\n\r\n<p>Bu barədə &ldquo;Qafqazinfo&rdquo;ya&nbsp;MGH-nın rəis m&uuml;avini&nbsp;Bəxtiyar Musayev məlumat verib.</p>\r\n\r\n<p>O bildirib ki, Bəhram Bağırzadə vəziyyətinin kəskin pisləşməsi səbəbindən daha əvvəl koronavirus xəstəliyindən müalicə olunduğu xəstəxanadan Mərkəzi Gömrük Hospitalının reanimasiya şöbəsinə köçürülüb:</p>\r\n\r\n<p>&ldquo;Xəstənin yeni çəkilən kompüter tomoqrafiyasında əvvəlkilərlə müqayisədə çox ciddi mənfi gedişatın olduğu aşkarlanıb. 90%-dən çox ağciyər toxumasının zədələndiyi məlum olub. Süni tənəffüs aparatında intensiv müalicəyə baxmayaraq saturasiyanın artırılmasına nail olunmayıb. Saturasiya günboyu aparılan müalicələr ilə yenə 50% ətrafında olduğuna görə saat 23:00 radələrində konsilium keçirilib və xəstənin EKMO cihazına qoşulmasına qərar verilib.</p>\r\n\r\n<p>Qeyd edək ki, EKMO- ekstrakorporal membran oksigenlənmə cihazı olub, ağciyər və ürək yerinə 2-3 həftə funksiya göstərərək, mövcud olan problemin həlli üçün həkimlərə vaxt qazandıran bir müalicə üsuludur. Bu gün gecə saat 02:00 radələrində Mərkəzi Gömrük Hospitalının reanimatoloqları və cərrahları tərəfindən xəstənin EKMO cihazına qoşulması əməliyyatından sonra onun vəziyyəti nisbətən stabilləşib və saturasiya 95 faizə qədər yüksəlib. Lakin xəstənin vəziyyəti kritik ağır olaraq qalır.</p>\r\n\r\n<p>Əməkdar artist Bəhram Bağırzadənin müalicəsi birbaşa Azərbaycanın Birinci vitse-prezidenti Mehriban Əliyevanın nəzarətindədir. EKMO dəstəyi ilə birlikdə intensiv müalicəsi davam edən aktyorun ailəsinə və sevənlərinə səbir diləyir, sənətkarımıza bu çətin mübarizədə şəfa arzu edirik&rdquo;.</p>\r\n', 'uploads/haberler/28257243582771929731hej5456.jpg', '1'),
(51, '2020-06-14 18:52:00', 'Polis İsmayıllıda sərt karantin rejimi qaydalarına nəzarət edir - FOTO', '<p>&Ouml;lkəmizdə bir ne&ccedil;ə şəhər və rayonda tətbiq edilən sərt karantin rejiminin q&uuml;vvəyə minməsindən sonra İsmayıllı rayonunda da insanların k&uuml;&ccedil;əyə &ccedil;ıxması və nəqliyyatın hərəkəti qadağan edilib.</p>\r\n\r\n<p>DİN-in Mətbuat Xidmətinin Şəki regional qrupundan verilən məlumata g&ouml;rə, şəhərin daim sıxlıq m&uuml;şahidə olunan k&uuml;&ccedil;ə və prospektləri hazırda boşdur. Mərkəzlə yanaşı, məhəllə arası yollara da nəzarət edilir. Qurulan postlarda polis əməkdaşları ilə bərabər Daxili Qoşunların əsgərləri də xidmət aparır.</p>\r\n\r\n<p>Qeyd edək ki, digər rayon sakinlərinin İsmayıllı rayonu ərazisindən ke&ccedil;ərək getməsində məhdudiyyət yoxdur. Ancaq onların hər hansısa yaşayış məntəqəsinə girişinə icazə verilmir və qurulan postlarda onların hərəkətinə nəzarət olunur.</p>\r\n\r\n<p><img src=\"https://cdn.oxu.az/uploads/W1siZiIsIjIwMjAvMDYvMTQvMTkvMTMvNTgvN2Q2NzA2YmEtZDU2Yi00YzZjLTgwNTMtMmZmYWU4ZDE1MDFhLzEwMzk5MTUyMl8zMDg4MTc3MjAxMzA3OTVfMjE3OTEyOTkwNDk0Njk1NTY4MV9uLmpwZyJdLFsicCIsImVuY29kZSIsImpwZyIsIi1xdWFsaXR5IDgwIl0sWyJwIiwidGh1bWIiLCI1OTB4NTkwXHUwMDNlIl1d?sha=599730b2bb6c3444\" /></p>\r\n\r\n<p><img src=\"https://cdn.oxu.az/uploads/W1siZiIsIjIwMjAvMDYvMTQvMTkvMTMvNTgvZDJhOTJkMWYtMjYyYS00MDg4LTllOWUtZmRiNjRiNTQwZTI3LzgyOTMyNTM3XzM4NzU2Njk0ODg2OTQ1Ml8xMDE4MzU5MjQ3ODI2NDYxMDY4X24uanBnIl0sWyJwIiwiZW5jb2RlIiwianBnIiwiLXF1YWxpdHkgODAiXSxbInAiLCJ0aHVtYiIsIjU5MHg1OTBcdTAwM2UiXV0?sha=f961123e92b416d9\" /></p>\r\n', 'uploads/haberler/25943262052799626434104054048_292281668484401_1719733450063852745_n (1).jpg', '1'),
(52, '2020-06-14 18:53:00', 'Şəmkirdə gənc kanalda boğularaq ölüb', '<p>Şəmkirdə 18 yaşlı gənc boğularaq &ouml;l&uuml;b.</p>\r\n\r\n<p>Bu barədə&nbsp;<strong>Oxu.Az</strong>-a h&uuml;quq-m&uuml;hafizə orqanlarından məlumat verilib.</p>\r\n\r\n<p>Bildirilib ki, hadisə rayonun Qılıncbəyli kəndində qeydə alınıb. 2002-ci il təvəll&uuml;dl&uuml; Əliyev K&ouml;n&uuml;l İlham oğlu su kanalında boğulub.</p>\r\n\r\n<p>Onun meyiti &ccedil;ıxarılıb və aidiyyəti &uuml;zrə təhvil verilib.</p>\r\n\r\n<p><strong>İlhamə Əb&uuml;lfət</strong></p>\r\n', 'uploads/haberler/27413212462571420948unnamed (1).jpg', '3');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberiqt`
--

CREATE TABLE `haberiqt` (
  `haber_id_iqt` int(11) NOT NULL,
  `haber_zaman_iqt` datetime NOT NULL,
  `haber_ad_iqt` varchar(100) NOT NULL,
  `haber_detay_iqt` text NOT NULL,
  `haber_resimyol_iqt` varchar(50) NOT NULL,
  `haber_hit_iqt` varchar(200) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `haberiqt`
--

INSERT INTO `haberiqt` (`haber_id_iqt`, `haber_zaman_iqt`, `haber_ad_iqt`, `haber_detay_iqt`, `haber_resimyol_iqt`, `haber_hit_iqt`) VALUES
(2, '2020-06-14 16:27:00', 'Haber1', '<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }v</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }<br />\r\nvv</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n\r\n<p>// HABER SIL -------------------------------------------------------------------------------------------------------------------------------------</p>\r\n\r\n<p>if (isset($_GET[&#39;habersil&#39;])==&quot;ok&quot;){</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp;$habersil = $baglan-&gt;prepare(&quot;DELETE FROM haber WHERE haber_id=&#39;&quot;.$_GET[&#39;haber_id&#39;].&quot;&#39;&quot;);</p>\r\n\r\n<p>&nbsp; &nbsp; $habersil-&gt;execute();<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp;header(&#39;location:haber.php?durum=ok&#39;);</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; }</p>\r\n', 'uploads/haberler/20116263472519129403blog-5.jpg', '2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_adi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `menu_url` varchar(100) NOT NULL,
  `menu_sira` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_adi`, `menu_url`, `menu_sira`) VALUES
(58, 'Baş səhifə', 'index.php', ''),
(60, 'İqtisadiyyat', 'iqtisadiyyat.php', ''),
(61, 'İdman', 'idman.php', ''),
(62, 'Dünya', 'dünya.php', ''),
(63, 'İKT', 'ikt.php', ''),
(64, 'Turizm', 'turizm.php', ''),
(65, 'Hərbi', 'herbi.php', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfa`
--

CREATE TABLE `sayfa` (
  `sayfa_id` int(11) NOT NULL,
  `sayfa_tarih` datetime NOT NULL,
  `sayfa_ad` varchar(100) NOT NULL,
  `sayfa_icerik` text NOT NULL,
  `sayfa_sira` varchar(50) NOT NULL,
  `sayfa_anasayfa` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `sayfa`
--

INSERT INTO `sayfa` (`sayfa_id`, `sayfa_tarih`, `sayfa_ad`, `sayfa_icerik`, `sayfa_sira`, `sayfa_anasayfa`) VALUES
(3, '2020-06-10 15:35:00', 'Sayfa2', '', '', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(500) NOT NULL,
  `slider_url` varchar(100) NOT NULL,
  `slider_resimyol` varchar(300) NOT NULL,
  `slider_sira` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_url`, `slider_resimyol`, `slider_sira`) VALUES
(22, '', '', 'uploads/25224299212621422803104009452_388876158737623_1574098133777280548_n.jpg', 0),
(23, 'slider2', '', 'uploads/25297252502503225217104101979_288424052534470_4530446888984977965_n.jpg', 1),
(24, 'slider3', '', 'uploads/237322688925015264551592129233652_iSsVJrSQ.jpg', 2);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Tablo için indeksler `haber`
--
ALTER TABLE `haber`
  ADD PRIMARY KEY (`haber_id`);

--
-- Tablo için indeksler `haberiqt`
--
ALTER TABLE `haberiqt`
  ADD PRIMARY KEY (`haber_id_iqt`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `sayfa`
--
ALTER TABLE `sayfa`
  ADD PRIMARY KEY (`sayfa_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `haber`
--
ALTER TABLE `haber`
  MODIFY `haber_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Tablo için AUTO_INCREMENT değeri `haberiqt`
--
ALTER TABLE `haberiqt`
  MODIFY `haber_id_iqt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Tablo için AUTO_INCREMENT değeri `sayfa`
--
ALTER TABLE `sayfa`
  MODIFY `sayfa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
