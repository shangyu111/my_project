-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: django8zxltngv
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `django8zxltngv`
--

/*!40000 DROP DATABASE IF EXISTS `django8zxltngv`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `django8zxltngv` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `django8zxltngv`;

--
-- Table structure for table `banji`
--

DROP TABLE IF EXISTS `banji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `renshu` varchar(200) DEFAULT NULL COMMENT '人数',
  `banzhuren` varchar(200) DEFAULT NULL COMMENT '班主任',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `banjiweizhi` varchar(200) DEFAULT NULL COMMENT '班级位置',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banji` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banji`
--

LOCK TABLES `banji` WRITE;
/*!40000 ALTER TABLE `banji` DISABLE KEYS */;
INSERT INTO `banji` VALUES (11,'2024-03-12 00:06:13','班级1','人数1','班主任1','13823888881','班级位置1'),(12,'2024-03-12 00:06:13','班级2','人数2','班主任2','13823888882','班级位置2'),(13,'2024-03-12 00:06:13','班级3','人数3','班主任3','13823888883','班级位置3'),(14,'2024-03-12 00:06:13','班级4','人数4','班主任4','13823888884','班级位置4'),(15,'2024-03-12 00:06:13','班级5','人数5','班主任5','13823888885','班级位置5'),(16,'2024-03-12 00:06:13','班级6','人数6','班主任6','13823888886','班级位置6'),(17,'2024-03-12 00:06:13','班级7','人数7','班主任7','13823888887','班级位置7'),(18,'2024-03-12 00:06:13','班级8','人数8','班主任8','13823888888','班级位置8');
/*!40000 ALTER TABLE `banji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL),(7,'APIKey','ihML0NfEM0jokUAuBD9tbYtW',NULL),(8,'SecretKey','WK2bRUFf2uNe3oEoQXULpi8Y37aCvFdD',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` longtext COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `pquestion` varchar(200) DEFAULT NULL COMMENT '密保问题',
  `panswer` varchar(200) DEFAULT NULL COMMENT '密保答案',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2024-03-12 00:06:13','教师工号1','e10adc3949ba59abbe56e057f20f883e','教师姓名1','男','upload/jiaoshi_zhaopian1.jpg','职称1','13823888881','密保问题1','密保答案1'),(22,'2024-03-12 00:06:13','教师工号2','e10adc3949ba59abbe56e057f20f883e','教师姓名2','男','upload/jiaoshi_zhaopian2.jpg','职称2','13823888882','密保问题2','密保答案2'),(23,'2024-03-12 00:06:13','教师工号3','e10adc3949ba59abbe56e057f20f883e','教师姓名3','男','upload/jiaoshi_zhaopian3.jpg','职称3','13823888883','密保问题3','密保答案3'),(24,'2024-03-12 00:06:13','教师工号4','e10adc3949ba59abbe56e057f20f883e','教师姓名4','男','upload/jiaoshi_zhaopian4.jpg','职称4','13823888884','密保问题4','密保答案4'),(25,'2024-03-12 00:06:13','教师工号5','e10adc3949ba59abbe56e057f20f883e','教师姓名5','男','upload/jiaoshi_zhaopian5.jpg','职称5','13823888885','密保问题5','密保答案5'),(26,'2024-03-12 00:06:13','教师工号6','e10adc3949ba59abbe56e057f20f883e','教师姓名6','男','upload/jiaoshi_zhaopian6.jpg','职称6','13823888886','密保问题6','密保答案6'),(27,'2024-03-12 00:06:13','教师工号7','e10adc3949ba59abbe56e057f20f883e','教师姓名7','男','upload/jiaoshi_zhaopian7.jpg','职称7','13823888887','密保问题7','密保答案7'),(28,'2024-03-12 00:06:13','教师工号8','e10adc3949ba59abbe56e057f20f883e','教师姓名8','男','upload/jiaoshi_zhaopian8.jpg','职称8','13823888888','密保问题8','密保答案8');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoqintixing`
--

DROP TABLE IF EXISTS `kaoqintixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoqintixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongzhibiaoti` varchar(200) NOT NULL COMMENT '通知标题',
  `tongzhineirong` longtext COMMENT '通知内容',
  `tongzhiriqi` date DEFAULT NULL COMMENT '通知日期',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710202602996 DEFAULT CHARSET=utf8 COMMENT='考勤提醒';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoqintixing`
--

LOCK TABLES `kaoqintixing` WRITE;
/*!40000 ALTER TABLE `kaoqintixing` DISABLE KEYS */;
INSERT INTO `kaoqintixing` VALUES (101,'2024-03-12 00:06:13','通知标题1','通知内容1','2024-03-12','学号1','姓名1','手机1'),(102,'2024-03-12 00:06:13','通知标题2','通知内容2','2024-03-12','学号2','姓名2','手机2'),(103,'2024-03-12 00:06:13','通知标题3','通知内容3','2024-03-12','学号3','姓名3','手机3'),(104,'2024-03-12 00:06:13','通知标题4','通知内容4','2024-03-12','学号4','姓名4','手机4'),(105,'2024-03-12 00:06:13','通知标题5','通知内容5','2024-03-12','学号5','姓名5','手机5'),(106,'2024-03-12 00:06:13','通知标题6','通知内容6','2024-03-12','学号6','姓名6','手机6'),(107,'2024-03-12 00:06:13','通知标题7','通知内容7','2024-03-12','学号7','姓名7','手机7'),(108,'2024-03-12 00:06:13','通知标题8','通知内容8','2024-03-12','学号8','姓名8','手机8'),(1710202602995,'2024-03-12 00:16:42','这里提醒学生考勤操作','AA','2024-03-12','学号1','姓名1','13823888881');
/*!40000 ALTER TABLE `kaoqintixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoqintongji`
--

DROP TABLE IF EXISTS `kaoqintongji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoqintongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoqinriqi` date DEFAULT NULL COMMENT '考勤日期',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `zhengchangrenshu` int(11) DEFAULT NULL COMMENT '正常人数',
  `chidaorenshu` int(11) DEFAULT NULL COMMENT '迟到人数',
  `qingjiarenshu` int(11) DEFAULT NULL COMMENT '请假人数',
  `kuangkerenshu` int(11) DEFAULT NULL COMMENT '旷课人数',
  `zaotuirenshu` int(11) DEFAULT NULL COMMENT '早退人数',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710202501858 DEFAULT CHARSET=utf8 COMMENT='考勤统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoqintongji`
--

LOCK TABLES `kaoqintongji` WRITE;
/*!40000 ALTER TABLE `kaoqintongji` DISABLE KEYS */;
INSERT INTO `kaoqintongji` VALUES (91,'2024-03-12 00:06:13','2024-03-11','课程名称1',15,10,2,0,3,'教师工号1','教师姓名1'),(92,'2024-03-12 00:06:13','2024-03-12','课程名称2',2,2,2,2,2,'教师工号2','教师姓名2'),(93,'2024-03-12 00:06:13','2024-03-10','课程名称3',30,2,12,2,1,'教师工号3','教师姓名3'),(94,'2024-03-12 00:06:13','2024-03-12','课程名称4',4,4,4,4,4,'教师工号4','教师姓名4'),(95,'2024-03-12 00:06:13','2024-03-12','课程名称5',5,5,5,5,5,'教师工号5','教师姓名5'),(96,'2024-03-12 00:06:13','2024-03-12','课程名称6',6,6,6,6,6,'教师工号6','教师姓名6'),(97,'2024-03-12 00:06:13','2024-03-12','课程名称7',7,7,7,7,7,'教师工号7','教师姓名7'),(98,'2024-03-12 00:06:13','2024-03-12','课程名称8',8,8,8,8,8,'教师工号8','教师姓名8'),(1710202501857,'2024-03-12 00:15:01','2024-03-09','A课程',30,1,2,0,0,'教师工号1','教师姓名1');
/*!40000 ALTER TABLE `kaoqintongji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kemumingcheng` varchar(200) DEFAULT NULL COMMENT '科目名称',
  `kechengtupian` longtext COMMENT '课程图片',
  `kechengfanwei` varchar(200) DEFAULT NULL COMMENT '课程范围',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (51,'2024-03-12 00:06:13','课程名称1','科目名称1','upload/kechengxinxi_kechengtupian1.jpg,upload/kechengxinxi_kechengtupian2.jpg,upload/kechengxinxi_kechengtupian3.jpg','课程范围1','课程介绍1','教师工号1','教师姓名1','2024-03-12'),(52,'2024-03-12 00:06:13','课程名称2','科目名称2','upload/kechengxinxi_kechengtupian2.jpg,upload/kechengxinxi_kechengtupian3.jpg,upload/kechengxinxi_kechengtupian4.jpg','课程范围2','课程介绍2','教师工号2','教师姓名2','2024-03-12'),(53,'2024-03-12 00:06:13','课程名称3','科目名称3','upload/kechengxinxi_kechengtupian3.jpg,upload/kechengxinxi_kechengtupian4.jpg,upload/kechengxinxi_kechengtupian5.jpg','课程范围3','课程介绍3','教师工号3','教师姓名3','2024-03-12'),(54,'2024-03-12 00:06:13','课程名称4','科目名称4','upload/kechengxinxi_kechengtupian4.jpg,upload/kechengxinxi_kechengtupian5.jpg,upload/kechengxinxi_kechengtupian6.jpg','课程范围4','课程介绍4','教师工号4','教师姓名4','2024-03-12'),(55,'2024-03-12 00:06:13','课程名称5','科目名称5','upload/kechengxinxi_kechengtupian5.jpg,upload/kechengxinxi_kechengtupian6.jpg,upload/kechengxinxi_kechengtupian7.jpg','课程范围5','课程介绍5','教师工号5','教师姓名5','2024-03-12'),(56,'2024-03-12 00:06:13','课程名称6','科目名称6','upload/kechengxinxi_kechengtupian6.jpg,upload/kechengxinxi_kechengtupian7.jpg,upload/kechengxinxi_kechengtupian8.jpg','课程范围6','课程介绍6','教师工号6','教师姓名6','2024-03-12'),(57,'2024-03-12 00:06:13','课程名称7','科目名称7','upload/kechengxinxi_kechengtupian7.jpg,upload/kechengxinxi_kechengtupian8.jpg,upload/kechengxinxi_kechengtupian9.jpg','课程范围7','课程介绍7','教师工号7','教师姓名7','2024-03-12'),(58,'2024-03-12 00:06:13','课程名称8','科目名称8','upload/kechengxinxi_kechengtupian8.jpg,upload/kechengxinxi_kechengtupian9.jpg,upload/kechengxinxi_kechengtupian10.jpg','课程范围8','课程介绍8','教师工号8','教师姓名8','2024-03-12');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kemuxinxi`
--

DROP TABLE IF EXISTS `kemuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kemuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kemumingcheng` varchar(200) NOT NULL COMMENT '科目名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kemumingcheng` (`kemumingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='科目信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kemuxinxi`
--

LOCK TABLES `kemuxinxi` WRITE;
/*!40000 ALTER TABLE `kemuxinxi` DISABLE KEYS */;
INSERT INTO `kemuxinxi` VALUES (41,'2024-03-12 00:06:13','科目名称1'),(42,'2024-03-12 00:06:13','科目名称2'),(43,'2024-03-12 00:06:13','科目名称3'),(44,'2024-03-12 00:06:13','科目名称4'),(45,'2024-03-12 00:06:13','科目名称5'),(46,'2024-03-12 00:06:13','科目名称6'),(47,'2024-03-12 00:06:13','科目名称7'),(48,'2024-03-12 00:06:13','科目名称8');
/*!40000 ALTER TABLE `kemuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiandaojilu`
--

DROP TABLE IF EXISTS `qiandaojilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiandaojilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `qiandaomingcheng` varchar(200) DEFAULT NULL COMMENT '签到名称',
  `qiandaotupian` longtext NOT NULL COMMENT '签到图片',
  `qiandaoshijian` datetime DEFAULT NULL COMMENT '签到时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `qiandaobeizhu` varchar(200) DEFAULT NULL COMMENT '签到备注',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710202557993 DEFAULT CHARSET=utf8 COMMENT='签到记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiandaojilu`
--

LOCK TABLES `qiandaojilu` WRITE;
/*!40000 ALTER TABLE `qiandaojilu` DISABLE KEYS */;
INSERT INTO `qiandaojilu` VALUES (61,'2024-03-12 00:06:13','课程名称1','签到名称1','upload/qiandaojilu_qiandaotupian1.jpg,upload/qiandaojilu_qiandaotupian2.jpg,upload/qiandaojilu_qiandaotupian3.jpg','2024-03-12 08:06:13','教师工号1','签到备注1','学号1','班级1','这里回复签到信息'),(62,'2024-03-12 00:06:13','课程名称2','签到名称2','upload/qiandaojilu_qiandaotupian2.jpg,upload/qiandaojilu_qiandaotupian3.jpg,upload/qiandaojilu_qiandaotupian4.jpg','2024-03-12 08:06:13','教师工号2','签到备注2','学号2','班级2',''),(63,'2024-03-12 00:06:13','课程名称3','签到名称3','upload/qiandaojilu_qiandaotupian3.jpg,upload/qiandaojilu_qiandaotupian4.jpg,upload/qiandaojilu_qiandaotupian5.jpg','2024-03-12 08:06:13','教师工号3','签到备注3','学号3','班级3',''),(64,'2024-03-12 00:06:13','课程名称4','签到名称4','upload/qiandaojilu_qiandaotupian4.jpg,upload/qiandaojilu_qiandaotupian5.jpg,upload/qiandaojilu_qiandaotupian6.jpg','2024-03-12 08:06:13','教师工号4','签到备注4','学号4','班级4',''),(65,'2024-03-12 00:06:13','课程名称5','签到名称5','upload/qiandaojilu_qiandaotupian5.jpg,upload/qiandaojilu_qiandaotupian6.jpg,upload/qiandaojilu_qiandaotupian7.jpg','2024-03-12 08:06:13','教师工号5','签到备注5','学号5','班级5',''),(66,'2024-03-12 00:06:13','课程名称6','签到名称6','upload/qiandaojilu_qiandaotupian6.jpg,upload/qiandaojilu_qiandaotupian7.jpg,upload/qiandaojilu_qiandaotupian8.jpg','2024-03-12 08:06:13','教师工号6','签到备注6','学号6','班级6',''),(67,'2024-03-12 00:06:13','课程名称7','签到名称7','upload/qiandaojilu_qiandaotupian7.jpg,upload/qiandaojilu_qiandaotupian8.jpg,upload/qiandaojilu_qiandaotupian9.jpg','2024-03-12 08:06:13','教师工号7','签到备注7','学号7','班级7',''),(68,'2024-03-12 00:06:13','课程名称8','签到名称8','upload/qiandaojilu_qiandaotupian8.jpg,upload/qiandaojilu_qiandaotupian9.jpg,upload/qiandaojilu_qiandaotupian10.jpg','2024-03-12 08:06:13','教师工号8','签到备注8','学号8','班级8',''),(1710202557992,'2024-03-12 00:15:57','课程名称1','AAA','upload/1710202552324.jpeg','2024-03-12 08:15:48','教师工号1','','学号1','班级1','收到签到信息');
/*!40000 ALTER TABLE `qiandaojilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjiajilu`
--

DROP TABLE IF EXISTS `qingjiajilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjiajilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengtupian` longtext COMMENT '课程图片',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `qingjiashijian` date DEFAULT NULL COMMENT '请假时间',
  `qingjiayuanyin` varchar(200) DEFAULT NULL COMMENT '请假原因',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710202567345 DEFAULT CHARSET=utf8 COMMENT='请假记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjiajilu`
--

LOCK TABLES `qingjiajilu` WRITE;
/*!40000 ALTER TABLE `qingjiajilu` DISABLE KEYS */;
INSERT INTO `qingjiajilu` VALUES (71,'2024-03-12 00:06:13','课程名称1','upload/qingjiajilu_kechengtupian1.jpg,upload/qingjiajilu_kechengtupian2.jpg,upload/qingjiajilu_kechengtupian3.jpg','教师工号1','教师姓名1','2024-03-12','请假原因1','学号1','班级1','是',''),(72,'2024-03-12 00:06:13','课程名称2','upload/qingjiajilu_kechengtupian2.jpg,upload/qingjiajilu_kechengtupian3.jpg,upload/qingjiajilu_kechengtupian4.jpg','教师工号2','教师姓名2','2024-03-12','请假原因2','学号2','班级2','是',''),(73,'2024-03-12 00:06:13','课程名称3','upload/qingjiajilu_kechengtupian3.jpg,upload/qingjiajilu_kechengtupian4.jpg,upload/qingjiajilu_kechengtupian5.jpg','教师工号3','教师姓名3','2024-03-12','请假原因3','学号3','班级3','是',''),(74,'2024-03-12 00:06:13','课程名称4','upload/qingjiajilu_kechengtupian4.jpg,upload/qingjiajilu_kechengtupian5.jpg,upload/qingjiajilu_kechengtupian6.jpg','教师工号4','教师姓名4','2024-03-12','请假原因4','学号4','班级4','是',''),(75,'2024-03-12 00:06:13','课程名称5','upload/qingjiajilu_kechengtupian5.jpg,upload/qingjiajilu_kechengtupian6.jpg,upload/qingjiajilu_kechengtupian7.jpg','教师工号5','教师姓名5','2024-03-12','请假原因5','学号5','班级5','是',''),(76,'2024-03-12 00:06:13','课程名称6','upload/qingjiajilu_kechengtupian6.jpg,upload/qingjiajilu_kechengtupian7.jpg,upload/qingjiajilu_kechengtupian8.jpg','教师工号6','教师姓名6','2024-03-12','请假原因6','学号6','班级6','是',''),(77,'2024-03-12 00:06:13','课程名称7','upload/qingjiajilu_kechengtupian7.jpg,upload/qingjiajilu_kechengtupian8.jpg,upload/qingjiajilu_kechengtupian9.jpg','教师工号7','教师姓名7','2024-03-12','请假原因7','学号7','班级7','是',''),(78,'2024-03-12 00:06:13','课程名称8','upload/qingjiajilu_kechengtupian8.jpg,upload/qingjiajilu_kechengtupian9.jpg,upload/qingjiajilu_kechengtupian10.jpg','教师工号8','教师姓名8','2024-03-12','请假原因8','学号8','班级8','是',''),(1710202567344,'2024-03-12 00:16:07','课程名称1','upload/kechengxinxi_kechengtupian1.jpg,upload/kechengxinxi_kechengtupian2.jpg,upload/kechengxinxi_kechengtupian3.jpg','教师工号1','教师姓名1','2024-03-12','这里请假操作','学号1','班级1','是','请假通过');
/*!40000 ALTER TABLE `qingjiajilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syslog`
--

DROP TABLE IF EXISTS `syslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syslog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `operation` varchar(200) NOT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` longtext COMMENT '请求参数',
  `time` bigint(20) DEFAULT NULL COMMENT '请求时长(毫秒)',
  `ip` varchar(200) DEFAULT NULL COMMENT 'IP地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710202706826 DEFAULT CHARSET=utf8 COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syslog`
--

LOCK TABLES `syslog` WRITE;
/*!40000 ALTER TABLE `syslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `syslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemnotice`
--

DROP TABLE IF EXISTS `systemnotice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemnotice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemnotice`
--

LOCK TABLES `systemnotice` WRITE;
/*!40000 ALTER TABLE `systemnotice` DISABLE KEYS */;
INSERT INTO `systemnotice` VALUES (1,'2024-03-12 00:06:13','<h1><span style=\"color: rgb(230, 0, 0);\">这里编辑公告信息</span></h1>');
/*!40000 ALTER TABLE `systemnotice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2024-03-12 00:06:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `pquestion` varchar(200) DEFAULT NULL COMMENT '密保问题',
  `panswer` varchar(200) DEFAULT NULL COMMENT '密保答案',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (31,'2024-03-12 00:06:13','学号1','e10adc3949ba59abbe56e057f20f883e','姓名1','女','upload/1710202542069.jpeg','13823888881','班级1','密保问题1','密保答案1'),(32,'2024-03-12 00:06:13','学号2','e10adc3949ba59abbe56e057f20f883e','姓名2','男','upload/xuesheng_touxiang2.jpg','13823888882','班级2','密保问题2','密保答案2'),(33,'2024-03-12 00:06:13','学号3','e10adc3949ba59abbe56e057f20f883e','姓名3','男','upload/xuesheng_touxiang3.jpg','13823888883','班级3','密保问题3','密保答案3'),(34,'2024-03-12 00:06:13','学号4','e10adc3949ba59abbe56e057f20f883e','姓名4','男','upload/xuesheng_touxiang4.jpg','13823888884','班级4','密保问题4','密保答案4'),(35,'2024-03-12 00:06:13','学号5','e10adc3949ba59abbe56e057f20f883e','姓名5','男','upload/xuesheng_touxiang5.jpg','13823888885','班级5','密保问题5','密保答案5'),(36,'2024-03-12 00:06:13','学号6','e10adc3949ba59abbe56e057f20f883e','姓名6','男','upload/xuesheng_touxiang6.jpg','13823888886','班级6','密保问题6','密保答案6'),(37,'2024-03-12 00:06:13','学号7','e10adc3949ba59abbe56e057f20f883e','姓名7','男','upload/xuesheng_touxiang7.jpg','13823888887','班级7','密保问题7','密保答案7'),(38,'2024-03-12 00:06:13','学号8','e10adc3949ba59abbe56e057f20f883e','姓名8','男','upload/xuesheng_touxiang8.jpg','13823888888','班级8','密保问题8','密保答案8');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengkaoqin`
--

DROP TABLE IF EXISTS `xueshengkaoqin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengkaoqin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kaoqinqingkuang` varchar(200) NOT NULL COMMENT '考勤情况',
  `kaoqinshuoming` varchar(200) DEFAULT NULL COMMENT '考勤说明',
  `kaoqinriqi` date DEFAULT NULL COMMENT '考勤日期',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710202682913 DEFAULT CHARSET=utf8 COMMENT='学生考勤';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengkaoqin`
--

LOCK TABLES `xueshengkaoqin` WRITE;
/*!40000 ALTER TABLE `xueshengkaoqin` DISABLE KEYS */;
INSERT INTO `xueshengkaoqin` VALUES (81,'2024-03-12 00:06:13','课程名称1','正常','考勤说明1','2024-03-12','学号1','姓名1','班级1','教师工号1'),(82,'2024-03-12 00:06:13','课程名称2','正常','考勤说明2','2024-03-12','学号2','姓名2','班级2','教师工号2'),(83,'2024-03-12 00:06:13','课程名称3','正常','考勤说明3','2024-03-12','学号3','姓名3','班级3','教师工号3'),(84,'2024-03-12 00:06:13','课程名称4','正常','考勤说明4','2024-03-12','学号4','姓名4','班级4','教师工号4'),(85,'2024-03-12 00:06:13','课程名称5','正常','考勤说明5','2024-03-12','学号5','姓名5','班级5','教师工号5'),(86,'2024-03-12 00:06:13','课程名称6','正常','考勤说明6','2024-03-12','学号6','姓名6','班级6','教师工号6'),(87,'2024-03-12 00:06:13','课程名称7','正常','考勤说明7','2024-03-12','学号7','姓名7','班级7','教师工号7'),(88,'2024-03-12 00:06:13','课程名称8','正常','考勤说明8','2024-03-12','学号8','姓名8','班级8','教师工号8'),(1710202682912,'2024-03-12 00:18:02','课程名称1','正常','教师添加这门课程学生的考勤情况','2024-03-12','学号1','姓名1','班级1','教师工号1');
/*!40000 ALTER TABLE `xueshengkaoqin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-22 12:40:13
