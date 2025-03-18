DROP DATABASE IF EXISTS ssm402y4;

CREATE DATABASE ssm402y4 default character set utf8mb4 collate utf8mb4_general_ci;

USE ssm402y4;

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`gonggaobiaoti` varchar(200) NOT NULL   COMMENT '公告标题',
	`leixing` varchar(200) NOT NULL   COMMENT '类型',
	`tupian` varchar(200)    COMMENT '图片',
	`neirong` longtext    COMMENT '内容',
	`faburiqi` date    COMMENT '发布日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统公告';

INSERT INTO xitonggonggao(gonggaobiaoti,leixing,tupian,neirong,faburiqi) VALUES('公告标题1','类型1','http://localhost:8080/ssm402y4/upload/xitonggonggao_tupian1.jpg','内容1',CURRENT_TIMESTAMP);
INSERT INTO xitonggonggao(gonggaobiaoti,leixing,tupian,neirong,faburiqi) VALUES('公告标题2','类型2','http://localhost:8080/ssm402y4/upload/xitonggonggao_tupian2.jpg','内容2',CURRENT_TIMESTAMP);
INSERT INTO xitonggonggao(gonggaobiaoti,leixing,tupian,neirong,faburiqi) VALUES('公告标题3','类型3','http://localhost:8080/ssm402y4/upload/xitonggonggao_tupian3.jpg','内容3',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xuehao` varchar(200) NOT NULL UNIQUE   COMMENT '学号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xueshengxingming` varchar(200) NOT NULL   COMMENT '学生姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`zhuanye` varchar(200)    COMMENT '专业',
	`banji` varchar(200)    COMMENT '班级',
	`shouji` varchar(200)    COMMENT '手机',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`xueyuan` varchar(200)    COMMENT '学院',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生';

INSERT INTO xuesheng(xuehao,mima,xueshengxingming,xingbie,touxiang,zhuanye,banji,shouji,youxiang,xueyuan) VALUES('学生1','123456','学生姓名1','男','http://localhost:8080/ssm402y4/upload/xuesheng_touxiang1.jpg','专业1','班级1','13823888881','773890001@qq.com','学院1');
INSERT INTO xuesheng(xuehao,mima,xueshengxingming,xingbie,touxiang,zhuanye,banji,shouji,youxiang,xueyuan) VALUES('学生2','123456','学生姓名2','男','http://localhost:8080/ssm402y4/upload/xuesheng_touxiang2.jpg','专业2','班级2','13823888882','773890002@qq.com','学院2');
INSERT INTO xuesheng(xuehao,mima,xueshengxingming,xingbie,touxiang,zhuanye,banji,shouji,youxiang,xueyuan) VALUES('学生3','123456','学生姓名3','男','http://localhost:8080/ssm402y4/upload/xuesheng_touxiang3.jpg','专业3','班级3','13823888883','773890003@qq.com','学院3');

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiaoshigonghao` varchar(200) NOT NULL UNIQUE   COMMENT '教师工号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`jiaoshixingming` varchar(200) NOT NULL   COMMENT '教师姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`zhaopian` varchar(200)    COMMENT '照片',
	`zhicheng` varchar(200)    COMMENT '职称',
	`xueyuan` varchar(200)    COMMENT '学院',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`jiaoshiyouxiang` varchar(200)    COMMENT '教师邮箱',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师';

INSERT INTO jiaoshi(jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,xueyuan,lianxidianhua,jiaoshiyouxiang) VALUES('教师1','123456','教师姓名1','男','http://localhost:8080/ssm402y4/upload/jiaoshi_zhaopian1.jpg','职称1','学院1','13823888881','773890001@qq.com');
INSERT INTO jiaoshi(jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,xueyuan,lianxidianhua,jiaoshiyouxiang) VALUES('教师2','123456','教师姓名2','男','http://localhost:8080/ssm402y4/upload/jiaoshi_zhaopian2.jpg','职称2','学院2','13823888882','773890002@qq.com');
INSERT INTO jiaoshi(jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,xueyuan,lianxidianhua,jiaoshiyouxiang) VALUES('教师3','123456','教师姓名3','男','http://localhost:8080/ssm402y4/upload/jiaoshi_zhaopian3.jpg','职称3','学院3','13823888883','773890003@qq.com');

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`liuyanbiaoti` varchar(200) NOT NULL   COMMENT '留言标题',
	`neirong` longtext    COMMENT '内容',
	`liuyanshijian` datetime    COMMENT '留言时间',
	`beizhu` varchar(200)    COMMENT '备注',
	`xuehao` varchar(200)    COMMENT '学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`banji` varchar(200)    COMMENT '班级',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言信息';

INSERT INTO liuyanxinxi(liuyanbiaoti,neirong,liuyanshijian,beizhu,xuehao,xueshengxingming,banji,shouji,sfsh,shhf) VALUES('留言标题1','内容1',CURRENT_TIMESTAMP,'备注1','学号1','学生姓名1','班级1','手机1','否','');
INSERT INTO liuyanxinxi(liuyanbiaoti,neirong,liuyanshijian,beizhu,xuehao,xueshengxingming,banji,shouji,sfsh,shhf) VALUES('留言标题2','内容2',CURRENT_TIMESTAMP,'备注2','学号2','学生姓名2','班级2','手机2','否','');
INSERT INTO liuyanxinxi(liuyanbiaoti,neirong,liuyanshijian,beizhu,xuehao,xueshengxingming,banji,shouji,sfsh,shhf) VALUES('留言标题3','内容3',CURRENT_TIMESTAMP,'备注3','学号3','学生姓名3','班级3','手机3','否','');

DROP TABLE IF EXISTS `xueshengliuyan`;

CREATE TABLE `xueshengliuyan` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`zhicheng` varchar(200)    COMMENT '职称',
	`liuyanneirong` longtext    COMMENT '留言内容',
	`liuyanriqi` date    COMMENT '留言日期',
	`beizhu` varchar(200)    COMMENT '备注',
	`xuehao` varchar(200)    COMMENT '学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`banji` varchar(200)    COMMENT '班级',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生留言';

INSERT INTO xueshengliuyan(jiaoshigonghao,jiaoshixingming,zhicheng,liuyanneirong,liuyanriqi,beizhu,xuehao,xueshengxingming,banji,shouji,sfsh,shhf) VALUES('教师工号1','教师姓名1','职称1','留言内容1',CURRENT_TIMESTAMP,'备注1','学号1','学生姓名1','班级1','手机1','否','');
INSERT INTO xueshengliuyan(jiaoshigonghao,jiaoshixingming,zhicheng,liuyanneirong,liuyanriqi,beizhu,xuehao,xueshengxingming,banji,shouji,sfsh,shhf) VALUES('教师工号2','教师姓名2','职称2','留言内容2',CURRENT_TIMESTAMP,'备注2','学号2','学生姓名2','班级2','手机2','否','');
INSERT INTO xueshengliuyan(jiaoshigonghao,jiaoshixingming,zhicheng,liuyanneirong,liuyanriqi,beizhu,xuehao,xueshengxingming,banji,shouji,sfsh,shhf) VALUES('教师工号3','教师姓名3','职称3','留言内容3',CURRENT_TIMESTAMP,'备注3','学号3','学生姓名3','班级3','手机3','否','');

DROP TABLE IF EXISTS `jiaoshiliuyan`;

CREATE TABLE `jiaoshiliuyan` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`liuyanbiaoti` varchar(200) NOT NULL   COMMENT '留言标题',
	`liuyanriqi` date    COMMENT '留言日期',
	`beizhu` varchar(200)    COMMENT '备注',
	`liuyanneirong` longtext    COMMENT '留言内容',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师留言';

INSERT INTO jiaoshiliuyan(liuyanbiaoti,liuyanriqi,beizhu,liuyanneirong,jiaoshigonghao,jiaoshixingming,sfsh,shhf) VALUES('留言标题1',CURRENT_TIMESTAMP,'备注1','留言内容1','教师工号1','教师姓名1','否','');
INSERT INTO jiaoshiliuyan(liuyanbiaoti,liuyanriqi,beizhu,liuyanneirong,jiaoshigonghao,jiaoshixingming,sfsh,shhf) VALUES('留言标题2',CURRENT_TIMESTAMP,'备注2','留言内容2','教师工号2','教师姓名2','否','');
INSERT INTO jiaoshiliuyan(liuyanbiaoti,liuyanriqi,beizhu,liuyanneirong,jiaoshigonghao,jiaoshixingming,sfsh,shhf) VALUES('留言标题3',CURRENT_TIMESTAMP,'备注3','留言内容3','教师工号3','教师姓名3','否','');

DROP TABLE IF EXISTS `jiaoshixinxi`;

CREATE TABLE `jiaoshixinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`zhaopian` varchar(200)    COMMENT '照片',
	`zhicheng` varchar(200)    COMMENT '职称',
	`kemu` varchar(200) NOT NULL   COMMENT '科目',
	`xuefen` int NOT NULL   COMMENT '学分',
	`xuenian` varchar(200)    COMMENT '学年',
	`xueqi` varchar(200)    COMMENT '学期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师信息';

INSERT INTO jiaoshixinxi(jiaoshigonghao,jiaoshixingming,zhaopian,zhicheng,kemu,xuefen,xuenian,xueqi) VALUES('教师工号1','教师姓名1','http://localhost:8080/ssm402y4/upload/jiaoshixinxi_zhaopian1.jpg','职称1','科目1',1,'学年1','学期1');
INSERT INTO jiaoshixinxi(jiaoshigonghao,jiaoshixingming,zhaopian,zhicheng,kemu,xuefen,xuenian,xueqi) VALUES('教师工号2','教师姓名2','http://localhost:8080/ssm402y4/upload/jiaoshixinxi_zhaopian2.jpg','职称2','科目2',2,'学年2','学期2');
INSERT INTO jiaoshixinxi(jiaoshigonghao,jiaoshixingming,zhaopian,zhicheng,kemu,xuefen,xuenian,xueqi) VALUES('教师工号3','教师姓名3','http://localhost:8080/ssm402y4/upload/jiaoshixinxi_zhaopian3.jpg','职称3','科目3',3,'学年3','学期3');

DROP TABLE IF EXISTS `xueshengpingjiao`;

CREATE TABLE `xueshengpingjiao` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`zhicheng` varchar(200)    COMMENT '职称',
	`kemu` varchar(200)    COMMENT '科目',
	`xuefen` varchar(200)    COMMENT '学分',
	`xuenian` varchar(200)    COMMENT '学年',
	`xueqi` varchar(200)    COMMENT '学期',
	`jiaoxuepingfen` varchar(200)    COMMENT '教学评分',
	`jiaoxuequwei` varchar(200)    COMMENT '教学趣味',
	`goutongbiaoda` varchar(200)    COMMENT '沟通表达',
	`gerenjianyi` varchar(200)    COMMENT '个人建议',
	`xuehao` varchar(200)    COMMENT '学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`banji` varchar(200)    COMMENT '班级',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生评教';

INSERT INTO xueshengpingjiao(jiaoshigonghao,jiaoshixingming,zhicheng,kemu,xuefen,xuenian,xueqi,jiaoxuepingfen,jiaoxuequwei,goutongbiaoda,gerenjianyi,xuehao,xueshengxingming,banji,sfsh,shhf) VALUES('教师工号1','教师姓名1','职称1','科目1','学分1','学年1','学期1','1','1','1','个人建议1','学号1','学生姓名1','班级1','否','');
INSERT INTO xueshengpingjiao(jiaoshigonghao,jiaoshixingming,zhicheng,kemu,xuefen,xuenian,xueqi,jiaoxuepingfen,jiaoxuequwei,goutongbiaoda,gerenjianyi,xuehao,xueshengxingming,banji,sfsh,shhf) VALUES('教师工号2','教师姓名2','职称2','科目2','学分2','学年2','学期2','1','1','1','个人建议2','学号2','学生姓名2','班级2','否','');
INSERT INTO xueshengpingjiao(jiaoshigonghao,jiaoshixingming,zhicheng,kemu,xuefen,xuenian,xueqi,jiaoxuepingfen,jiaoxuequwei,goutongbiaoda,gerenjianyi,xuehao,xueshengxingming,banji,sfsh,shhf) VALUES('教师工号3','教师姓名3','职称3','科目3','学分3','学年3','学期3','1','1','1','个人建议3','学号3','学生姓名3','班级3','否','');

DROP TABLE IF EXISTS `dudao`;

CREATE TABLE `dudao` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`dudaogonghao` varchar(200) NOT NULL UNIQUE   COMMENT '督导工号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`dudaoxingming` varchar(200) NOT NULL   COMMENT '督导姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='督导';

INSERT INTO dudao(dudaogonghao,mima,dudaoxingming,xingbie,touxiang,lianxidianhua) VALUES('督导1','123456','督导姓名1','男','http://localhost:8080/ssm402y4/upload/dudao_touxiang1.jpg','13823888881');
INSERT INTO dudao(dudaogonghao,mima,dudaoxingming,xingbie,touxiang,lianxidianhua) VALUES('督导2','123456','督导姓名2','男','http://localhost:8080/ssm402y4/upload/dudao_touxiang2.jpg','13823888882');
INSERT INTO dudao(dudaogonghao,mima,dudaoxingming,xingbie,touxiang,lianxidianhua) VALUES('督导3','123456','督导姓名3','男','http://localhost:8080/ssm402y4/upload/dudao_touxiang3.jpg','13823888883');

DROP TABLE IF EXISTS `dudaopingjia`;

CREATE TABLE `dudaopingjia` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`zhicheng` varchar(200)    COMMENT '职称',
	`dudaopingfen` varchar(200)    COMMENT '督导评分',
	`dudaopingjia` longtext    COMMENT '督导评价',
	`beizhu` varchar(200)    COMMENT '备注',
	`dudaogonghao` varchar(200)    COMMENT '督导工号',
	`dudaoxingming` varchar(200)    COMMENT '督导姓名',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='督导评价';

INSERT INTO dudaopingjia(jiaoshigonghao,jiaoshixingming,zhicheng,dudaopingfen,dudaopingjia,beizhu,dudaogonghao,dudaoxingming) VALUES('教师工号1','教师姓名1','职称1','1','督导评价1','备注1','督导工号1','督导姓名1');
INSERT INTO dudaopingjia(jiaoshigonghao,jiaoshixingming,zhicheng,dudaopingfen,dudaopingjia,beizhu,dudaogonghao,dudaoxingming) VALUES('教师工号2','教师姓名2','职称2','1','督导评价2','备注2','督导工号2','督导姓名2');
INSERT INTO dudaopingjia(jiaoshigonghao,jiaoshixingming,zhicheng,dudaopingfen,dudaopingjia,beizhu,dudaogonghao,dudaoxingming) VALUES('教师工号3','教师姓名3','职称3','1','督导评价3','备注3','督导工号3','督导姓名3');

DROP TABLE IF EXISTS `xueyuan`;

CREATE TABLE `xueyuan` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xueyuan` varchar(200) NOT NULL UNIQUE   COMMENT '学院',
	`jixiaokaohe` varchar(200)    COMMENT '绩效考核',
	`xueyuanpingfen` varchar(200) NOT NULL   COMMENT '学院评分',
	`niandu` varchar(200)    COMMENT '年度',
	`xueqi` varchar(200)    COMMENT '学期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学院';

INSERT INTO xueyuan(xueyuan,jixiaokaohe,xueyuanpingfen,niandu,xueqi) VALUES('学院1','S','S','年度1','学期1');
INSERT INTO xueyuan(xueyuan,jixiaokaohe,xueyuanpingfen,niandu,xueqi) VALUES('学院2','S','S','年度2','学期2');
INSERT INTO xueyuan(xueyuan,jixiaokaohe,xueyuanpingfen,niandu,xueqi) VALUES('学院3','S','S','年度3','学期3');

DROP TABLE IF EXISTS `jixiaokaohe`;

CREATE TABLE `jixiaokaohe` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`zhicheng` varchar(200)    COMMENT '职称',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`kaoheneirong` varchar(200)    COMMENT '考核内容',
	`kaohepingfen` varchar(200)    COMMENT '考核评分',
	`kaoheqingkuang` varchar(200)    COMMENT '考核情况',
	`jiangchengqingkuang` varchar(200)    COMMENT '奖惩情况',
	`jiangchengneirong` varchar(200)    COMMENT '奖惩内容',
	`kaoheriqi` date    COMMENT '考核日期',
	`beizhu` varchar(200)    COMMENT '备注',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='绩效考核';

INSERT INTO jixiaokaohe(jiaoshigonghao,jiaoshixingming,xingbie,zhicheng,lianxidianhua,kaoheneirong,kaohepingfen,kaoheqingkuang,jiangchengqingkuang,jiangchengneirong,kaoheriqi,beizhu) VALUES('教师工号1','教师姓名1','性别1','职称1','联系电话1','考核内容1','1','优秀','奖励','奖惩内容1',CURRENT_TIMESTAMP,'备注1');
INSERT INTO jixiaokaohe(jiaoshigonghao,jiaoshixingming,xingbie,zhicheng,lianxidianhua,kaoheneirong,kaohepingfen,kaoheqingkuang,jiangchengqingkuang,jiangchengneirong,kaoheriqi,beizhu) VALUES('教师工号2','教师姓名2','性别2','职称2','联系电话2','考核内容2','1','优秀','奖励','奖惩内容2',CURRENT_TIMESTAMP,'备注2');
INSERT INTO jixiaokaohe(jiaoshigonghao,jiaoshixingming,xingbie,zhicheng,lianxidianhua,kaoheneirong,kaohepingfen,kaoheqingkuang,jiangchengqingkuang,jiangchengneirong,kaoheriqi,beizhu) VALUES('教师工号3','教师姓名3','性别3','职称3','联系电话3','考核内容3','1','优秀','奖励','奖惩内容3',CURRENT_TIMESTAMP,'备注3');

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','http://localhost:8080/ssm402y4/upload/storeup_picture1.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','http://localhost:8080/ssm402y4/upload/storeup_picture2.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','http://localhost:8080/ssm402y4/upload/storeup_picture3.jpg');

DROP TABLE IF EXISTS `discussxitonggonggao`;

CREATE TABLE `discussxitonggonggao` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统公告评论表';

INSERT INTO discussxitonggonggao(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussxitonggonggao(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussxitonggonggao(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/ssm402y4/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/ssm402y4/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/ssm402y4/upload/picture3.jpg');
insert into config(id,name,value) values(4,'picture4','http://localhost:8080/ssm402y4/upload/picture4.jpg');
insert into config(id,name,value) values(5,'picture5','http://localhost:8080/ssm402y4/upload/picture5.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

