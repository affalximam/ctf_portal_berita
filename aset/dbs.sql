-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 07:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `portal-berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `guestbook`
--

CREATE TABLE `guestbook` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guestbook`
--

INSERT INTO `guestbook` (`id`, `tanggal`, `jam`, `nama`, `pesan`) VALUES
(24, '2023-07-26', '20:22:38', 'affal', 'testing'),
(25, '2023-07-27', '00:41:19', 'aa', 'aa'),
(26, '2023-07-27', '01:57:25', 'hallo', 'hahahaj');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `user` varchar(20) NOT NULL,
  `konten` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `judul`, `user`, `konten`, `tanggal`) VALUES
(1, 'The Origins of Prambanan', 'Admin', '<p> Prambanan is a magnificent Hindu temple complex located in Central Java, Indonesia. Its origins can be traced back to the 9th century during the rule of the Mataram Kingdom. The temple was built to honor the Trimurti, the three main Hindu deities: Brahma the creator, Vishnu the preserver, and Shiva the destroyer.\r\n</p><p>\r\nLegend has it that a powerful prince named Bandung Bondowoso fell in love with Princess Roro Jonggrang, the daughter of King Boko. The prince proposed to the princess, but she was not interested in marrying him. To avoid marriage, she presented him with an impossible task to build 1,000 temples in just one night.\r\n</p><p>\r\nUsing his supernatural powers and the help of genies, Prince Bandung almost succeeded in completing the task. Concerned that the prince might accomplish the impossible, Princess Roro Jonggrang devised a plan. She and her maids started pounding rice and set a fire to create the illusion of dawn. The genies, thinking that the sun was rising, fled, leaving the construction unfinished.\r\n</p><p>\r\nEnraged by the deceit, Prince Bandung cursed Princess Roro Jonggrang, turning her into the thousandth statue for the temple. This statue is said to be represented by one of the beautiful Durga statues found in Prambanan.\r\n</p><p>\r\nThe Prambanan temple complex stands as a testament to the rich cultural and religious heritage of Indonesia. It is a UNESCO World Heritage site and a popular destination for tourists and pilgrims alike, drawing visitors from all around the world to admire its architectural splendor and historical significance.\r\n</p>\r\n\r\n\r\n', '2023-07-27 12:00:00'),
(2, 'The Origins of Borobudur', 'Admin', '<p>Borobudur is a magnificent Buddhist temple located in Central Java, Indonesia. It is one of the most iconic and impressive ancient monuments in the world. The temple\'s origins can be traced back to the 8th and 9th centuries during the Sailendra Dynasty.\r\n</p><p>\r\nAccording to historical records and local legends, Borobudur was built by the Sailendra Dynasty rulers to honor and celebrate Buddhism. The construction of the temple is believed to have begun in the early 8th century during the reign of King Samaratungga, the descendant of the Sailendra Dynasty.\r\n</p><p>\r\nThe temple was designed as a colossal mandala, representing the Buddhist cosmology and the path to enlightenment. It consists of nine stacked platforms, with a central stupa at the top, symbolizing Nirvana.\r\n</p><p>\r\nBorobudur\'s construction was a grand undertaking that involved a large number of skilled artisans and laborers. The temple was built using a combination of volcanic stones without the use of any cement or mortar. Intricate carvings and reliefs adorn the walls, depicting various aspects of Buddhist teachings and Javanese culture.\r\n</p><p>\r\nAfter standing for centuries as a place of worship and pilgrimage, Borobudur faced a period of decline and abandonment. It was buried under layers of volcanic ash and jungle growth, hiding its grandeur from the world for many years.\r\n</p><p>\r\nIn the early 19th century, Sir Thomas Stamford Raffles, the British ruler of Java, learned about the hidden temple and led an effort to uncover and restore Borobudur. The restoration work continued in the 20th century, and in 1991, Borobudur was designated as a UNESCO World Heritage site.\r\n</p><p>\r\nToday, Borobudur stands as a testament to the rich cultural heritage of Indonesia and continues to be a popular destination for tourists and pilgrims from all over the globe who come to marvel at its architectural brilliance and spiritual significance.</p>', '2023-07-27 12:10:35'),
(3, 'What is \'wibu\' ?', 'Admin', '<p>The term \"wibu\" originates from the Japanese word \"weeaboo,\" which refers to someone who is highly enthusiastic and obsessed with Japanese pop culture, especially manga (Japanese comics) and anime (Japanese animated films). The term has become more popularly used in Indonesia as \"wibu\" and is commonly associated with anime and manga enthusiasts in the country.\r\n</p><p>\r\nA wibu is someone who exhibits great enthusiasm for various aspects of Japanese culture, including the language, food, fashion, music (J-pop or K-pop), and, of course, anime and manga. They often admire and follow fictional characters from anime, stay updated on the latest developments in the anime industry, and actively participate in anime communities both online and offline.\r\n</p><p>\r\nWhile most wibu are enthusiastic and passionate fans, the term can sometimes be used with a negative connotation by some people to belittle or mock anime enthusiasts who may be overly obsessive or too fixated on Japanese culture, particularly if they appear to neglect their own local culture.\r\n</p><p>\r\nHowever, it is important to remember that everyone has the right to like whatever they enjoy, as long as it does not harm others or themselves. Anime and Japanese pop culture enthusiasts, including wibu, have the freedom to express themselves and share their interests with like-minded communities. As long as this enjoyment is conducted responsibly, it is perfectly acceptable to like and enjoy things that bring happiness.</p>', '2023-07-27 12:20:24'),
(4, 'What is \'Ultraman\'?', 'Admin', '<p>Ultraman are a group of fictional superhero characters that appear in the Japanese tokusatsu television series and films called \"Ultraman.\" The series first aired in 1966 and has become one of the most iconic symbols of Japanese pop culture.\r\n</p><p>\r\nUltraman are beings from outer space or aliens who come from various planets to protect Earth from threats such as monsters and evil creatures. They possess special abilities and often use physical strength, weapons, or special energy to combat their adversaries.\r\n</p><p>\r\nUltraman typically appear in striking silver and red outfits, along with distinctive masks or helmets that often cover their entire faces. They have the ability to transform into larger, more powerful giant forms to battle giant monsters that threaten Earth.\r\n</p><p>\r\nEach Ultraman usually has a different name and set of abilities, and they often team up with special organizations to defend Earth from extraterrestrial threats. Moreover, Ultraman stories often explore the characters\' internal and moral conflicts, making it more than just a battle between heroes and villains.\r\n</p><p>\r\nThe \"Ultraman\" series has become a popular phenomenon worldwide and continues to thrive with numerous sequels, spin-offs, and new adaptations over time. Ultraman have become cultural icons and continue to attract fans from various generations.</p>', '2023-07-27 12:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(1, 'Administrator', 't3st1ng', 'Administrator@email.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
