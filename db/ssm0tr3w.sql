-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm0tr3w
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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm0tr3w/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm0tr3w/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm0tr3w/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyinletuijian`
--

DROP TABLE IF EXISTS `discussyinletuijian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyinletuijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='音乐推荐评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyinletuijian`
--

LOCK TABLES `discussyinletuijian` WRITE;
/*!40000 ALTER TABLE `discussyinletuijian` DISABLE KEYS */;
INSERT INTO `discussyinletuijian` VALUES (131,'2020-12-31 00:52:49',1,1,'评论内容1','回复内容1'),(132,'2020-12-31 00:52:49',2,2,'评论内容2','回复内容2'),(133,'2020-12-31 00:52:49',3,3,'评论内容3','回复内容3'),(134,'2020-12-31 00:52:49',4,4,'评论内容4','回复内容4'),(135,'2020-12-31 00:52:49',5,5,'评论内容5','回复内容5'),(136,'2020-12-31 00:52:49',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussyinletuijian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (111,'2020-12-31 00:52:49','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(112,'2020-12-31 00:52:49','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(113,'2020-12-31 00:52:49','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(114,'2020-12-31 00:52:49','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(115,'2020-12-31 00:52:49','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(116,'2020-12-31 00:52:49','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fufeiyinle`
--

DROP TABLE IF EXISTS `fufeiyinle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fufeiyinle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `geming` varchar(200) NOT NULL COMMENT '歌名',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `zhuanji` varchar(200) DEFAULT NULL COMMENT '专辑',
  `shijian` varchar(200) DEFAULT NULL COMMENT '时间',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `zhekoujia` varchar(200) DEFAULT NULL COMMENT '折扣价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='付费音乐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fufeiyinle`
--

LOCK TABLES `fufeiyinle` WRITE;
/*!40000 ALTER TABLE `fufeiyinle` DISABLE KEYS */;
INSERT INTO `fufeiyinle` VALUES (61,'2020-12-31 00:52:49','歌名1','分类1','http://localhost:8080/ssm0tr3w/upload/fufeiyinle_tupian1.jpg','歌手1','专辑1','时间1','价格1','折扣价1'),(62,'2020-12-31 00:52:49','歌名2','分类2','http://localhost:8080/ssm0tr3w/upload/fufeiyinle_tupian2.jpg','歌手2','专辑2','时间2','价格2','折扣价2'),(63,'2020-12-31 00:52:49','歌名3','分类3','http://localhost:8080/ssm0tr3w/upload/fufeiyinle_tupian3.jpg','歌手3','专辑3','时间3','价格3','折扣价3'),(64,'2020-12-31 00:52:49','歌名4','分类4','http://localhost:8080/ssm0tr3w/upload/fufeiyinle_tupian4.jpg','歌手4','专辑4','时间4','价格4','折扣价4'),(65,'2020-12-31 00:52:49','歌名5','分类5','http://localhost:8080/ssm0tr3w/upload/fufeiyinle_tupian5.jpg','歌手5','专辑5','时间5','价格5','折扣价5'),(66,'2020-12-31 00:52:49','歌名6','分类6','http://localhost:8080/ssm0tr3w/upload/fufeiyinle_tupian6.jpg','歌手6','专辑6','时间6','价格6','折扣价6');
/*!40000 ALTER TABLE `fufeiyinle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuanfahuo`
--

DROP TABLE IF EXISTS `huiyuanfahuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuanfahuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `geming` varchar(200) DEFAULT NULL COMMENT '歌名',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `yinlewenjian` varchar(200) DEFAULT NULL COMMENT '音乐文件',
  `yinzhi` varchar(200) DEFAULT NULL COMMENT '音质',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='会员发货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuanfahuo`
--

LOCK TABLES `huiyuanfahuo` WRITE;
/*!40000 ALTER TABLE `huiyuanfahuo` DISABLE KEYS */;
INSERT INTO `huiyuanfahuo` VALUES (101,'2020-12-31 00:52:49','订单编号1','歌名1','分类1','','音质1','2020-12-31','会员号1','昵称1'),(102,'2020-12-31 00:52:49','订单编号2','歌名2','分类2','','音质2','2020-12-31','会员号2','昵称2'),(103,'2020-12-31 00:52:49','订单编号3','歌名3','分类3','','音质3','2020-12-31','会员号3','昵称3'),(104,'2020-12-31 00:52:49','订单编号4','歌名4','分类4','','音质4','2020-12-31','会员号4','昵称4'),(105,'2020-12-31 00:52:49','订单编号5','歌名5','分类5','','音质5','2020-12-31','会员号5','昵称5'),(106,'2020-12-31 00:52:49','订单编号6','歌名6','分类6','','音质6','2020-12-31','会员号6','昵称6');
/*!40000 ALTER TABLE `huiyuanfahuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuangoumai`
--

DROP TABLE IF EXISTS `huiyuangoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuangoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `geming` varchar(200) DEFAULT NULL COMMENT '歌名',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `zhekoujia` varchar(200) DEFAULT NULL COMMENT '折扣价',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `huiyuanhao` varchar(200) DEFAULT NULL COMMENT '会员号',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='会员购买';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuangoumai`
--

LOCK TABLES `huiyuangoumai` WRITE;
/*!40000 ALTER TABLE `huiyuangoumai` DISABLE KEYS */;
INSERT INTO `huiyuangoumai` VALUES (91,'2020-12-31 00:52:49','订单编号1','歌名1','分类1','歌手1','折扣价1','2020-12-31','会员号1','昵称1','未支付'),(92,'2020-12-31 00:52:49','订单编号2','歌名2','分类2','歌手2','折扣价2','2020-12-31','会员号2','昵称2','未支付'),(93,'2020-12-31 00:52:49','订单编号3','歌名3','分类3','歌手3','折扣价3','2020-12-31','会员号3','昵称3','未支付'),(94,'2020-12-31 00:52:49','订单编号4','歌名4','分类4','歌手4','折扣价4','2020-12-31','会员号4','昵称4','未支付'),(95,'2020-12-31 00:52:49','订单编号5','歌名5','分类5','歌手5','折扣价5','2020-12-31','会员号5','昵称5','未支付'),(96,'2020-12-31 00:52:49','订单编号6','歌名6','分类6','歌手6','折扣价6','2020-12-31','会员号6','昵称6','未支付');
/*!40000 ALTER TABLE `huiyuangoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuanleibie`
--

DROP TABLE IF EXISTS `huiyuanleibie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuanleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanleibie` varchar(200) NOT NULL COMMENT '会员类别',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `youxiaoshijian` varchar(200) NOT NULL COMMENT '有效时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='会员类别';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuanleibie`
--

LOCK TABLES `huiyuanleibie` WRITE;
/*!40000 ALTER TABLE `huiyuanleibie` DISABLE KEYS */;
INSERT INTO `huiyuanleibie` VALUES (21,'2020-12-31 00:52:49','会员类别1',1,'有效时间1'),(22,'2020-12-31 00:52:49','会员类别2',2,'有效时间2'),(23,'2020-12-31 00:52:49','会员类别3',3,'有效时间3'),(24,'2020-12-31 00:52:49','会员类别4',4,'有效时间4'),(25,'2020-12-31 00:52:49','会员类别5',5,'有效时间5'),(26,'2020-12-31 00:52:49','会员类别6',6,'有效时间6');
/*!40000 ALTER TABLE `huiyuanleibie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuanxinxi`
--

DROP TABLE IF EXISTS `huiyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `huiyuanhao` varchar(200) NOT NULL COMMENT '会员号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `huiyuanleibie` varchar(200) NOT NULL COMMENT '会员类别',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `youxiaoshijian` varchar(200) DEFAULT NULL COMMENT '有效时间',
  `kaitongriqi` date NOT NULL COMMENT '开通日期',
  `daoqiriqi` date NOT NULL COMMENT '到期日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanhao` (`huiyuanhao`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='会员信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuanxinxi`
--

LOCK TABLES `huiyuanxinxi` WRITE;
/*!40000 ALTER TABLE `huiyuanxinxi` DISABLE KEYS */;
INSERT INTO `huiyuanxinxi` VALUES (31,'2020-12-31 00:52:49','用户名1','昵称1','会员信息1','123456','姓名1','会员类别1','价格1','有效时间1','2020-12-31','2020-12-31','未支付'),(32,'2020-12-31 00:52:49','用户名2','昵称2','会员信息2','123456','姓名2','会员类别2','价格2','有效时间2','2020-12-31','2020-12-31','未支付'),(33,'2020-12-31 00:52:49','用户名3','昵称3','会员信息3','123456','姓名3','会员类别3','价格3','有效时间3','2020-12-31','2020-12-31','未支付'),(34,'2020-12-31 00:52:49','用户名4','昵称4','会员信息4','123456','姓名4','会员类别4','价格4','有效时间4','2020-12-31','2020-12-31','未支付'),(35,'2020-12-31 00:52:49','用户名5','昵称5','会员信息5','123456','姓名5','会员类别5','价格5','有效时间5','2020-12-31','2020-12-31','未支付'),(36,'2020-12-31 00:52:49','用户名6','昵称6','会员信息6','123456','姓名6','会员类别6','价格6','有效时间6','2020-12-31','2020-12-31','未支付');
/*!40000 ALTER TABLE `huiyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `putongfahuo`
--

DROP TABLE IF EXISTS `putongfahuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `putongfahuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `geming` varchar(200) DEFAULT NULL COMMENT '歌名',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `yinlewenjian` varchar(200) DEFAULT NULL COMMENT '音乐文件',
  `yinzhi` varchar(200) DEFAULT NULL COMMENT '音质',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='普通发货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `putongfahuo`
--

LOCK TABLES `putongfahuo` WRITE;
/*!40000 ALTER TABLE `putongfahuo` DISABLE KEYS */;
INSERT INTO `putongfahuo` VALUES (81,'2020-12-31 00:52:49','订单编号1','歌名1','分类1','歌手1','','音质1','2020-12-31','用户名1','昵称1'),(82,'2020-12-31 00:52:49','订单编号2','歌名2','分类2','歌手2','','音质2','2020-12-31','用户名2','昵称2'),(83,'2020-12-31 00:52:49','订单编号3','歌名3','分类3','歌手3','','音质3','2020-12-31','用户名3','昵称3'),(84,'2020-12-31 00:52:49','订单编号4','歌名4','分类4','歌手4','','音质4','2020-12-31','用户名4','昵称4'),(85,'2020-12-31 00:52:49','订单编号5','歌名5','分类5','歌手5','','音质5','2020-12-31','用户名5','昵称5'),(86,'2020-12-31 00:52:49','订单编号6','歌名6','分类6','歌手6','','音质6','2020-12-31','用户名6','昵称6');
/*!40000 ALTER TABLE `putongfahuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `putonggoumai`
--

DROP TABLE IF EXISTS `putonggoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `putonggoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `geming` varchar(200) DEFAULT NULL COMMENT '歌名',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='普通购买';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `putonggoumai`
--

LOCK TABLES `putonggoumai` WRITE;
/*!40000 ALTER TABLE `putonggoumai` DISABLE KEYS */;
INSERT INTO `putonggoumai` VALUES (71,'2020-12-31 00:52:49','订单编号1','歌名1','分类1','歌手1','价格1','2020-12-31','用户名1','昵称1','未支付'),(72,'2020-12-31 00:52:49','订单编号2','歌名2','分类2','歌手2','价格2','2020-12-31','用户名2','昵称2','未支付'),(73,'2020-12-31 00:52:49','订单编号3','歌名3','分类3','歌手3','价格3','2020-12-31','用户名3','昵称3','未支付'),(74,'2020-12-31 00:52:49','订单编号4','歌名4','分类4','歌手4','价格4','2020-12-31','用户名4','昵称4','未支付'),(75,'2020-12-31 00:52:49','订单编号5','歌名5','分类5','歌手5','价格5','2020-12-31','用户名5','昵称5','未支付'),(76,'2020-12-31 00:52:49','订单编号6','歌名6','分类6','歌手6','价格6','2020-12-31','用户名6','昵称6','未支付');
/*!40000 ALTER TABLE `putonggoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','h4wce2yumptrps41lf2mlf0wlu625xqx','2020-12-31 00:54:44','2020-12-31 01:54:45');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-12-31 00:52:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yinlefenlei`
--

DROP TABLE IF EXISTS `yinlefenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yinlefenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='音乐分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yinlefenlei`
--

LOCK TABLES `yinlefenlei` WRITE;
/*!40000 ALTER TABLE `yinlefenlei` DISABLE KEYS */;
INSERT INTO `yinlefenlei` VALUES (41,'2020-12-31 00:52:49','分类1'),(42,'2020-12-31 00:52:49','分类2'),(43,'2020-12-31 00:52:49','分类3'),(44,'2020-12-31 00:52:49','分类4'),(45,'2020-12-31 00:52:49','分类5'),(46,'2020-12-31 00:52:49','分类6');
/*!40000 ALTER TABLE `yinlefenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yinletuijian`
--

DROP TABLE IF EXISTS `yinletuijian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yinletuijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `geming` varchar(200) NOT NULL COMMENT '歌名',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `zhuanji` varchar(200) DEFAULT NULL COMMENT '专辑',
  `shiting` varchar(200) DEFAULT NULL COMMENT '试听',
  `geci` longtext COMMENT '歌词',
  `faxingriqi` date DEFAULT NULL COMMENT '发行日期',
  `bangdanpaixing` varchar(200) DEFAULT NULL COMMENT '榜单排行',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='音乐推荐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yinletuijian`
--

LOCK TABLES `yinletuijian` WRITE;
/*!40000 ALTER TABLE `yinletuijian` DISABLE KEYS */;
INSERT INTO `yinletuijian` VALUES (51,'2020-12-31 00:52:49','歌名1','分类1','http://localhost:8080/ssm0tr3w/upload/yinletuijian_tupian1.jpg','歌手1','专辑1','','歌词1','2020-12-31','榜单排行1'),(52,'2020-12-31 00:52:49','歌名2','分类2','http://localhost:8080/ssm0tr3w/upload/yinletuijian_tupian2.jpg','歌手2','专辑2','','歌词2','2020-12-31','榜单排行2'),(53,'2020-12-31 00:52:49','歌名3','分类3','http://localhost:8080/ssm0tr3w/upload/yinletuijian_tupian3.jpg','歌手3','专辑3','','歌词3','2020-12-31','榜单排行3'),(54,'2020-12-31 00:52:49','歌名4','分类4','http://localhost:8080/ssm0tr3w/upload/yinletuijian_tupian4.jpg','歌手4','专辑4','','歌词4','2020-12-31','榜单排行4'),(55,'2020-12-31 00:52:49','歌名5','分类5','http://localhost:8080/ssm0tr3w/upload/yinletuijian_tupian5.jpg','歌手5','专辑5','','歌词5','2020-12-31','榜单排行5'),(56,'2020-12-31 00:52:49','歌名6','分类6','http://localhost:8080/ssm0tr3w/upload/yinletuijian_tupian6.jpg','歌手6','专辑6','','歌词6','2020-12-31','榜单排行6');
/*!40000 ALTER TABLE `yinletuijian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `nicheng` varchar(200) DEFAULT NULL COMMENT '昵称',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2020-12-31 00:52:49','用户1','123456','昵称1','姓名1','男','http://localhost:8080/ssm0tr3w/upload/yonghu_touxiang1.jpg','773890001@qq.com','13823888881'),(12,'2020-12-31 00:52:49','用户2','123456','昵称2','姓名2','男','http://localhost:8080/ssm0tr3w/upload/yonghu_touxiang2.jpg','773890002@qq.com','13823888882'),(13,'2020-12-31 00:52:49','用户3','123456','昵称3','姓名3','男','http://localhost:8080/ssm0tr3w/upload/yonghu_touxiang3.jpg','773890003@qq.com','13823888883'),(14,'2020-12-31 00:52:49','用户4','123456','昵称4','姓名4','男','http://localhost:8080/ssm0tr3w/upload/yonghu_touxiang4.jpg','773890004@qq.com','13823888884'),(15,'2020-12-31 00:52:49','用户5','123456','昵称5','姓名5','男','http://localhost:8080/ssm0tr3w/upload/yonghu_touxiang5.jpg','773890005@qq.com','13823888885'),(16,'2020-12-31 00:52:49','用户6','123456','昵称6','姓名6','男','http://localhost:8080/ssm0tr3w/upload/yonghu_touxiang6.jpg','773890006@qq.com','13823888886');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-31 14:58:31
