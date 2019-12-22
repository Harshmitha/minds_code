
CREATE DATABASE IF NOT EXISTS new_rdpc;
USE new_rdpc;

--
-- Definition of table `challenge`
--

DROP TABLE IF EXISTS `challenge`;
CREATE TABLE `challenge` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `fileid` varchar(45) NOT NULL,
  `oid` varchar(45) NOT NULL,
  `oname` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `omail` varchar(60) NOT NULL,
  `time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `challenge`
--

/*!40000 ALTER TABLE `challenge` DISABLE KEYS */;
/*!40000 ALTER TABLE `challenge` ENABLE KEYS */;


--
-- Definition of table `download`
--

DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `oid` varchar(45) NOT NULL,
  `fid` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

/*!40000 ALTER TABLE `download` DISABLE KEYS */;
/*!40000 ALTER TABLE `download` ENABLE KEYS */;


--
-- Definition of table `file_upload`
--

DROP TABLE IF EXISTS `file_upload`;
CREATE TABLE `file_upload` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `filename` varchar(45) NOT NULL,
  `content` longblob NOT NULL,
  `owner` varchar(45) NOT NULL,
  `oid` varchar(45) NOT NULL,
  `dtime` varchar(45) NOT NULL,
  `fsize` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `des` varchar(45) NOT NULL,
  `tag` varchar(45) NOT NULL,
  `hkey` varchar(45) NOT NULL,
  `pkey` varchar(45) NOT NULL,
  `str1` longblob,
  `str2` longblob,
  `str3` longblob,
  `hash1` varchar(45) default NULL,
  `hash2` varchar(45) default NULL,
  `hash3` varchar(45) default NULL,
  `omail` varchar(45) default NULL,
  `status` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_upload`
--

/*!40000 ALTER TABLE `file_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_upload` ENABLE KEYS */;


--
-- Definition of table `oreg`
--

DROP TABLE IF EXISTS `oreg`;
CREATE TABLE `oreg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `skey` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oreg`
--

/*!40000 ALTER TABLE `oreg` DISABLE KEYS */;
/*!40000 ALTER TABLE `oreg` ENABLE KEYS */;


--
-- Definition of table `ort`
--

DROP TABLE IF EXISTS `ort`;
CREATE TABLE `ort` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `oid` varchar(45) NOT NULL,
  `omail` varchar(45) NOT NULL,
  `str1` longblob NOT NULL,
  `str2` longblob NOT NULL,
  `str3` longblob NOT NULL,
  `fid` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `dynamic` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

