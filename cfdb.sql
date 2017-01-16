-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2017 at 08:13 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cfdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `nutritionlists`
--

DROP TABLE IF EXISTS `nutritionlists`;
CREATE TABLE IF NOT EXISTS `nutritionlists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nutritions_id` int(3) NOT NULL,
  `item_taken` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `phone` int(10) NOT NULL,
  `pin` int(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nutritionlists`
--

INSERT INTO `nutritionlists` (`id`, `nutritions_id`, `item_taken`, `date`, `phone`, `pin`, `created_at`, `updated_at`) VALUES
(3, 1, 'Eggs', '2017-01-14', 7783031, 3030, '2017-01-14 00:00:00', '2017-01-14 00:00:00'),
(4, 1, 'dd', '2015-11-11', 1234567, 1234, '2017-01-15 09:42:41', '2017-01-15 09:42:41'),
(5, 1, 'dd', '2015-11-11', 1234567, 1234, '2017-01-15 09:46:08', '2017-01-15 09:46:08'),
(6, 1, 'dd', '2017-01-15', 1234567, 1234, '2017-01-15 11:11:55', '2017-01-15 11:11:55'),
(7, 1, 'dd', '2017-01-15', 1234567, 1234, '2017-01-15 11:12:27', '2017-01-15 11:12:27'),
(8, 1, 'asdfdasf', '2017-01-15', 1234567, 1234, '2017-01-15 11:14:14', '2017-01-15 11:14:14'),
(9, 6, 'dafafd', '2017-01-15', 1234567, 1234, '2017-01-15 11:14:29', '2017-01-15 11:14:29'),
(10, 1, 'Something', '2017-01-15', 7783031, 3030, '2017-01-15 11:15:05', '2017-01-15 11:15:05'),
(11, 1, 'another thing', '2017-01-15', 7783031, 3030, '2017-01-15 14:47:33', '2017-01-15 14:47:33'),
(12, 1, 'And another', '2017-01-15', 1234567, 1234, '2017-01-15 15:02:52', '2017-01-15 15:02:52'),
(13, 1, 'And another', '2017-01-15', 1234567, 1234, '2017-01-15 15:03:20', '2017-01-15 15:03:20'),
(14, 1, 'Add another', '2017-01-15', 7783031, 3030, '2017-01-15 15:03:57', '2017-01-15 15:03:57'),
(15, 1, 'Something', '2017-01-15', 7783031, 3030, '2017-01-15 15:07:00', '2017-01-15 15:07:00'),
(26, 1, 'Had muffins for breakfast', '2017-01-15', 7787890, 3030, '2017-01-15 17:13:45', '2017-01-15 17:13:45'),
(25, 2, 'Something', '2017-01-15', 1234567, 1234, '2017-01-15 15:20:31', '2017-01-15 15:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `nutritions`
--

DROP TABLE IF EXISTS `nutritions`;
CREATE TABLE IF NOT EXISTS `nutritions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nutritions`
--

INSERT INTO `nutritions` (`id`, `name`, `image`, `description`) VALUES
(1, 'Nutritious snacks', 'snack.jpg', 'Keep a variety of nutritious snack foods around. Try to snack on something every hour, such as cheese and crackers, muffins, or trail mix.'),
(2, 'Milkshake', 'shake.jpg', 'Try to eat regularly, even if it is only a few bites. Or, include a nutrition supplement or milkshake.'),
(3, 'Soup', 'soup.jpg', 'Add grated cheese to soups, sauces, casseroles, vegetables, mashed potatoes, rice, noodles, or meat loaf.'),
(4, 'Peanut butter', 'peanut.jpg', 'Spread peanut butter on bread products or use it as a dip for raw vegetables and fruit. Add peanut butter to sauces or use on waffles.'),
(5, 'Skim Milk', 'milk.jpg', 'Skim milk powder adds protein. Try adding 2 tablespoons (8.5 grams) of dry skim milk powder in addition to the amount of regular milk in recipes.'),
(6, 'Vegetables', 'veggies.jpg', 'Eat lots of vegetables. Include all shades of green at least once everyday.'),
(7, 'Egg', 'egg.jpg', 'Add coarsely chopped hard cooked egg and cheese cubes to a tossed salad.'),
(8, 'Meat', 'meat.jpg', 'Add grated cheeses, tuna, shrimp, crabmeat, ground beef, diced ham or sliced boiled eggs to sauces, rice, casseroles, and noodles.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
