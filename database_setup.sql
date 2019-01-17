
-- mysql -u root -p     #passwordx

CREATE DATABASE cms_database;


-- create user and grant permissions
CREATE USER 'cms_user'@'localhost' IDENTIFIED BY 'secret_password';

GRANT SELECT,INSERT,UPDATE,DELETE ON cms_database.* TO 'cms_user'@'localhost';

-- view all users
-- select User, Host, Password from mysql.user;


-- select the database to use

use cms_database;


SET FOREIGN_KEY_CHECKS=0;


-- ----------------------------
-- Table structure for content_nodes
-- ----------------------------
DROP TABLE IF EXISTS `content_nodes`;

CREATE TABLE `content_nodes` (`id` int(11) NOT NULL auto_increment,`page_id` int(11) default NULL,`node` varchar(50) default NULL,`content` text,PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (`id` int(11) NOT NULL auto_increment,`menu_id` int(11) default NULL,`label` varchar(250) default NULL,`page_id` int(11) default NULL,`link` varchar(250) default NULL,`position` int(11) default NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (`id` int(11) NOT NULL auto_increment,`name` varchar(50) default NULL,`access_level` varchar(50) default NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (`id` int(11) NOT NULL auto_increment,`parent_id` int(11) default NULL,`namespace` varchar(50) default NULL,`name` varchar(100) default NULL,`date_created` int(11) default NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (`id` int(11) NOT NULL auto_increment,`username` varchar(50) default NULL,`password` varchar(250) default NULL,`first_name` varchar(50) default NULL,`last_name` varchar(50) default NULL,`role` varchar(25) default NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `menu_items` VALUES ('1', '1', 'Home', '0', '/', '1');
INSERT INTO `menu_items` VALUES ('2', '2', 'Manage Content', '0', '/page/list', '1');
INSERT INTO `menu_items` VALUES ('3', '2', 'Manage Menus', '0', '/menu', '2');
INSERT INTO `menu_items` VALUES ('4', '2', 'Manage Users', '0', '/user/list', '3');
INSERT INTO `menu_items` VALUES ('5', '2', 'Rebuild Search Index', '0','/search/build', '4');
INSERT INTO `menus` VALUES ('1', 'main_menu', null);
INSERT INTO `menus` VALUES ('2', 'admin_menu', null);
INSERT INTO `users` VALUES ('1', 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 'test','user', 'Administrator');


-- show tables;

-- select * from menus;

-- select * from users;

-- select * from pages;

-- select * from menu_items;

-- select * from content_nodes;
