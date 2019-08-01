DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `comment` varchar(300) NOT NULL,
  PRIMARY KEY (`fid`)
)
