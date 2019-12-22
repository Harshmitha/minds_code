#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES ('admin','admin');

#
#
# Structure for table "faculty"
#

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  
  `course` varchar(45) DEFAULT NULL,
  `dept` varchar(45) DEFAULT NULL,
  `college_name` varchar(45) DEFAULT NULL,
  `college_place` varchar(45) DEFAULT NULL,
  `faculty_name` varchar(45) DEFAULT NULL,
  `faculty_dob` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `father_name` varchar(45) DEFAULT NULL,
  `mother_name` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `faculty_highest_qualification` varchar(45) DEFAULT NULL,
   `faculty_designation` varchar(45) DEFAULT NULL,
  `faculty_doj` varchar(45) DEFAULT NULL,
  `faculty_experenince` varchar(45) DEFAULT NULL,
  `faculty_prev_college_work` varchar(45) DEFAULT NULL,
  `present_status` varchar(45) DEFAULT NULL,

  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "faculty"
#

#
#
# Structure for table "subject_mapping"
#

DROP TABLE IF EXISTS `subject_mapping`;
CREATE TABLE `subject_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sem` varchar(45) DEFAULT NULL,
  `course` varchar(45) DEFAULT NULL,
  `dept` varchar(45) DEFAULT NULL,
  `subject` varchar(45)DEFAULT NULL,
   `subject_code` varchar(45)DEFAULT NULL,
    `assign` varchar(45)DEFAULT NULL,
  `assign_faculty varchar(45)DEFAULT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "subject_mapping"
#