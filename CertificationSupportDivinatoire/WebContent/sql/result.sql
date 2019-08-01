DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `rid` int(100) NOT NULL AUTO_INCREMENT,
  `matricule` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `examLevel` varchar(100) NOT NULL,
  `examName` varchar(100) DEFAULT NULL,
  `startTime` varchar(255) DEFAULT NULL,
  `nbOfQuestion` varchar(10) DEFAULT NULL,
  `nbCorrectAnswer` varchar(10) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`rid`)
)