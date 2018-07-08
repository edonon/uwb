-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-26 09:27:46
-- 服务器版本： 5.7.9
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uwb`
--

-- --------------------------------------------------------

--
-- 表的结构 `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wIdFri` int(11) NOT NULL,
  `wIdSec` int(11) NOT NULL,
  `direction` int(11) NOT NULL,
  `discuss` varchar(400) NOT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `chat`
--

INSERT INTO `chat` (`id`, `wIdFri`, `wIdSec`, `direction`, `discuss`, `time`) VALUES
(1, 1, 2, 1, '1', '2018-05-26'),
(2, 1, 2, 1, '2', '2018-05-26'),
(3, 1, 2, 1, '3', '2018-05-26'),
(4, 1, 2, 1, '你好', '2018-05-26'),
(5, 1, 2, 0, '22', '2018-05-26'),
(6, 1, 2, 0, '22', '2018-05-26'),
(7, 1, 2, 0, '2', '2018-05-26'),
(8, 1, 2, 0, '你好', '2018-05-26'),
(9, 1, 2, 1, '1', '2018-05-26'),
(10, 1, 2, 1, '11', '2018-05-26'),
(11, 1, 2, 0, '11', '2018-05-26'),
(12, 1, 2, 1, '11', '2018-05-26'),
(13, 1, 2, 0, '22', '2018-05-26'),
(14, 1, 2, 0, '很高兴见到你', '2018-05-26'),
(15, 1, 2, 0, '22', '2018-05-26');

-- --------------------------------------------------------

--
-- 表的结构 `chatlist`
--

DROP TABLE IF EXISTS `chatlist`;
CREATE TABLE IF NOT EXISTS `chatlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `seuid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `chatlist`
--

INSERT INTO `chatlist` (`id`, `uid`, `seuid`) VALUES
(1, 2, 1),
(2, 2, 1),
(3, 2, 1),
(4, 2, 1),
(5, 1, 2),
(6, 1, 2),
(7, 1, 2),
(8, 1, 2),
(9, 2, 1),
(10, 2, 1),
(11, 1, 2),
(12, 2, 1),
(13, 1, 2),
(14, 1, 2),
(15, 1, 2);

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wId` int(11) NOT NULL,
  `uId` int(11) NOT NULL,
  `discuss` varchar(400) NOT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `wId`, `uId`, `discuss`, `time`) VALUES
(1, 2, 1, '1234', '2018-05-25'),
(2, 2, 1, 'qwe', '2018-05-25'),
(3, 3, 1, '11', '2018-05-26'),
(4, 2, 1, '11', '2018-05-26');

-- --------------------------------------------------------

--
-- 表的结构 `fan`
--

DROP TABLE IF EXISTS `fan`;
CREATE TABLE IF NOT EXISTS `fan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uId` int(11) NOT NULL,
  `fanId` int(11) NOT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fan`
--

INSERT INTO `fan` (`id`, `uId`, `fanId`, `time`) VALUES
(10, 1, 2, '2018-05-26'),
(11, 2, 3, '2018-05-26'),
(12, 3, 1, '2018-05-26');

-- --------------------------------------------------------

--
-- 表的结构 `inform`
--

DROP TABLE IF EXISTS `inform`;
CREATE TABLE IF NOT EXISTS `inform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `commentCnt` int(11) NOT NULL,
  `chatCnt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `inform`
--

INSERT INTO `inform` (`id`, `uid`, `commentCnt`, `chatCnt`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(3, 3, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE IF NOT EXISTS `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wId` int(11) NOT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `report`
--

INSERT INTO `report` (`id`, `wId`, `time`) VALUES
(2, 2, '2018-05-26'),
(3, 9, '2018-05-26');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `userName` varchar(40) NOT NULL,
  `author` int(11) DEFAULT NULL,
  `sex` varchar(4) NOT NULL,
  `resume` varchar(80) NOT NULL,
  `question` varchar(80) NOT NULL,
  `answer` varchar(80) NOT NULL,
  `photo` varchar(80) DEFAULT NULL,
  `registerTime` date DEFAULT NULL,
  `free` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `login`, `passwd`, `userName`, `author`, `sex`, `resume`, `question`, `answer`, `photo`, `registerTime`, `free`) VALUES
(1, '1', '1', '雨客', 1, '男', '站长（笑）', '1', '1', './WBresources/photo/01.jpg', '2018-05-04', '2018-05-26'),
(2, '2', '2', '晴', 2, '男', '这是我简介', '2', '2', './WBresources/photo/7.jpg', '2018-05-04', NULL),
(3, '3', '3', 'iboy', 6, '男', '3', '3', '3', './WBresources/photo/none.jpg', '2018-05-04', NULL),
(4, 'hitthis', 'thithis', 'hitthis', 6, '男', '不说讲笑话的段子手', 'what', '13', 'E:\\WBresources\\none.jpg', '2018-05-26', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `weibo`
--

DROP TABLE IF EXISTS `weibo`;
CREATE TABLE IF NOT EXISTS `weibo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uId` int(11) NOT NULL,
  `content` varchar(400) NOT NULL,
  `releaseTime` date DEFAULT NULL,
  `lastEditTime` date DEFAULT NULL,
  `good` int(11) DEFAULT NULL,
  `photo` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `weibo`
--

INSERT INTO `weibo` (`id`, `uId`, `content`, `releaseTime`, `lastEditTime`, `good`, `photo`) VALUES
(2, 1, '我上传了新头像', '2018-05-22', '2018-05-22', 6, './WBresources/img/01.jpg'),
(3, 1, '互粉功能正式上线', '2018-05-24', '2018-05-24', 3, ''),
(7, 2, '修改', '2018-05-26', '2018-05-26', 0, ''),
(8, 2, '发个长图', '2018-05-26', '2018-05-26', 0, './WBresources/img/6.jpg'),
(9, 2, '听说加了图片上传', '2018-05-26', '2018-05-26', 1, './WBresources/img/3.jpg'),
(10, 2, '这才是默认头像', '2018-05-26', '2018-05-26', 0, './WBresources/img/none.jpg'),
(11, 3, '新人报道', '2018-05-26', '2018-05-26', 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
