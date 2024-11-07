/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmo4419
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmo4419` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmo4419`;

/*Table structure for table `caipinxinxi` */

DROP TABLE IF EXISTS `caipinxinxi`;

CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinbianhao` varchar(200) DEFAULT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `kouweipianhao` varchar(200) DEFAULT NULL COMMENT '口味偏好',
  `jianjie` longtext COMMENT '简介',
  `canyindianzhanghao` varchar(200) DEFAULT NULL COMMENT '餐饮店账号',
  `canyindianmingcheng` varchar(200) DEFAULT NULL COMMENT '餐饮店名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinbianhao` (`caipinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='菜品信息';

/*Data for the table `caipinxinxi` */

insert  into `caipinxinxi`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caixi`,`tupian`,`jiage`,`kouweipianhao`,`jianjie`,`canyindianzhanghao`,`canyindianmingcheng`) values (61,'2021-04-19 16:17:53','菜品编号1','菜品名称1','菜系1','http://localhost:8080/ssmo4419/upload/caipinxinxi_tupian1.jpg',1,'口味偏好1','简介1','餐饮店账号1','餐饮店名称1'),(62,'2021-04-19 16:17:53','菜品编号2','菜品名称2','菜系2','http://localhost:8080/ssmo4419/upload/caipinxinxi_tupian2.jpg',2,'口味偏好2','简介2','餐饮店账号2','餐饮店名称2'),(63,'2021-04-19 16:17:53','菜品编号3','菜品名称3','菜系3','http://localhost:8080/ssmo4419/upload/caipinxinxi_tupian3.jpg',3,'口味偏好3','简介3','餐饮店账号3','餐饮店名称3'),(64,'2021-04-19 16:17:53','菜品编号4','菜品名称4','菜系4','http://localhost:8080/ssmo4419/upload/caipinxinxi_tupian4.jpg',4,'口味偏好4','简介4','餐饮店账号4','餐饮店名称4'),(65,'2021-04-19 16:17:53','菜品编号5','菜品名称5','菜系5','http://localhost:8080/ssmo4419/upload/caipinxinxi_tupian5.jpg',5,'口味偏好5','简介5','餐饮店账号5','餐饮店名称5'),(66,'2021-04-19 16:17:53','菜品编号6','菜品名称6','菜系6','http://localhost:8080/ssmo4419/upload/caipinxinxi_tupian6.jpg',6,'口味偏好6','简介6','餐饮店账号6','餐饮店名称6');

/*Table structure for table `caixi` */

DROP TABLE IF EXISTS `caixi`;

CREATE TABLE `caixi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='菜系';

/*Data for the table `caixi` */

insert  into `caixi`(`id`,`addtime`,`caixi`) values (41,'2021-04-19 16:17:53','菜系1'),(42,'2021-04-19 16:17:53','菜系2'),(43,'2021-04-19 16:17:53','菜系3'),(44,'2021-04-19 16:17:53','菜系4'),(45,'2021-04-19 16:17:53','菜系5'),(46,'2021-04-19 16:17:53','菜系6');

/*Table structure for table `canyindian` */

DROP TABLE IF EXISTS `canyindian`;

CREATE TABLE `canyindian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `canyindianzhanghao` varchar(200) NOT NULL COMMENT '餐饮店账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `canyindianmingcheng` varchar(200) DEFAULT NULL COMMENT '餐饮店名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `canyindianxiangqing` longtext COMMENT '餐饮店详情',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `canyindianzhanghao` (`canyindianzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='餐饮店';

/*Data for the table `canyindian` */

insert  into `canyindian`(`id`,`addtime`,`canyindianzhanghao`,`mima`,`canyindianmingcheng`,`tupian`,`dizhi`,`canyindianxiangqing`,`lianxifangshi`) values (21,'2021-04-19 16:17:53','餐饮店1','123456','餐饮店名称1','http://localhost:8080/ssmo4419/upload/canyindian_tupian1.jpg','地址1','餐饮店详情1','13823888881'),(22,'2021-04-19 16:17:53','餐饮店2','123456','餐饮店名称2','http://localhost:8080/ssmo4419/upload/canyindian_tupian2.jpg','地址2','餐饮店详情2','13823888882'),(23,'2021-04-19 16:17:53','餐饮店3','123456','餐饮店名称3','http://localhost:8080/ssmo4419/upload/canyindian_tupian3.jpg','地址3','餐饮店详情3','13823888883'),(24,'2021-04-19 16:17:53','餐饮店4','123456','餐饮店名称4','http://localhost:8080/ssmo4419/upload/canyindian_tupian4.jpg','地址4','餐饮店详情4','13823888884'),(25,'2021-04-19 16:17:53','餐饮店5','123456','餐饮店名称5','http://localhost:8080/ssmo4419/upload/canyindian_tupian5.jpg','地址5','餐饮店详情5','13823888885'),(26,'2021-04-19 16:17:53','餐饮店6','123456','餐饮店名称6','http://localhost:8080/ssmo4419/upload/canyindian_tupian6.jpg','地址6','餐饮店详情6','13823888886');

/*Table structure for table `canzhuo` */

DROP TABLE IF EXISTS `canzhuo`;

CREATE TABLE `canzhuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuohao` varchar(200) DEFAULT NULL COMMENT '桌号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='餐桌';

/*Data for the table `canzhuo` */

insert  into `canzhuo`(`id`,`addtime`,`zhuohao`) values (51,'2021-04-19 16:17:53','桌号1'),(52,'2021-04-19 16:17:53','桌号2'),(53,'2021-04-19 16:17:53','桌号3'),(54,'2021-04-19 16:17:53','桌号4'),(55,'2021-04-19 16:17:53','桌号5'),(56,'2021-04-19 16:17:53','桌号6');

/*Table structure for table `canzhuozhuangtai` */

DROP TABLE IF EXISTS `canzhuozhuangtai`;

CREATE TABLE `canzhuozhuangtai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `canyindianzhanghao` varchar(200) DEFAULT NULL COMMENT '餐饮店账号',
  `canyindianmingcheng` varchar(200) DEFAULT NULL COMMENT '餐饮店名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `canzhuo` varchar(200) DEFAULT NULL COMMENT '餐桌',
  `canzhuozhuangtai` varchar(200) DEFAULT NULL COMMENT '餐桌状态',
  `yongcanrenshu` int(11) DEFAULT NULL COMMENT '用餐人数',
  `yongcanshijian` varchar(200) DEFAULT NULL COMMENT '用餐时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='餐桌状态';

/*Data for the table `canzhuozhuangtai` */

insert  into `canzhuozhuangtai`(`id`,`addtime`,`canyindianzhanghao`,`canyindianmingcheng`,`tupian`,`canzhuo`,`canzhuozhuangtai`,`yongcanrenshu`,`yongcanshijian`,`gonghao`,`yuangongxingming`,`userid`) values (91,'2021-04-19 16:17:53','餐饮店账号1','餐饮店名称1','http://localhost:8080/ssmo4419/upload/canzhuozhuangtai_tupian1.jpg','餐桌1','空桌',1,'用餐时间1','工号1','员工姓名1',1),(92,'2021-04-19 16:17:53','餐饮店账号2','餐饮店名称2','http://localhost:8080/ssmo4419/upload/canzhuozhuangtai_tupian2.jpg','餐桌2','空桌',2,'用餐时间2','工号2','员工姓名2',2),(93,'2021-04-19 16:17:53','餐饮店账号3','餐饮店名称3','http://localhost:8080/ssmo4419/upload/canzhuozhuangtai_tupian3.jpg','餐桌3','空桌',3,'用餐时间3','工号3','员工姓名3',3),(94,'2021-04-19 16:17:53','餐饮店账号4','餐饮店名称4','http://localhost:8080/ssmo4419/upload/canzhuozhuangtai_tupian4.jpg','餐桌4','空桌',4,'用餐时间4','工号4','员工姓名4',4),(95,'2021-04-19 16:17:53','餐饮店账号5','餐饮店名称5','http://localhost:8080/ssmo4419/upload/canzhuozhuangtai_tupian5.jpg','餐桌5','空桌',5,'用餐时间5','工号5','员工姓名5',5),(96,'2021-04-19 16:17:53','餐饮店账号6','餐饮店名称6','http://localhost:8080/ssmo4419/upload/canzhuozhuangtai_tupian6.jpg','餐桌6','空桌',6,'用餐时间6','工号6','员工姓名6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmo4419/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmo4419/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmo4419/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jiamengshenqing` */

DROP TABLE IF EXISTS `jiamengshenqing`;

CREATE TABLE `jiamengshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingbianhao` varchar(200) DEFAULT NULL COMMENT '申请编号',
  `canyindianzhanghao` varchar(200) DEFAULT NULL COMMENT '餐饮店账号',
  `canyindianmingcheng` varchar(200) DEFAULT NULL COMMENT '餐饮店名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiamengmingcheng` varchar(200) DEFAULT NULL COMMENT '加盟名称',
  `jiamengdiqu` varchar(200) DEFAULT NULL COMMENT '加盟地区',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shenqingbianhao` (`shenqingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='加盟申请';

/*Data for the table `jiamengshenqing` */

insert  into `jiamengshenqing`(`id`,`addtime`,`shenqingbianhao`,`canyindianzhanghao`,`canyindianmingcheng`,`tupian`,`jiamengmingcheng`,`jiamengdiqu`,`zhanghao`,`xingming`,`shouji`,`shenqingshijian`,`sfsh`,`shhf`) values (111,'2021-04-19 16:17:53','申请编号1','餐饮店账号1','餐饮店名称1','http://localhost:8080/ssmo4419/upload/jiamengshenqing_tupian1.jpg','加盟名称1','加盟地区1','账号1','姓名1','手机1','2021-04-19 16:17:53','是',''),(112,'2021-04-19 16:17:53','申请编号2','餐饮店账号2','餐饮店名称2','http://localhost:8080/ssmo4419/upload/jiamengshenqing_tupian2.jpg','加盟名称2','加盟地区2','账号2','姓名2','手机2','2021-04-19 16:17:53','是',''),(113,'2021-04-19 16:17:53','申请编号3','餐饮店账号3','餐饮店名称3','http://localhost:8080/ssmo4419/upload/jiamengshenqing_tupian3.jpg','加盟名称3','加盟地区3','账号3','姓名3','手机3','2021-04-19 16:17:53','是',''),(114,'2021-04-19 16:17:53','申请编号4','餐饮店账号4','餐饮店名称4','http://localhost:8080/ssmo4419/upload/jiamengshenqing_tupian4.jpg','加盟名称4','加盟地区4','账号4','姓名4','手机4','2021-04-19 16:17:53','是',''),(115,'2021-04-19 16:17:53','申请编号5','餐饮店账号5','餐饮店名称5','http://localhost:8080/ssmo4419/upload/jiamengshenqing_tupian5.jpg','加盟名称5','加盟地区5','账号5','姓名5','手机5','2021-04-19 16:17:53','是',''),(116,'2021-04-19 16:17:53','申请编号6','餐饮店账号6','餐饮店名称6','http://localhost:8080/ssmo4419/upload/jiamengshenqing_tupian6.jpg','加盟名称6','加盟地区6','账号6','姓名6','手机6','2021-04-19 16:17:53','是','');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,31,'员工1','yuangong','员工','2njw3qj1vr42zmguqxggjolgwlxb8ngl','2021-04-19 16:21:15','2021-04-19 17:21:16');

/*Table structure for table `tuidanxinxi` */

DROP TABLE IF EXISTS `tuidanxinxi`;

CREATE TABLE `tuidanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `canyindianzhanghao` varchar(200) DEFAULT NULL COMMENT '餐饮店账号',
  `canyindianmingcheng` varchar(200) DEFAULT NULL COMMENT '餐饮店名称',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `canzhuo` varchar(200) DEFAULT NULL COMMENT '餐桌',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tuidanshijian` datetime DEFAULT NULL COMMENT '退单时间',
  `tuidanyuanyin` longtext COMMENT '退单原因',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='退单信息';

/*Data for the table `tuidanxinxi` */

insert  into `tuidanxinxi`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caixi`,`tupian`,`jiage`,`shuliang`,`zongjine`,`canyindianzhanghao`,`canyindianmingcheng`,`xiadanshijian`,`canzhuo`,`zhanghao`,`xingming`,`tuidanshijian`,`tuidanyuanyin`,`sfsh`,`shhf`) values (81,'2021-04-19 16:17:53','订单编号1','菜品名称1','菜系1','http://localhost:8080/ssmo4419/upload/tuidanxinxi_tupian1.jpg','价格1','数量1','总金额1','餐饮店账号1','餐饮店名称1','2021-04-19 16:17:53','餐桌1','账号1','姓名1','2021-04-19 16:17:53','退单原因1','是',''),(82,'2021-04-19 16:17:53','订单编号2','菜品名称2','菜系2','http://localhost:8080/ssmo4419/upload/tuidanxinxi_tupian2.jpg','价格2','数量2','总金额2','餐饮店账号2','餐饮店名称2','2021-04-19 16:17:53','餐桌2','账号2','姓名2','2021-04-19 16:17:53','退单原因2','是',''),(83,'2021-04-19 16:17:53','订单编号3','菜品名称3','菜系3','http://localhost:8080/ssmo4419/upload/tuidanxinxi_tupian3.jpg','价格3','数量3','总金额3','餐饮店账号3','餐饮店名称3','2021-04-19 16:17:53','餐桌3','账号3','姓名3','2021-04-19 16:17:53','退单原因3','是',''),(84,'2021-04-19 16:17:53','订单编号4','菜品名称4','菜系4','http://localhost:8080/ssmo4419/upload/tuidanxinxi_tupian4.jpg','价格4','数量4','总金额4','餐饮店账号4','餐饮店名称4','2021-04-19 16:17:53','餐桌4','账号4','姓名4','2021-04-19 16:17:53','退单原因4','是',''),(85,'2021-04-19 16:17:53','订单编号5','菜品名称5','菜系5','http://localhost:8080/ssmo4419/upload/tuidanxinxi_tupian5.jpg','价格5','数量5','总金额5','餐饮店账号5','餐饮店名称5','2021-04-19 16:17:53','餐桌5','账号5','姓名5','2021-04-19 16:17:53','退单原因5','是',''),(86,'2021-04-19 16:17:53','订单编号6','菜品名称6','菜系6','http://localhost:8080/ssmo4419/upload/tuidanxinxi_tupian6.jpg','价格6','数量6','总金额6','餐饮店账号6','餐饮店名称6','2021-04-19 16:17:53','餐桌6','账号6','姓名6','2021-04-19 16:17:53','退单原因6','是','');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-19 16:17:54');

/*Table structure for table `wodedingdan` */

DROP TABLE IF EXISTS `wodedingdan`;

CREATE TABLE `wodedingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `canyindianzhanghao` varchar(200) DEFAULT NULL COMMENT '餐饮店账号',
  `canyindianmingcheng` varchar(200) DEFAULT NULL COMMENT '餐饮店名称',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `canzhuo` varchar(200) DEFAULT NULL COMMENT '餐桌',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='我的订单';

/*Data for the table `wodedingdan` */

insert  into `wodedingdan`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caixi`,`tupian`,`jiage`,`shuliang`,`zongjine`,`canyindianzhanghao`,`canyindianmingcheng`,`xiadanshijian`,`zhanghao`,`xingming`,`canzhuo`,`sfsh`,`shhf`,`ispay`) values (71,'2021-04-19 16:17:53','订单编号1','菜品名称1','菜系1','http://localhost:8080/ssmo4419/upload/wodedingdan_tupian1.jpg',1,1,'总金额1','餐饮店账号1','餐饮店名称1','2021-04-19 16:17:53','账号1','姓名1','餐桌1','是','','未支付'),(72,'2021-04-19 16:17:53','订单编号2','菜品名称2','菜系2','http://localhost:8080/ssmo4419/upload/wodedingdan_tupian2.jpg',2,2,'总金额2','餐饮店账号2','餐饮店名称2','2021-04-19 16:17:53','账号2','姓名2','餐桌2','是','','未支付'),(73,'2021-04-19 16:17:53','订单编号3','菜品名称3','菜系3','http://localhost:8080/ssmo4419/upload/wodedingdan_tupian3.jpg',3,3,'总金额3','餐饮店账号3','餐饮店名称3','2021-04-19 16:17:53','账号3','姓名3','餐桌3','是','','未支付'),(74,'2021-04-19 16:17:53','订单编号4','菜品名称4','菜系4','http://localhost:8080/ssmo4419/upload/wodedingdan_tupian4.jpg',4,4,'总金额4','餐饮店账号4','餐饮店名称4','2021-04-19 16:17:53','账号4','姓名4','餐桌4','是','','未支付'),(75,'2021-04-19 16:17:53','订单编号5','菜品名称5','菜系5','http://localhost:8080/ssmo4419/upload/wodedingdan_tupian5.jpg',5,5,'总金额5','餐饮店账号5','餐饮店名称5','2021-04-19 16:17:53','账号5','姓名5','餐桌5','是','','未支付'),(76,'2021-04-19 16:17:53','订单编号6','菜品名称6','菜系6','http://localhost:8080/ssmo4419/upload/wodedingdan_tupian6.jpg',6,6,'总金额6','餐饮店账号6','餐饮店名称6','2021-04-19 16:17:53','账号6','姓名6','餐桌6','是','','未支付');

/*Table structure for table `xiaoshoutongji` */

DROP TABLE IF EXISTS `xiaoshoutongji`;

CREATE TABLE `xiaoshoutongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `canyindianzhanghao` varchar(200) DEFAULT NULL COMMENT '餐饮店账号',
  `canyindianmingcheng` varchar(200) DEFAULT NULL COMMENT '餐饮店名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zongyingli` int(11) DEFAULT NULL COMMENT '总盈利',
  `tongjishijian` datetime DEFAULT NULL COMMENT '统计时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='销售统计';

/*Data for the table `xiaoshoutongji` */

insert  into `xiaoshoutongji`(`id`,`addtime`,`canyindianzhanghao`,`canyindianmingcheng`,`tupian`,`zongyingli`,`tongjishijian`) values (101,'2021-04-19 16:17:53','餐饮店账号1','餐饮店名称1','http://localhost:8080/ssmo4419/upload/xiaoshoutongji_tupian1.jpg',1,'2021-04-19 16:17:53'),(102,'2021-04-19 16:17:53','餐饮店账号2','餐饮店名称2','http://localhost:8080/ssmo4419/upload/xiaoshoutongji_tupian2.jpg',2,'2021-04-19 16:17:53'),(103,'2021-04-19 16:17:53','餐饮店账号3','餐饮店名称3','http://localhost:8080/ssmo4419/upload/xiaoshoutongji_tupian3.jpg',3,'2021-04-19 16:17:53'),(104,'2021-04-19 16:17:53','餐饮店账号4','餐饮店名称4','http://localhost:8080/ssmo4419/upload/xiaoshoutongji_tupian4.jpg',4,'2021-04-19 16:17:53'),(105,'2021-04-19 16:17:53','餐饮店账号5','餐饮店名称5','http://localhost:8080/ssmo4419/upload/xiaoshoutongji_tupian5.jpg',5,'2021-04-19 16:17:53'),(106,'2021-04-19 16:17:53','餐饮店账号6','餐饮店名称6','http://localhost:8080/ssmo4419/upload/xiaoshoutongji_tupian6.jpg',6,'2021-04-19 16:17:53');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-19 16:17:53','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmo4419/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-19 16:17:53','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmo4419/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-19 16:17:53','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmo4419/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-19 16:17:53','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmo4419/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-19 16:17:53','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmo4419/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-19 16:17:53','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmo4419/upload/yonghu_zhaopian6.jpg');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `canyindianzhanghao` varchar(200) DEFAULT NULL COMMENT '餐饮店账号',
  `canyindianmingcheng` varchar(200) DEFAULT NULL COMMENT '餐饮店名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`gonghao`,`mima`,`yuangongxingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`canyindianzhanghao`,`canyindianmingcheng`) values (31,'2021-04-19 16:17:53','员工1','123456','员工姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssmo4419/upload/yuangong_zhaopian1.jpg','餐饮店账号1','餐饮店名称1'),(32,'2021-04-19 16:17:53','员工2','123456','员工姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssmo4419/upload/yuangong_zhaopian2.jpg','餐饮店账号2','餐饮店名称2'),(33,'2021-04-19 16:17:53','员工3','123456','员工姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssmo4419/upload/yuangong_zhaopian3.jpg','餐饮店账号3','餐饮店名称3'),(34,'2021-04-19 16:17:53','员工4','123456','员工姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssmo4419/upload/yuangong_zhaopian4.jpg','餐饮店账号4','餐饮店名称4'),(35,'2021-04-19 16:17:53','员工5','123456','员工姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssmo4419/upload/yuangong_zhaopian5.jpg','餐饮店账号5','餐饮店名称5'),(36,'2021-04-19 16:17:53','员工6','123456','员工姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssmo4419/upload/yuangong_zhaopian6.jpg','餐饮店账号6','餐饮店名称6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
