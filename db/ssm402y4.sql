-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm402y4
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm402y4/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm402y4/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm402y4/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/ssm402y4/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/ssm402y4/upload/picture5.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxitonggonggao`
--

DROP TABLE IF EXISTS `discussxitonggonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统公告评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxitonggonggao`
--

LOCK TABLES `discussxitonggonggao` WRITE;
/*!40000 ALTER TABLE `discussxitonggonggao` DISABLE KEYS */;
INSERT INTO `discussxitonggonggao` VALUES (1,'2020-11-26 12:03:12',1,'评论内容1',1),(2,'2020-11-26 12:03:12',2,'评论内容2',2),(3,'2020-11-26 12:03:12',3,'评论内容3',3);
/*!40000 ALTER TABLE `discussxitonggonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dudao`
--

DROP TABLE IF EXISTS `dudao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dudao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dudaogonghao` varchar(200) NOT NULL COMMENT '督导工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dudaoxingming` varchar(200) NOT NULL COMMENT '督导姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dudaogonghao` (`dudaogonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='督导';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dudao`
--

LOCK TABLES `dudao` WRITE;
/*!40000 ALTER TABLE `dudao` DISABLE KEYS */;
INSERT INTO `dudao` VALUES (1,'2020-11-26 12:03:12','督导1','123456','督导姓名1','男','http://localhost:8080/ssm402y4/upload/dudao_touxiang1.jpg','13823888881'),(2,'2020-11-26 12:03:12','督导2','123456','督导姓名2','男','http://localhost:8080/ssm402y4/upload/dudao_touxiang2.jpg','13823888882'),(3,'2020-11-26 12:03:12','督导3','123456','督导姓名3','男','http://localhost:8080/ssm402y4/upload/dudao_touxiang3.jpg','13823888883');
/*!40000 ALTER TABLE `dudao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dudaopingjia`
--

DROP TABLE IF EXISTS `dudaopingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dudaopingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dudaopingfen` varchar(200) DEFAULT NULL COMMENT '督导评分',
  `dudaopingjia` longtext COMMENT '督导评价',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dudaogonghao` varchar(200) DEFAULT NULL COMMENT '督导工号',
  `dudaoxingming` varchar(200) DEFAULT NULL COMMENT '督导姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='督导评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dudaopingjia`
--

LOCK TABLES `dudaopingjia` WRITE;
/*!40000 ALTER TABLE `dudaopingjia` DISABLE KEYS */;
INSERT INTO `dudaopingjia` VALUES (1,'2020-11-26 12:03:12','教师工号1','教师姓名1','职称1','1','督导评价1','备注1','督导工号1','督导姓名1'),(2,'2020-11-26 12:03:12','教师工号2','教师姓名2','职称2','1','督导评价2','备注2','督导工号2','督导姓名2'),(3,'2020-11-26 12:03:12','教师工号3','教师姓名3','职称3','1','督导评价3','备注3','督导工号3','督导姓名3');
/*!40000 ALTER TABLE `dudaopingjia` ENABLE KEYS */;
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
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (1,'2020-11-26 12:03:12','教师1','123456','教师姓名1','男','http://localhost:8080/ssm402y4/upload/jiaoshi_zhaopian1.jpg','职称1','法学院','13823888881','773890001@qq.com'),(2,'2020-11-26 12:03:12','教师2','123456','教师姓名2','男','http://localhost:8080/ssm402y4/upload/jiaoshi_zhaopian2.jpg','职称2','计算机学院','13823888882','773890002@qq.com'),(3,'2020-11-26 12:03:12','教师3','123456','教师姓名3','男','http://localhost:8080/ssm402y4/upload/jiaoshi_zhaopian3.jpg','职称3','商学院','13823888883','773890003@qq.com');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshiliuyan`
--

DROP TABLE IF EXISTS `jiaoshiliuyan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshiliuyan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `liuyanbiaoti` varchar(200) NOT NULL COMMENT '留言标题',
  `liuyanriqi` date DEFAULT NULL COMMENT '留言日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `liuyanneirong` longtext COMMENT '留言内容',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师留言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshiliuyan`
--

LOCK TABLES `jiaoshiliuyan` WRITE;
/*!40000 ALTER TABLE `jiaoshiliuyan` DISABLE KEYS */;
INSERT INTO `jiaoshiliuyan` VALUES (1,'2020-11-26 12:03:12','留言标题1','2020-11-26','备注1','留言内容1','教师工号1','教师姓名1','否',''),(2,'2020-11-26 12:03:12','留言标题2','2020-11-26','备注2','留言内容2','教师工号2','教师姓名2','否',''),(3,'2020-11-26 12:03:12','留言标题3','2020-11-26','备注3','留言内容3','教师工号3','教师姓名3','否','');
/*!40000 ALTER TABLE `jiaoshiliuyan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshixinxi`
--

DROP TABLE IF EXISTS `jiaoshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `kemu` varchar(200) NOT NULL COMMENT '科目',
  `xuefen` int(11) NOT NULL COMMENT '学分',
  `xuenian` varchar(200) DEFAULT NULL COMMENT '学年',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshixinxi`
--

LOCK TABLES `jiaoshixinxi` WRITE;
/*!40000 ALTER TABLE `jiaoshixinxi` DISABLE KEYS */;
INSERT INTO `jiaoshixinxi` VALUES (1,'2020-11-26 12:03:12','教师工号1','教师姓名1','http://localhost:8080/ssm402y4/upload/jiaoshixinxi_zhaopian1.jpg','职称1','科目1',1,'学年1','学期1'),(2,'2020-11-26 12:03:12','教师工号2','教师姓名2','http://localhost:8080/ssm402y4/upload/jiaoshixinxi_zhaopian2.jpg','职称2','科目2',2,'学年2','学期2'),(3,'2020-11-26 12:03:12','教师工号3','教师姓名3','http://localhost:8080/ssm402y4/upload/jiaoshixinxi_zhaopian3.jpg','职称3','科目3',3,'学年3','学期3');
/*!40000 ALTER TABLE `jiaoshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jixiaokaohe`
--

DROP TABLE IF EXISTS `jixiaokaohe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jixiaokaohe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `kaoheneirong` varchar(200) DEFAULT NULL COMMENT '考核内容',
  `kaohepingfen` varchar(200) DEFAULT NULL COMMENT '考核评分',
  `kaoheqingkuang` varchar(200) DEFAULT NULL COMMENT '考核情况',
  `jiangchengqingkuang` varchar(200) DEFAULT NULL COMMENT '奖惩情况',
  `jiangchengneirong` varchar(200) DEFAULT NULL COMMENT '奖惩内容',
  `kaoheriqi` date DEFAULT NULL COMMENT '考核日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='绩效考核';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jixiaokaohe`
--

LOCK TABLES `jixiaokaohe` WRITE;
/*!40000 ALTER TABLE `jixiaokaohe` DISABLE KEYS */;
INSERT INTO `jixiaokaohe` VALUES (1,'2020-11-26 12:03:12','教师工号1','教师姓名1','性别1','职称1','联系电话1','考核内容1','1','优秀','奖励','奖惩内容1','2020-11-26','备注1'),(2,'2020-11-26 12:03:12','教师工号2','教师姓名2','性别2','职称2','联系电话2','考核内容2','1','优秀','奖励','奖惩内容2','2020-11-26','备注2'),(3,'2020-11-26 12:03:12','教师工号3','教师姓名3','性别3','职称3','联系电话3','考核内容3','1','优秀','奖励','奖惩内容3','2020-11-26','备注3');
/*!40000 ALTER TABLE `jixiaokaohe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liuyanxinxi`
--

DROP TABLE IF EXISTS `liuyanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liuyanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `liuyanbiaoti` varchar(200) NOT NULL COMMENT '留言标题',
  `neirong` longtext COMMENT '内容',
  `liuyanshijian` datetime DEFAULT NULL COMMENT '留言时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='留言信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liuyanxinxi`
--

LOCK TABLES `liuyanxinxi` WRITE;
/*!40000 ALTER TABLE `liuyanxinxi` DISABLE KEYS */;
INSERT INTO `liuyanxinxi` VALUES (1,'2020-11-26 12:03:12','留言标题1','内容1','2020-11-26 20:03:12','备注1','学号1','学生姓名1','班级1','手机1','否',''),(2,'2020-11-26 12:03:12','留言标题2','内容2','2020-11-26 20:03:12','备注2','学号2','学生姓名2','班级2','手机2','否',''),(3,'2020-11-26 12:03:12','留言标题3','内容3','2020-11-26 20:03:12','备注3','学号3','学生姓名3','班级3','手机3','否','');
/*!40000 ALTER TABLE `liuyanxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2020-11-26 12:03:12',1,1,'表名1','收藏名称1','http://localhost:8080/ssm402y4/upload/storeup_picture1.jpg'),(2,'2020-11-26 12:03:12',2,2,'表名2','收藏名称2','http://localhost:8080/ssm402y4/upload/storeup_picture2.jpg'),(3,'2020-11-26 12:03:12',3,3,'表名3','收藏名称3','http://localhost:8080/ssm402y4/upload/storeup_picture3.jpg');
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','q6izm9wa68gxu6qaodaf67u945u8oine','2020-11-26 12:06:05','2020-11-26 13:06:05');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-11-26 12:03:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xitonggonggao`
--

DROP TABLE IF EXISTS `xitonggonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xitonggonggao`
--

LOCK TABLES `xitonggonggao` WRITE;
/*!40000 ALTER TABLE `xitonggonggao` DISABLE KEYS */;
INSERT INTO `xitonggonggao` VALUES (1,'2020-11-26 12:03:12','公告标题1','类型1','http://localhost:8080/ssm402y4/upload/xitonggonggao_tupian1.jpg','内容1','2020-11-26'),(2,'2020-11-26 12:03:12','公告标题2','类型2','http://localhost:8080/ssm402y4/upload/xitonggonggao_tupian2.jpg','内容2','2020-11-26'),(3,'2020-11-26 12:03:12','公告标题3','类型3','http://localhost:8080/ssm402y4/upload/xitonggonggao_tupian3.jpg','内容3','2020-11-26');
/*!40000 ALTER TABLE `xitonggonggao` ENABLE KEYS */;
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
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (1,'2020-11-26 12:03:12','学生1','123456','学生姓名1','男','http://localhost:8080/ssm402y4/upload/xuesheng_touxiang1.jpg','专业1','班级1','13823888881','773890001@qq.com','学院1'),(2,'2020-11-26 12:03:12','学生2','123456','学生姓名2','男','http://localhost:8080/ssm402y4/upload/xuesheng_touxiang2.jpg','专业2','班级2','13823888882','773890002@qq.com','学院2'),(3,'2020-11-26 12:03:12','学生3','123456','学生姓名3','男','http://localhost:8080/ssm402y4/upload/xuesheng_touxiang3.jpg','专业3','班级3','13823888883','773890003@qq.com','学院3');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengliuyan`
--

DROP TABLE IF EXISTS `xueshengliuyan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengliuyan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `liuyanneirong` longtext COMMENT '留言内容',
  `liuyanriqi` date DEFAULT NULL COMMENT '留言日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生留言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengliuyan`
--

LOCK TABLES `xueshengliuyan` WRITE;
/*!40000 ALTER TABLE `xueshengliuyan` DISABLE KEYS */;
INSERT INTO `xueshengliuyan` VALUES (1,'2020-11-26 12:03:12','教师工号1','教师姓名1','职称1','留言内容1','2020-11-26','备注1','学号1','学生姓名1','班级1','手机1','否',''),(2,'2020-11-26 12:03:12','教师工号2','教师姓名2','职称2','留言内容2','2020-11-26','备注2','学号2','学生姓名2','班级2','手机2','否',''),(3,'2020-11-26 12:03:12','教师工号3','教师姓名3','职称3','留言内容3','2020-11-26','备注3','学号3','学生姓名3','班级3','手机3','否','');
/*!40000 ALTER TABLE `xueshengliuyan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengpingjiao`
--

DROP TABLE IF EXISTS `xueshengpingjiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengpingjiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `xuefen` varchar(200) DEFAULT NULL COMMENT '学分',
  `xuenian` varchar(200) DEFAULT NULL COMMENT '学年',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `jiaoxuepingfen` varchar(200) DEFAULT NULL COMMENT '教学评分',
  `jiaoxuequwei` varchar(200) DEFAULT NULL COMMENT '教学趣味',
  `goutongbiaoda` varchar(200) DEFAULT NULL COMMENT '沟通表达',
  `gerenjianyi` varchar(200) DEFAULT NULL COMMENT '个人建议',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生评教';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengpingjiao`
--

LOCK TABLES `xueshengpingjiao` WRITE;
/*!40000 ALTER TABLE `xueshengpingjiao` DISABLE KEYS */;
INSERT INTO `xueshengpingjiao` VALUES (1,'2020-11-26 12:03:12','教师工号1','教师姓名1','职称1','科目1','学分1','学年1','学期1','1','1','1','个人建议1','学号1','学生姓名1','班级1','否',''),(2,'2020-11-26 12:03:12','教师工号2','教师姓名2','职称2','科目2','学分2','学年2','学期2','1','1','1','个人建议2','学号2','学生姓名2','班级2','否',''),(3,'2020-11-26 12:03:12','教师工号3','教师姓名3','职称3','科目3','学分3','学年3','学期3','1','1','1','个人建议3','学号3','学生姓名3','班级3','否','');
/*!40000 ALTER TABLE `xueshengpingjiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueyuan`
--

DROP TABLE IF EXISTS `xueyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuan` varchar(200) NOT NULL COMMENT '学院',
  `jixiaokaohe` varchar(200) DEFAULT NULL COMMENT '绩效考核',
  `xueyuanpingfen` varchar(200) NOT NULL COMMENT '学院评分',
  `niandu` varchar(200) DEFAULT NULL COMMENT '年度',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueyuan` (`xueyuan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueyuan`
--

LOCK TABLES `xueyuan` WRITE;
/*!40000 ALTER TABLE `xueyuan` DISABLE KEYS */;
INSERT INTO `xueyuan` VALUES (1,'2020-11-26 12:03:12','计算机学院','S','S','2019','第一学期'),(2,'2020-11-26 12:03:12','商学院','S','S','2019','第一学期'),(3,'2020-11-26 12:03:12','法学院','S','S','2019','第一学期');
/*!40000 ALTER TABLE `xueyuan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-26 20:35:45
