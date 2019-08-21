/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.19 : Database - db_blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_blog`;

/*Table structure for table `t_blog` */

DROP TABLE IF EXISTS `t_blog`;

CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `summary` varchar(400) DEFAULT NULL COMMENT '摘要',
  `releaseDate` datetime DEFAULT NULL COMMENT '发表时间',
  `clickHit` int(11) DEFAULT NULL COMMENT '点击数',
  `replyHit` int(11) DEFAULT NULL COMMENT '评论数',
  `content` text COMMENT '内容',
  `typeId` int(11) DEFAULT NULL COMMENT '所属博客类型',
  `keyWord` varchar(200) DEFAULT NULL COMMENT '关键字',
  PRIMARY KEY (`id`),
  KEY `typeId` (`typeId`),
  CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `t_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='博客表';

/*Data for the table `t_blog` */

insert  into `t_blog`(`id`,`title`,`summary`,`releaseDate`,`clickHit`,`replyHit`,`content`,`typeId`,`keyWord`) values (9,'标题3333','内容444444','2019-07-15 13:15:26',12,1,'<p>内容。。。。</p>',1,'关键字'),(11,'标题111','内容。。。。','2019-07-15 21:13:22',10,3,'<p>内容。。。。</p>',14,'关键字'),(12,'5GFDDD','1','2019-07-17 18:40:12',0,0,'<p>1</p>',1,'5G'),(13,'111','A5G','2019-07-17 18:40:16',0,0,'<p>A5G</p>',1,'1'),(14,'5GASDFAS','1','2019-07-17 18:40:18',0,0,'<p>1</p>',1,'1'),(15,'111','1','2019-07-17 18:40:20',0,0,'<p>1</p>',1,'5G'),(16,'111','1','2019-07-17 18:40:22',0,0,'<p>1</p>',1,'5G'),(17,'111','1','2019-07-17 18:40:23',0,0,'<p>1</p>',1,'5G'),(18,'111','1','2019-07-17 18:40:30',0,0,'<p>1</p>',1,'5G 4G'),(19,'111','1','2019-07-17 18:40:32',1,0,'<p>1</p>',1,'5G'),(20,'111','1','2019-07-17 18:40:33',16,0,'<p>1</p>',1,'5G 4G'),(21,'111','1','2019-07-17 18:40:35',39,3,'<p>1</p>',1,'5G 4G'),(22,'曾“跪舔”美国阻拦5G，迫使华为卖掉重量级业务，如今却沦为笑柄','导读：曾“跪舔”美国阻拦5G，迫使华为卖掉重量级业务，如今却沦为笑柄！众所周知，华为作为中国第一大民营企业，其不仅在手机业务方面做得十分出色，而且在移动通讯领域，华为也同样做得很棒，特别是在5G移动通讯技术领域，华为因为布局较早，而且还投入了大量的人力和物力，所以在5G网络技术方面， 华为很早就积累了大量的技','2019-07-18 11:48:34',34,0,'<p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">导读：曾“跪舔”美国阻拦5G，迫使华为卖掉重量级业务，如今却沦为笑柄！</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">众所周知，华为作为中国第一大民营企业，其不仅在手机业务方面做得十分出色，而且在移动通讯领域，华为也同样做得很棒，特别是在5G移动通讯技术领域，华为因为布局较早，而且还投入了大量的人力和物力，所以在5G网络技术方面， 华为很早就积累了大量的技术专利，本以为华为5G能在5G时代到来的时候取得巨大的突破，但是没想到却遭到了以美国为首的几大国家的抵制！</span></p><p><img class=\"large\" data-loadfunc=\"0\" src=\"/Blog/ueditor/jsp/upload/image/20190718/1563421696310018560.png\" data-loaded=\"0\" style=\"border: 0px; width: 600px; display: block;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">就在美国公开宣称华为5G技术有安全问题的时候，有这么一个国家为了紧紧跟上美国的步伐 ，也开始不遗余力的打压华为，不仅宣布禁止华为在本国部署5G网络，而且还凭借自己国家所处的地理位置优势“迫使”华为卖掉了自己重量级的子公司，这样“跪舔”美国的行为无疑引来了不少网友的吐槽，而这一国家就是独霸大洋洲的澳大利亚。</span></p><p><img class=\"normal\" width=\"484px\" data-loadfunc=\"0\" src=\"/Blog/ueditor/jsp/upload/image/20190718/1563421696390005476.png\" data-loaded=\"0\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">为了阻拦华为5G发展，澳大利亚不仅和美国站在一条战线上，而且还直接拒绝了华为5G进入澳大利亚，不仅如此，前一段时间，华为出售旗下重量级子公司——华为海洋网络公司也和澳大利亚的阻拦有着千丝万缕的关系；根据任正非的消息来看，这一次华为出售海洋网络公司并非是因为业务失利，而是出于一些其它方面因素的考虑！</span></p><p><img class=\"large\" data-loadfunc=\"0\" src=\"/Blog/ueditor/jsp/upload/image/20190718/1563421696435059898.png\" data-loaded=\"0\" style=\"border: 0px; width: 600px; display: block;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">据悉，华为海洋网络公司的主要业务就是致力于海底光缆的铺设，这是一家华为和英国全球海事系统公司共同组建的公司，自从公司成立之后，在全球海洋光缆铺设业务中也一直发展比较顺利，并且还占据了全球15%的市场份额，目前在全球范围内，华为海洋网络公司已经铺设了90条，总计高达5万多公里的海缆，也是全球排名第四大的海缆工程企业！</span></p><p><img class=\"normal\" width=\"454px\" data-loadfunc=\"0\" src=\"/Blog/ueditor/jsp/upload/image/20190718/1563421696504046734.png\" data-loaded=\"0\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">要知道随着全球移动互联网的快速发展，海底光缆的铺设已经变得越来越重要了，目前全球有超过95%的数据流量都是通过海缆来进行传输的，本以为在5G网络时代到来的时候，华为海洋网络公司将会成为华为集团的又一大发展利器，但是没想到华为却突然出售了这一核心业务，而这一次导致华为出售海洋网络公司的主要原因则和“跪舔”美国的澳大利亚是有分不开的关系的！</span></p><p><img class=\"large\" data-loadfunc=\"0\" src=\"/Blog/ueditor/jsp/upload/image/20190718/1563421696551076713.png\" data-loaded=\"0\" style=\"border: 0px; width: 600px; display: block;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">澳大利亚占据着大洋洲的独特地理优势，而为了能铺设海缆，可以说澳大利亚也成为了绕不开的坎儿，此前华为海洋网络公司与大洋洲所罗门群岛签署海底光缆铺设协议的时候，澳大利亚就从中作梗，强迫所罗门放弃了与华为的合作，而受此影响，也导致华为海洋网络公司的营收下滑了不少，为了能独立专心的发展自己的5G网络技术，华为如今也只能忍痛割爱卖掉了海洋网络公司的业务！</span></p><p><img class=\"normal\" width=\"480px\" data-loadfunc=\"0\" src=\"/Blog/ueditor/jsp/upload/image/20190718/1563421696597019258.png\" data-loaded=\"0\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\">而就在澳大利亚阻拦华为5G网络技术发展的时候，澳大利亚国内也开始投入了上千亿元进行自建5G网络，但是根据最新的消息报道显示，澳大利亚的5G网速还没有之前的4G网速快，这也导致澳大利亚5G网络陷入到窘境，可能将会在5G网络风口到来的时候掉队，甚至沦为一个笑柄，不知道对此你是怎么看的呢？欢迎留言！</span></p><p><br/></p>',14,'5G'),(23,'测试关键字的查询1','测试关键字的查询2','2019-07-18 21:14:50',5,0,'<p>测试关键字的查询2</p>',1,'测试关键字的查询3');

/*Table structure for table `t_blogger` */

DROP TABLE IF EXISTS `t_blogger`;

CREATE TABLE `t_blogger` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userName` varchar(50) DEFAULT NULL COMMENT '登录名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `profile` text COMMENT '个人信息',
  `nickName` varchar(50) DEFAULT NULL COMMENT '昵称',
  `sign` varchar(100) DEFAULT NULL COMMENT '个性签名',
  `imageName` varchar(100) DEFAULT NULL COMMENT '头像地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='博主';

/*Data for the table `t_blogger` */

insert  into `t_blogger`(`id`,`userName`,`password`,`profile`,`nickName`,`sign`,`imageName`) values (1,'admin','6d8ec72ff4e1f92aee2271eebf38a84b','<p>11111啊1<img src=\"/Blog/static/userImages/20190716/1563270280288053486.png\" title=\"1563270280288053486.png\" alt=\"bd_logo1.png\"/></p>','大海无量','你好1','20190716054445.png');

/*Table structure for table `t_blogtype` */

DROP TABLE IF EXISTS `t_blogtype`;

CREATE TABLE `t_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `typeName` varchar(100) DEFAULT NULL COMMENT '类型名称',
  `orderNo` int(11) DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='博客类型表';

/*Data for the table `t_blogtype` */

insert  into `t_blogtype`(`id`,`typeName`,`orderNo`) values (1,'Java',1),(9,'Spring',2),(14,'欢迎使用',3),(16,'C语言',4),(17,'C#',5);

/*Table structure for table `t_comment` */

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userIp` varchar(50) DEFAULT NULL COMMENT '评论者IP',
  `blogId` int(11) DEFAULT NULL COMMENT '被评论博客的主键',
  `content` varchar(1000) DEFAULT NULL COMMENT '评论内容',
  `commentDate` datetime DEFAULT NULL COMMENT '评论时间',
  `state` int(11) DEFAULT NULL COMMENT '评论状态：0未审核1审核通过2审核不通过',
  PRIMARY KEY (`id`),
  KEY `blogId` (`blogId`),
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='评论表';

/*Data for the table `t_comment` */

insert  into `t_comment`(`id`,`userIp`,`blogId`,`content`,`commentDate`,`state`) values (1,'127.0.0.1',22,'好得很','2019-07-18 13:34:22',1),(2,'127.0.0.1',22,'好得很','2019-07-18 13:34:22',1),(3,'127.0.0.1',22,'好得很','2019-07-18 13:34:22',1),(4,'127.0.0.1',22,'好得很','2019-07-18 13:34:22',1),(5,'127.0.0.1',22,'好得很','2019-07-18 13:34:22',1),(6,'127.0.0.1',22,'好得很','2019-07-18 13:34:22',1),(7,'127.0.0.1',22,'好得很','2019-07-18 13:34:22',1),(8,'127.0.0.1',22,'好得很','2019-07-18 13:34:22',1),(9,'127.0.0.1',22,'好得很','2019-07-18 13:34:22',1),(10,'127.0.0.1',22,'好得很','2019-07-18 13:34:22',1),(11,'127.0.0.1',22,'好得很','2019-07-18 13:34:22',1),(12,'127.0.0.1',22,'好得很','2019-07-18 13:34:22',1),(13,'0:0:0:0:0:0:0:1',21,'HAODE啊','2019-07-18 16:29:50',1),(14,'0:0:0:0:0:0:0:1',21,'不好','2019-07-18 16:30:17',2),(15,'0:0:0:0:0:0:0:1',21,'真真正正','2019-07-18 16:38:08',0);

/*Table structure for table `t_link` */

DROP TABLE IF EXISTS `t_link`;

CREATE TABLE `t_link` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '主键',
  `linkName` varchar(100) DEFAULT NULL COMMENT '网站名称',
  `linkUrl` varchar(500) DEFAULT NULL COMMENT '网站地址',
  `orderNo` int(11) DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='友情链接';

/*Data for the table `t_link` */

insert  into `t_link`(`id`,`linkName`,`linkUrl`,`orderNo`) values (00000000001,'百度','http://www.baidu.com/',1),(00000000002,'163','http://www.163.com/',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
