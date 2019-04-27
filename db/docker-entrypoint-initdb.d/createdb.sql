CREATE DATABASE IF NOT EXISTS `handoff_dev` COLLATE 'utf8_general_ci';
GRANT ALL ON `handoff_dev`.* TO 'handoff_dev'@'%' IDENTIFIED BY 'secret';

FLUSH PRIVILEGES;
