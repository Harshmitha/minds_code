# Host: localhost  (Version: 5.0.27-community-nt)
# Date: 2018-12-14 18:00:47
# Generator: MySQL-Front 5.3  (Build 4.186)

/*!40101 SET NAMES latin1 */;

#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES ('admin','admin');

#
# Structure for table "faculty"
#

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty` (
  `id` int(11) NOT NULL auto_increment,
  `course` varchar(45) default NULL,
  `dept` varchar(45) default NULL,
  `college_name` varchar(45) default NULL,
  `college_place` varchar(45) default NULL,
  `faculty_name` varchar(45) default NULL,
  `faculty_dob` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `father_name` varchar(45) default NULL,
  `mother_name` varchar(45) default NULL,
  `email_id` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `mobile` varchar(45) default NULL,
  `faculty_highest_qualification` varchar(45) default NULL,
  `faculty_designation` varchar(45) default NULL,
  `faculty_doj` varchar(45) default NULL,
  `faculty_experenince` varchar(45) default NULL,
  `faculty_prev_college_work` varchar(45) default NULL,
  `present_status` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "faculty"
#

INSERT INTO `faculty` VALUES (1,'UG','Computer Science & Engg ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123',NULL,'5554309','UG',NULL,NULL,NULL,NULL,'hhgf'),(2,'UG','Computer Science & Engg ',NULL,NULL,NULL,NULL,'MALE',NULL,NULL,NULL,'123','Glb','9901590617','UG',NULL,NULL,NULL,'1','hhgf'),(3,'UG','Computer Science & Engg ',NULL,NULL,NULL,NULL,'MALE',NULL,NULL,NULL,'1234','Glb','9901590617','UG',NULL,NULL,NULL,'1','hhgf'),(4,'CSE','UG','Appa','Glb','Devender singh','23-01-2001','MALE','Aa','aaa','aaa@gmail.com','123','Glb','9875874587','UG','Prof','20-02-2018','3','1','hhgf');

#
# Structure for table "subject_mapping"
#

DROP TABLE IF EXISTS `subject_mapping`;
CREATE TABLE `subject_mapping` (
  `id` int(11) NOT NULL auto_increment,
  `sem` varchar(45) default NULL,
  `course` varchar(45) default NULL,
  `dept` varchar(45) default NULL,
  `subject` varchar(45) default NULL,
  `assign_faculty` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "subject_mapping"
#

INSERT INTO `subject_mapping` VALUES (4,'1st',NULL,'UG','subject1','Devender singh');
