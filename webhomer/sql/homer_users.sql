--
-- The table for Fake DNS resolving.
--

CREATE TABLE IF NOT EXISTS `homer_hosts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `host` varchar(80) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `host_2` (`host`),
  KEY `host` (`host`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

--
-- Daten f Tabelle `homer_hosts`
--
-- --------------------------------------------------------

--
--  Users of HOMER (1 - ADMIN, 2 - Power User, 3 - User)
--

CREATE TABLE IF NOT EXISTS `homer_logon` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `userlevel` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

--
-- Daten f Tabelle `homer_logon`
--

INSERT INTO `homer_logon` VALUES(NULL, 'test@test.com', MD5('test123'), 1);

-- --------------------------------------------------------

--
--  Databases NODES of HOMER. You can have many DB instances.
--

CREATE TABLE IF NOT EXISTS `homer_nodes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `host` varchar(80) NOT NULL,
  `dbname` varchar(100) NOT NULL,
  `dbport` varchar(100) NOT NULL,
  `dbusername` varchar(100) NOT NULL,
  `dbpassword` varchar(100) NOT NULL,
  `dbtables` varchar(100) NOT NULL DEFAULT 'sip_capture',
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `host_2` (`host`),
  KEY `host` (`host`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

--
-- Daten f Tabelle `homer_nodes`
--

INSERT INTO `homer_nodes` VALUES(1, 'localhost', 'db1', '3306','root', '', 'sip_capture', 'homer', 1);

--
-- Table for search logging 
--

CREATE TABLE IF NOT EXISTS `homer_searchlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `search` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `useremail` (`useremail`),
  KEY `datekey` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

