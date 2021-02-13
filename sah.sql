/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : sah

*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_account_log
-- ----------------------------
DROP TABLE IF EXISTS `t_account_log`;
CREATE TABLE `t_account_log`  (
  `log_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `user_id` mediumint UNSIGNED NOT NULL COMMENT '用户id',
  `user_money` decimal(10, 2) NOT NULL COMMENT '用户金额',
  `frozen_money` decimal(10, 2) NOT NULL COMMENT '冻结金额',
  `pay_points` mediumint NOT NULL COMMENT '支付积分',
  `change_time` int UNSIGNED NOT NULL COMMENT '变动时间',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `order_sn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `order_id` int NULL DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 228 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_account_log
-- ----------------------------
INSERT INTO `t_account_log` VALUES (1, 5, 1100000.00, 0.00, 0, 1242140736, '', NULL, NULL);
INSERT INTO `t_account_log` VALUES (2, 3, 400000.00, 0.00, 0, 1242140752, '', NULL, NULL);
INSERT INTO `t_account_log` VALUES (3, 2, 300000.00, 0.00, 0, 1242140775, '', NULL, NULL);
INSERT INTO `t_account_log` VALUES (4, 1, 50000.00, 0.00, 0, 1242140811, '', NULL, NULL);
INSERT INTO `t_account_log` VALUES (5, 5, 0.00, 10000.00, 0, 1242140853, '', NULL, NULL);
INSERT INTO `t_account_log` VALUES (6, 1, -400.00, 0.00, 0, 1242142274, '', NULL, NULL);
INSERT INTO `t_account_log` VALUES (7, 1, -975.00, 0.00, 0, 1242142324, '', NULL, NULL);
INSERT INTO `t_account_log` VALUES (8, 1, 0.00, 0.00, 960, 1242142390, '', NULL, NULL);
INSERT INTO `t_account_log` VALUES (9, 1, 0.00, 0.00, 385, 1242142432, '', NULL, NULL);
INSERT INTO `t_account_log` VALUES (10, 1, -2310.00, 0.00, 0, 1242142549, '', NULL, NULL);

-- ----------------------------
-- Table structure for t_ad
-- ----------------------------
DROP TABLE IF EXISTS `t_ad`;
CREATE TABLE `t_ad`  (
  `ad_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `pid` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '广告位置ID',
  `media_type` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '广告类型',
  `ad_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '广告名称',
  `ad_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '链接地址',
  `ad_code` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片地址',
  `start_time` int NOT NULL DEFAULT 0 COMMENT '投放时间',
  `end_time` int NOT NULL DEFAULT 0 COMMENT '结束时间',
  `link_man` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人',
  `link_email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人邮箱',
  `link_phone` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '添加人联系电话',
  `click_count` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击量',
  `enabled` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否显示',
  `orderby` smallint NULL DEFAULT 50 COMMENT '排序',
  `target` tinyint(1) NULL DEFAULT 0 COMMENT '是否开启浏览器新窗口',
  `bgcolor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '背景颜色',
  PRIMARY KEY (`ad_id`) USING BTREE,
  INDEX `enabled`(`enabled`) USING BTREE,
  INDEX `position_id`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ad
-- ----------------------------
INSERT INTO `t_ad` VALUES (1, 1, 0, '无限惊喜', 'javascript:void();', '/Public/upload/ad/2016/04-25/571dafa754296.jpg', 1451577600, 1767715200, '', '', '', 0, 1, 50, 0, '#ffffff');
INSERT INTO `t_ad` VALUES (2, 1, 0, '无限惊喜', '/index.php?m=Home&amp;c=Goods&amp;a=goodsInfo&amp;id=1', '/Public/upload/banner/2015/10-30/5633573b4a217.jpg', 1451577600, 1864656000, '', '', '', 0, 1, 50, 0, NULL);
INSERT INTO `t_ad` VALUES (3, 2, 0, '首页banner轮播1', '/index.php?m=Home&amp;c=Goods&amp;a=goodsInfo&amp;id=1', '/Public/upload/banner/2015/11-04/563a014600063.jpg', 1441123200, 1731513600, '', '', '', 0, 1, 50, 0, NULL);
INSERT INTO `t_ad` VALUES (4, 2, 0, '首页banner轮播2', '/index.php?m=Home&amp;c=Goods&amp;a=goodsInfo&amp;id=1', '/Public/upload/banner/2015/11-04/563a01ccb5dc9.jpg', 1443542400, 1601481600, '', '', '', 0, 1, 50, 0, NULL);
INSERT INTO `t_ad` VALUES (5, 3, 0, '客户下单赢4999元红包', 'javascript:void();', '/Public/upload/banner/2015/11-05/563b3e5d8568d.jpg', 1451577600, 1832515200, '', '', '', 0, 1, 50, 0, NULL);
INSERT INTO `t_ad` VALUES (6, 4, 0, 'ego视频教程', 'javascript:void();', '/Public/upload/ad/2016/03-11/56e29344381c4.jpg', 1452614400, 1864137600, '', '', '', 0, 1, 50, 0, NULL);
INSERT INTO `t_ad` VALUES (7, 5, 0, '荣耀畅玩5X优惠购买', 'javascript:void();', '/Public/upload/ad/2016/03-11/56e29344381c4.jpg', 1451577600, 1863878400, '', '', '', 0, 1, 50, 0, NULL);
-- ----------------------------
-- Table structure for t_ad_position
-- ----------------------------
DROP TABLE IF EXISTS `t_ad_position`;
CREATE TABLE `t_ad_position`  (
  `position_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `position_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '广告位置名称',
  `ad_width` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT '广告位宽度',
  `ad_height` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT '广告位高度',
  `position_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '广告描述',
  `position_style` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板',
  `is_open` tinyint(1) NULL DEFAULT 0 COMMENT '0关闭1开启',
  PRIMARY KEY (`position_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51316 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_ad_position
-- ----------------------------
INSERT INTO `t_ad_position` VALUES (1, '首页最顶部大块广告', 1200, 400, '首页顶部的广告位刚打开时弹出来过一会自动缩回去.', '', 0);
INSERT INTO `t_ad_position` VALUES (2, '首页banner广告轮播980*400', 980, 400, '首页banner广告轮播980*400', '', 0);
INSERT INTO `t_ad_position` VALUES (3, '首页中间1200*160广告条', 1200, 160, '', '', 0);
INSERT INTO `t_ad_position` VALUES (4, '首页底部1200*160广告条', 1200, 160, '首页底部的广告位', '', 0);
-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
                           `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
                           `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
                           `phone` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
                           `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
                           `enabled` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否启用',
                           `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
                           `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
                           `userFace` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
                           `remark` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
                           PRIMARY KEY (`id`) USING BTREE,
                           INDEX `enabled`(`enabled`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;
-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, '张晨1', '100000001', '烟花大桥1', true,'花花1','mima1', '', '暂无备注');
INSERT INTO `t_admin` VALUES (2, '张晨2', '100000002', '烟花大桥2', true,'花花2','mima2', '', '暂无备注');
INSERT INTO `t_admin` VALUES (3, '张晨3', '100000003', '烟花大桥3', true,'花花3','mima3', '', '暂无备注');
INSERT INTO `t_admin` VALUES (4, '张晨4', '100000004', '烟花大桥4', true,'花花4','mima4', '', '暂无备注');
-- ----------------------------
-- Table structure for t_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_role`;
CREATE TABLE `t_admin_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `adminId` int NULL DEFAULT NULL COMMENT '用户id',
  `rid` int NULL DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  INDEX `adminId`(`adminId`) USING BTREE,
  CONSTRAINT `t_admin_role_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `t_admin` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `t_admin_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `t_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_admin_role
-- ----------------------------
INSERT INTO `t_admin_role` VALUES (2, 5, 4);
INSERT INTO `t_admin_role` VALUES (3, 5, 3);
INSERT INTO `t_admin_role` VALUES (4, 5, 2);
INSERT INTO `t_admin_role` VALUES (5, 4, 3);
INSERT INTO `t_admin_role` VALUES (6, 4, 2);
INSERT INTO `t_admin_role` VALUES (7, 4, 4);
INSERT INTO `t_admin_role` VALUES (8, 4, 5);
INSERT INTO `t_admin_role` VALUES (16, 1, 6);
INSERT INTO `t_admin_role` VALUES (55, 3, 3);
INSERT INTO `t_admin_role` VALUES (56, 3, 4);
INSERT INTO `t_admin_role` VALUES (67, 2, 3);
INSERT INTO `t_admin_role` VALUES (68, 2, 4);

-- ----------------------------
-- Table structure for t_appraise
-- ----------------------------
DROP TABLE IF EXISTS `t_appraise`;
CREATE TABLE `t_appraise`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int NULL DEFAULT NULL COMMENT '员工id',
  `appDate` date NULL DEFAULT NULL COMMENT '考评日期',
  `appResult` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评结果',
  `appContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考评内容',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eid`(`eid`) USING BTREE,
  CONSTRAINT `t_appraise_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `t_employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_appraise
-- ----------------------------

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `parentId` int NULL DEFAULT NULL COMMENT '父id',
  `depPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `enabled` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  `isParent` tinyint(1) NULL DEFAULT 0 COMMENT '是否上级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES (1, '股东会', -1, '.1', 1, 1);
INSERT INTO `t_department` VALUES (2, '董事会', 1, '.1.2', 1, 1);
INSERT INTO `t_department` VALUES (3, '总办', 2, '.1.2.3', 1, 1);
INSERT INTO `t_department` VALUES (4, '财务部', 3, '.1.2.3.4', 1, 0);
INSERT INTO `t_department` VALUES (5, '市场部', 3, '.1.2.3.5', 1, 1);
INSERT INTO `t_department` VALUES (6, '华东市场部', 5, '1.2.3.5.6', 1, 1);
INSERT INTO `t_department` VALUES (7, '华南市场部', 5, '1.2.3.5.7', 1, 0);
INSERT INTO `t_department` VALUES (8, '上海市场部', 6, '1.2.3.5.6.8', 1, 0);
INSERT INTO `t_department` VALUES (9, '西北市场部', 5, '.1.2.3.5.9', 1, 1);
INSERT INTO `t_department` VALUES (10, '贵阳市场', 9, '.1.2.3.5.9.10', 1, 1);
INSERT INTO `t_department` VALUES (11, '乌当区市场', 10, '.1.2.3.5.9.10.11', 1, 0);
INSERT INTO `t_department` VALUES (12, '技术部', 3, '.1.2.3.12', 1, 0);
INSERT INTO `t_department` VALUES (13, '运维部', 3, '.1.2.3.13', 1, 0);

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `gender` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `idCard` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `wedlock` enum('已婚','未婚','离异') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '婚姻状况',
  `nationId` int NULL DEFAULT NULL COMMENT '民族',
  `nativePlace` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `politicId` int NULL DEFAULT NULL COMMENT '政治面貌',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `departmentId` int NULL DEFAULT NULL COMMENT '所属部门',
  `jobLevelId` int NULL DEFAULT NULL COMMENT '职称ID',
  `posId` int NULL DEFAULT NULL COMMENT '职位ID',
  `engageForm` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '聘用形式',
  `tiptopDegree` enum('博士','硕士','本科','大专','高中','初中','小学','其他') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最高学历',
  `specialty` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属专业',
  `school` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业院校',
  `beginDate` date NULL DEFAULT NULL COMMENT '入职日期',
  `workState` enum('在职','离职') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '在职' COMMENT '在职状态',
  `workID` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `contractTerm` double NULL DEFAULT NULL COMMENT '合同期限',
  `conversionTime` date NULL DEFAULT NULL COMMENT '转正日期',
  `notWorkDate` date NULL DEFAULT NULL COMMENT '离职日期',
  `beginContract` date NULL DEFAULT NULL COMMENT '合同起始日期',
  `endContract` date NULL DEFAULT NULL COMMENT '合同终止日期',
  `workAge` int NULL DEFAULT NULL COMMENT '工龄',
  `salaryId` int NULL DEFAULT NULL COMMENT '工资账套ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `departmentId`(`departmentId`) USING BTREE,
  INDEX `jobId`(`jobLevelId`) USING BTREE,
  INDEX `posId`(`posId`) USING BTREE,
  INDEX `nationId`(`nationId`) USING BTREE,
  INDEX `politicId`(`politicId`) USING BTREE,
  INDEX `workId`(`workID`) USING BTREE,
  INDEX `salaryId`(`salaryId`) USING BTREE,
  CONSTRAINT `t_employee_ibfk_1` FOREIGN KEY (`departmentId`) REFERENCES `t_department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_employee_ibfk_2` FOREIGN KEY (`jobLevelId`) REFERENCES `t_joblevel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_employee_ibfk_3` FOREIGN KEY (`posId`) REFERENCES `t_position` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_employee_ibfk_4` FOREIGN KEY (`nationId`) REFERENCES `t_nation` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_employee_ibfk_5` FOREIGN KEY (`politicId`) REFERENCES `t_politics_status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_employee_ibfk_6` FOREIGN KEY (`salaryId`) REFERENCES `t_salary` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES (1, '韦梅', '女', '1999-11-20', '341502198810196427', '未婚', 1, '英市', 11, 'xia53@gangjing.cn', '15567487644', '贵州省洁市清城汕尾街d座 502246', 3, 5, 5, '劳动合同', '博士', '电子工程', '中国科学技术大学', '2018-10-16', '在职', '00000001', 9.31, '2018-08-29', NULL, '2017-09-03', '2019-08-26', NULL, 4);
INSERT INTO `t_employee` VALUES (2, '王丹', '女', '1992-03-25', '350481197304037905', '未婚', 1, '关岭市', 2, 'jieqian@yahoo.com', '18762780051', '山西省合肥县西峰香港街C座 302114', 4, 8, 2, '劳动合同', '博士', '无', '北京大学', '2018-06-25', '在职', '00000002', 9.5, '2017-08-05', NULL, '2017-05-31', '2020-01-06', NULL, 1);
INSERT INTO `t_employee` VALUES (3, '刘俊', '男', '1996-07-18', '130224197009132687', '未婚', 1, '萍县', 13, 'qiangfang@yahoo.com', '18663579680', '西藏自治区秀荣市海陵张家港街m座 576579', 1, 6, 1, '劳务合同', '博士', '护理学', '南京大学', '2017-08-15', '在职', '00000003', 2.53, '2016-05-25', NULL, '2015-12-21', '2019-04-21', NULL, 1);
INSERT INTO `t_employee` VALUES (4, '刘玉珍', '女', '1993-07-10', '512000196701014288', '未婚', 1, '雷县', 5, 'fangyang@pinggang.cn', '13972309788', '西藏自治区张家港市双滦凌街V座 614280', 4, 8, 1, '劳动合同', '博士', '市场营销', '上海交通大学', '2019-02-21', '在职', '00000004', 5.68, '2018-06-26', NULL, '2019-02-27', '2019-11-06', NULL, 4);
INSERT INTO `t_employee` VALUES (5, '孟秀兰', '女', '2000-01-08', '130601195204145457', '未婚', 1, '荆门县', 10, 'xliu@yahoo.com', '13319975239', '天津市辽阳市金平傅街j座 850761', 8, 4, 3, '劳动合同', '博士', '电子工程', '浙江大学', '2016-12-13', '在职', '00000005', 9.33, '2018-03-09', NULL, '2016-11-28', '2019-06-25', NULL, 3);
INSERT INTO `t_employee` VALUES (6, '袁秀英', '男', '1990-05-07', '110107198510132428', '未婚', 1, '合肥县', 4, 'nawu@hotmail.com', '15984781796', '重庆市兰英市高明沈阳街d座 430329', 9, 7, 2, '劳务合同', '博士', '无', '中国人民大学', '2015-10-15', '在职', '00000006', 9.2, '2016-08-30', NULL, '2019-03-21', '2019-11-30', NULL, 2);
INSERT INTO `t_employee` VALUES (7, '沈璐', '男', '1992-05-07', '520400196705056989', '未婚', 1, '合山县', 8, 'gaotao@hotmail.com', '14715158775', '浙江省坤县西峰余街C座 221697', 5, 6, 5, '劳务合同', '博士', '室内装修设计', '中国科学院大学', '2016-07-30', '在职', '00000007', 7.96, '2018-12-22', NULL, '2016-09-28', '2020-02-05', NULL, 3);
INSERT INTO `t_employee` VALUES (8, '丁艳', '男', '2001-01-29', '542100199401152966', '未婚', 1, '玲市', 10, 'yong36@gmail.com', '18878249984', '江西省南昌县双滦王路E座 490503', 8, 6, 3, '劳动合同', '博士', '信息管理与信息系统', '中国科学技术大学', '2016-05-21', '在职', '00000008', 0.25, '2017-05-06', NULL, '2015-07-28', '2019-06-05', NULL, 2);
INSERT INTO `t_employee` VALUES (9, '张瑞', '男', '1994-01-11', '330782198309077942', '未婚', 1, '银川市', 10, 'ping21@zengyi.net', '15510694655', '江西省太原市翔安刘街J座 815655', 12, 4, 1, '劳务合同', '博士', '信息管理与信息系统', '上海交通大学', '2018-01-15', '在职', '00000009', 4.54, '2016-04-30', NULL, '2017-02-03', '2019-08-04', NULL, 3);
INSERT INTO `t_employee` VALUES (10, '黄柳', '男', '1999-10-03', '45142219420818691X', '未婚', 1, '北镇市', 3, 'juanliu@jieming.cn', '14523008198', '江苏省宁县南溪王路x座 227133', 1, 1, 2, '劳务合同', '博士', '市场营销', '南京大学', '2017-06-17', '在职', '00000010', 1.46, '2016-11-03', NULL, '2016-06-07', '2019-08-24', NULL, 4);
-- ----------------------------
-- Table structure for t_employee_ec
-- ----------------------------
DROP TABLE IF EXISTS `t_employee_ec`;
CREATE TABLE `t_employee_ec`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int NULL DEFAULT NULL COMMENT '员工编号',
  `ecDate` date NULL DEFAULT NULL COMMENT '奖罚日期',
  `ecReason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '奖罚原因',
  `ecPoint` int NULL DEFAULT NULL COMMENT '奖罚分',
  `ecType` int NULL DEFAULT NULL COMMENT '奖罚类别，0：奖，1：罚',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eid`(`eid`) USING BTREE,
  CONSTRAINT `t_employee_ec_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `t_employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_employee_ec
-- ----------------------------

-- ----------------------------
-- Table structure for t_employee_remove
-- ----------------------------
DROP TABLE IF EXISTS `t_employee_remove`;
CREATE TABLE `t_employee_remove`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int NULL DEFAULT NULL COMMENT '员工id',
  `afterDepId` int NULL DEFAULT NULL COMMENT '调动后部门',
  `afterJobId` int NULL DEFAULT NULL COMMENT '调动后职位',
  `removeDate` date NULL DEFAULT NULL COMMENT '调动日期',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调动原因',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eid`(`eid`) USING BTREE,
  CONSTRAINT `t_employee_remove_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `t_employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_employee_remove
-- ----------------------------

-- ----------------------------
-- Table structure for t_employee_train
-- ----------------------------
DROP TABLE IF EXISTS `t_employee_train`;
CREATE TABLE `t_employee_train`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int NULL DEFAULT NULL COMMENT '员工编号',
  `trainDate` date NULL DEFAULT NULL COMMENT '培训日期',
  `trainContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '培训内容',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eid`(`eid`) USING BTREE,
  CONSTRAINT `t_employee_train_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `t_employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_employee_train
-- ----------------------------

-- ----------------------------
-- Table structure for t_joblevel
-- ----------------------------
DROP TABLE IF EXISTS `t_joblevel`;
CREATE TABLE `t_joblevel`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称名称',
  `titleLevel` enum('正高级','副高级','中级','初级','员级') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称等级',
  `createDate` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `enabled` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_joblevel
-- ----------------------------
INSERT INTO `t_joblevel` VALUES (1, '教授', '正高级', '2020-03-31 16:20:34', 1);
INSERT INTO `t_joblevel` VALUES (2, '副教授', '副高级', '2020-03-31 16:20:34', 1);
INSERT INTO `t_joblevel` VALUES (3, '助教', '初级', '2020-03-31 16:20:34', 1);
INSERT INTO `t_joblevel` VALUES (4, '讲师', '中级', '2020-03-31 16:20:34', 0);
INSERT INTO `t_joblevel` VALUES (5, '初级工程师', '初级', '2020-03-31 16:20:34', 1);
INSERT INTO `t_joblevel` VALUES (6, '中级工程师', '中级', '2020-03-31 16:20:34', 1);
INSERT INTO `t_joblevel` VALUES (7, '高级工程师', '副高级', '2020-03-31 16:20:34', 1);
INSERT INTO `t_joblevel` VALUES (8, '骨灰级工程师', '正高级', '2020-03-31 16:20:34', 1);

-- ----------------------------
-- Table structure for t_mail_log
-- ----------------------------
DROP TABLE IF EXISTS `t_mail_log`;
CREATE TABLE `t_mail_log`  (
  `msgId` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '消息id',
  `eid` int NULL DEFAULT NULL COMMENT '接收员工id',
  `status` int NULL DEFAULT NULL COMMENT '状态（0:消息投递中 1:投递成功 2:投递失败）',
  `routeKey` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由键',
  `exchange` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '交换机',
  `count` int NULL DEFAULT NULL COMMENT '重试次数',
  `tryTime` datetime(0) NULL DEFAULT NULL COMMENT '重试时间',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  UNIQUE INDEX `msgId`(`msgId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_mail_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'url',
  `path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'path',
  `component` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名',
  `iconCls` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `keepAlive` tinyint(1) NULL DEFAULT NULL COMMENT '是否保持激活',
  `requireAuth` tinyint(1) NULL DEFAULT NULL COMMENT '是否要求权限',
  `parentId` int NULL DEFAULT NULL COMMENT '父id',
  `enabled` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parentId`(`parentId`) USING BTREE,
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parentId`) REFERENCES `t_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, '/', NULL, NULL, '所有', NULL, NULL, NULL, NULL, 1);
INSERT INTO `t_menu` VALUES (2, '/', '/home', 'Home', '员工资料', 'fa fa-user-circle-o', NULL, 1, 1, 1);
INSERT INTO `t_menu` VALUES (3, '/', '/home', 'Home', '人事管理', 'fa fa-address-card-o', NULL, 1, 1, 1);
INSERT INTO `t_menu` VALUES (4, '/', '/home', 'Home', '薪资管理', 'fa fa-money', NULL, 1, 1, 1);
INSERT INTO `t_menu` VALUES (5, '/', '/home', 'Home', '统计管理', 'fa fa-bar-chart', NULL, 1, 1, 1);
INSERT INTO `t_menu` VALUES (6, '/', '/home', 'Home', '系统管理', 'fa fa-windows', NULL, 1, 1, 1);
INSERT INTO `t_menu` VALUES (7, '/employee/basic/**', '/emp/basic', 'EmpBasic', '基本资料', NULL, NULL, 1, 2, 1);
INSERT INTO `t_menu` VALUES (8, '/employee/advanced/**', '/emp/adv', 'EmpAdv', '高级资料', NULL, NULL, 1, 2, 1);
INSERT INTO `t_menu` VALUES (9, '/personnel/emp/**', '/per/emp', 'PerEmp', '员工资料', NULL, NULL, 1, 3, 1);
INSERT INTO `t_menu` VALUES (10, '/personnel/ec/**', '/per/ec', 'PerEc', '员工奖惩', NULL, NULL, 1, 3, 1);
INSERT INTO `t_menu` VALUES (11, '/personnel/train/**', '/per/train', 'PerTrain', '员工培训', NULL, NULL, 1, 3, 1);
INSERT INTO `t_menu` VALUES (12, '/personnel/salary/**', '/per/salary', 'PerSalary', '员工调薪', NULL, NULL, 1, 3, 1);
INSERT INTO `t_menu` VALUES (13, '/personnel/remove/**', '/per/mv', 'PerMv', '员工调动', NULL, NULL, 1, 3, 1);
INSERT INTO `t_menu` VALUES (14, '/salary/sob/**', '/sal/sob', 'SalSob', '工资账套管理', NULL, NULL, 1, 4, 1);
INSERT INTO `t_menu` VALUES (15, '/salary/sobcfg/**', '/sal/sobcfg', 'SalSobCfg', '员工账套设置', NULL, NULL, 1, 4, 1);
INSERT INTO `t_menu` VALUES (16, '/salary/table/**', '/sal/table', 'SalTable', '工资表管理', NULL, NULL, 1, 4, 1);
INSERT INTO `t_menu` VALUES (17, '/salary/month/**', '/sal/month', 'SalMonth', '月末处理', NULL, NULL, 1, 4, 1);
INSERT INTO `t_menu` VALUES (18, '/salary/search/**', '/sal/search', 'SalSearch', '工资表查询', NULL, NULL, 1, 4, 1);
INSERT INTO `t_menu` VALUES (19, '/statistics/all/**', '/sta/all', 'StaAll', '综合信息统计', NULL, NULL, 1, 5, 1);
INSERT INTO `t_menu` VALUES (20, '/statistics/score/**', '/sta/score', 'StaScore', '员工积分统计', NULL, NULL, 1, 5, 1);
INSERT INTO `t_menu` VALUES (21, '/statistics/personnel/**', '/sta/pers', 'StaPers', '人事信息统计', NULL, NULL, 1, 5, 1);
INSERT INTO `t_menu` VALUES (22, '/statistics/recored/**', '/sta/record', 'StaRecord', '人事记录统计', NULL, NULL, 1, 5, 1);
INSERT INTO `t_menu` VALUES (23, '/system/basic/**', '/sys/basic', 'SysBasic', '基础信息设置', NULL, NULL, 1, 6, 1);
INSERT INTO `t_menu` VALUES (24, '/system/cfg/**', '/sys/cfg', 'SysCfg', '系统管理', NULL, NULL, 1, 6, 1);
INSERT INTO `t_menu` VALUES (25, '/system/log/**', '/sys/log', 'SysLog', '操作日志管理', NULL, NULL, 1, 6, 1);
INSERT INTO `t_menu` VALUES (26, '/system/admin/**', '/sys/admin', 'SysAdmin', '操作员管理', NULL, NULL, 1, 6, 1);
INSERT INTO `t_menu` VALUES (27, '/system/data/**', '/sys/data', 'SysData', '备份恢复数据库', NULL, NULL, 1, 6, 1);
INSERT INTO `t_menu` VALUES (28, '/system/init/**', '/sys/init', 'SysInit', '初始化数据库', NULL, NULL, 1, 6, 1);

-- ----------------------------
-- Table structure for t_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_role`;
CREATE TABLE `t_menu_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mid` int NULL DEFAULT NULL COMMENT '菜单id',
  `rid` int NULL DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mid`(`mid`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  CONSTRAINT `t_menu_role_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `t_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_menu_role_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `t_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 348 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_menu_role
-- ----------------------------
INSERT INTO `t_menu_role` VALUES (1, 7, 3);
INSERT INTO `t_menu_role` VALUES (2, 7, 6);
INSERT INTO `t_menu_role` VALUES (3, 9, 6);
INSERT INTO `t_menu_role` VALUES (4, 10, 6);
INSERT INTO `t_menu_role` VALUES (5, 11, 6);
INSERT INTO `t_menu_role` VALUES (6, 12, 6);
INSERT INTO `t_menu_role` VALUES (7, 13, 6);
INSERT INTO `t_menu_role` VALUES (8, 14, 6);
INSERT INTO `t_menu_role` VALUES (9, 15, 6);
INSERT INTO `t_menu_role` VALUES (10, 16, 6);
INSERT INTO `t_menu_role` VALUES (11, 17, 6);
INSERT INTO `t_menu_role` VALUES (12, 18, 6);
INSERT INTO `t_menu_role` VALUES (13, 19, 6);
INSERT INTO `t_menu_role` VALUES (14, 20, 6);
INSERT INTO `t_menu_role` VALUES (15, 21, 6);
INSERT INTO `t_menu_role` VALUES (16, 22, 6);
INSERT INTO `t_menu_role` VALUES (17, 23, 6);
INSERT INTO `t_menu_role` VALUES (18, 25, 6);
INSERT INTO `t_menu_role` VALUES (19, 26, 6);
INSERT INTO `t_menu_role` VALUES (20, 27, 6);
INSERT INTO `t_menu_role` VALUES (21, 28, 6);
INSERT INTO `t_menu_role` VALUES (22, 24, 6);
INSERT INTO `t_menu_role` VALUES (26, 7, 2);
INSERT INTO `t_menu_role` VALUES (27, 8, 2);
INSERT INTO `t_menu_role` VALUES (28, 9, 2);
INSERT INTO `t_menu_role` VALUES (29, 10, 2);
INSERT INTO `t_menu_role` VALUES (30, 12, 2);
INSERT INTO `t_menu_role` VALUES (31, 13, 2);
INSERT INTO `t_menu_role` VALUES (32, 7, 1);
INSERT INTO `t_menu_role` VALUES (33, 8, 1);
INSERT INTO `t_menu_role` VALUES (34, 9, 1);
INSERT INTO `t_menu_role` VALUES (35, 10, 1);
INSERT INTO `t_menu_role` VALUES (36, 11, 1);
INSERT INTO `t_menu_role` VALUES (37, 12, 1);
INSERT INTO `t_menu_role` VALUES (38, 13, 1);
INSERT INTO `t_menu_role` VALUES (39, 14, 1);
INSERT INTO `t_menu_role` VALUES (40, 15, 1);
INSERT INTO `t_menu_role` VALUES (41, 16, 1);
INSERT INTO `t_menu_role` VALUES (42, 17, 1);
INSERT INTO `t_menu_role` VALUES (43, 18, 1);
INSERT INTO `t_menu_role` VALUES (44, 19, 1);
INSERT INTO `t_menu_role` VALUES (45, 20, 1);
INSERT INTO `t_menu_role` VALUES (46, 21, 1);
INSERT INTO `t_menu_role` VALUES (47, 22, 1);
INSERT INTO `t_menu_role` VALUES (48, 23, 1);
INSERT INTO `t_menu_role` VALUES (49, 24, 1);
INSERT INTO `t_menu_role` VALUES (50, 25, 1);
INSERT INTO `t_menu_role` VALUES (51, 26, 1);
INSERT INTO `t_menu_role` VALUES (52, 27, 1);
INSERT INTO `t_menu_role` VALUES (53, 28, 1);
INSERT INTO `t_menu_role` VALUES (346, 11, 4);
INSERT INTO `t_menu_role` VALUES (347, 8, 4);
INSERT INTO `t_menu_role` VALUES (348, 7, 4);

-- ----------------------------
-- Table structure for t_nation
-- ----------------------------
DROP TABLE IF EXISTS `t_nation`;
CREATE TABLE `t_nation`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_nation
-- ----------------------------
INSERT INTO `t_nation` VALUES (1, '汉族');
INSERT INTO `t_nation` VALUES (2, '蒙古族');
INSERT INTO `t_nation` VALUES (3, '回族');
INSERT INTO `t_nation` VALUES (4, '藏族');
INSERT INTO `t_nation` VALUES (5, '维吾尔族');
INSERT INTO `t_nation` VALUES (6, '苗族');
INSERT INTO `t_nation` VALUES (7, '彝族');
INSERT INTO `t_nation` VALUES (8, '壮族');
INSERT INTO `t_nation` VALUES (9, '布依族');
INSERT INTO `t_nation` VALUES (10, '朝鲜族');
INSERT INTO `t_nation` VALUES (11, '满族');
INSERT INTO `t_nation` VALUES (12, '侗族');
INSERT INTO `t_nation` VALUES (13, '瑶族');
INSERT INTO `t_nation` VALUES (14, '白族');
INSERT INTO `t_nation` VALUES (15, '土家族');
INSERT INTO `t_nation` VALUES (16, '哈尼族');
INSERT INTO `t_nation` VALUES (17, '哈萨克族');
INSERT INTO `t_nation` VALUES (18, '傣族');
INSERT INTO `t_nation` VALUES (19, '黎族');
INSERT INTO `t_nation` VALUES (20, '傈僳族');
INSERT INTO `t_nation` VALUES (21, '佤族');
INSERT INTO `t_nation` VALUES (22, '畲族');
INSERT INTO `t_nation` VALUES (23, '高山族');
INSERT INTO `t_nation` VALUES (24, '拉祜族');
INSERT INTO `t_nation` VALUES (25, '水族');
INSERT INTO `t_nation` VALUES (26, '东乡族');
INSERT INTO `t_nation` VALUES (27, '纳西族');
INSERT INTO `t_nation` VALUES (28, '景颇族');
INSERT INTO `t_nation` VALUES (29, '柯尔克孜族');
INSERT INTO `t_nation` VALUES (30, '土族');
INSERT INTO `t_nation` VALUES (31, '达斡尔族');
INSERT INTO `t_nation` VALUES (32, '仫佬族');
INSERT INTO `t_nation` VALUES (33, '羌族');
INSERT INTO `t_nation` VALUES (34, '布朗族');
INSERT INTO `t_nation` VALUES (35, '撒拉族');
INSERT INTO `t_nation` VALUES (36, '毛难族');
INSERT INTO `t_nation` VALUES (37, '仡佬族');
INSERT INTO `t_nation` VALUES (38, '锡伯族');
INSERT INTO `t_nation` VALUES (39, '阿昌族');
INSERT INTO `t_nation` VALUES (40, '普米族');
INSERT INTO `t_nation` VALUES (41, '塔吉克族');
INSERT INTO `t_nation` VALUES (42, '怒族');
INSERT INTO `t_nation` VALUES (43, '乌孜别克族');
INSERT INTO `t_nation` VALUES (44, '俄罗斯族');
INSERT INTO `t_nation` VALUES (45, '鄂温克族');
INSERT INTO `t_nation` VALUES (46, '崩龙族');
INSERT INTO `t_nation` VALUES (47, '保安族');
INSERT INTO `t_nation` VALUES (48, '裕固族');
INSERT INTO `t_nation` VALUES (49, '京族');
INSERT INTO `t_nation` VALUES (50, '塔塔尔族');
INSERT INTO `t_nation` VALUES (51, '独龙族');
INSERT INTO `t_nation` VALUES (52, '鄂伦春族');
INSERT INTO `t_nation` VALUES (53, '赫哲族');
INSERT INTO `t_nation` VALUES (54, '门巴族');
INSERT INTO `t_nation` VALUES (55, '珞巴族');
INSERT INTO `t_nation` VALUES (56, '基诺族');

-- ----------------------------
-- Table structure for t_oplog
-- ----------------------------
DROP TABLE IF EXISTS `t_oplog`;
CREATE TABLE `t_oplog`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `addDate` date NULL DEFAULT NULL COMMENT '添加日期',
  `operate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作内容',
  `adminid` int NULL DEFAULT NULL COMMENT '操作员ID',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `adminid`(`adminid`) USING BTREE,
  CONSTRAINT `t_oplog_ibfk_1` FOREIGN KEY (`adminid`) REFERENCES `t_admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_oplog
-- ----------------------------

-- ----------------------------
-- Table structure for t_plugin
-- ----------------------------
DROP TABLE IF EXISTS `t_plugin`;
CREATE TABLE `t_plugin`  (
  `code` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '插件编码',
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文名字',
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '插件的版本',
  `author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '插件作者',
  `config` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '配置信息',
  `config_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '配置值信息',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '插件描述',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '是否启用',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '插件类型 payment支付 login 登陆 shipping物流',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `bank_code` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '网银配置信息',
  `scene` tinyint(1) NULL DEFAULT 0 COMMENT '使用场景 0 PC+手机 1 手机 2 PC'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_plugin
-- ----------------------------
INSERT INTO `t_plugin` VALUES ('alipay', '支付宝支付', '1.0', 'jy_pwn', 'a:6:{i:0;a:4:{s:4:\"name\";s:14:\"alipay_account\";s:5:\"label\";s:15:\"支付宝帐户\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"alipay_key\";s:5:\"label\";s:21:\"交易安全校验码\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:14:\"alipay_partner\";s:5:\"label\";s:17:\"合作者身份ID\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:18:\"alipay_private_key\";s:5:\"label\";s:6:\"秘钥\";s:4:\"type\";s:8:\"textarea\";s:5:\"value\";s:0:\"\";}i:4;a:4:{s:4:\"name\";s:17:\"alipay_pay_method\";s:5:\"label\";s:19:\" 选择接口类型\";s:4:\"type\";s:6:\"select\";s:6:\"option\";a:2:{i:0;s:24:\"使用担保交易接口\";i:1;s:30:\"使用即时到帐交易接口\";}}i:5;a:4:{s:4:\"name\";s:7:\"is_bank\";s:5:\"label\";s:18:\"是否开通网银\";s:4:\"type\";s:6:\"select\";s:6:\"option\";a:2:{i:0;s:3:\"否\";i:1;s:3:\"是\";}}}', 'a:6:{s:14:\"alipay_account\";s:0:\"\";s:10:\"alipay_key\";s:0:\"\";s:14:\"alipay_partner\";s:0:\"\";s:18:\"alipay_private_key\";s:0:\"\";s:17:\"alipay_pay_method\";s:1:\"2\";s:7:\"is_bank\";s:1:\"2\";}', '支付宝插件 ', 1, 'payment', 'logo.jpg', 'a:8:{s:12:\"招商银行\";s:9:\"CMB-DEBIT\";s:18:\"中国工商银行\";s:10:\"ICBC-DEBIT\";s:12:\"交通银行\";s:10:\"COMM-DEBIT\";s:18:\"中国建设银行\";s:9:\"CCB-DEBIT\";s:18:\"中国民生银行\";s:4:\"CMBC\";s:12:\"中国银行\";s:9:\"BOC-DEBIT\";s:18:\"中国农业银行\";s:3:\"ABC\";s:12:\"上海银行\";s:6:\"SHBANK\";}', 2);
INSERT INTO `t_plugin` VALUES ('ztoexpress', '中通快递', '1.0', 'ztoexpress', 'N;', NULL, '中通快递插件 ', 0, 'shipping', 'logo.jpg', 'N;', NULL);
INSERT INTO `t_plugin` VALUES ('tiantian', '天天物流', '1.0', 'tiantian', 'N;', NULL, '天天快递插件 ', 0, 'shipping', 'logo.jpg', 'N;', NULL);
INSERT INTO `t_plugin` VALUES ('bestexpress', '百世汇通', '1.0', 'bestexpress', 'N;', NULL, '百世汇通插件 ', 0, 'shipping', 'logo.jpg', 'N;', NULL);
INSERT INTO `t_plugin` VALUES ('cod', '到货付款', '1.0', 'IT宇宙人', 'a:1:{i:0;a:4:{s:4:\"name\";s:9:\"code_desc\";s:5:\"label\";s:12:\"配送描述\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', 'a:1:{s:9:\"code_desc\";s:9:\"545234234\";}', '货到付款插件 ', 1, 'payment', 'logo.jpg', 'N;', 0);
INSERT INTO `t_plugin` VALUES ('weixin', '微信支付', '1.0', 'IT宇宙人', 'a:4:{i:0;a:4:{s:4:\"name\";s:5:\"appid\";s:5:\"label\";s:20:\"绑定支付的APPID\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:5:\"mchid\";s:5:\"label\";s:9:\"商户号\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:3:\"key\";s:5:\"label\";s:18:\"商户支付密钥\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:9:\"appsecret\";s:5:\"label\";s:57:\"公众帐号secert（仅JSAPI支付的时候需要配置)\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', 'a:4:{s:5:\"appid\";s:0:\"\";s:5:\"mchid\";s:0:\"\";s:3:\"key\";s:0:\"\";s:9:\"appsecret\";s:0:\"\";}', '微信支付插件 ', 1, 'payment', 'logo.jpg', 'N;', 0);
INSERT INTO `t_plugin` VALUES ('alipay', '支付宝快捷登陆', '1.0', '彭老师', 'a:2:{i:0;a:4:{s:4:\"name\";s:14:\"alipay_partner\";s:5:\"label\";s:17:\"合作者身份ID\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"alipay_key\";s:5:\"label\";s:15:\"安全检验码\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', 'a:2:{s:14:\"alipay_partner\";s:0:\"\";s:10:\"alipay_key\";s:0:\"\";}', '支付宝快捷登陆插件 ', 1, 'login', 'logo.jpg', 'N;', 0);
INSERT INTO `t_plugin` VALUES ('weixin', '微信登陆', '1.0', '彭老师', 'a:2:{i:0;a:4:{s:4:\"name\";s:5:\"appid\";s:5:\"label\";s:17:\"开放平台appid\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:6:\"secret\";s:5:\"label\";s:18:\"开放平台secret\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', NULL, '微信登陆插件 ', 1, 'login', 'logo.jpg', 'N;', 0);
INSERT INTO `t_plugin` VALUES ('shentong', '申通物流', '1.0', '宇宙人', 'N;', NULL, '申通物流插件 ', 1, 'shipping', 'logo.jpg', 'N;', NULL);
INSERT INTO `t_plugin` VALUES ('shunfeng', '顺丰物流', '1.0', 'shunfeng', 'N;', NULL, '顺丰物流插件 ', 1, 'shipping', 'logo.jpg', 'N;', NULL);
INSERT INTO `t_plugin` VALUES ('qq', 'QQ登陆', '1.0', '彭老师', 'a:2:{i:0;a:4:{s:4:\"name\";s:6:\"app_id\";s:5:\"label\";s:6:\"app_id\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"app_secret\";s:5:\"label\";s:10:\"app_secret\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', 'a:2:{s:6:\"app_id\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";}', 'QQ登陆插件 ', 1, 'login', 'logo.jpg', 'N;', 0);
INSERT INTO `t_plugin` VALUES ('alipayMobile', '手机网站支付宝', '1.0', '宇宙人', 'a:6:{i:0;a:4:{s:4:\"name\";s:14:\"alipay_account\";s:5:\"label\";s:15:\"支付宝帐户\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"alipay_key\";s:5:\"label\";s:21:\"交易安全校验码\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:2;a:4:{s:4:\"name\";s:14:\"alipay_partner\";s:5:\"label\";s:17:\"合作者身份ID\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:3;a:4:{s:4:\"name\";s:18:\"alipay_private_key\";s:5:\"label\";s:6:\"秘钥\";s:4:\"type\";s:8:\"textarea\";s:5:\"value\";s:0:\"\";}i:4;a:4:{s:4:\"name\";s:17:\"alipay_pay_method\";s:5:\"label\";s:19:\" 选择接口类型\";s:4:\"type\";s:6:\"select\";s:6:\"option\";a:2:{i:0;s:24:\"使用担保交易接口\";i:1;s:30:\"使用即时到帐交易接口\";}}i:5;a:4:{s:4:\"name\";s:7:\"is_bank\";s:5:\"label\";s:18:\"是否开通网银\";s:4:\"type\";s:6:\"select\";s:6:\"option\";a:2:{i:0;s:3:\"否\";i:1;s:3:\"是\";}}}', 'a:6:{s:14:\"alipay_account\";s:0:\"\";s:10:\"alipay_key\";s:0:\"\";s:14:\"alipay_partner\";s:0:\"\";s:18:\"alipay_private_key\";s:0:\"\";s:17:\"alipay_pay_method\";s:1:\"2\";s:7:\"is_bank\";s:1:\"2\";}', '手机端网站支付宝 ', 1, 'payment', 'logo.jpg', 'N;', 1);
INSERT INTO `t_plugin` VALUES ('unionpay', '银联在线支付', '1.0', '奇闻科技', 'a:4:{i:0;a:4:{s:4:\"name\";s:12:\"unionpay_mid\";s:5:\"label\";s:9:\"商户号\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:15:\"777290058130619\";}i:1;a:4:{s:4:\"name\";s:21:\"unionpay_cer_password\";s:5:\"label\";s:25:\" 商户私钥证书密码\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:6:\"000000\";}i:2;a:4:{s:4:\"name\";s:13:\"unionpay_user\";s:5:\"label\";s:19:\" 企业网银账号\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:12:\"123456789001\";}i:3;a:4:{s:4:\"name\";s:17:\"unionpay_password\";s:5:\"label\";s:19:\" 企业网银密码\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:6:\"789001\";}}', 'a:4:{s:12:\"unionpay_mid\";s:0:\"\";s:21:\"unionpay_cer_password\";s:0:\"\";s:13:\"unionpay_user\";s:0:\"\";s:17:\"unionpay_password\";s:0:\"\";}', '银联在线支付插件 ', 1, 'payment', 'logo.jpg', 'N;', 0);
INSERT INTO `t_plugin` VALUES ('helloworld', 'HelloWorld插件', 'v1.2.0,v1.2.1', 'IT宇宙人', 'N;', NULL, '适合v1.2.0 , v1.2.1', 0, 'function', 'logo.jpg', 'N;', NULL);
INSERT INTO `t_plugin` VALUES ('tenpay', 'PC端财付通', '1.0', 'IT宇宙人', 'a:2:{i:0;a:4:{s:4:\"name\";s:7:\"partner\";s:5:\"label\";s:7:\"partner\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:3:\"key\";s:5:\"label\";s:3:\"key\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', 'a:2:{s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}', 'PC端财付通插件 ', 1, 'payment', 'logo.jpg', 'N;', 2);

-- ----------------------------
-- Table structure for t_politics_status
-- ----------------------------
DROP TABLE IF EXISTS `t_politics_status`;
CREATE TABLE `t_politics_status`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_politics_status
-- ----------------------------
INSERT INTO `t_politics_status` VALUES (1, '中共党员');
INSERT INTO `t_politics_status` VALUES (2, '中共预备党员');
INSERT INTO `t_politics_status` VALUES (3, '共青团员');
INSERT INTO `t_politics_status` VALUES (4, '民革党员');
INSERT INTO `t_politics_status` VALUES (5, '民盟盟员');
INSERT INTO `t_politics_status` VALUES (6, '民建会员');
INSERT INTO `t_politics_status` VALUES (7, '民进会员');
INSERT INTO `t_politics_status` VALUES (8, '农工党党员');
INSERT INTO `t_politics_status` VALUES (9, '致公党党员');
INSERT INTO `t_politics_status` VALUES (10, '九三学社社员');
INSERT INTO `t_politics_status` VALUES (11, '台盟盟员');
INSERT INTO `t_politics_status` VALUES (12, '无党派民主人士');
INSERT INTO `t_politics_status` VALUES (13, '普通公民');

-- ----------------------------
-- Table structure for t_position
-- ----------------------------
DROP TABLE IF EXISTS `t_position`;
CREATE TABLE `t_position`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `createDate` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `enabled` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_position
-- ----------------------------
INSERT INTO `t_position` VALUES (1, '技术总监', '2020-03-31 16:20:34', 1);
INSERT INTO `t_position` VALUES (2, '运营总监', '2020-03-31 16:20:34', 1);
INSERT INTO `t_position` VALUES (3, '市场总监', '2020-03-31 16:20:34', 1);
INSERT INTO `t_position` VALUES (4, '研发工程师', '2020-03-31 16:20:34', 1);
INSERT INTO `t_position` VALUES (5, '运维工程师', '2020-03-31 16:20:34', 1);

-- ----------------------------
-- Table structure for t_prom_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_prom_goods`;
CREATE TABLE `t_prom_goods`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '活动ID',
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '促销活动名称',
  `type` int NOT NULL DEFAULT 0 COMMENT '促销类型',
  `expression` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '优惠体现',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '活动描述',
  `start_time` int NOT NULL COMMENT '活动开始时间',
  `end_time` int NOT NULL COMMENT '活动结束时间',
  `is_close` tinyint(1) NULL DEFAULT 0,
  `group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '适用范围',
  `prom_img` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动宣传图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_prom_goods
-- ----------------------------
INSERT INTO `t_prom_goods` VALUES (1, '开业大典', 0, '90', '&lt;p&gt;东方航空建国后路口东风路工行卡&lt;/p&gt;', 1471968000, 1477152000, 0, NULL, NULL);

-- ----------------------------
-- Table structure for t_prom_order
-- ----------------------------
DROP TABLE IF EXISTS `t_prom_order`;
CREATE TABLE `t_prom_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动名称',
  `type` int NOT NULL DEFAULT 0 COMMENT '活动类型',
  `money` float(10, 2) NULL DEFAULT 0.00 COMMENT '最小金额',
  `expression` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优惠体现',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '活动描述',
  `start_time` int NULL DEFAULT NULL COMMENT '活动开始时间',
  `end_time` int NULL DEFAULT NULL COMMENT '活动结束时间',
  `is_close` tinyint(1) NULL DEFAULT 0,
  `group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '适用范围',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_prom_order
-- ----------------------------
INSERT INTO `t_prom_order` VALUES (1, '订单满300送代金券30元', 3, 300.00, '12', '&lt;p&gt;订单满300送代金券30元&lt;br/&gt;&lt;/p&gt;', 1463760000, 1556640000, 0, NULL);

-- ----------------------------
-- Table structure for t_rebate_log
-- ----------------------------
DROP TABLE IF EXISTS `t_rebate_log`;
CREATE TABLE `t_rebate_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '分成记录表',
  `user_id` int NULL DEFAULT 0 COMMENT '获佣用户',
  `buy_user_id` int NULL DEFAULT 0 COMMENT '购买人id',
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '购买人名称',
  `order_sn` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '订单编号',
  `order_id` int NULL DEFAULT 0 COMMENT '订单id',
  `goods_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单商品总额',
  `money` decimal(10, 2) NULL DEFAULT NULL COMMENT '获佣金额',
  `level` tinyint(1) NULL DEFAULT 1 COMMENT '获佣用户级别',
  `create_time` int NULL DEFAULT 0 COMMENT '分成记录生成时间',
  `confirm` int NULL DEFAULT 0 COMMENT '确定收货时间',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '0未付款,1已付款, 2等待分成(已收货) 3已分成, 4已取消',
  `confirm_time` int NULL DEFAULT 0 COMMENT '确定分成或者取消时间',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '如果是取消, 有取消备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 703 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_rebate_log
-- ----------------------------
INSERT INTO `t_rebate_log` VALUES (1, 175, 180, '王清华-App定制开发，电商', '201606201850261915', 307, 6800.00, 816.00, 1, 1466419826, 0, 3, 0, '提现通过');
INSERT INTO `t_rebate_log` VALUES (2, 175, 188, '林小玲   艺学汇商城', '201606202333566598', 309, 0.01, 0.00, 1, 1466436836, 0, 0, 0, '');
INSERT INTO `t_rebate_log` VALUES (3, 189, 191, 'A十指间的挥洒M', '201606202335107696', 310, 3400.00, 408.00, 1, 1466436910, 0, 0, 0, '');
INSERT INTO `t_rebate_log` VALUES (4, 191, 195, '湘水木目', '201606210016578591', 311, 69.00, 8.28, 1, 1466439417, 0, 0, 0, '');
INSERT INTO `t_rebate_log` VALUES (5, 189, 195, '湘水木目', '201606210016578591', 311, 69.00, 3.45, 2, 1466439417, 0, 0, 0, '');
INSERT INTO `t_rebate_log` VALUES (6, 175, 195, '湘水木目', '201606210016578591', 311, 69.00, 2.07, 3, 1466439417, 0, 0, 0, '');
INSERT INTO `t_rebate_log` VALUES (7, 189, 191, 'A十指间的挥洒M', '201606210024507199', 312, 110.00, 13.20, 1, 1466439890, 0, 0, 0, '');
INSERT INTO `t_rebate_log` VALUES (8, 175, 191, 'A十指间的挥洒M', '201606210024507199', 312, 110.00, 5.50, 2, 1466439890, 0, 0, 0, '');
INSERT INTO `t_rebate_log` VALUES (9, 189, 191, 'A十指间的挥洒M', '201606210028236519', 313, 100.00, 12.00, 1, 1466440103, 0, 0, 0, '');
INSERT INTO `t_rebate_log` VALUES (10, 175, 191, 'A十指间的挥洒M', '201606210028236519', 313, 100.00, 5.00, 2, 1466440104, 0, 0, 0, '');
INSERT INTO `t_rebate_log` VALUES (11, 175, 200, 'jomlz', '201606210028559952', 314, 3400.00, 408.00, 1, 1466440135, 0, 0, 0, '');
-- ----------------------------
-- Table structure for t_recharge
-- ----------------------------
DROP TABLE IF EXISTS `t_recharge`;
CREATE TABLE `t_recharge`  (
  `order_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL COMMENT '会员ID',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员昵称',
  `order_sn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '充值单号',
  `account` float(10, 2) NULL DEFAULT 0.00 COMMENT '充值金额',
  `ctime` int NULL DEFAULT NULL COMMENT '充值时间',
  `pay_time` int NULL DEFAULT NULL COMMENT '支付时间',
  `pay_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pay_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付方式',
  `pay_status` tinyint(1) NULL DEFAULT 0 COMMENT '充值状态0:待支付 1:充值成功 2:交易关闭',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_recharge
-- ----------------------------
INSERT INTO `t_recharge` VALUES (1, 1, NULL, 'recharge_tssbwd1472898944', 50.00, 1472898944, NULL, 'alipay', '支付宝支付', 0);
INSERT INTO `t_recharge` VALUES (2, 1, NULL, 'recharge_woilpo1472898964', 1.00, 1472898964, NULL, 'weixin', '微信支付', 0);
INSERT INTO `t_recharge` VALUES (3, 1, NULL, 'recharge_ffpsge1472899318', 50.00, 1472899318, NULL, 'alipay', '支付宝支付', 0);
INSERT INTO `t_recharge` VALUES (4, 1, NULL, 'recharge_cpgrpi1472899766', 50.00, 1472899766, NULL, 'alipay', '支付宝支付', 0);
INSERT INTO `t_recharge` VALUES (5, 1, NULL, 'recharge_zvqymd1472899852', 1.00, 1472899852, 1472899902, 'alipay', '支付宝支付', 1);
INSERT INTO `t_recharge` VALUES (6, 1, 'hello', 'recharge_danssx1473327060', 51.00, 1473327060, NULL, 'alipayMobile', '手机网站支付宝', 0);
INSERT INTO `t_recharge` VALUES (7, 1, 'hello', 'recharge_innhyz1473327266', 1.00, 1473327266, NULL, 'alipay', '支付宝支付', 0);
INSERT INTO `t_recharge` VALUES (8, 1, 'hello', 'recharge_ijwtlz1473327520', 1.00, 1473327520, NULL, 'weixin', '微信支付', 0);
INSERT INTO `t_recharge` VALUES (9, 1, 'hello', 'recharge_bleenk1473329055', 1.00, 1473329055, 1473329182, 'weixin', '微信支付', 1);
INSERT INTO `t_recharge` VALUES (10, 1, 'hello', 'recharge_hcfkty1474184367', 50.00, 1474184367, NULL, 'alipay', '支付宝支付', 0);
INSERT INTO `t_recharge` VALUES (11, 1, 'hello', 'recharge_bqjfcc1474184594', 50.00, 1474184594, NULL, 'alipay', '支付宝支付', 0);
INSERT INTO `t_recharge` VALUES (12, 1, 'hello', 'recharge_wjblmk1475041537', 50.00, 1475041537, NULL, 'alipay', '支付宝支付', 0);
INSERT INTO `t_recharge` VALUES (13, 1, 'hello', 'recharge_zbikrl1475050524', 50.00, 1475050524, NULL, 'weixin', '微信支付', 0);
INSERT INTO `t_recharge` VALUES (14, 1, 'hello', 'recharge_icpydp1475050531', 50.00, 1475050531, NULL, 'alipayMobile', '手机网站支付宝', 0);
INSERT INTO `t_recharge` VALUES (15, 1, 'hello', 'recharge_gixcho1475119332', 3.00, 1475119332, NULL, 'alipayMobile', '手机网站支付宝', 0);
INSERT INTO `t_recharge` VALUES (16, 1, 'hello', 'recharge_eyocll1475119356', 5.00, 1475119356, NULL, 'weixin', '微信支付', 0);
INSERT INTO `t_recharge` VALUES (17, 1, 'hello', 'recharge_olxyim1475119922', 50.00, 1475119922, NULL, 'alipayMobile', '手机网站支付宝', 0);
INSERT INTO `t_recharge` VALUES (18, 1, 'hello', 'recharge_ywytsn1475119935', 50.00, 1475119935, NULL, 'alipayMobile', '手机网站支付宝', 0);
INSERT INTO `t_recharge` VALUES (19, 0, 'hello', 'rechargepdbfwb1475137347', 2.00, 1475137347, NULL, NULL, NULL, 0);
INSERT INTO `t_recharge` VALUES (20, 0, 'hello', 'rechargeyfivhw1475137416', 33.00, 1475137416, NULL, NULL, NULL, 0);
INSERT INTO `t_recharge` VALUES (21, 1, 'hello', 'rechargezewfey1475137612', 5.00, 1475137612, NULL, 'weixin', '微信支付', 0);
INSERT INTO `t_recharge` VALUES (22, 1, 'hello', 'rechargejbddlf1476006250', 166.00, 1476006250, NULL, 'alipay', '支付宝支付', 0);

-- ----------------------------
-- Table structure for t_region
-- ----------------------------
DROP TABLE IF EXISTS `t_region`;
CREATE TABLE `t_region`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL COMMENT '地区名称',
  `level` tinyint NULL DEFAULT NULL COMMENT '地区等级 分省市县区',
  `parent_id` int NULL DEFAULT NULL COMMENT '父id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47497 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_region
-- ----------------------------
INSERT INTO `t_region` VALUES (1, '北京市', 1, 0);
INSERT INTO `t_region` VALUES (2, '市辖区', 2, 1);
INSERT INTO `t_region` VALUES (3, '东城区', 3, 2);
INSERT INTO `t_region` VALUES (4, '东华门街道', 4, 3);
INSERT INTO `t_region` VALUES (5, '景山街道', 4, 3);
INSERT INTO `t_region` VALUES (6, '交道口街道', 4, 3);
INSERT INTO `t_region` VALUES (7, '安定门街道', 4, 3);
INSERT INTO `t_region` VALUES (8, '北新桥街道', 4, 3);
INSERT INTO `t_region` VALUES (9, '东四街道', 4, 3);
INSERT INTO `t_region` VALUES (10, '朝阳门街道', 4, 3);
INSERT INTO `t_region` VALUES (11, '建国门街道', 4, 3);
INSERT INTO `t_region` VALUES (12, '东直门街道', 4, 3);
INSERT INTO `t_region` VALUES (13, '和平里街道', 4, 3);
INSERT INTO `t_region` VALUES (14, '西城区', 3, 2);
INSERT INTO `t_region` VALUES (15, '西长安街街道', 4, 14);
INSERT INTO `t_region` VALUES (16, '新街口街道', 4, 14);
INSERT INTO `t_region` VALUES (17, '月坛街道', 4, 14);
INSERT INTO `t_region` VALUES (18, '展览路街道', 4, 14);
INSERT INTO `t_region` VALUES (19, '德胜街道', 4, 14);
INSERT INTO `t_region` VALUES (20, '金融街街道', 4, 14);

-- ----------------------------
-- Table structure for t_remittance
-- ----------------------------
DROP TABLE IF EXISTS `t_remittance`;
CREATE TABLE `t_remittance`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '分销用户转账记录表',
  `user_id` int NULL DEFAULT 0 COMMENT '汇款的用户id',
  `bank_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '收款银行名称',
  `account_bank` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '银行账号',
  `account_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '开户人名称',
  `money` decimal(10, 2) NULL DEFAULT NULL COMMENT '汇款金额',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '0汇款失败 1汇款成功',
  `create_time` int NULL DEFAULT 0 COMMENT '汇款时间',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '汇款备注',
  `admin_id` int NULL DEFAULT 0 COMMENT '管理员id',
  `withdrawals_id` int NULL DEFAULT 0 COMMENT '提现申请表id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_remittance
-- ----------------------------
INSERT INTO `t_remittance` VALUES (1, 1, '支付宝', '5464646@qq.com', '黄女士', 100.00, 1, 1466420011, '测试通过', 1, 1);

-- ----------------------------
-- Table structure for t_return_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_return_goods`;
CREATE TABLE `t_return_goods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '退货申请表id自增',
  `order_id` int NULL DEFAULT 0 COMMENT '订单id',
  `order_sn` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '订单编号',
  `goods_id` int NULL DEFAULT 0 COMMENT '商品id',
  `type` tinyint(1) NULL DEFAULT 0 COMMENT '0退货1换货',
  `reason` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '退换货原因',
  `imgs` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '拍照图片路径',
  `addtime` int NULL DEFAULT 0 COMMENT '申请时间',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '0申请中1客服理中2已完成',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '客服备注',
  `user_id` int NULL DEFAULT 0 COMMENT '用户id',
  `spec_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '商品规格key 对应t_spec_goods_price 表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_return_goods
-- ----------------------------
INSERT INTO `t_return_goods` VALUES (3, 126, '201603160947074625', 45, 1, 'sdfghjkghfdf', '/Public/upload/return_goods/2016/03-16/56e924a30aa76.jpg,/Public/upload/return_goods/2016/03-16/56e924a3392f8.png', 1458119846, 2, '111111111111112344567', 1, '');
INSERT INTO `t_return_goods` VALUES (4, 126, '201603160947074625', 61, 0, '234567890-', '/Public/upload/return_goods/2016/03-16/56e94958497a2.jpg,/Public/upload/return_goods/2016/03-16/56e949587a3c3.png', 1458129250, 1, 'aaaaaaaaa', 1, '');
INSERT INTO `t_return_goods` VALUES (5, 127, '201603162016423697', 47, 1, '132456789', '', 1458176610, 0, '', 1, '');
INSERT INTO `t_return_goods` VALUES (6, 125, '201603160908175752', 49, 0, '1111111111111111111111111111', '', 1458177329, 0, '', 1, '');
INSERT INTO `t_return_goods` VALUES (9, 128, '201603170948488775', 104, 0, '管理员申请退换货', '', 1458183628, 0, '', 1, '');
INSERT INTO `t_return_goods` VALUES (10, 123, '201603151451275033', 49, 0, '', '', 1458183701, 0, '管理员申请退换货', 1, '');
INSERT INTO `t_return_goods` VALUES (11, 177, '201603192017421080', 104, 0, '退货', '/Public/upload/return_goods/2016/05-02/5726b5d708a18.jpg', 1462154743, 0, '', 1, '');
INSERT INTO `t_return_goods` VALUES (12, 197, '201605021215126304', 77, 0, '不合适', '/Public/upload/return_goods/2016/05-02/5726d6d6069ea.jpg', 1462163174, 2, '完成', 1, '');
INSERT INTO `t_return_goods` VALUES (13, 200, '201605021637538029', 104, 0, '法国合肥更好', '/Public/upload/return_goods/2016/09-23/57e4ef68ce555.jpg', 1474621290, 0, '', 1, '28_57');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `nameZh` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, 'ROLE_manager', '部门经理');
INSERT INTO `t_role` VALUES (2, 'ROLE_personnel', '人事专员');
INSERT INTO `t_role` VALUES (3, 'ROLE_recruiter', '招聘主管');
INSERT INTO `t_role` VALUES (4, 'ROLE_train', '培训主管');
INSERT INTO `t_role` VALUES (5, 'ROLE_performance', '薪酬绩效主管');
INSERT INTO `t_role` VALUES (6, 'ROLE_admin', '系统管理员');
INSERT INTO `t_role` VALUES (8, 'ROLE_test', '测试角色');

-- ----------------------------
-- Table structure for t_salary
-- ----------------------------
DROP TABLE IF EXISTS `t_salary`;
CREATE TABLE `t_salary`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `basicSalary` int NULL DEFAULT NULL COMMENT '基本工资',
  `bonus` int NULL DEFAULT NULL COMMENT '奖金',
  `lunchSalary` int NULL DEFAULT NULL COMMENT '午餐补助',
  `trafficSalary` int NULL DEFAULT NULL COMMENT '交通补助',
  `allSalary` int NULL DEFAULT NULL COMMENT '应发工资',
  `pensionBase` int NULL DEFAULT NULL COMMENT '养老金基数',
  `pensionPer` float NULL DEFAULT NULL COMMENT '养老金比率',
  `createDate` timestamp(0) NULL DEFAULT NULL COMMENT '启用时间',
  `medicalBase` int NULL DEFAULT NULL COMMENT '医疗基数',
  `medicalPer` float NULL DEFAULT NULL COMMENT '医疗保险比率',
  `accumulationFundBase` int NULL DEFAULT NULL COMMENT '公积金基数',
  `accumulationFundPer` float NULL DEFAULT NULL COMMENT '公积金比率',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_salary
-- ----------------------------
INSERT INTO `t_salary` VALUES (1, 8000, 500, 800, 400, NULL, 1000, 0.06, '2018-01-24 00:00:00', 1000, 0.06, 1000, 0.06, '市场部工资账套');
INSERT INTO `t_salary` VALUES (2, 3000, 500, 500, 500, NULL, 1800, 0.06, '2018-01-01 00:00:00', 2200, 0.06, 3200, 0.06, '人事部工资账套');
INSERT INTO `t_salary` VALUES (3, 9000, 500, 1000, 1000, NULL, 3000, 0.06, '2018-01-25 00:00:00', 3000, 0.06, 3000, 0.06, '运维部工资账套');
INSERT INTO `t_salary` VALUES (4, 5000, 500, 500, 500, NULL, 500, 0.06, '2020-04-10 14:15:45', 500, 0.06, 500, 0.06, '财务部工资账套');

-- ----------------------------
-- Table structure for t_salary_adjust
-- ----------------------------
DROP TABLE IF EXISTS `t_salary_adjust`;
CREATE TABLE `t_salary_adjust`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int NULL DEFAULT NULL COMMENT '员工ID',
  `asDate` date NULL DEFAULT NULL COMMENT '调薪日期',
  `beforeSalary` int NULL DEFAULT NULL COMMENT '调前薪资',
  `afterSalary` int NULL DEFAULT NULL COMMENT '调后薪资',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调薪原因',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `eid`(`eid`) USING BTREE,
  CONSTRAINT `t_salary_adjust_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `t_employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_salary_adjust
-- ----------------------------

-- ----------------------------
-- Table structure for t_shipping
-- ----------------------------
DROP TABLE IF EXISTS `t_shipping`;
CREATE TABLE `t_shipping`  (
  `shipping_id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表 id',
  `shipping_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '快递代号',
  `shipping_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '快递名称',
  `shipping_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `insure` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '保险',
  `enabled` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否开启',
  PRIMARY KEY (`shipping_id`) USING BTREE,
  INDEX `shipping_code`(`shipping_code`, `enabled`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_shipping
-- ----------------------------
INSERT INTO `t_shipping` VALUES (1, 'post_express', '邮政快递包裹', '邮政快递包裹的描述内容。', '1%', 1);
INSERT INTO `t_shipping` VALUES (2, 'yto', '圆通速递', '上海圆通物流（速递）有限公司经过多年的网络快速发展，在中国速递行业中一直处于领先地位。为了能更好的发展国际快件市场，加快与国际市场的接轨，强化圆通的整体实力，圆通已在东南亚、欧美、中东、北美洲、非洲等许多城市运作国际快件业务', '0', 1);
INSERT INTO `t_shipping` VALUES (3, 'city_express', '城际快递', '配送的运费是固定的', '0', 1);
INSERT INTO `t_shipping` VALUES (4, 'flat', '市内快递', '固定运费的配送方式内容', '0', 1);
INSERT INTO `t_shipping` VALUES (5, 'sto_express', '申通快递', '江、浙、沪地区首重为15元/KG，其他地区18元/KG， 续重均为5-6元/KG， 云南地区为8元', '0', 1);
INSERT INTO `t_shipping` VALUES (6, 'post_mail', '邮局平邮', '邮局平邮的描述内容。', '0', 1);
INSERT INTO `t_shipping` VALUES (7, 'fpd', '运费到付', '所购商品到达即付运费', '0', 1);

-- ----------------------------
-- Table structure for t_shipping_area
-- ----------------------------
DROP TABLE IF EXISTS `t_shipping_area`;
CREATE TABLE `t_shipping_area`  (
  `shipping_area_id` smallint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `shipping_area_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '配送区域名称',
  `shipping_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '物流id',
  `config` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置首重续重等...序列化存储',
  `update_time` int NULL DEFAULT NULL COMMENT '更新时间',
  `is_default` tinyint(1) NULL DEFAULT 0 COMMENT '是否默认',
  PRIMARY KEY (`shipping_area_id`) USING BTREE,
  INDEX `shipping_id`(`shipping_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_shipping_area
-- ----------------------------
INSERT INTO `t_shipping_area` VALUES (24, '全国其他地区', 'shentong', 'a:4:{s:12:\"first_weight\";s:4:\"1000\";s:5:\"money\";s:1:\"0\";s:13:\"second_weight\";s:4:\"2000\";s:9:\"add_money\";s:1:\"0\";}', 1467271283, 1);
INSERT INTO `t_shipping_area` VALUES (25, '全国其他地区', 'shunfeng', 'a:4:{s:12:\"first_weight\";s:4:\"1000\";s:13:\"second_weight\";s:4:\"2000\";s:5:\"money\";s:2:\"12\";s:9:\"add_money\";s:1:\"2\";}', NULL, 1);
INSERT INTO `t_shipping_area` VALUES (33, '全国其他地区', 'zhongtong', 'a:4:{s:12:\"first_weight\";s:4:\"1000\";s:13:\"second_weight\";s:4:\"2000\";s:5:\"money\";s:2:\"12\";s:9:\"add_money\";s:1:\"2\";}', NULL, 1);

-- ----------------------------
-- Table structure for t_sms_log
-- ----------------------------
DROP TABLE IF EXISTS `t_sms_log`;
CREATE TABLE `t_sms_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '表id',
  `mobile` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '' COMMENT '手机号',
  `session_id` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '' COMMENT 'session_id',
  `add_time` int NULL DEFAULT 0 COMMENT '发送时间',
  `code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '' COMMENT '验证码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_sms_log
-- ----------------------------
INSERT INTO `t_sms_log` VALUES (24, '15889560679', '9732B70D-CFE7-456C-985C-030D193F', 1456966580, '3369');
INSERT INTO `t_sms_log` VALUES (25, '13800138006', '123456', 1464421726, '8217');
INSERT INTO `t_sms_log` VALUES (26, '18217145053', 'j0t8fti95do8d89v8gitutr6s3', 1466581739, '3478');
INSERT INTO `t_sms_log` VALUES (27, '15889560679', 'unionid001', 1468476308, '1954');
INSERT INTO `t_sms_log` VALUES (28, '13794463935', 'unionid001', 1468576136, '4881');
INSERT INTO `t_sms_log` VALUES (29, '13800138006', '123456', 1470547353, '2914');
INSERT INTO `t_sms_log` VALUES (30, '13800138006', '123456', 1470547540, '5210');
INSERT INTO `t_sms_log` VALUES (31, '13800138006', '123456', 1471846145, '3582');
INSERT INTO `t_sms_log` VALUES (32, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473652084, '5801');
INSERT INTO `t_sms_log` VALUES (33, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473660515, '5417');
INSERT INTO `t_sms_log` VALUES (34, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473663462, '8254');
INSERT INTO `t_sms_log` VALUES (35, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473663551, '8676');
INSERT INTO `t_sms_log` VALUES (36, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473663672, '6756');
INSERT INTO `t_sms_log` VALUES (37, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473663732, '6265');
INSERT INTO `t_sms_log` VALUES (38, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473669190, '4475');
INSERT INTO `t_sms_log` VALUES (39, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473669808, '4306');
INSERT INTO `t_sms_log` VALUES (40, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473669869, '1134');
INSERT INTO `t_sms_log` VALUES (41, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473669997, '1622');
INSERT INTO `t_sms_log` VALUES (42, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473670066, '8658');
INSERT INTO `t_sms_log` VALUES (43, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473670364, '3873');
INSERT INTO `t_sms_log` VALUES (44, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473671832, '7540');
INSERT INTO `t_sms_log` VALUES (45, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473671989, '2361');
INSERT INTO `t_sms_log` VALUES (46, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473672294, '7440');
INSERT INTO `t_sms_log` VALUES (47, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473672658, '5050');
INSERT INTO `t_sms_log` VALUES (48, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473672736, '3833');
INSERT INTO `t_sms_log` VALUES (49, '13118914190', 'p1hqhisckfromja5hl41dosd32', 1473674793, '8848');
INSERT INTO `t_sms_log` VALUES (50, '13118914190', 'l9v1146ns38a0mcruh2ehn8kh6', 1474356982, '9532');
INSERT INTO `t_sms_log` VALUES (51, '13118914190', 'n5eip1pqivac855de33u0m8ll4', 1475128300, '3044');

-- ----------------------------
-- Table structure for t_spec
-- ----------------------------
DROP TABLE IF EXISTS `t_spec`;
CREATE TABLE `t_spec`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '规格表',
  `type_id` int NULL DEFAULT 0 COMMENT '规格类型',
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格名称',
  `order` int NULL DEFAULT 50 COMMENT '排序',
  `search_index` tinyint(1) NULL DEFAULT 0 COMMENT '是否需要检索',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_spec
-- ----------------------------
INSERT INTO `t_spec` VALUES (1, 13, '颜色2', 502, 2);
INSERT INTO `t_spec` VALUES (2, 13, '尺码', 50, 0);
INSERT INTO `t_spec` VALUES (3, 13, '布料', 50, 0);
INSERT INTO `t_spec` VALUES (4, 13, '袖子', 50, 0);
INSERT INTO `t_spec` VALUES (5, 4, '网络', 50, 0);
INSERT INTO `t_spec` VALUES (6, 4, '内存', 50, 0);
INSERT INTO `t_spec` VALUES (7, 4, '屏幕', 50, 1);
INSERT INTO `t_spec` VALUES (8, 13, '产地', 0, 0);
INSERT INTO `t_spec` VALUES (10, 9, '卡号', 50, 0);
INSERT INTO `t_spec` VALUES (11, 9, 'CPU', 50, 0);
INSERT INTO `t_spec` VALUES (12, 15, '尺寸', 50, 0);
INSERT INTO `t_spec` VALUES (13, 15, '内存', 50, 0);
INSERT INTO `t_spec` VALUES (14, 15, '颜色', 50, 0);
INSERT INTO `t_spec` VALUES (15, 9, '颜色', 50, 0);
INSERT INTO `t_spec` VALUES (16, 4, '颜色', 50, 0);
INSERT INTO `t_spec` VALUES (17, 16, '颜色', 50, 0);
INSERT INTO `t_spec` VALUES (18, 17, '颜色', 50, 1);
INSERT INTO `t_spec` VALUES (19, 18, '尺寸', 50, 0);
INSERT INTO `t_spec` VALUES (20, 20, '选择瓦数', 50, 1);
INSERT INTO `t_spec` VALUES (21, 24, '尺码', 50, 1);
INSERT INTO `t_spec` VALUES (22, 25, '尺码', 50, 1);
INSERT INTO `t_spec` VALUES (23, 26, '尺码', 50, 1);
INSERT INTO `t_spec` VALUES (24, 31, '颜色', 50, 1);
INSERT INTO `t_spec` VALUES (25, 33, '合约套餐', 50, 1);
INSERT INTO `t_spec` VALUES (26, 33, '套餐', 50, 1);

-- ----------------------------
-- Table structure for t_spec_goods_price
-- ----------------------------
DROP TABLE IF EXISTS `t_spec_goods_price`;
CREATE TABLE `t_spec_goods_price`  (
  `goods_id` int NULL DEFAULT 0 COMMENT '商品id',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '规格键名',
  `key_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '规格键名中文',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `store_count` int UNSIGNED NULL DEFAULT 10 COMMENT '库存数量',
  `bar_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '商品条形码',
  `sku` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'SKU'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_spec_goods_price
-- ----------------------------
INSERT INTO `t_spec_goods_price` VALUES (5, '11_14_23', NULL, 1000.00, 100, '0', '');
INSERT INTO `t_spec_goods_price` VALUES (5, '11_13_23', NULL, 1000.00, 100, '0', '');
INSERT INTO `t_spec_goods_price` VALUES (105, '11_28_100', '网络:4G 内存:32G 颜色:玫瑰金', 5588.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (5, '11_14_21', NULL, 40.00, 100, '60', '');
INSERT INTO `t_spec_goods_price` VALUES (76, '80', '尺码:XL', 267.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (76, '79', '尺码:L', 269.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (5, '12_13_21', NULL, 1000.00, 100, '0', '');
INSERT INTO `t_spec_goods_price` VALUES (5, '12_14_21', NULL, 1000.00, 100, '0', '');
INSERT INTO `t_spec_goods_price` VALUES (5, '12_13_23', NULL, 1000.00, 100, '0', '');
INSERT INTO `t_spec_goods_price` VALUES (5, '12_14_23', NULL, 1000.00, 100, '0', '');
INSERT INTO `t_spec_goods_price` VALUES (33, '11_13_23', '网络:4G 内存:16G 屏幕:文字屏', 300.00, 100, '0003', '');
INSERT INTO `t_spec_goods_price` VALUES (33, '11_14_21', '网络:4G 内存:8G 屏幕:触屏', 200.00, 100, '0002', '');
INSERT INTO `t_spec_goods_price` VALUES (33, '11_13_21', '网络:4G 内存:16G 屏幕:触屏', 100.00, 100, '0001', '');
INSERT INTO `t_spec_goods_price` VALUES (34, '12_21_28', '3G_触屏_32G', 600.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (34, '12_14_21', '3G_8G_触屏', 500.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (34, '12_13_21', '3G_16G_触屏', 400.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (34, '11_21_28', '4G_触屏_32G', 300.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (34, '11_14_21', '4G_8G_触屏', 200.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (34, '11_13_21', '4G_16G_触屏', 100.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (35, '11_13_21', '4G_16G_触屏', 100.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (35, '11_14_21', '4G_8G_触屏', 200.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (35, '11_21_28', '4G_触屏_32G', 300.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (35, '12_13_21', '3G_16G_触屏', 400.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (35, '12_14_21', '3G_8G_触屏', 500.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (35, '12_21_28', '3G_触屏_32G', 600.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (36, '12_21_28', '3G_触屏_32G', 600.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (36, '12_14_21', '3G_8G_触屏', 500.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (36, '12_13_21', '3G_16G_触屏', 400.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (36, '11_21_28', '4G_触屏_32G', 300.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (36, '11_14_21', '4G_8G_触屏', 200.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (36, '11_13_21', '4G_16G_触屏', 100.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (37, '11_13_21', '4G_16G_触屏', 100.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (37, '11_14_21', '4G_8G_触屏', 200.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (37, '11_21_28', '4G_触屏_32G', 300.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (37, '12_13_21', '3G_16G_触屏', 400.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (37, '12_14_21', '3G_8G_触屏', 500.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (37, '12_21_28', '3G_触屏_32G', 600.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (23, '36_38', '移动_双核', 100.00, 100, '0001', '');
INSERT INTO `t_spec_goods_price` VALUES (23, '35_38', '联通_双核', 200.00, 100, '0002', '');
INSERT INTO `t_spec_goods_price` VALUES (23, '37_38', '电信_双核', 300.00, 100, '0003', '');
INSERT INTO `t_spec_goods_price` VALUES (23, '36_39', '移动_4核', 400.00, 100, '0004', '');
INSERT INTO `t_spec_goods_price` VALUES (23, '35_39', '联通_4核', 500.00, 100, '0005', '');
INSERT INTO `t_spec_goods_price` VALUES (23, '37_39', '电信_4核', 600.00, 100, '0006', '');
INSERT INTO `t_spec_goods_price` VALUES (23, '36_40', '移动_8核', 700.00, 100, '0007', '');
INSERT INTO `t_spec_goods_price` VALUES (23, '35_40', '联通_8核', 800.00, 100, '0008', '');
INSERT INTO `t_spec_goods_price` VALUES (23, '37_40', '电信_8核', 999.00, 100, '0009', '');
INSERT INTO `t_spec_goods_price` VALUES (24, '36_38', '移动_双核', 1000.00, 100, 'a0001', '');
INSERT INTO `t_spec_goods_price` VALUES (24, '35_38', '联通_双核', 2000.00, 100, 'b0002', '');
INSERT INTO `t_spec_goods_price` VALUES (24, '37_38', '电信_双核', 3000.00, 100, 'c0003', '');
INSERT INTO `t_spec_goods_price` VALUES (24, '36_39', '移动_4核', 4000.00, 100, 'd0004', '');
INSERT INTO `t_spec_goods_price` VALUES (24, '35_39', '联通_4核', 5000.00, 100, 'e0005', '');
INSERT INTO `t_spec_goods_price` VALUES (24, '37_39', '电信_4核', 1000.00, 100, 'f0006', '');
INSERT INTO `t_spec_goods_price` VALUES (24, '36_40', '移动_8核', 2000.00, 100, 'g0007', '');
INSERT INTO `t_spec_goods_price` VALUES (24, '35_40', '联通_8核', 3000.00, 100, 'h0008', '');
INSERT INTO `t_spec_goods_price` VALUES (24, '37_40', '电信_8核', 4000.00, 100, 'i0009', '');
INSERT INTO `t_spec_goods_price` VALUES (1, '11_55_102', '网络:4G 颜色:黑色 内存:128G', 6000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (1, '11_99_102', '网络:4G 颜色:银色 内存:128G', 5800.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (33, '11_14_23', '网络:4G 内存:8G 屏幕:文字屏', 400.00, 100, '0004', '');
INSERT INTO `t_spec_goods_price` VALUES (39, '41_48_52', '尺寸:7寸及以下 内存:32G 颜色:黑色', 4200.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (39, '42_48_52', '尺寸:7.8-9寸 内存:32G 颜色:黑色', 4300.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (39, '41_47_52', '尺寸:7寸及以下 内存:16G 颜色:黑色', 4000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (39, '42_47_52', '尺寸:7.8-9寸 内存:16G 颜色:黑色', 4100.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (39, '42_48_51', '尺寸:7.8-9寸 内存:32G 颜色:银白色', 2400.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (39, '41_48_51', '尺寸:7寸及以下 内存:32G 颜色:银白色', 2300.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (39, '42_47_51', '尺寸:7.8-9寸 内存:16G 颜色:银白色', 2500.00, 100, '00002', '');
INSERT INTO `t_spec_goods_price` VALUES (39, '41_47_51', '尺寸:7寸及以下 内存:16G 颜色:银白色', 2000.00, 100, '00001', '');
INSERT INTO `t_spec_goods_price` VALUES (50, '11_13_21_57', '网络:4G 内存:16G 屏幕:触屏 颜色:金色', 1179.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (49, '11_13_21', '网络:4G 内存:16G 屏幕:触屏', 999.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (48, '11_13_21', '网络:4G 内存:16G 屏幕:触屏', 2099.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (47, '11_13_21', '网络:4G 内存:16G 屏幕:触屏', 1399.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (46, '11_13_21', '网络:4G 内存:16G 屏幕:触屏', 999.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (45, '11_21_28', '网络:4G 屏幕:触屏 内存:32G', 2000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (45, '11_13_21', '网络:4G 内存:16G 屏幕:触屏', 1999.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (45, '11_14_21', '网络:4G 内存:8G 屏幕:触屏', 1500.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (40, '42_47', '尺寸:7.8-9寸 内存:16G', 1000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (40, '42_48', '尺寸:7.8-9寸 内存:32G', 1000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (40, '42_49', '尺寸:7.8-9寸 内存:64G', 1000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (40, '41_47', '尺寸:7寸及以下 内存:16G', 1000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (40, '41_48', '尺寸:7寸及以下 内存:32G', 1000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (40, '41_49', '尺寸:7寸及以下 内存:64G', 1000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (41, '41_47_51', '尺寸:7寸及以下 内存:16G 颜色:银白色', 1588.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (41, '42_47_51', '尺寸:7.8-9寸 内存:16G 颜色:银白色', 1600.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (41, '41_48_51', '尺寸:7寸及以下 内存:32G 颜色:银白色', 2000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (41, '42_48_51', '尺寸:7.8-9寸 内存:32G 颜色:银白色', 2200.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (41, '41_47_52', '尺寸:7寸及以下 内存:16G 颜色:黑色', 2259.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (41, '42_47_52', '尺寸:7.8-9寸 内存:16G 颜色:黑色', 3789.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (41, '41_48_52', '尺寸:7寸及以下 内存:32G 颜色:黑色', 4000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (41, '42_48_52', '尺寸:7.8-9寸 内存:32G 颜色:黑色', 5000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (43, '41_47_51', '尺寸:7寸及以下 内存:16G 颜色:银白色', 1499.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (44, '42_47_52', '尺寸:7.8-9寸 内存:16G 颜色:黑色', 800.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (44, '42_47_51', '尺寸:7.8-9寸 内存:16G 颜色:银白色', 799.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (50, '11_13_21_56', '网络:4G 内存:16G 屏幕:触屏 颜色:白色', 1189.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (50, '11_13_21_55', '网络:4G 内存:16G 屏幕:触屏 颜色:黑色', 1169.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (51, '12_21_28', '网络:3G 屏幕:触屏 内存:32G', 5000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (51, '12_14_21', '网络:3G 内存:8G 屏幕:触屏', 4000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (51, '12_13_21', '网络:3G 内存:16G 屏幕:触屏', 3699.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (51, '11_21_28', '网络:4G 屏幕:触屏 内存:32G', 5000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (51, '11_14_21', '网络:4G 内存:8G 屏幕:触屏', 4000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (51, '11_13_21', '网络:4G 内存:16G 屏幕:触屏', 3699.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (52, '58', '颜色:白色', 328.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (53, '61', '颜色:黑色', 349.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (54, '61', '颜色:黑色', 258.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (55, '58', '颜色:白色', 349.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (56, '67', '尺寸:55', 4399.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (56, '66', '尺寸:50', 3399.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (56, '65', '尺寸:42', 2399.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (57, '67', '尺寸:55', 3000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (57, '66', '尺寸:50', 2799.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (57, '65', '尺寸:42', 2000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (58, '63', '尺寸:32', 1399.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (58, '66', '尺寸:50', 2399.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (58, '67', '尺寸:55', 3399.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (59, '67', '尺寸:55', 2799.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (59, '66', '尺寸:50', 2499.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (60, '66', '尺寸:50', 2599.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (60, '67', '尺寸:55', 3000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (61, '67', '尺寸:55', 3599.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (62, '64', '尺寸:40', 3699.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (62, '66', '尺寸:50', 4699.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (62, '67', '尺寸:55', 5699.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (63, '67', '尺寸:55', 3699.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (64, '64', '尺寸:40', 2098.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (65, '65', '尺寸:42', 2799.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (68, '69', '选择瓦数:20W', 358.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (68, '71', '选择瓦数:24W', 358.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (68, '75', '选择瓦数:36W', 358.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (68, '76', '选择瓦数:72W', 358.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (76, '78', '尺码:M', 0.10, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (76, '77', '尺码:S', 0.01, 93, '', '');
INSERT INTO `t_spec_goods_price` VALUES (77, '79', '尺码:L', 399.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (77, '78', '尺码:M', 399.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (77, '77', '尺码:S', 399.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (78, '84', '尺码:L', 118.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (78, '85', '尺码:XL', 118.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (79, '82', '尺码:S', 398.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (79, '83', '尺码:M', 398.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (79, '84', '尺码:L', 398.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (81, '92', '尺码:75C', 108.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (81, '91', '尺码:75B', 108.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (81, '88', '尺码:70B', 108.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (81, '87', '尺码:70A', 108.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (80, '94', '尺码:80B', 79.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (80, '93', '尺码:80A', 79.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (80, '92', '尺码:75C', 79.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (80, '91', '尺码:75B', 79.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (80, '90', '尺码:75A', 79.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (80, '89', '尺码:70C', 79.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (80, '88', '尺码:70B', 79.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (80, '87', '尺码:70A', 79.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (81, '95', '尺码:80C', 108.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (81, '97', '尺码:85B', 108.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (84, '77', '尺码:S', 469.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (84, '78', '尺码:M', 469.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (84, '79', '尺码:L', 469.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (85, '78', '尺码:M', 278.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (86, '77', '尺码:S', 875.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (86, '78', '尺码:M', 875.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (86, '79', '尺码:L', 875.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (86, '80', '尺码:XL', 875.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (86, '81', '尺码:XXL', 875.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (87, '77', '尺码:S', 229.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (87, '78', '尺码:M', 229.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (87, '79', '尺码:L', 229.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (1, '11_100_102', '网络:4G 颜色:玫瑰金 内存:128G', 0.01, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (104, '56_101', '颜色:白色 内存:64G', 2100.00, 100, 'xm0005', '');
INSERT INTO `t_spec_goods_price` VALUES (104, '56_102', '颜色:白色 内存:128G', 2200.00, 100, 'xm0006', '');
INSERT INTO `t_spec_goods_price` VALUES (104, '28_57', '内存:32G 颜色:金色', 1999.00, 100, 'xm0007', '');
INSERT INTO `t_spec_goods_price` VALUES (104, '57_101', '颜色:金色 内存:64G', 2100.00, 100, 'xm0008', '');
INSERT INTO `t_spec_goods_price` VALUES (104, '57_102', '颜色:金色 内存:128G', 2200.00, 100, 'xm0009', '');
INSERT INTO `t_spec_goods_price` VALUES (104, '28_56', '内存:32G 颜色:白色', 6000.00, 100, 'xm0004', '');
INSERT INTO `t_spec_goods_price` VALUES (104, '55_102', '颜色:黑色 内存:128G', 2200.00, 100, 'xm0003', '');
INSERT INTO `t_spec_goods_price` VALUES (104, '55_101', '颜色:黑色 内存:64G', 2100.00, 100, 'xm0002', '');
INSERT INTO `t_spec_goods_price` VALUES (104, '28_55', '内存:32G 颜色:黑色', 6000.00, 98, 'xm0001', '');
INSERT INTO `t_spec_goods_price` VALUES (105, '11_13_100', '网络:4G 内存:16G 颜色:玫瑰金', 5500.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (105, '11_57_101', '网络:4G 颜色:金色 内存:64G', 6000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (105, '11_28_57', '网络:4G 内存:32G 颜色:金色', 5588.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (105, '11_13_57', '网络:4G 内存:16G 颜色:金色', 5500.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (105, '11_100_101', '网络:4G 颜色:玫瑰金 内存:64G', 6000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (115, '103', '颜色:土豪金', 84.90, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (115, '104', '颜色:象牙白', 84.90, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (115, '105', '颜色:宝石蓝', 84.90, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (116, '103', '颜色:土豪金', 1000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (116, '104', '颜色:象牙白', 1000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (117, '103', '颜色:土豪金', 69.90, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (117, '104', '颜色:象牙白', 69.90, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (117, '105', '颜色:宝石蓝', 69.90, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (118, '104', '颜色:象牙白', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (118, '105', '颜色:宝石蓝', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (119, '103', '颜色:土豪金', 69.00, 98, '', '');
INSERT INTO `t_spec_goods_price` VALUES (119, '104', '颜色:象牙白', 69.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (120, '103', '颜色:土豪金', 129.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (120, '104', '颜色:象牙白', 129.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (121, '104', '颜色:象牙白', 69.90, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (122, '103', '颜色:土豪金', 69.90, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (132, '106', '合约套餐:乐享4G套餐59元', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (132, '107', '合约套餐:乐享4G套餐79元', 79.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (132, '108', '合约套餐:乐享4G套餐99元', 99.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (132, '109', '合约套餐:乐享4G套餐129元', 129.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (132, '110', '合约套餐:乐享4G套餐169元', 169.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (132, '111', '合约套餐:乐享4G套餐199元', 199.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (133, '106', '合约套餐:乐享4G套餐59元', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (133, '107', '合约套餐:乐享4G套餐79元', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (133, '108', '合约套餐:乐享4G套餐99元', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (134, '106', '合约套餐:乐享4G套餐59元', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (134, '107', '合约套餐:乐享4G套餐79元', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (134, '108', '合约套餐:乐享4G套餐99元', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (134, '109', '合约套餐:乐享4G套餐129元', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (134, '110', '合约套餐:乐享4G套餐169元', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (135, '106', '合约套餐:乐享4G套餐59元', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (135, '107', '合约套餐:乐享4G套餐79元', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (136, '108', '合约套餐:乐享4G套餐99元', 99.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (136, '109', '合约套餐:乐享4G套餐129元', 129.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (141, '56', '颜色:白色', 3499.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (141, '57', '颜色:金色', 3499.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (141, '55', '颜色:黑色', 3499.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (140, '11_28_100', '网络:4G 内存:32G 颜色:玫瑰金', 6858.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (140, '11_28_57', '网络:4G 内存:32G 颜色:金色', 6000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (140, '11_28_55', '网络:4G 内存:32G 颜色:黑色', 4858.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (140, '11_13_100', '网络:4G 内存:16G 颜色:玫瑰金', 6000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (140, '11_13_57', '网络:4G 内存:16G 颜色:金色', 5868.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (140, '11_13_55', '网络:4G 内存:16G 颜色:黑色', 4858.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (139, '106_112', '合约套餐:乐享4G套餐59元 套餐:微型卡', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (139, '106_113', '合约套餐:乐享4G套餐59元 套餐:普通卡', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (137, '106_112', '合约套餐:乐享4G套餐59元 套餐:微型卡', 1000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (137, '107_112', '合约套餐:乐享4G套餐79元 套餐:微型卡', 1000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (137, '106_113', '合约套餐:乐享4G套餐59元 套餐:普通卡', 1000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (137, '107_113', '合约套餐:乐享4G套餐79元 套餐:普通卡', 1000.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (138, '106', '合约套餐:乐享4G套餐59元', 59.00, 100, '', '');
INSERT INTO `t_spec_goods_price` VALUES (138, '107', '合约套餐:乐享4G套餐79元', 79.00, 100, '', '');

-- ----------------------------
-- Table structure for t_spec_image
-- ----------------------------
DROP TABLE IF EXISTS `t_spec_image`;
CREATE TABLE `t_spec_image`  (
  `goods_id` int NULL DEFAULT 0 COMMENT '商品规格图片表id',
  `spec_image_id` int NULL DEFAULT 0 COMMENT '规格项id',
  `src` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '商品规格图片路径'
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_spec_image
-- ----------------------------
INSERT INTO `t_spec_image` VALUES (33, 11, '');
INSERT INTO `t_spec_image` VALUES (33, 12, '');
INSERT INTO `t_spec_image` VALUES (33, 13, '');
INSERT INTO `t_spec_image` VALUES (33, 14, '');
INSERT INTO `t_spec_image` VALUES (33, 28, '');
INSERT INTO `t_spec_image` VALUES (33, 21, '');
INSERT INTO `t_spec_image` VALUES (33, 23, '');
INSERT INTO `t_spec_image` VALUES (4, 36, '/Public/upload/goods/2015/11-18/564c818c3a888.jpg');
INSERT INTO `t_spec_image` VALUES (4, 35, '/Public/upload/goods/2015/11-18/564c8c1c0a916.jpg');
INSERT INTO `t_spec_image` VALUES (4, 37, '');
INSERT INTO `t_spec_image` VALUES (4, 38, '');
INSERT INTO `t_spec_image` VALUES (4, 39, '');
INSERT INTO `t_spec_image` VALUES (4, 40, '');
INSERT INTO `t_spec_image` VALUES (39, 41, '');
INSERT INTO `t_spec_image` VALUES (39, 42, '');
INSERT INTO `t_spec_image` VALUES (39, 43, '');
INSERT INTO `t_spec_image` VALUES (39, 44, '');
INSERT INTO `t_spec_image` VALUES (39, 45, '');
INSERT INTO `t_spec_image` VALUES (39, 46, '');
INSERT INTO `t_spec_image` VALUES (39, 47, '');
INSERT INTO `t_spec_image` VALUES (39, 48, '');
INSERT INTO `t_spec_image` VALUES (39, 49, '');
INSERT INTO `t_spec_image` VALUES (39, 50, '');
INSERT INTO `t_spec_image` VALUES (39, 51, '/Public/upload/goods/2016/01-13/5695b6924f647.jpg');
INSERT INTO `t_spec_image` VALUES (39, 52, '/Public/upload/goods/2016/01-13/5695b69d3a186.jpg');
INSERT INTO `t_spec_image` VALUES (41, 41, '');
INSERT INTO `t_spec_image` VALUES (41, 42, '');
INSERT INTO `t_spec_image` VALUES (41, 43, '');
INSERT INTO `t_spec_image` VALUES (41, 44, '');
INSERT INTO `t_spec_image` VALUES (41, 45, '');
INSERT INTO `t_spec_image` VALUES (41, 46, '');
INSERT INTO `t_spec_image` VALUES (41, 47, '');
INSERT INTO `t_spec_image` VALUES (41, 48, '');
INSERT INTO `t_spec_image` VALUES (41, 49, '');
INSERT INTO `t_spec_image` VALUES (41, 50, '');
INSERT INTO `t_spec_image` VALUES (41, 51, '');
INSERT INTO `t_spec_image` VALUES (41, 52, '');
INSERT INTO `t_spec_image` VALUES (43, 41, '');
INSERT INTO `t_spec_image` VALUES (43, 42, '');
INSERT INTO `t_spec_image` VALUES (43, 43, '');
INSERT INTO `t_spec_image` VALUES (43, 44, '');
INSERT INTO `t_spec_image` VALUES (43, 45, '');
INSERT INTO `t_spec_image` VALUES (43, 46, '');
INSERT INTO `t_spec_image` VALUES (43, 47, '');
INSERT INTO `t_spec_image` VALUES (43, 48, '');
INSERT INTO `t_spec_image` VALUES (43, 49, '');
INSERT INTO `t_spec_image` VALUES (43, 50, '');
INSERT INTO `t_spec_image` VALUES (43, 51, '');
INSERT INTO `t_spec_image` VALUES (43, 52, '');
INSERT INTO `t_spec_image` VALUES (40, 41, '');
INSERT INTO `t_spec_image` VALUES (40, 42, '');
INSERT INTO `t_spec_image` VALUES (40, 43, '');
INSERT INTO `t_spec_image` VALUES (40, 44, '');
INSERT INTO `t_spec_image` VALUES (40, 45, '');
INSERT INTO `t_spec_image` VALUES (40, 46, '');
INSERT INTO `t_spec_image` VALUES (40, 47, '');
INSERT INTO `t_spec_image` VALUES (40, 48, '');
INSERT INTO `t_spec_image` VALUES (40, 49, '');
INSERT INTO `t_spec_image` VALUES (40, 50, '');
INSERT INTO `t_spec_image` VALUES (40, 51, '/Public/upload/goods/2016/01-13/5695e662883fd.jpg');
INSERT INTO `t_spec_image` VALUES (40, 52, '/Public/upload/goods/2016/01-13/5695e66b2163f.jpg');
INSERT INTO `t_spec_image` VALUES (44, 41, '');
INSERT INTO `t_spec_image` VALUES (44, 42, '');
INSERT INTO `t_spec_image` VALUES (44, 43, '');
INSERT INTO `t_spec_image` VALUES (44, 44, '');
INSERT INTO `t_spec_image` VALUES (44, 45, '');
INSERT INTO `t_spec_image` VALUES (44, 46, '');
INSERT INTO `t_spec_image` VALUES (44, 47, '');
INSERT INTO `t_spec_image` VALUES (44, 48, '');
INSERT INTO `t_spec_image` VALUES (44, 49, '');
INSERT INTO `t_spec_image` VALUES (44, 50, '');
INSERT INTO `t_spec_image` VALUES (44, 51, '/Public/upload/goods/2016/01-13/5695e7a14b06c.jpg');
INSERT INTO `t_spec_image` VALUES (44, 52, '/Public/upload/goods/2016/01-13/5695e7a660f5b.jpg');
INSERT INTO `t_spec_image` VALUES (45, 11, '');
INSERT INTO `t_spec_image` VALUES (45, 12, '');
INSERT INTO `t_spec_image` VALUES (45, 13, '');
INSERT INTO `t_spec_image` VALUES (45, 14, '');
INSERT INTO `t_spec_image` VALUES (45, 28, '');
INSERT INTO `t_spec_image` VALUES (45, 21, '');
INSERT INTO `t_spec_image` VALUES (45, 23, '');
INSERT INTO `t_spec_image` VALUES (46, 11, '');
INSERT INTO `t_spec_image` VALUES (46, 12, '');
INSERT INTO `t_spec_image` VALUES (46, 13, '');
INSERT INTO `t_spec_image` VALUES (46, 14, '');
INSERT INTO `t_spec_image` VALUES (46, 28, '');
INSERT INTO `t_spec_image` VALUES (46, 21, '');
INSERT INTO `t_spec_image` VALUES (46, 23, '');
INSERT INTO `t_spec_image` VALUES (47, 11, '');
INSERT INTO `t_spec_image` VALUES (47, 12, '');
INSERT INTO `t_spec_image` VALUES (47, 13, '');
INSERT INTO `t_spec_image` VALUES (47, 14, '');
INSERT INTO `t_spec_image` VALUES (47, 28, '');
INSERT INTO `t_spec_image` VALUES (47, 21, '');
INSERT INTO `t_spec_image` VALUES (47, 23, '');
INSERT INTO `t_spec_image` VALUES (48, 11, '');
INSERT INTO `t_spec_image` VALUES (48, 12, '');
INSERT INTO `t_spec_image` VALUES (48, 13, '');
INSERT INTO `t_spec_image` VALUES (48, 14, '');
INSERT INTO `t_spec_image` VALUES (48, 28, '');
INSERT INTO `t_spec_image` VALUES (48, 21, '/Public/upload/goods/2016/01-13/5695f9c356aa9.jpg');
INSERT INTO `t_spec_image` VALUES (48, 23, '');
INSERT INTO `t_spec_image` VALUES (49, 11, '');
INSERT INTO `t_spec_image` VALUES (49, 12, '');
INSERT INTO `t_spec_image` VALUES (49, 13, '');
INSERT INTO `t_spec_image` VALUES (49, 14, '');
INSERT INTO `t_spec_image` VALUES (49, 28, '');
INSERT INTO `t_spec_image` VALUES (49, 21, '');
INSERT INTO `t_spec_image` VALUES (49, 23, '');
INSERT INTO `t_spec_image` VALUES (51, 11, '');
INSERT INTO `t_spec_image` VALUES (51, 12, '');
INSERT INTO `t_spec_image` VALUES (51, 13, '');
INSERT INTO `t_spec_image` VALUES (51, 14, '');
INSERT INTO `t_spec_image` VALUES (51, 28, '');
INSERT INTO `t_spec_image` VALUES (51, 21, '');
INSERT INTO `t_spec_image` VALUES (51, 23, '');
INSERT INTO `t_spec_image` VALUES (51, 55, '');
INSERT INTO `t_spec_image` VALUES (51, 56, '');
INSERT INTO `t_spec_image` VALUES (51, 57, '/Public/upload/goods/2016/01-13/56960958181f4.jpg');
INSERT INTO `t_spec_image` VALUES (52, 58, '/Public/upload/goods/2016/01-13/56960da5e03ab.jpg');
INSERT INTO `t_spec_image` VALUES (52, 59, '');
INSERT INTO `t_spec_image` VALUES (54, 60, '');
INSERT INTO `t_spec_image` VALUES (54, 61, '');
INSERT INTO `t_spec_image` VALUES (55, 58, '');
INSERT INTO `t_spec_image` VALUES (55, 59, '');
INSERT INTO `t_spec_image` VALUES (57, 62, '');
INSERT INTO `t_spec_image` VALUES (57, 63, '');
INSERT INTO `t_spec_image` VALUES (57, 64, '');
INSERT INTO `t_spec_image` VALUES (57, 65, '');
INSERT INTO `t_spec_image` VALUES (57, 66, '');
INSERT INTO `t_spec_image` VALUES (57, 67, '');
INSERT INTO `t_spec_image` VALUES (57, 68, '');
INSERT INTO `t_spec_image` VALUES (58, 62, '');
INSERT INTO `t_spec_image` VALUES (58, 63, '');
INSERT INTO `t_spec_image` VALUES (58, 64, '');
INSERT INTO `t_spec_image` VALUES (58, 65, '');
INSERT INTO `t_spec_image` VALUES (58, 66, '');
INSERT INTO `t_spec_image` VALUES (58, 67, '');
INSERT INTO `t_spec_image` VALUES (58, 68, '');
INSERT INTO `t_spec_image` VALUES (60, 62, '');
INSERT INTO `t_spec_image` VALUES (60, 63, '');
INSERT INTO `t_spec_image` VALUES (60, 64, '');
INSERT INTO `t_spec_image` VALUES (60, 65, '');
INSERT INTO `t_spec_image` VALUES (60, 66, '');
INSERT INTO `t_spec_image` VALUES (60, 67, '');
INSERT INTO `t_spec_image` VALUES (60, 68, '');
INSERT INTO `t_spec_image` VALUES (61, 62, '');
INSERT INTO `t_spec_image` VALUES (61, 63, '');
INSERT INTO `t_spec_image` VALUES (61, 64, '');
INSERT INTO `t_spec_image` VALUES (61, 65, '');
INSERT INTO `t_spec_image` VALUES (61, 66, '');
INSERT INTO `t_spec_image` VALUES (61, 67, '');
INSERT INTO `t_spec_image` VALUES (61, 68, '');
INSERT INTO `t_spec_image` VALUES (62, 62, '');
INSERT INTO `t_spec_image` VALUES (62, 63, '');
INSERT INTO `t_spec_image` VALUES (62, 64, '');
INSERT INTO `t_spec_image` VALUES (62, 65, '');
INSERT INTO `t_spec_image` VALUES (62, 66, '');
INSERT INTO `t_spec_image` VALUES (62, 67, '');
INSERT INTO `t_spec_image` VALUES (62, 68, '');
INSERT INTO `t_spec_image` VALUES (63, 62, '');
INSERT INTO `t_spec_image` VALUES (63, 63, '');
INSERT INTO `t_spec_image` VALUES (63, 64, '');
INSERT INTO `t_spec_image` VALUES (63, 65, '');
INSERT INTO `t_spec_image` VALUES (63, 66, '');
INSERT INTO `t_spec_image` VALUES (63, 67, '');
INSERT INTO `t_spec_image` VALUES (63, 68, '');
INSERT INTO `t_spec_image` VALUES (64, 62, '');
INSERT INTO `t_spec_image` VALUES (64, 63, '');
INSERT INTO `t_spec_image` VALUES (64, 64, '');
INSERT INTO `t_spec_image` VALUES (64, 65, '');
INSERT INTO `t_spec_image` VALUES (64, 66, '');
INSERT INTO `t_spec_image` VALUES (64, 67, '');
INSERT INTO `t_spec_image` VALUES (64, 68, '');
INSERT INTO `t_spec_image` VALUES (65, 62, '');
INSERT INTO `t_spec_image` VALUES (65, 63, '');
INSERT INTO `t_spec_image` VALUES (65, 64, '');
INSERT INTO `t_spec_image` VALUES (65, 65, '');
INSERT INTO `t_spec_image` VALUES (65, 66, '');
INSERT INTO `t_spec_image` VALUES (65, 67, '');
INSERT INTO `t_spec_image` VALUES (65, 68, '');
INSERT INTO `t_spec_image` VALUES (68, 69, '');
INSERT INTO `t_spec_image` VALUES (68, 70, '');
INSERT INTO `t_spec_image` VALUES (68, 71, '');
INSERT INTO `t_spec_image` VALUES (68, 72, '');
INSERT INTO `t_spec_image` VALUES (68, 73, '');
INSERT INTO `t_spec_image` VALUES (68, 74, '');
INSERT INTO `t_spec_image` VALUES (68, 75, '');
INSERT INTO `t_spec_image` VALUES (68, 76, '');
INSERT INTO `t_spec_image` VALUES (78, 82, '');
INSERT INTO `t_spec_image` VALUES (78, 83, '');
INSERT INTO `t_spec_image` VALUES (78, 84, '');
INSERT INTO `t_spec_image` VALUES (78, 85, '');
INSERT INTO `t_spec_image` VALUES (78, 86, '');
INSERT INTO `t_spec_image` VALUES (79, 82, '');
INSERT INTO `t_spec_image` VALUES (79, 83, '');
INSERT INTO `t_spec_image` VALUES (79, 84, '');
INSERT INTO `t_spec_image` VALUES (79, 85, '');
INSERT INTO `t_spec_image` VALUES (79, 86, '');
INSERT INTO `t_spec_image` VALUES (80, 87, '');
INSERT INTO `t_spec_image` VALUES (80, 88, '');
INSERT INTO `t_spec_image` VALUES (80, 89, '');
INSERT INTO `t_spec_image` VALUES (80, 90, '');
INSERT INTO `t_spec_image` VALUES (80, 91, '');
INSERT INTO `t_spec_image` VALUES (80, 92, '');
INSERT INTO `t_spec_image` VALUES (80, 93, '');
INSERT INTO `t_spec_image` VALUES (80, 94, '');
INSERT INTO `t_spec_image` VALUES (80, 95, '');
INSERT INTO `t_spec_image` VALUES (80, 96, '');
INSERT INTO `t_spec_image` VALUES (80, 97, '');
INSERT INTO `t_spec_image` VALUES (80, 98, '');
INSERT INTO `t_spec_image` VALUES (81, 87, '');
INSERT INTO `t_spec_image` VALUES (81, 88, '');
INSERT INTO `t_spec_image` VALUES (81, 89, '');
INSERT INTO `t_spec_image` VALUES (81, 90, '');
INSERT INTO `t_spec_image` VALUES (81, 91, '');
INSERT INTO `t_spec_image` VALUES (81, 92, '');
INSERT INTO `t_spec_image` VALUES (81, 93, '');
INSERT INTO `t_spec_image` VALUES (81, 94, '');
INSERT INTO `t_spec_image` VALUES (81, 95, '');
INSERT INTO `t_spec_image` VALUES (81, 96, '');
INSERT INTO `t_spec_image` VALUES (81, 97, '');
INSERT INTO `t_spec_image` VALUES (81, 98, '');
INSERT INTO `t_spec_image` VALUES (84, 77, '');
INSERT INTO `t_spec_image` VALUES (84, 78, '');
INSERT INTO `t_spec_image` VALUES (84, 79, '');
INSERT INTO `t_spec_image` VALUES (84, 80, '');
INSERT INTO `t_spec_image` VALUES (84, 81, '');
INSERT INTO `t_spec_image` VALUES (85, 77, '');
INSERT INTO `t_spec_image` VALUES (85, 78, '');
INSERT INTO `t_spec_image` VALUES (85, 79, '');
INSERT INTO `t_spec_image` VALUES (85, 80, '');
INSERT INTO `t_spec_image` VALUES (85, 81, '');
INSERT INTO `t_spec_image` VALUES (86, 77, '');
INSERT INTO `t_spec_image` VALUES (86, 78, '');
INSERT INTO `t_spec_image` VALUES (86, 79, '');
INSERT INTO `t_spec_image` VALUES (86, 80, '');
INSERT INTO `t_spec_image` VALUES (86, 81, '');
INSERT INTO `t_spec_image` VALUES (87, 77, '');
INSERT INTO `t_spec_image` VALUES (87, 78, '');
INSERT INTO `t_spec_image` VALUES (87, 79, '');
INSERT INTO `t_spec_image` VALUES (87, 80, '');
INSERT INTO `t_spec_image` VALUES (87, 81, '');
INSERT INTO `t_spec_image` VALUES (77, 77, '');
INSERT INTO `t_spec_image` VALUES (77, 78, '');
INSERT INTO `t_spec_image` VALUES (77, 79, '');
INSERT INTO `t_spec_image` VALUES (77, 80, '');
INSERT INTO `t_spec_image` VALUES (77, 81, '');
INSERT INTO `t_spec_image` VALUES (59, 62, '');
INSERT INTO `t_spec_image` VALUES (59, 63, '');
INSERT INTO `t_spec_image` VALUES (59, 64, '');
INSERT INTO `t_spec_image` VALUES (59, 65, '');
INSERT INTO `t_spec_image` VALUES (59, 66, '');
INSERT INTO `t_spec_image` VALUES (59, 67, '');
INSERT INTO `t_spec_image` VALUES (59, 68, '');
INSERT INTO `t_spec_image` VALUES (53, 60, '');
INSERT INTO `t_spec_image` VALUES (53, 61, '');
INSERT INTO `t_spec_image` VALUES (104, 11, '');
INSERT INTO `t_spec_image` VALUES (104, 12, '');
INSERT INTO `t_spec_image` VALUES (104, 13, '');
INSERT INTO `t_spec_image` VALUES (104, 14, '');
INSERT INTO `t_spec_image` VALUES (104, 28, '');
INSERT INTO `t_spec_image` VALUES (104, 101, '');
INSERT INTO `t_spec_image` VALUES (104, 102, '');
INSERT INTO `t_spec_image` VALUES (104, 21, '');
INSERT INTO `t_spec_image` VALUES (104, 23, '');
INSERT INTO `t_spec_image` VALUES (104, 55, '/Public/upload/goods/2016/03-12/56e3e6ce7efcb.jpg');
INSERT INTO `t_spec_image` VALUES (104, 56, '/Public/upload/goods/2016/03-12/56e3e6dae9b86.jpg');
INSERT INTO `t_spec_image` VALUES (104, 57, '/Public/upload/goods/2016/03-12/56e3e6e13859a.jpg');
INSERT INTO `t_spec_image` VALUES (104, 99, '');
INSERT INTO `t_spec_image` VALUES (104, 100, '');
INSERT INTO `t_spec_image` VALUES (56, 62, '');
INSERT INTO `t_spec_image` VALUES (56, 63, '');
INSERT INTO `t_spec_image` VALUES (56, 64, '');
INSERT INTO `t_spec_image` VALUES (56, 65, '');
INSERT INTO `t_spec_image` VALUES (56, 66, '');
INSERT INTO `t_spec_image` VALUES (56, 67, '');
INSERT INTO `t_spec_image` VALUES (56, 68, '');
INSERT INTO `t_spec_image` VALUES (105, 11, '');
INSERT INTO `t_spec_image` VALUES (105, 12, '');
INSERT INTO `t_spec_image` VALUES (105, 13, '');
INSERT INTO `t_spec_image` VALUES (105, 14, '');
INSERT INTO `t_spec_image` VALUES (105, 28, '');
INSERT INTO `t_spec_image` VALUES (105, 101, '');
INSERT INTO `t_spec_image` VALUES (105, 102, '');
INSERT INTO `t_spec_image` VALUES (105, 21, '');
INSERT INTO `t_spec_image` VALUES (105, 23, '');
INSERT INTO `t_spec_image` VALUES (105, 55, '');
INSERT INTO `t_spec_image` VALUES (105, 56, '');
INSERT INTO `t_spec_image` VALUES (105, 57, '');
INSERT INTO `t_spec_image` VALUES (105, 99, '');
INSERT INTO `t_spec_image` VALUES (105, 100, '');
INSERT INTO `t_spec_image` VALUES (115, 103, '');
INSERT INTO `t_spec_image` VALUES (115, 104, '');
INSERT INTO `t_spec_image` VALUES (115, 105, '');
INSERT INTO `t_spec_image` VALUES (116, 103, '/Public/upload/goods/2016/04-20/57175247abf17.jpg');
INSERT INTO `t_spec_image` VALUES (116, 104, '/Public/upload/goods/2016/04-20/5717525045bf9.jpg');
INSERT INTO `t_spec_image` VALUES (116, 105, '');
INSERT INTO `t_spec_image` VALUES (117, 103, '');
INSERT INTO `t_spec_image` VALUES (117, 104, '');
INSERT INTO `t_spec_image` VALUES (117, 105, '');
INSERT INTO `t_spec_image` VALUES (118, 103, '');
INSERT INTO `t_spec_image` VALUES (118, 104, '');
INSERT INTO `t_spec_image` VALUES (118, 105, '');
INSERT INTO `t_spec_image` VALUES (119, 103, '');
INSERT INTO `t_spec_image` VALUES (119, 104, '');
INSERT INTO `t_spec_image` VALUES (119, 105, '');
INSERT INTO `t_spec_image` VALUES (120, 103, '');
INSERT INTO `t_spec_image` VALUES (120, 104, '');
INSERT INTO `t_spec_image` VALUES (120, 105, '');
INSERT INTO `t_spec_image` VALUES (121, 103, '');
INSERT INTO `t_spec_image` VALUES (121, 104, '');
INSERT INTO `t_spec_image` VALUES (121, 105, '');
INSERT INTO `t_spec_image` VALUES (122, 103, '');
INSERT INTO `t_spec_image` VALUES (122, 104, '');
INSERT INTO `t_spec_image` VALUES (122, 105, '');
INSERT INTO `t_spec_image` VALUES (132, 106, '');
INSERT INTO `t_spec_image` VALUES (132, 107, '');
INSERT INTO `t_spec_image` VALUES (132, 108, '');
INSERT INTO `t_spec_image` VALUES (132, 109, '');
INSERT INTO `t_spec_image` VALUES (132, 110, '');
INSERT INTO `t_spec_image` VALUES (132, 111, '');
INSERT INTO `t_spec_image` VALUES (133, 106, '');
INSERT INTO `t_spec_image` VALUES (133, 107, '');
INSERT INTO `t_spec_image` VALUES (133, 108, '');
INSERT INTO `t_spec_image` VALUES (133, 109, '');
INSERT INTO `t_spec_image` VALUES (133, 110, '');
INSERT INTO `t_spec_image` VALUES (133, 111, '');
INSERT INTO `t_spec_image` VALUES (134, 106, '');
INSERT INTO `t_spec_image` VALUES (134, 107, '');
INSERT INTO `t_spec_image` VALUES (134, 108, '');
INSERT INTO `t_spec_image` VALUES (134, 109, '');
INSERT INTO `t_spec_image` VALUES (134, 110, '');
INSERT INTO `t_spec_image` VALUES (134, 111, '');
INSERT INTO `t_spec_image` VALUES (135, 106, '');
INSERT INTO `t_spec_image` VALUES (135, 107, '');
INSERT INTO `t_spec_image` VALUES (135, 108, '');
INSERT INTO `t_spec_image` VALUES (135, 109, '');
INSERT INTO `t_spec_image` VALUES (135, 110, '');
INSERT INTO `t_spec_image` VALUES (135, 111, '');
INSERT INTO `t_spec_image` VALUES (136, 106, '');
INSERT INTO `t_spec_image` VALUES (136, 107, '');
INSERT INTO `t_spec_image` VALUES (136, 108, '');
INSERT INTO `t_spec_image` VALUES (136, 109, '');
INSERT INTO `t_spec_image` VALUES (136, 110, '');
INSERT INTO `t_spec_image` VALUES (136, 111, '');
INSERT INTO `t_spec_image` VALUES (137, 106, '');
INSERT INTO `t_spec_image` VALUES (137, 107, '');
INSERT INTO `t_spec_image` VALUES (137, 108, '');
INSERT INTO `t_spec_image` VALUES (137, 109, '');
INSERT INTO `t_spec_image` VALUES (137, 110, '');
INSERT INTO `t_spec_image` VALUES (137, 111, '');
INSERT INTO `t_spec_image` VALUES (137, 112, '');
INSERT INTO `t_spec_image` VALUES (137, 113, '');
INSERT INTO `t_spec_image` VALUES (138, 106, '');
INSERT INTO `t_spec_image` VALUES (138, 107, '');
INSERT INTO `t_spec_image` VALUES (138, 108, '');
INSERT INTO `t_spec_image` VALUES (138, 109, '');
INSERT INTO `t_spec_image` VALUES (138, 110, '');
INSERT INTO `t_spec_image` VALUES (138, 111, '');
INSERT INTO `t_spec_image` VALUES (138, 112, '');
INSERT INTO `t_spec_image` VALUES (138, 113, '');
INSERT INTO `t_spec_image` VALUES (139, 106, '');
INSERT INTO `t_spec_image` VALUES (139, 107, '');
INSERT INTO `t_spec_image` VALUES (139, 108, '');
INSERT INTO `t_spec_image` VALUES (139, 109, '');
INSERT INTO `t_spec_image` VALUES (139, 110, '');
INSERT INTO `t_spec_image` VALUES (139, 111, '');
INSERT INTO `t_spec_image` VALUES (139, 112, '');
INSERT INTO `t_spec_image` VALUES (139, 113, '');
INSERT INTO `t_spec_image` VALUES (140, 11, '');
INSERT INTO `t_spec_image` VALUES (140, 12, '');
INSERT INTO `t_spec_image` VALUES (140, 13, '');
INSERT INTO `t_spec_image` VALUES (140, 14, '');
INSERT INTO `t_spec_image` VALUES (140, 28, '');
INSERT INTO `t_spec_image` VALUES (140, 101, '');
INSERT INTO `t_spec_image` VALUES (140, 102, '');
INSERT INTO `t_spec_image` VALUES (140, 21, '');
INSERT INTO `t_spec_image` VALUES (140, 23, '');
INSERT INTO `t_spec_image` VALUES (140, 55, '');
INSERT INTO `t_spec_image` VALUES (140, 56, '');
INSERT INTO `t_spec_image` VALUES (140, 57, '');
INSERT INTO `t_spec_image` VALUES (140, 99, '');
INSERT INTO `t_spec_image` VALUES (140, 100, '');
INSERT INTO `t_spec_image` VALUES (141, 11, '');
INSERT INTO `t_spec_image` VALUES (141, 12, '');
INSERT INTO `t_spec_image` VALUES (141, 13, '');
INSERT INTO `t_spec_image` VALUES (141, 14, '');
INSERT INTO `t_spec_image` VALUES (141, 28, '');
INSERT INTO `t_spec_image` VALUES (141, 101, '');
INSERT INTO `t_spec_image` VALUES (141, 102, '');
INSERT INTO `t_spec_image` VALUES (141, 21, '');
INSERT INTO `t_spec_image` VALUES (141, 23, '');
INSERT INTO `t_spec_image` VALUES (141, 55, '');
INSERT INTO `t_spec_image` VALUES (141, 56, '');
INSERT INTO `t_spec_image` VALUES (141, 57, '');
INSERT INTO `t_spec_image` VALUES (141, 99, '');
INSERT INTO `t_spec_image` VALUES (141, 100, '');
INSERT INTO `t_spec_image` VALUES (50, 11, '');
INSERT INTO `t_spec_image` VALUES (50, 12, '');
INSERT INTO `t_spec_image` VALUES (50, 13, '');
INSERT INTO `t_spec_image` VALUES (50, 14, '');
INSERT INTO `t_spec_image` VALUES (50, 28, '');
INSERT INTO `t_spec_image` VALUES (50, 101, '');
INSERT INTO `t_spec_image` VALUES (50, 102, '');
INSERT INTO `t_spec_image` VALUES (50, 21, '');
INSERT INTO `t_spec_image` VALUES (50, 23, '');
INSERT INTO `t_spec_image` VALUES (50, 55, '/Public/upload/goods/2016/01-13/56960719d2510.jpg');
INSERT INTO `t_spec_image` VALUES (50, 56, '/Public/upload/goods/2016/01-13/5696072174fbf.jpg');
INSERT INTO `t_spec_image` VALUES (50, 57, '/Public/upload/goods/2016/01-13/569607272b113.jpg');
INSERT INTO `t_spec_image` VALUES (50, 99, '');
INSERT INTO `t_spec_image` VALUES (50, 100, '');
INSERT INTO `t_spec_image` VALUES (1, 11, '');
INSERT INTO `t_spec_image` VALUES (1, 12, '');
INSERT INTO `t_spec_image` VALUES (1, 13, '');
INSERT INTO `t_spec_image` VALUES (1, 14, '');
INSERT INTO `t_spec_image` VALUES (1, 28, '');
INSERT INTO `t_spec_image` VALUES (1, 101, '');
INSERT INTO `t_spec_image` VALUES (1, 102, '');
INSERT INTO `t_spec_image` VALUES (1, 21, '');
INSERT INTO `t_spec_image` VALUES (1, 23, '');
INSERT INTO `t_spec_image` VALUES (1, 55, '/Public/upload/goods/2016/03-09/56e01cdaf3fc7.jpg');
INSERT INTO `t_spec_image` VALUES (1, 56, '');
INSERT INTO `t_spec_image` VALUES (1, 57, '');
INSERT INTO `t_spec_image` VALUES (1, 99, '/Public/upload/goods/2016/03-09/56e01ccaa98c4.jpg');
INSERT INTO `t_spec_image` VALUES (1, 100, '/Public/upload/goods/2016/03-09/56e01cc3550b3.jpg');
INSERT INTO `t_spec_image` VALUES (76, 77, '');
INSERT INTO `t_spec_image` VALUES (76, 78, '');
INSERT INTO `t_spec_image` VALUES (76, 79, '');
INSERT INTO `t_spec_image` VALUES (76, 80, '');
INSERT INTO `t_spec_image` VALUES (76, 81, '');

-- ----------------------------
-- Table structure for t_spec_item
-- ----------------------------
DROP TABLE IF EXISTS `t_spec_item`;
CREATE TABLE `t_spec_item`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '规格项id',
  `spec_id` int NULL DEFAULT NULL COMMENT '规格id',
  `item` varchar(54) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格项',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_spec_item
-- ----------------------------
INSERT INTO `t_spec_item` VALUES (1, 1, '红色');
INSERT INTO `t_spec_item` VALUES (3, 1, '绿色');
INSERT INTO `t_spec_item` VALUES (4, 2, 'S');
INSERT INTO `t_spec_item` VALUES (5, 2, 'M');
INSERT INTO `t_spec_item` VALUES (7, 4, '长袖');
INSERT INTO `t_spec_item` VALUES (8, 4, '短袖');
INSERT INTO `t_spec_item` VALUES (11, 5, '4G');
INSERT INTO `t_spec_item` VALUES (12, 5, '3G');
INSERT INTO `t_spec_item` VALUES (13, 6, '16G');
INSERT INTO `t_spec_item` VALUES (14, 6, '8G');
INSERT INTO `t_spec_item` VALUES (17, 1, '黄色');
INSERT INTO `t_spec_item` VALUES (18, 1, '蓝色');
INSERT INTO `t_spec_item` VALUES (21, 7, '触屏');
INSERT INTO `t_spec_item` VALUES (23, 7, '文字屏');
INSERT INTO `t_spec_item` VALUES (24, 3, '纯棉');
INSERT INTO `t_spec_item` VALUES (25, 3, '羽绒');
INSERT INTO `t_spec_item` VALUES (26, 3, '蝉丝');
INSERT INTO `t_spec_item` VALUES (28, 6, '32G');
INSERT INTO `t_spec_item` VALUES (29, 2, 'L2');
INSERT INTO `t_spec_item` VALUES (30, 8, '北京');
INSERT INTO `t_spec_item` VALUES (31, 8, '广州');
INSERT INTO `t_spec_item` VALUES (32, 8, '河南');
INSERT INTO `t_spec_item` VALUES (35, 10, '联通');
INSERT INTO `t_spec_item` VALUES (36, 10, '移动');
INSERT INTO `t_spec_item` VALUES (37, 10, '电信');
INSERT INTO `t_spec_item` VALUES (38, 11, '双核');
INSERT INTO `t_spec_item` VALUES (39, 11, '4核');
INSERT INTO `t_spec_item` VALUES (40, 11, '8核');
INSERT INTO `t_spec_item` VALUES (41, 12, '7寸及以下');
INSERT INTO `t_spec_item` VALUES (42, 12, '7.8-9寸');
INSERT INTO `t_spec_item` VALUES (43, 12, '9-9.7寸');
INSERT INTO `t_spec_item` VALUES (44, 12, '10.1寸');
INSERT INTO `t_spec_item` VALUES (45, 12, '11.6寸及以上');
INSERT INTO `t_spec_item` VALUES (46, 12, '其它');
INSERT INTO `t_spec_item` VALUES (47, 13, '16G');
INSERT INTO `t_spec_item` VALUES (48, 13, '32G');
INSERT INTO `t_spec_item` VALUES (49, 13, '64G');
INSERT INTO `t_spec_item` VALUES (50, 13, '128G');
INSERT INTO `t_spec_item` VALUES (51, 14, '银白色');
INSERT INTO `t_spec_item` VALUES (52, 14, '黑色');
INSERT INTO `t_spec_item` VALUES (53, 15, '银色');
INSERT INTO `t_spec_item` VALUES (54, 15, '黑色');
INSERT INTO `t_spec_item` VALUES (55, 16, '黑色');
INSERT INTO `t_spec_item` VALUES (56, 16, '白色');
INSERT INTO `t_spec_item` VALUES (57, 16, '金色');
INSERT INTO `t_spec_item` VALUES (58, 17, '白色');
INSERT INTO `t_spec_item` VALUES (59, 17, '黑色');
INSERT INTO `t_spec_item` VALUES (60, 18, '白色');
INSERT INTO `t_spec_item` VALUES (61, 18, '黑色');
INSERT INTO `t_spec_item` VALUES (62, 19, '30');
INSERT INTO `t_spec_item` VALUES (63, 19, '32');
INSERT INTO `t_spec_item` VALUES (64, 19, '40');
INSERT INTO `t_spec_item` VALUES (65, 19, '42');
INSERT INTO `t_spec_item` VALUES (66, 19, '50');
INSERT INTO `t_spec_item` VALUES (67, 19, '55');
INSERT INTO `t_spec_item` VALUES (68, 19, '58');
INSERT INTO `t_spec_item` VALUES (69, 20, '20W');
INSERT INTO `t_spec_item` VALUES (70, 20, '22W');
INSERT INTO `t_spec_item` VALUES (71, 20, '24W');
INSERT INTO `t_spec_item` VALUES (72, 20, '26W');
INSERT INTO `t_spec_item` VALUES (73, 20, '28W');
INSERT INTO `t_spec_item` VALUES (74, 20, '30W');
INSERT INTO `t_spec_item` VALUES (75, 20, '36W');
INSERT INTO `t_spec_item` VALUES (76, 20, '72W');
INSERT INTO `t_spec_item` VALUES (77, 21, 'S');
INSERT INTO `t_spec_item` VALUES (78, 21, 'M');
INSERT INTO `t_spec_item` VALUES (79, 21, 'L');
INSERT INTO `t_spec_item` VALUES (80, 21, 'XL');
INSERT INTO `t_spec_item` VALUES (81, 21, 'XXL');
INSERT INTO `t_spec_item` VALUES (82, 22, 'S');
INSERT INTO `t_spec_item` VALUES (83, 22, 'M');
INSERT INTO `t_spec_item` VALUES (84, 22, 'L');
INSERT INTO `t_spec_item` VALUES (85, 22, 'XL');
INSERT INTO `t_spec_item` VALUES (86, 22, 'XXL');
INSERT INTO `t_spec_item` VALUES (87, 23, '70A');
INSERT INTO `t_spec_item` VALUES (88, 23, '70B');
INSERT INTO `t_spec_item` VALUES (89, 23, '70C');
INSERT INTO `t_spec_item` VALUES (90, 23, '75A');
INSERT INTO `t_spec_item` VALUES (91, 23, '75B');
INSERT INTO `t_spec_item` VALUES (92, 23, '75C');
INSERT INTO `t_spec_item` VALUES (93, 23, '80A');
INSERT INTO `t_spec_item` VALUES (94, 23, '80B');
INSERT INTO `t_spec_item` VALUES (95, 23, '80C');
INSERT INTO `t_spec_item` VALUES (96, 23, '85A');
INSERT INTO `t_spec_item` VALUES (97, 23, '85B');
INSERT INTO `t_spec_item` VALUES (98, 23, '85C');
INSERT INTO `t_spec_item` VALUES (99, 16, '银色');
INSERT INTO `t_spec_item` VALUES (100, 16, '玫瑰金');
INSERT INTO `t_spec_item` VALUES (101, 6, '64G');
INSERT INTO `t_spec_item` VALUES (102, 6, '128G');
INSERT INTO `t_spec_item` VALUES (103, 24, '土豪金');
INSERT INTO `t_spec_item` VALUES (104, 24, '象牙白');
INSERT INTO `t_spec_item` VALUES (105, 24, '宝石蓝');
INSERT INTO `t_spec_item` VALUES (106, 25, '乐享4G套餐59元');
INSERT INTO `t_spec_item` VALUES (107, 25, '乐享4G套餐79元');
INSERT INTO `t_spec_item` VALUES (108, 25, '乐享4G套餐99元');
INSERT INTO `t_spec_item` VALUES (109, 25, '乐享4G套餐129元');
INSERT INTO `t_spec_item` VALUES (110, 25, '乐享4G套餐169元');
INSERT INTO `t_spec_item` VALUES (111, 25, '乐享4G套餐199元');
INSERT INTO `t_spec_item` VALUES (112, 26, '微型卡');
INSERT INTO `t_spec_item` VALUES (113, 26, '普通卡');

-- ----------------------------
-- Table structure for t_suppliers
-- ----------------------------
DROP TABLE IF EXISTS `t_suppliers`;
CREATE TABLE `t_suppliers`  (
  `suppliers_id` smallint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '供应商ID',
  `suppliers_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '供应商名称',
  `suppliers_desc` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '供应商描述',
  `is_check` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '供应商状态',
  `suppliers_contacts` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '供应商联系人',
  `suppliers_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '供应商名字',
  PRIMARY KEY (`suppliers_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_suppliers
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_msg
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_msg`;
CREATE TABLE `t_sys_msg`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mid` int NULL DEFAULT NULL COMMENT '消息id',
  `type` int NULL DEFAULT 0 COMMENT '0表示群发消息',
  `adminid` int NULL DEFAULT NULL COMMENT '这条消息是给谁的',
  `state` int NULL DEFAULT 0 COMMENT '0 未读 1 已读',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `adminid`(`adminid`) USING BTREE,
  INDEX `mid`(`mid`) USING BTREE,
  CONSTRAINT `t_sys_msg_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `t_sys_msg_content` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_sys_msg_ibfk_2` FOREIGN KEY (`adminid`) REFERENCES `t_admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_sys_msg
-- ----------------------------
INSERT INTO `t_sys_msg` VALUES (1, 1, 0, 1, 1);
INSERT INTO `t_sys_msg` VALUES (2, 1, 0, 2, 1);
INSERT INTO `t_sys_msg` VALUES (3, 1, 0, 3, 1);
INSERT INTO `t_sys_msg` VALUES (4, 1, 0, 4, 0);
INSERT INTO `t_sys_msg` VALUES (5, 1, 0, 5, 0);
INSERT INTO `t_sys_msg` VALUES (6, 2, 0, 1, 1);
INSERT INTO `t_sys_msg` VALUES (7, 2, 0, 2, 1);
INSERT INTO `t_sys_msg` VALUES (8, 2, 0, 3, 1);
INSERT INTO `t_sys_msg` VALUES (9, 2, 0, 4, 0);
INSERT INTO `t_sys_msg` VALUES (10, 2, 0, 5, 0);
INSERT INTO `t_sys_msg` VALUES (11, 3, 0, 1, 1);
INSERT INTO `t_sys_msg` VALUES (12, 3, 0, 2, 1);
INSERT INTO `t_sys_msg` VALUES (13, 3, 0, 3, 1);
INSERT INTO `t_sys_msg` VALUES (14, 3, 0, 4, 0);
INSERT INTO `t_sys_msg` VALUES (15, 3, 0, 5, 0);

-- ----------------------------
-- Table structure for t_sys_msg_content
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_msg_content`;
CREATE TABLE `t_sys_msg_content`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `createDate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_sys_msg_content
-- ----------------------------
INSERT INTO `t_sys_msg_content` VALUES (1, '通知标题1', '通知内容1', '2020-03-31 16:20:34');
INSERT INTO `t_sys_msg_content` VALUES (2, '通知标题2', '通知内容2', '2020-03-31 16:20:34');
INSERT INTO `t_sys_msg_content` VALUES (3, '通知标题3', '通知内容3', '2020-03-31 16:20:34');

-- ----------------------------
-- Table structure for t_system_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_system_menu`;
CREATE TABLE `t_system_menu`  (
  `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名字',
  `group` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属分组',
  `right` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限码(控制器+动作)',
  `is_del` tinyint(1) NULL DEFAULT 0 COMMENT '删除状态 1删除,0正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_system_menu
-- ----------------------------
INSERT INTO `t_system_menu` VALUES (1, '文章管理', 'content', 'ArticleController@articleList,ArticleController@article,ArticleController@aticleHandle', 0);
INSERT INTO `t_system_menu` VALUES (2, '文章分类', 'content', 'ArticleController@categoryList,ArticleController@category,ArticleController@categoryHandle', 0);
INSERT INTO `t_system_menu` VALUES (3, '帮助管理', 'content', 'ArticleController@help_list', 0);
INSERT INTO `t_system_menu` VALUES (4, '广告管理', 'content', 'ArticleController@notice_list', 0);
INSERT INTO `t_system_menu` VALUES (5, '网站设置', 'system', 'SystemController@index,SystemController@handle', 0);
INSERT INTO `t_system_menu` VALUES (6, '权限资源', 'system', 'SystemController@right_list,SystemController@edit_right', 0);
INSERT INTO `t_system_menu` VALUES (7, '前台导航设置', 'system', 'SystemController@navigationList,SystemController@addEditNav,SystemController@delNav', 0);
INSERT INTO `t_system_menu` VALUES (8, '管理员管理', 'system', 'AdminController@index,AdminController@admin_info,AdminController@adminHandle', 0);
INSERT INTO `t_system_menu` VALUES (9, '角色管理', 'system', 'AdminController@role,AdminController@role_info,AdminController@roleSave,AdminController@roleDel', 0);
INSERT INTO `t_system_menu` VALUES (10, '供应商管理', 'system', 'AdminController@supplier,AdminController@supplier_info,AdminController@supplierHandle', 0);
INSERT INTO `t_system_menu` VALUES (11, '会员管理', 'member', 'UserController@index,UserController@ajaxindex,UserController@detail,UserController@address,UserController@delete', 0);
INSERT INTO `t_system_menu` VALUES (12, '会员资金', 'member', 'UserController@account_log,UserController@account_edit', 0);
INSERT INTO `t_system_menu` VALUES (13, '会员管理', 'member', 'UserController@index,UserController@ajaxindex,UserController@detail,UserController@address,UserController@delete,UserController@search_user', 0);
INSERT INTO `t_system_menu` VALUES (14, '会员等级', 'member', 'UserController@level,UserController@levelList,UserController@levelHandle', 0);
INSERT INTO `t_system_menu` VALUES (15, '商品类型', 'goods', 'GoodsController@goodsTypeList,GoodsController@addEditGoodsType,GoodsController@delGoodsType', 0);
INSERT INTO `t_system_menu` VALUES (16, '商品编辑', 'goods', 'GoodsController@addEditGoods,GoodsController@delGoods,GoodsController@del_goods_images', 0);
INSERT INTO `t_system_menu` VALUES (17, '商品列表', 'goods', 'GoodsController@goodsList,GoodsController@ajaxGoodsList,GoodsController@updateField', 0);
INSERT INTO `t_system_menu` VALUES (18, '商品规格', 'goods', 'GoodsController@ajaxGetSpecList,GoodsController@delGoodsSpec,GoodsController@addEditSpec,GoodsController@ajaxSpecList,GoodsController@specList,GoodsController@ajaxGetSpecSelect', 0);
INSERT INTO `t_system_menu` VALUES (19, '商品分类', 'goods', 'GoodsController@categoryList,GoodsController@addEditCategory,GoodsController@delGoodsCategory', 0);
INSERT INTO `t_system_menu` VALUES (20, '商品属性', 'goods', 'GoodsController@ajaxGetAttrList,GoodsController@goodsAttributeList,GoodsController@ajaxGoodsAttributeList,GoodsController@addEditGoodsAttribute,GoodsController@ajaxGetAttrInput', 0);
INSERT INTO `t_system_menu` VALUES (21, '商品品牌', 'goods', 'GoodsController@brandList,GoodsController@delBrand,GoodsController@addEditBrand', 0);
INSERT INTO `t_system_menu` VALUES (22, '广告列表', 'content', 'AdController@adList,AdController@adHandle,AdController@ad,AdController@changeAdField', 0);
INSERT INTO `t_system_menu` VALUES (23, '广告位', 'content', 'AdController@position,AdController@positionList,AdController@positionHandle', 0);
INSERT INTO `t_system_menu` VALUES (24, '团购管理', 'marketing', 'PromotionController@group_buy,PromotionController@group_buy_list,PromotionController@groupbuyHandle', 0);
INSERT INTO `t_system_menu` VALUES (25, '限时抢购', 'marketing', 'PromotionController@flash_sale,PromotionController@flash_sale_info,PromotionController@flash_sale_del', 0);
INSERT INTO `t_system_menu` VALUES (26, '促销管理', 'marketing', 'PromotionController@prom_goods_list,PromotionController@prom_goods_info,PromotionController@prom_goods_save,PromotionController@prom_goods_del,PromotionController@get_goods,PromotionController@search_goods', 0);
INSERT INTO `t_system_menu` VALUES (27, '订单列表', 'order', 'OrderController@index,OrderController@ajaxindex,OrderController@detail', 0);
INSERT INTO `t_system_menu` VALUES (28, '订单发货', 'order', 'OrderController@deliveryHandle,OrderController@delivery_info,OrderController@delivery_list', 0);
INSERT INTO `t_system_menu` VALUES (29, '退换货处理', 'order', 'OrderController@return_del,OrderController@return_info,OrderController@add_return_goods,OrderController@ajax_return_list', 0);
INSERT INTO `t_system_menu` VALUES (30, '拆分订单', 'order', 'OrderController@split_order,OrderController@search_goods', 0);
INSERT INTO `t_system_menu` VALUES (31, '修改订单', 'system', 'OrderController@edit_order,OrderController@search_goods', 0);
INSERT INTO `t_system_menu` VALUES (32, '添加订单', 'order', 'OrderController@add_order,OrderController@search_goods', 0);
INSERT INTO `t_system_menu` VALUES (33, '处理订单', 'order', 'OrderController@pay_cancel,OrderController@delete_order,OrderController@order_action,OrderController@editprice,OrderController@order_log', 0);
INSERT INTO `t_system_menu` VALUES (34, '导出订单', 'order', 'OrderController@export_order', 0);
INSERT INTO `t_system_menu` VALUES (35, '打印订单', 'order', 'OrderController@order_print,OrderController@shipping_print', 0);
INSERT INTO `t_system_menu` VALUES (36, '插件列表', 'tools', 'PluginController@index,PluginController@install,PluginController@setting', 0);
INSERT INTO `t_system_menu` VALUES (37, '打印设置', 'tools', 'PluginController@shipping_list,PluginController@shipping_desc,PluginController@shipping_print,PluginController@edit_shipping_print,PluginController@shipping_list_edit,PluginController@del_area', 0);
INSERT INTO `t_system_menu` VALUES (38, '数据备份', 'tools', 'ToolsController@index,ToolsController@backup,ToolsController@optimize,ToolsController@repair', 0);
INSERT INTO `t_system_menu` VALUES (39, '数据还原', 'tools', 'ToolsController@restore,ToolsController@restoreData,ToolsController@restoreUpload,ToolsController@downFile,ToolsController@delSqlFiles', 0);
INSERT INTO `t_system_menu` VALUES (40, '地区管理', 'tools', 'ToolsController@region,ToolsController@regionHandle', 0);
INSERT INTO `t_system_menu` VALUES (41, '公众号设置', 'marketing', 'WechatController@index,WechatController@setting,WechatController@get_access_token,WechatController@select_goods', 0);
INSERT INTO `t_system_menu` VALUES (42, '文本回复', 'tools', 'WechatController@text,WechatController@add_text,WechatController@del_text', 0);
INSERT INTO `t_system_menu` VALUES (43, '微信菜单', 'tools', 'WechatController@menu,WechatController@del_menu,WechatController@pub_menu', 0);
INSERT INTO `t_system_menu` VALUES (44, '图文回复', 'tools', 'WechatController@img,WechatController@add_img,WechatController@del_img,WechatController@preview', 0);
INSERT INTO `t_system_menu` VALUES (45, '模板管理', 'system', 'TemplateController@templateList,TemplateController@changeTemplate', 0);
INSERT INTO `t_system_menu` VALUES (46, '销售概况', 'count', 'ReportController@index,ReportController@finance,ReportController@user', 0);
INSERT INTO `t_system_menu` VALUES (47, '销售排行', 'count', 'ReportController@saleTop,ReportController@userTop,ReportController@saleList', 0);
INSERT INTO `t_system_menu` VALUES (48, '专题管理', 'content', 'TopicController@topic,TopicController@topicList,TopicController@topicHandle', 0);
INSERT INTO `t_system_menu` VALUES (49, '操作日志', 'system', 'AdminController@log,OrderController@order_log', 0);
INSERT INTO `t_system_menu` VALUES (50, '评论咨询', 'goods', 'CommentController@index,CommentController@detail,CommentController@ask_list,CommentController@ajax_ask_list,CommentController@del,CommentController@op,CommentController@consult_info,CommentController@ask_handle', 0);
INSERT INTO `t_system_menu` VALUES (51, '优惠券', 'marketing', 'CouponController@coupon_info,CouponController@index,CouponController@make_coupon,CouponController@ajax_get_user,CouponController@send_coupon,CouponController@send_cancel,CouponController@del_coupon,CouponController@coupon_list,CouponController@coupon_list_del', 0);
INSERT INTO `t_system_menu` VALUES (52, '友情链接', 'content', 'ArticleController@link,ArticleController@linkList,ArticleController@linkHandle', 0);
INSERT INTO `t_system_menu` VALUES (53, '分销管理', 'marketing', 'DistributController@set,DistributController@remittance,DistributController@tree,DistributController@rebate_log,DistributController@ajax_lower,DistributController@withdrawals,DistributController@editRebate,DistributController@delWithdrawals,DistributController@editWithdrawals', 0);
INSERT INTO `t_system_menu` VALUES (60, '自提点管理', 'system', 'PickupController@index,PickupController@ajaxPickupList,PickupController@add,PickupController@edit_address', 0);
INSERT INTO `t_system_menu` VALUES (61, '刷新缓存', 'system', 'SystemController@cleanCache,SystemController@ClearGoodsHtml,SystemController@ClearGoodsThumb,SystemController@ClearAritcleHtml', 0);

-- ----------------------------
-- Table structure for t_system_module
-- ----------------------------
DROP TABLE IF EXISTS `t_system_module`;
CREATE TABLE `t_system_module`  (
  `mod_id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `module` enum('top','menu','module') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'module',
  `level` tinyint(1) NULL DEFAULT 3,
  `ctl` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `act` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `visible` tinyint(1) NULL DEFAULT 1,
  `parent_id` smallint NULL DEFAULT 0,
  `orderby` smallint NULL DEFAULT 50,
  `icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`mod_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 154 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_system_module
-- ----------------------------
INSERT INTO `t_system_module` VALUES (1, 'top', 1, '', '', '系统', 1, 0, 50, '0');
INSERT INTO `t_system_module` VALUES (2, 'top', 1, '', '', '设置', 1, 0, 50, '0');
INSERT INTO `t_system_module` VALUES (3, 'top', 1, '', '', '会员', 1, 0, 50, '0');
INSERT INTO `t_system_module` VALUES (4, 'top', 1, '', '', '商家', 1, 0, 50, '0');
INSERT INTO `t_system_module` VALUES (5, 'top', 1, '', '', '内容', 1, 0, 50, '0');
INSERT INTO `t_system_module` VALUES (6, 'top', 1, '', '', '运营', 1, 0, 50, 'fa-home');
INSERT INTO `t_system_module` VALUES (7, 'menu', 2, '', '', '权限管理', 1, 1, 2, 'fa-cog');
INSERT INTO `t_system_module` VALUES (8, 'menu', 2, '', '', '模块管理', 1, 1, 3, 'fa-table');
INSERT INTO `t_system_module` VALUES (9, 'menu', 2, '', '', '网站设置', 1, 2, 50, 'fa-pencil');
INSERT INTO `t_system_module` VALUES (10, 'menu', 2, '', '', '会员管理', 1, 3, 50, 'fa-user');
INSERT INTO `t_system_module` VALUES (11, 'menu', 2, '', '', '商品管理', 1, 4, 50, 'fa-tasks');
INSERT INTO `t_system_module` VALUES (12, 'menu', 2, '', '', '内容管理', 1, 5, 50, 'fa-navicon');
INSERT INTO `t_system_module` VALUES (13, 'menu', 2, '', '', '广告管理', 1, 6, 50, 'fa-star');
INSERT INTO `t_system_module` VALUES (14, 'menu', 2, '', '', '促销管理', 1, 4, 50, 'fa-retweet');
INSERT INTO `t_system_module` VALUES (15, 'menu', 2, '', '', '插件工具', 1, 6, 20, 'fa-plug');
INSERT INTO `t_system_module` VALUES (16, 'menu', 2, '', '', '微信管理', 1, 6, 50, 'fa-home');
INSERT INTO `t_system_module` VALUES (17, 'menu', 2, '', '', '订单管理', 1, 4, 50, 'fa-flag');
INSERT INTO `t_system_module` VALUES (18, 'module', 3, 'Comment', 'index', '评论管理', 1, 10, 50, '0');
INSERT INTO `t_system_module` VALUES (19, 'module', 3, 'Admin', 'role', '角色管理', 1, 7, 50, '0');
INSERT INTO `t_system_module` VALUES (20, 'module', 3, 'Admin', 'index', '管理员列表', 1, 7, 50, '0');
INSERT INTO `t_system_module` VALUES (21, 'module', 3, 'System', 'menu', '菜单管理', 1, 8, 50, '0');
INSERT INTO `t_system_module` VALUES (22, 'module', 3, 'System', 'module', '模块管理', 1, 8, 50, '0');
INSERT INTO `t_system_module` VALUES (23, 'module', 3, 'Admin', 'log', '管理员日志', 1, 7, 50, '0');
INSERT INTO `t_system_module` VALUES (24, 'module', 3, 'Goods', 'categoryList', '商品分类', 1, 11, 50, '0');
INSERT INTO `t_system_module` VALUES (25, 'module', 3, 'Goods', 'goodsList', '商品列表', 1, 11, 50, '0');
INSERT INTO `t_system_module` VALUES (26, 'module', 3, 'Goods', 'goodsTypeList', '商品类型', 1, 11, 50, '0');
INSERT INTO `t_system_module` VALUES (27, 'module', 3, 'Goods', 'specList', '商品规格', 1, 11, 50, '0');
INSERT INTO `t_system_module` VALUES (28, 'module', 3, 'Goods', 'goodsAttributeList', '商品属性', 1, 11, 50, '0');
INSERT INTO `t_system_module` VALUES (29, 'module', 3, 'Goods', 'brandList', '商品品牌', 1, 11, 50, '0');
INSERT INTO `t_system_module` VALUES (30, 'module', 3, 'Order', 'index', '订单列表', 1, 17, 50, '0');
INSERT INTO `t_system_module` VALUES (31, 'module', 3, 'Order', 'delivery_list', '发货单列表', 1, 17, 50, '0');
INSERT INTO `t_system_module` VALUES (32, 'module', 3, 'Order', 'return_list', '退货单列表', 1, 17, 50, '0');
INSERT INTO `t_system_module` VALUES (33, 'module', 3, 'User', 'levelList', '会员等级', 1, 10, 50, '0');
INSERT INTO `t_system_module` VALUES (34, 'module', 3, 'User', 'index', '会员列表', 1, 10, 50, '0');
INSERT INTO `t_system_module` VALUES (35, 'module', 3, 'System', 'index', '网站设置', 1, 9, 50, '0');
INSERT INTO `t_system_module` VALUES (36, 'module', 3, 'System', 'navigationList', '导航设置', 1, 9, 50, '0');
INSERT INTO `t_system_module` VALUES (37, 'module', 3, 'Ad', 'positionList', '广告位', 1, 13, 50, '0');
INSERT INTO `t_system_module` VALUES (38, 'module', 3, 'Ad', 'adList', '广告列表', 1, 13, 50, '0');
INSERT INTO `t_system_module` VALUES (39, 'module', 3, 'Article', 'categoryList', '文章分类', 1, 12, 50, '0');
INSERT INTO `t_system_module` VALUES (40, 'module', 3, 'Article', 'articleList', '文章列表', 1, 12, 50, '0');
INSERT INTO `t_system_module` VALUES (41, 'module', 3, 'Article', 'linkList', '友情链接', 1, 12, 50, '0');
INSERT INTO `t_system_module` VALUES (42, 'module', 3, 'Topic', 'topicList', '专题列表', 1, 12, 50, '0');
INSERT INTO `t_system_module` VALUES (43, 'module', 3, 'Coupon', 'index', '优惠券', 1, 14, 50, '0');
INSERT INTO `t_system_module` VALUES (44, 'module', 3, 'Wechat', 'index', '公众号管理', 1, 16, 50, '0');
INSERT INTO `t_system_module` VALUES (45, 'module', 3, 'Wechat', 'menu', '微信菜单管理', 1, 16, 50, '0');
INSERT INTO `t_system_module` VALUES (46, 'module', 3, 'Wechat', 'text', '文本回复', 1, 16, 50, '0');
INSERT INTO `t_system_module` VALUES (47, 'module', 3, 'Wechat', 'img', '图文回复', 1, 16, 50, '0');
INSERT INTO `t_system_module` VALUES (48, 'module', 3, 'Wechat', 'nes', '组合回复', 1, 16, 50, '0');
INSERT INTO `t_system_module` VALUES (49, 'module', 3, 'Plugin', 'index', '插件列表', 1, 15, 50, '0');
INSERT INTO `t_system_module` VALUES (50, 'module', 3, 'Promotion', 'index', '组合促销', 0, 14, 50, '0');
INSERT INTO `t_system_module` VALUES (51, 'menu', 2, '', '', '模板管理', 1, 2, 50, 'fa-book');
INSERT INTO `t_system_module` VALUES (52, 'module', 3, 'Template', 'templateList?t=pc', 'PC端模板', 1, 51, 50, '0');
INSERT INTO `t_system_module` VALUES (53, 'module', 3, 'Template', 'templateList?t=mobile', '手机端模板', 1, 51, 50, '0');
INSERT INTO `t_system_module` VALUES (54, 'module', 3, 'Tools', 'index', '数据备份', 1, 15, 50, NULL);
INSERT INTO `t_system_module` VALUES (55, 'menu', 2, '', '', '报表统计', 1, 6, 50, 'fa-bar-chart');
INSERT INTO `t_system_module` VALUES (56, 'module', 3, 'report', 'index', '销售概况', 1, 55, 50, NULL);
INSERT INTO `t_system_module` VALUES (57, 'module', 3, 'report', 'saleTop', '销售排行', 1, 55, 50, NULL);
INSERT INTO `t_system_module` VALUES (58, 'module', 3, 'report', 'userTop', '会员排行', 1, 55, 50, NULL);
INSERT INTO `t_system_module` VALUES (59, 'module', 3, 'Promotion', 'group_buy_list', '团购管理', 1, 14, 50, NULL);
INSERT INTO `t_system_module` VALUES (60, 'module', 3, 'report', 'saleList', '销售明细', 1, 55, 50, NULL);
INSERT INTO `t_system_module` VALUES (61, 'module', 3, 'report', 'user', '会员统计', 1, 55, 50, NULL);
INSERT INTO `t_system_module` VALUES (62, 'module', 3, 'Promotion', 'flash_sale', '限时抢购', 1, 14, 50, NULL);
INSERT INTO `t_system_module` VALUES (63, 'module', 3, 'Tools', 'restore', '数据还原', 1, 15, 50, NULL);
INSERT INTO `t_system_module` VALUES (64, 'module', 3, 'Order', 'add_order', '添加订单', 1, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (65, 'module', 3, 'report', 'finance', '财务统计', 1, 55, 50, NULL);
INSERT INTO `t_system_module` VALUES (66, 'module', 3, 'Admin', 'role_info', '编辑角色', 0, 7, 50, NULL);
INSERT INTO `t_system_module` VALUES (67, 'module', 3, 'Admin', 'role_save', '保存角色', 0, 7, 50, NULL);
INSERT INTO `t_system_module` VALUES (68, 'module', 3, 'Admin', 'roleDel', '删除角色', 0, 7, 50, NULL);
INSERT INTO `t_system_module` VALUES (69, 'module', 3, 'Admin', 'admin_info', '编辑管理员', 0, 7, 50, NULL);
INSERT INTO `t_system_module` VALUES (70, 'module', 3, 'Admin', 'adminHandle', '保存管理员', 0, 7, 50, NULL);
INSERT INTO `t_system_module` VALUES (71, 'module', 3, 'System', 'create_menu', '添加菜单', 0, 8, 50, NULL);
INSERT INTO `t_system_module` VALUES (72, 'module', 3, 'System', 'menuSave', '保存菜单', 0, 8, 50, NULL);
INSERT INTO `t_system_module` VALUES (73, 'module', 3, 'System', 'ctl_detail', '添加控制模块', 0, 8, 50, NULL);
INSERT INTO `t_system_module` VALUES (74, 'module', 3, 'System', 'ctlSave', '保存控制模块', 0, 8, 50, NULL);
INSERT INTO `t_system_module` VALUES (75, 'module', 3, 'System', 'handle', '保存设置', 0, 9, 50, NULL);
INSERT INTO `t_system_module` VALUES (76, 'module', 3, 'System', 'addEditNav', '保存导航', 0, 9, 50, NULL);
INSERT INTO `t_system_module` VALUES (77, 'module', 3, 'Template', 'changeTemplate', '切换模板', 0, 51, 50, NULL);
INSERT INTO `t_system_module` VALUES (78, 'module', 3, 'System', 'delNav', '删除导航', 0, 9, 50, NULL);
INSERT INTO `t_system_module` VALUES (79, 'module', 3, 'Comment', 'detail', '评论详情', 0, 10, 50, NULL);
INSERT INTO `t_system_module` VALUES (80, 'module', 3, 'Comment', 'op', '评论回复', 0, 10, 50, NULL);
INSERT INTO `t_system_module` VALUES (81, 'module', 3, 'Comment', 'del', '删除评论', 0, 10, 50, NULL);
INSERT INTO `t_system_module` VALUES (82, 'module', 3, 'User', 'level', '新增等级', 0, 10, 50, NULL);
INSERT INTO `t_system_module` VALUES (83, 'module', 3, 'User', 'levelHandle', '保存等级', 0, 10, 50, NULL);
INSERT INTO `t_system_module` VALUES (84, 'module', 3, 'User', 'detail', '查看会员', 0, 10, 50, NULL);
INSERT INTO `t_system_module` VALUES (85, 'module', 3, 'User', 'account_log', '会员消费记录', 0, 10, 50, NULL);
INSERT INTO `t_system_module` VALUES (86, 'module', 3, 'User', 'account_edit', '会员资金调节', 0, 10, 50, NULL);
INSERT INTO `t_system_module` VALUES (87, 'module', 3, 'User', 'address', '会员收货地址', 0, 10, 50, NULL);
INSERT INTO `t_system_module` VALUES (88, 'module', 3, 'Goods', 'addEditGoods', '新增商品', 0, 11, 50, NULL);
INSERT INTO `t_system_module` VALUES (89, 'module', 3, 'Goods', 'addEditCategory', '编辑商品分类', 0, 11, 50, NULL);
INSERT INTO `t_system_module` VALUES (90, 'module', 3, 'Goods', 'delGoodsCategory', '删除商品分类', 0, 11, 50, NULL);
INSERT INTO `t_system_module` VALUES (91, 'module', 3, 'Goods', 'changeGoodsField', '修改商品字段', 0, 11, 50, NULL);
INSERT INTO `t_system_module` VALUES (92, 'module', 3, 'Goods', 'addEditGoodsType', '编辑商品类型', 0, 11, 50, NULL);
INSERT INTO `t_system_module` VALUES (93, 'module', 3, 'Goods', 'addEditGoodsAttribute', '编辑商品属性', 0, 11, 50, NULL);
INSERT INTO `t_system_module` VALUES (94, 'module', 3, 'Goods', 'delGoods', '删除商品', 0, 11, 50, NULL);
INSERT INTO `t_system_module` VALUES (95, 'module', 3, 'Goods', 'delGoodsType', '删除商品类型', 0, 11, 50, NULL);
INSERT INTO `t_system_module` VALUES (96, 'module', 3, 'Goods', 'delGoodsAttribute', '删除商品属性', 0, 11, 50, NULL);
INSERT INTO `t_system_module` VALUES (97, 'module', 3, 'Goods', 'delGoodsSpec', '删除商品规格', 0, 11, 50, NULL);
INSERT INTO `t_system_module` VALUES (98, 'module', 3, 'Goods', 'addEditSpec', '编辑商品规格', 0, 11, 50, NULL);
INSERT INTO `t_system_module` VALUES (99, 'module', 3, 'Goods', 'addEditBrand', '编辑品牌', 0, 11, 50, NULL);
INSERT INTO `t_system_module` VALUES (100, 'module', 3, 'Goods', 'delBrand', '删除品牌', 0, 11, 50, NULL);
INSERT INTO `t_system_module` VALUES (101, 'module', 3, 'Coupon', 'coupon_info', '添加优惠券', 0, 14, 50, NULL);
INSERT INTO `t_system_module` VALUES (102, 'module', 3, 'Promotion', 'group_buy', '添加团购', 0, 14, 50, NULL);
INSERT INTO `t_system_module` VALUES (103, 'module', 3, 'Promotion', 'groupbuyHandle', '保存团购', 0, 14, 50, NULL);
INSERT INTO `t_system_module` VALUES (104, 'module', 3, 'Promotion', 'get_goods', '选择商品', 0, 14, 50, NULL);
INSERT INTO `t_system_module` VALUES (105, 'module', 3, 'Coupon', 'coupon_info', '编辑优惠券', 0, 14, 50, NULL);
INSERT INTO `t_system_module` VALUES (106, 'module', 3, 'Coupon', 'del_coupon', '删除优惠券', 0, 14, 50, NULL);
INSERT INTO `t_system_module` VALUES (107, 'module', 3, 'Coupon', 'send_coupon', '发放优惠券', 0, 14, 50, NULL);
INSERT INTO `t_system_module` VALUES (108, 'module', 3, 'Order', 'edit_order', '编辑订单', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (109, 'module', 3, 'Order', 'split_order', '拆分订单', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (110, 'module', 3, 'Order', 'deatil', '订单详情', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (111, 'module', 3, 'Order', 'editprice', '修改订单金额', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (112, 'module', 3, 'Order', 'delete_order', '删除订单', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (113, 'module', 3, 'Order', 'pay_cancel', '取消付款', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (114, 'module', 3, 'Order', 'order_print', '订单打印', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (115, 'module', 3, 'Order', 'shipping_print', '打印快递', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (116, 'module', 3, 'Order', 'deliveryHandle', '发货处理', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (117, 'module', 3, 'Order', 'delivery_info', '发货单详情', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (118, 'module', 3, 'Order', 'return_info', '退货单信息', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (119, 'module', 3, 'Order', 'return_del', '删除退货单', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (120, 'module', 3, 'Order', 'order_action', '订单流程处理', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (121, 'module', 3, 'Order', 'export_order', '导出订单', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (122, 'module', 3, 'Order', 'search_goods', '搜索商品', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (123, 'module', 3, 'Order', 'add_return_goods', '生成退货单', 0, 17, 50, NULL);
INSERT INTO `t_system_module` VALUES (124, 'module', 3, 'Article', 'category', '编辑文章分类', 0, 12, 50, NULL);
INSERT INTO `t_system_module` VALUES (125, 'module', 3, 'Article', 'categoryHandle', '保存文章分类', 0, 12, 50, NULL);
INSERT INTO `t_system_module` VALUES (126, 'module', 3, 'Article', 'article', '编辑文章', 0, 12, 50, NULL);
INSERT INTO `t_system_module` VALUES (127, 'module', 3, 'Article', 'aticleHandle', '保存文章', 0, 12, 50, NULL);
INSERT INTO `t_system_module` VALUES (128, 'module', 3, 'Article', 'link', '编辑友情链接', 0, 12, 50, NULL);
INSERT INTO `t_system_module` VALUES (129, 'module', 3, 'Article', 'linkHandle', '保存友情链接', 0, 12, 50, NULL);
INSERT INTO `t_system_module` VALUES (130, 'module', 3, 'Topic', 'topic', '新增专题', 0, 12, 50, NULL);
INSERT INTO `t_system_module` VALUES (131, 'module', 3, 'Topic', 'topicHandle', '保存专题', 0, 12, 50, NULL);
INSERT INTO `t_system_module` VALUES (132, 'module', 3, 'Ad', 'position', '添加广告位', 0, 13, 50, NULL);
INSERT INTO `t_system_module` VALUES (133, 'module', 3, 'Ad', 'positionHandle', '保存广告位', 0, 13, 50, NULL);
INSERT INTO `t_system_module` VALUES (134, 'module', 3, 'Ad', 'ad', '添加广告', 0, 13, 50, NULL);
INSERT INTO `t_system_module` VALUES (135, 'module', 3, 'Ad', 'adHandle', '保存广告', 0, 13, 50, NULL);
INSERT INTO `t_system_module` VALUES (136, 'module', 3, 'Tools', 'backup', '生成备份文件', 0, 15, 50, NULL);
INSERT INTO `t_system_module` VALUES (137, 'module', 3, 'Tools', 'restoreData', '还原SQL文件', 0, 15, 50, NULL);
INSERT INTO `t_system_module` VALUES (138, 'module', 3, 'Tools', 'optimize', '优化数据表', 0, 15, 50, NULL);
INSERT INTO `t_system_module` VALUES (139, 'module', 3, 'Tools', 'repair', '修改数据表', 0, 15, 50, NULL);
INSERT INTO `t_system_module` VALUES (140, 'module', 3, 'Tools', 'restoreUpload', '上传SQL文件', 0, 15, 50, NULL);
INSERT INTO `t_system_module` VALUES (141, 'module', 3, 'Tools', 'downFile', '下载SQL文件', 0, 15, 50, NULL);
INSERT INTO `t_system_module` VALUES (142, 'module', 3, 'Tools', 'delSqlFiles', '删除SQL文件', 0, 15, 50, NULL);
INSERT INTO `t_system_module` VALUES (143, 'module', 3, 'Promotion', 'prom_order_list', '订单促销', 1, 14, 50, NULL);
INSERT INTO `t_system_module` VALUES (144, 'module', 3, 'Promotion', 'bargain', '砍价管理', 0, 14, 50, NULL);
INSERT INTO `t_system_module` VALUES (146, 'module', 3, 'Promotion', 'prom_goods_list', '商品促销', 1, 14, 50, NULL);
INSERT INTO `t_system_module` VALUES (153, 'module', 3, 'Tools', 'region', '地区管理', 1, 15, 50, NULL);
INSERT INTO `t_system_module` VALUES (154, 'module', 3, 'Comment', 'ask_list', '商品咨询', 1, 10, 50, NULL);

-- ----------------------------
-- Table structure for t_topic
-- ----------------------------
DROP TABLE IF EXISTS `t_topic`;
CREATE TABLE `t_topic`  (
  `topic_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `topic_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专题标题',
  `topic_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专题封面',
  `topic_background_color` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专题背景颜色',
  `topic_background` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专题背景图',
  `topic_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '专题详情',
  `topic_repeat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '背景重复方式',
  `topic_state` tinyint(1) NULL DEFAULT 1 COMMENT '专题状态1-草稿、2-已发布',
  `topic_margin_top` tinyint NULL DEFAULT 0 COMMENT '正文距顶部距离',
  `ctime` int NULL DEFAULT NULL COMMENT '专题创建时间',
  PRIMARY KEY (`topic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_topic
-- ----------------------------
INSERT INTO `t_topic` VALUES (1, '小米5手机专题', '/Public/upload/topic/2016/02-20/56c814f3ae981.jpg', '#000000', '/Public/upload/topic/2016/02-20/56c8150dd970b.png', '<!doctype html>\r\n<html lang=\"zh-CN\" xml:lang=\"zh-CN\">\r\n<head>\r\n<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge\" />\r\n<meta charset=\"UTF-8\" />\r\n<title>小米手机 5 概述 － 小米手机官网</title>\r\n<meta name=\"viewport\" content=\"width=1226\" />\r\n<link rel=\"shortcut icon\" href=\"http://s01.mifile.cn/favicon.ico\" type=\"image/x-icon\" />\r\n<link rel=\"icon\" href=\"http://s01.mifile.cn/favicon.ico\" type=\"image/x-icon\" />\r\n<link rel=\"stylesheet\" href=\"http://s01.mifile.cn/css/base.min.css?v2016a\" />\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"http://s01.mifile.cn/css/product/mi5/index.min.css?749bd4\" />\r\n<script type=\"text/javascript\">var _head_over_time = (new Date()).getTime();</script>\r\n</head>\r\n<body>\r\n<div class=\"xm-product-box\">\r\n    <div class=\"hd nav-bar_xg J_headNav\">\r\n\r\n    </div>\r\n\r\n\r\n    <div id=\"overall\" class=\"mi5-overall \">\r\n        <div class=\"J_miOneScroller\">\r\n            <div class=\"section section-start\" data-title=\"综述\" data-shrik=\'0\'>           \r\n                <div class=\"side-text\">\r\n                    <h2 class=\"title font\">小米手机5<br>十余项黑科技，很轻狠快</h2>\r\n                    <p class=\"content\">骁龙820处理器 / 最大可选4GB内存、128GB闪存<br>4轴防抖相机 / 3D陶瓷机身 / 3D玻璃机身</p>\r\n                    <p class=\"price\">\r\n                        1999 <span>元起</span>\r\n                    </p>\r\n                    <p class=\'link\' style=\'font-family:\"Helvetica Neue\",Helvetica,Arial,\"Microsoft Yahei\",\"Hiragino Sans GB\",\"Heiti SC\",\"WenQuanYi Micro Hei\",sans-serif\'>\r\n                        <span class=\'play-logo\'>\r\n                            <i class=\"iconfont\">&#xe601;</i>\r\n                        </span>\r\n                        <a href=\"javascript:void(0);\" class=\'J_videoBtn\' data-video=\'XMTQ4MDU2MTkzMg\'  data-video-title=\'小米手机5 外观视频\'>外观视频</a> \r\n                        \r\n                        <span class=\'play-logo\'>\r\n                            <i class=\"iconfont\">&#xe601;</i>\r\n                        </span>  \r\n                        <a href=\"javascript:void(0);\" class=\'J_videoBtn\' data-video=\'XMTQ4MDU2MTU5Ng==\'  data-video-title=\'4 轴防抖视频\' >4 轴防抖视频</a> \r\n                        \r\n                    </p>\r\n                </div>  \r\n                <img class=\"shrik J_shrik\" data-src=\"http://c1.mifile.cn/f/i/16/mi5/index/h-12.jpg\" alt=\"\">\r\n            </div>\r\n            <div class=\"section section-grade\" data-title=\'性能\' data-shrik=\'1\'>\r\n                <div class=\"side-text side-text-a common-section center\">\r\n                    <h2 class=\"title\">14 万分，快得有点狠</h2>\r\n                    <p class=\"content\">\r\n                        CPU 性能翻倍的骁龙 820 处理器，提速 87% 的 UFS 闪存，快 40% 的 Adreno 530 图形引擎，<br>快 100% 的双通道 LPDDR4，Antutu 跑分性能测试高达惊人的 14 万分。\r\n                    </p>\r\n                    <a class=\"href-link\" href=\'/mi5/features/\' target=\'_blank\'> 了解性能 &gt;</a>\r\n                </div>\r\n                <ul class=\"side-text side-text-b\">\r\n                    <li>\r\n                        <h2 class=\"side-title\">\r\n                            骁龙820\r\n                        </h2>\r\n                        <p class=\"side-cont\">旗舰处理器</p>\r\n                    </li>\r\n                    <li class=\'mid\'>\r\n                        <h2 class=\"side-title\">\r\n                            4GB\r\n                        </h2>\r\n                        <p class=\"side-cont\">可选最大内存</p>\r\n                    </li>\r\n                    <li>\r\n                        <h2 class=\"side-title\">\r\n                            128GB\r\n                        </h2>\r\n                        <p class=\"side-cont\">可选最大闪存</p>\r\n                    </li>\r\n                </ul>\r\n                <img class=\"shrik J_shrik\" data-src=\"http://c1.mifile.cn/f/i/16/mi5/index/h-8.jpg\" alt=\"\">\r\n            </div>\r\n            <div class=\"section section-feel\" data-title=\'设计\'  data-shrik=\'2\'>\r\n                <div class=\"side-text common-section center\">\r\n                    <h2 class=\"title\">129克，手感轻得不真实</h2>\r\n                    <p class=\"descText\">5.15\" 大屏幕，整机仅 129 克。<br>还有 3D 纤细侧腰，曲面玻璃的温润手感。握在手中的一刻，仿佛轻轻握住整个世界的倒影。</p>\r\n                    <a class=\"href-link\" href=\'/mi5/design/\' target=\'_blank\'>了解设计&gt;</a>\r\n                </div>\r\n                <img class=\"shrik J_shrik\" data-src=\"http://c1.mifile.cn/f/i/16/mi5/index/h-13.jpg\" alt=\"\">\r\n            </div>            \r\n            <div class=\"section section-camera\" data-title=\'相机\'  data-shrik=\'3\'>\r\n                <div class=\"side-text common-section center\">\r\n                    <h2 class=\"title\">4 轴防抖相机，感动、激动、不抖动</h2>\r\n                    <p class=\"descText\">采用源自专业相机的 4 轴光学防抖技术，比一般手机 2 轴防抖效果更佳，<br>阳光、暗光、运动、单手，都能稳定记录，清晰成像。</p>\r\n                    <a class=\"href-link\" href=\'/mi5/camera/\' target=\'_blank\'>了解相机&gt;</a>\r\n                </div>\r\n                <img class=\"shrik J_shrik\" data-src=\"http://c1.mifile.cn/f/i/16/mi5/index/h-14.jpg\" alt=\"\">\r\n                <ul class=\"pic-block J_picGlass\">\r\n                    <li class=\"pic-a\">\r\n                        <div class=\"circle\">\r\n                            <div class=\"sml-circle\"></div>\r\n                        </div>\r\n                        <div class=\"border-line\"></div>\r\n                        <div class=\"circle-text\">\r\n                            蓝宝石<br>镜头保护玻璃\r\n                        </div>\r\n                    </li>\r\n                    <li class=\"pic-b\">\r\n                        <div class=\"circle\">\r\n                            <div class=\"sml-circle\"></div>\r\n                        </div>\r\n                        <div class=\"border-line\"></div>\r\n                        <div class=\"circle-text\">\r\n                            6P镜片组\r\n                        </div>\r\n                    </li>\r\n                    <li class=\"pic-c\">\r\n                        <div class=\"circle\">\r\n                            <div class=\"sml-circle\"></div>\r\n                        </div>\r\n                        <div class=\"border-line\"></div>\r\n                        <div class=\"circle-text\">\r\n                            4轴光学防抖\r\n                        </div>\r\n                    </li>\r\n                    <li class=\"pic-d\">\r\n                        <div class=\"circle\">\r\n                            <div class=\"sml-circle\"></div>\r\n                        </div>\r\n                        <div class=\"border-line\"></div>\r\n                        <div class=\"circle-text\">\r\n                            索尼新一代<br>16MP感光元件\r\n                        </div>\r\n                    </li>\r\n                    <li class=\"pic-e\">\r\n                        <div class=\"circle\">\r\n                            <div class=\"sml-circle\"></div>\r\n                        </div>\r\n                        <div class=\"border-line\"></div>\r\n                        <div class=\"circle-text\">\r\n                            DTI<br>深槽隔离技术\r\n                        </div>\r\n                    </li>\r\n                    <li class=\"pic-f\">\r\n                        <div class=\"circle\">\r\n                            <div class=\"sml-circle\"></div>\r\n                        </div>\r\n                        <div class=\"border-line\"></div>\r\n                        <div class=\"circle-text\">\r\n                            暗光增强<br>夜景防抖\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class=\"section section-highlight\" data-title=\'屏幕\'  data-shrik=\'4\'>\r\n                <div class=\"side-text common-section\">\r\n                    <h2 class=\"title\">16颗灯省电高亮屏幕<br>鲜艳通透</h2>\r\n                    <p class=\"descText\">屏幕深度定制，在仅有 5.15\" 屏幕上精密排布 16 颗 LED 灯珠，亮度提升 30%，色彩依旧鲜艳。灯光下看起来更通透，阳光下看得更清晰，这才是好屏幕应有的亮度。</p>\r\n                    <a class=\"href-link\" href=\'/mi5/screen\' target=\'_blank\'>了解屏幕&gt;</a>\r\n                </div>\r\n                <img class=\"shrik J_shrik\" data-src=\"http://c1.mifile.cn/f/i/16/mi5/index/h-24.jpg\" alt=\"\">\r\n            </div>\r\n            \r\n            <div class=\"section section-miui\" data-title=\'操作系统\'   data-shrik=\'5\'>\r\n                <div class=\"side-text common-section center\">\r\n                    <h2 class=\"title\">MIUI 7 再升级，1.7亿 用户的新惊喜</h2>\r\n                    <p class=\"descText\">好看、好用的 MIUI 系统，在小米5 上有了新惊喜。离线一键换机、<br>手机远程锁定防丢失，还有美颜视频电话等有趣的新玩法。</p>\r\n                    <p class=\"href-link\">\r\n                        <span class=\'play-logo\'>\r\n                            <i class=\"iconfont\">&#xe601;</i>\r\n                        </span>\r\n                        <a href=\"javascript:void(0);\" class=\'J_videoBtn\' data-video=\'XMTQ4MDYzMjkyOA\'  data-video-title=\'一键换机演示\'>一键换机演示</a> \r\n                        \r\n                        <a class=\"link-url\"  href=\'/mi5/features#miui\' target=\'_blank\'>了解操作系统&gt; </a>\r\n                    </p>\r\n                </div>\r\n                <img class=\"shrik J_shrik\" data-src=\"http://c1.mifile.cn/f/i/16/mi5/index/h-21.jpg\" alt=\"\">\r\n            </div>\r\n            \r\n            <div class=\"section section-version \" data-title=\'版本选择\'  data-shrik=\'5\'>\r\n                <div class=\"side-text common-section\">\r\n                    <h2 class=\"title\">\r\n                        哪一款是你的最爱？\r\n                    </h2>\r\n                    <h3 class=\"sub-title\">\r\n                    <!--    对比机型-->\r\n                    </h3>\r\n                </div>\r\n                <ul class=\"version-list\">\r\n                    <li class=\'left show-a\'>\r\n                        <div class=\"v-img-list\">\r\n                            <div class=\"img-a\"></div>\r\n                            <div class=\"img-b\"></div>\r\n                            <div class=\"img-c\"></div>\r\n                        </div>\r\n                        <div class=\"v-col-circle\">\r\n                            \r\n                            <div class=\"circle-c J_circle\" data-cls=\'show-a\'>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\"circle-a J_circle\"  data-cls=\'show-b\'>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\"circle-b J_circle\"  data-cls=\'show-c\'>\r\n                                <i></i>\r\n                            </div>\r\n                        </div>\r\n                        <h2 class=\"v-title\">\r\n                            标准版<span> |</span> 1999元 \r\n                        </h2>\r\n                        <p class=\"v-content\">\r\n                            骁龙820 最高主频 1.8GHz<br>3GB LPDDR4 + 32GB UFS 闪存、3D曲面玻璃机身\r\n                        </p>\r\n                    </li>\r\n                    <li class=\'mid show-b\'>\r\n                        <div class=\"v-img-list\">\r\n                            <div class=\"img-a\"></div>\r\n                            <div class=\"img-b\"></div>\r\n                            <div class=\"img-c\"></div>\r\n                        </div>\r\n                        <div class=\"v-col-circle\">\r\n                            <div class=\"circle-c J_circle\" data-cls=\'show-a\'>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\"circle-a J_circle\"  data-cls=\'show-b\'>\r\n                                <i></i>\r\n                            </div>\r\n                            <div class=\"circle-b J_circle\"  data-cls=\'show-c\'>\r\n                                <i></i>\r\n                            </div>\r\n                        </div>\r\n                        <h2 class=\"v-title\">\r\n                            高配版 <span> |</span> 2299元 \r\n                        </h2>\r\n                        <p class=\"v-content\">\r\n                            骁龙820 最高主频 2.15GHz<br>3GB LPDDR4 + 64GB UFS 闪存、3D曲面玻璃机身\r\n                        </p>\r\n                    </li> \r\n                    <li  class=\'right show-c\'>\r\n                        <div class=\"v-img-list\">\r\n                            <div class=\"img-a\"></div>\r\n                            <div class=\"img-b\"></div>\r\n                            <div class=\"img-c\"></div>\r\n                        </div>\r\n                        <div class=\"v-col-circle\">\r\n                            <div class=\"circle-b\">\r\n                                <i></i>\r\n                            </div>\r\n                        </div>\r\n                        <h2 class=\"v-title\">\r\n                            尊享版 <span> |</span> 2699元 \r\n                        </h2>\r\n                        <p class=\"v-content\">\r\n                            骁龙820 最高主频 2.15GHz<br>4GB LPDDR4 + 128GB UFS 闪存、3D陶瓷机身\r\n                        </p>\r\n                    </li> \r\n                </ul>\r\n            </div> \r\n        </div>\r\n    </div>\r\n    \r\n</div>\r\n\r\n\r\n\r\n\r\n</div>\r\n<div id=\"J_modalVideo\" class=\"modal modal-video fade modal-hide\">\r\n    <div class=\"modal-hd\">\r\n        <h3 class=\"title\">视频播放</h3>\r\n        <a class=\"close\" data-dismiss=\"modal\" href=\"javascript: void(0);\"><i class=\"iconfont\">&#xe602;</i></a>\r\n    </div>\r\n    <div class=\"modal-bd\">\r\n        <div class=\"loading\"><div class=\"loader\"></div></div>\r\n    </div>\r\n</div>\r\n\r\n\r\n<div id=\"J_modalWeixin\" class=\"modal fade modal-hide modal-weixin\" data-width=\"480\" data-height=\"520\">\r\n        <div class=\"modal-hd\">\r\n            <a class=\"close\" data-dismiss=\"modal\"><i class=\"iconfont\">&#xe602;</i></a>\r\n            <h3>小米手机官方微信二维码</h3>\r\n        </div>\r\n        <div class=\"modal-bd\">\r\n            <p style=\"margin: 0 0 10px;\">打开微信，点击右上角的“+”，选择“扫一扫”功能，<br/>对准下方二维码即可。</p>\r\n            <img alt=\"\" src=\"http://c1.mifile.cn/f/i/2014/cn/qr.png\" width=\"375\" height=\"375\" />\r\n        </div>\r\n    </div>\r\n<!-- .modal-weixin END -->\r\n<div class=\"modal modal-hide modal-bigtap-queue\" id=\"J_bigtapQueue\">\r\n    <div class=\"modal-body\">\r\n        <span class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\"><i class=\"iconfont\">&#xe602;</i></span>\r\n        <h3>正在排队，请稍候喔！</h3>\r\n        <p class=\"queue-tip\">抱歉，目前排队人数较多，导致服务器压力山大，请您耐心排队等待，<br>我们将在稍后告诉您排队结果。</p>\r\n        <div class=\"queue-animate\">\r\n            <div id=\"J_mituWalking\" class=\"mitu-walk\"> </div>\r\n            <div class=\"animate-mask animate-mask-left\"></div>\r\n            <div class=\"animate-mask animate-mask-right\"></div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<!-- .xm-dm-queue END -->\r\n<div id=\"J_bigtapError\" class=\"modal modal-hide modal-bigtap-error\">\r\n    <span class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\"><i class=\"iconfont\">&#xe602;</i></span>\r\n    <div class=\"modal-body\">\r\n        <h3>抱歉，网络拥堵无法连接服务器</h3>\r\n        <p  class=\"error-tip\">由于访问人数太多导致服务器压力山大，请您稍后再重试。</p>\r\n        <p >\r\n            <a class=\"btn btn-primary\" id=\"J_bigtapRetry\">重试</a>\r\n        </p>\r\n    </div>\r\n</div>\r\n<!-- .xm-dm-error END -->\r\n<div id=\"J_modal-globalSites\" class=\"modal fade modal-hide modal-globalSites\" data-width=\"640\">\r\n       <div class=\"modal-hd\">\r\n            <a class=\"close\" data-dismiss=\"modal\"><i class=\"iconfont\">&#xe602;</i></a>\r\n            <h3>Select Region</h3>\r\n        </div>\r\n        <div class=\"modal-bd\">\r\n            <h3>Welcome to Mi.com</h3>\r\n            <p class=\"modal-globalSites-tips\">Please select your country or region</p>\r\n            <p class=\"modal-globalSites-links clearfix\">\r\n                <a href=\"http://www.mi.com/index.html\">Mainland China</a>\r\n                <a href=\"http://www.mi.com/hk/\">Hong Kong</a>\r\n                <a href=\"http://www.mi.com/tw/\">TaiWan</a>\r\n                <a href=\"http://www.mi.com/sg/\">Singapore</a>\r\n                <a href=\"http://www.mi.com/my/\">Malaysia</a>\r\n                <a href=\"http://www.mi.com/ph/\">Philippines</a>\r\n                <a href=\"http://www.mi.com/in/\">India</a>\r\n                <a href=\"http://www.mi.com/id/\">Indonesia</a>\r\n                <a href=\"http://br.mi.com/\">Brasil</a>\r\n                <a href=\"http://www.mi.com/en/\">Global Home</a>\r\n            </p>\r\n        </div>\r\n    </div>\r\n<!-- .modal-globalSites END -->\r\n<script src=\"http://s01.mifile.cn/js/base.min.js?v2016a\"></script>\r\n<script>\r\n(function() {\r\n    MI.namespace(\'GLOBAL_CONFIG\');\r\n    MI.GLOBAL_CONFIG = {\r\n        orderSite: \'http://order.mi.com\',\r\n        wwwSite: \'http://www.mi.com\',\r\n        cartSite: \'http://cart.mi.com\',\r\n        itemSite: \'http://item.mi.com\',\r\n        assetsSite: \'http://s01.mifile.cn\',\r\n        listSite: \'http://list.mi.com\',\r\n        searchSite: \'http://search.mi.com\',\r\n        mySite: \'http://my.mi.com\',\r\n        damiaoSite: \'http://tp.hd.mi.com/\',\r\n        damiaoGoodsId:[\"2160200002\",\"2134900369\",\"2160400010\",\"2160700016\",\"2160700017\",\"2160700024\"],\r\n        logoutUrl: \'http://order.mi.com/site/logout\',\r\n        staticSite: \'http://static.mi.com\',\r\n        quickLoginUrl: \'https://account.xiaomi.com/pass/static/login.html\'\r\n    };\r\n    MI.setLoginInfo.orderUrl = MI.GLOBAL_CONFIG.orderSite + \'/user/order\';\r\n    MI.setLoginInfo.logoutUrl = MI.GLOBAL_CONFIG.logoutUrl;\r\n    MI.setLoginInfo.init(MI.GLOBAL_CONFIG);\r\n    MI.miniCart.init();\r\n    MI.updateMiniCart();\r\n})();\r\n</script>\r\n<script type=\"text/javascript\" src=\"http://s01.mifile.cn/js/product/mi5/index.min.js?a1bfe2\"></script>\r\n<script src=\"http://c1.mifile.cn/f/i/15/stat/js/xmsg_ti.js\"></script>\r\n<script>\r\nvar _msq = _msq || [];\r\n_msq.push([\'setDomainId\', 100]);\r\n_msq.push([\'trackPageView\']);\r\n(function() {\r\n    var ms = document.createElement(\'script\');\r\n    ms.type = \'text/javascript\';\r\n    ms.async = true;\r\n    ms.src = \'http://c1.mifile.cn/f/i/15/stat/js/xmst.js\';\r\n    var s = document.getElementsByTagName(\'script\')[0];\r\n    s.parentNode.insertBefore(ms, s);\r\n})();\r\n</script>\r\n</body>\r\n</html>\r\n \r\n', 'repeat', 2, 10, 1455953179);

-- ----------------------------
-- Table structure for t_user_address
-- ----------------------------
DROP TABLE IF EXISTS `t_user_address`;
CREATE TABLE `t_user_address`  (
  `address_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `consignee` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人',
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `country` int NOT NULL DEFAULT 0 COMMENT '国家',
  `province` int NOT NULL DEFAULT 0 COMMENT '省份',
  `city` int NOT NULL DEFAULT 0 COMMENT '城市',
  `district` int NOT NULL DEFAULT 0 COMMENT '地区',
  `twon` int NULL DEFAULT 0 COMMENT '乡镇',
  `address` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '地址',
  `zipcode` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮政编码',
  `mobile` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机',
  `is_default` tinyint(1) NULL DEFAULT 0 COMMENT '默认收货地址',
  `is_pickup` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`address_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 359 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user_address
-- ----------------------------
INSERT INTO `t_user_address` VALUES (8, 20, '某大街某号 2', '', 0, 19, 241, 2370, 0, ' 某街道办 .', '', '13554754891', 0, 0);
INSERT INTO `t_user_address` VALUES (9, 20, '某大街某号 2', '', 0, 1, 36, 397, 0, ' ujiuo;iiergf', '', '13554745866', 1, 0);
INSERT INTO `t_user_address` VALUES (10, 21, '哈哈', '', 0, 2, 37, 401, 0, '记录贴', '518116', '13800138000', 1, 0);
INSERT INTO `t_user_address` VALUES (11, 23, ' 测试', '', 0, 1, 2, 3, 0, '测试', '', '13012345678', 0, 0);
INSERT INTO `t_user_address` VALUES (13, 24, '牛气轰轰', '', 1, 636, 1291, 1319, 1320, '某大街道某号', '123456', '13554754711', 1, 0);

-- ----------------------------
-- Table structure for t_user_level
-- ----------------------------
DROP TABLE IF EXISTS `t_user_level`;
CREATE TABLE `t_user_level`  (
  `level_id` smallint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `level_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头衔名称',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '等级必要金额',
  `discount` smallint NULL DEFAULT NULL COMMENT '折扣',
  `describe` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头街 描述',
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user_level
-- ----------------------------
INSERT INTO `t_user_level` VALUES (1, '注册会员', 0.00, 100, '注册会员');
INSERT INTO `t_user_level` VALUES (2, '铜牌会员', 10000.00, 98, '铜牌会员');
INSERT INTO `t_user_level` VALUES (3, '白银会员', 30000.00, 95, '白银会员');
INSERT INTO `t_user_level` VALUES (4, '黄金会员', 50000.00, 92, '黄金会员');
INSERT INTO `t_user_level` VALUES (5, '钻石会员', 100000.00, 90, '钻石会员');
INSERT INTO `t_user_level` VALUES (6, '超级VIP', 200000.00, 88, '超级VIP');

-- ----------------------------
-- Table structure for t_user_message
-- ----------------------------
DROP TABLE IF EXISTS `t_user_message`;
CREATE TABLE `t_user_message`  (
  `rec_id` int NOT NULL AUTO_INCREMENT,
  `user_id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `message_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '消息id',
  `category` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '系统消息0，活动消息',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '查看状态：0未查看，1已查看',
  PRIMARY KEY (`rec_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `message_id`(`message_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user_message
-- ----------------------------
INSERT INTO `t_user_message` VALUES (1, 1, 1, 0, 1);

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users`  (
  `user_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮件',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `sex` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '0 保密 1 男 2 女',
  `birthday` int NOT NULL DEFAULT 0 COMMENT '生日',
  `user_money` decimal(10, 2) NOT NULL COMMENT '用户金额',
  `frozen_money` decimal(10, 2) NOT NULL COMMENT '冻结金额',
  `distribut_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '累积分佣金额',
  `pay_points` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '消费积分',
  `address_id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT '默认收货地址',
  `reg_time` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '注册时间',
  `last_login` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `last_ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'QQ',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  `mobile_validated` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否验证手机',
  `oauth` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '第三方来源 wx weibo alipay',
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方唯一标示',
  `head_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `province` int NULL DEFAULT 0 COMMENT '省份',
  `city` int NULL DEFAULT 0 COMMENT '市区',
  `district` int NULL DEFAULT 0 COMMENT '县',
  `email_validated` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否验证电子邮箱',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方返回昵称',
  `level` tinyint(1) NULL DEFAULT 1 COMMENT '会员等级',
  `discount` decimal(10, 2) NULL DEFAULT 1.00 COMMENT '会员折扣，默认1不享受',
  `total_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '消费累计额度',
  `is_lock` tinyint(1) NULL DEFAULT 0 COMMENT '是否被锁定冻结',
  `is_distribut` tinyint(1) NULL DEFAULT 0 COMMENT '是否为分销商 0 否 1 是',
  `first_leader` int NULL DEFAULT 0 COMMENT '第一个上级',
  `second_leader` int NULL DEFAULT 0 COMMENT '第二个上级',
  `third_leader` int NULL DEFAULT 0 COMMENT '第三个上级',
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用于app 授权类似于session_id',
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2584 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES (1, '240874144@qq.com', '519475228fe35ad067744465c42a19b2', 1, 1472486400, 2.00, 0.00, 0.00, 0, 1, 1245048540, 1245048540, '0.0.0.0', '511482696', '13800138006', 1, '', NULL, '', 5827, 6542, 6563, 1, 'hello', 2, 0.98, 19008.20, 0, 0, 0, 0, 0, '');
INSERT INTO `t_users` VALUES (2, 'vip@dsads.com', 'e10adc3949ba59abbe56e057f20f883e', 0, 19490101, 0.00, 0.00, 0.00, 0, 0, 1245048540, 0, '', '', '', 0, '', NULL, NULL, 0, 0, 0, 0, NULL, 1, 1.00, 0.00, 0, 0, 0, 0, 0, '');
INSERT INTO `t_users` VALUES (5, 'zuanshi@qqh.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 19550101, 99996925.39, 0.00, 0.00, 5281, 3, 1245048540, 1444134213, '127.0.0.1', '398145057', '13800138070', 0, '', NULL, NULL, 0, 0, 0, 0, NULL, 1, 1.00, 0.00, 0, 0, 0, 0, 0, '');
INSERT INTO `t_users` VALUES (13, '', '', 0, 0, 0.00, 0.00, 0.00, 0, 0, 1452152213, 0, '', '', '', 0, 'alipay', '2088502287689843', NULL, 0, 0, 0, 0, '支付宝用户', 1, 1.00, 0.00, 0, 0, 0, 0, 0, '');
INSERT INTO `t_users` VALUES (14, '', '', 0, 0, 0.00, 0.00, 0.00, 0, 0, 1455951476, 0, '', '', '', 0, 'alipay', '2088702176714764', NULL, 0, 0, 0, 0, '支付宝用户', 1, 1.00, 0.00, 0, 0, 0, 0, 0, '');
INSERT INTO `t_users` VALUES (17, '', 'c33367701511b4f6020ec61ded352059', 2, 19890303, 0.00, 0.00, 0.00, 10, 0, 1456967563, 0, '', '', '15889560679', 0, '', NULL, NULL, 0, 0, 0, 0, '15889560679', 1, 1.00, 0.00, 0, 0, 0, 0, 0, '');

-- ----------------------------
-- Table structure for t_withdrawals
-- ----------------------------
DROP TABLE IF EXISTS `t_withdrawals`;
CREATE TABLE `t_withdrawals`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '提现申请表',
  `user_id` int NULL DEFAULT 0 COMMENT '用户id',
  `create_time` int NULL DEFAULT 0 COMMENT '申请日期',
  `money` decimal(10, 2) NULL DEFAULT NULL COMMENT '提现金额',
  `bank_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '银行名称 如支付宝 微信 中国银行 农业银行等',
  `account_bank` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '银行账号',
  `account_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '银行账户名 可以是支付宝可以其他银行',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '提现备注',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '提现状态0申请中1申请成功2申请失败',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_withdrawals
-- ----------------------------
INSERT INTO `t_withdrawals` VALUES (1, 1, 1466248005, 100.00, '支付宝', '5464646@qq.com', '黄女士', '测试通过', 1);
INSERT INTO `t_withdrawals` VALUES (2, 175, 1466419671, 300.00, '支付宝', '973798467', '李小玲', '', 0);

-- ----------------------------
-- Table structure for t_wx_img
-- ----------------------------
DROP TABLE IF EXISTS `t_wx_img`;
CREATE TABLE `t_wx_img`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '表id',
  `keyword` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关键词',
  `desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简介',
  `pic` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '封面图片',
  `url` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间',
  `uptatetime` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新时间',
  `token` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'token',
  `title` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `goods_id` int NOT NULL DEFAULT 0 COMMENT '商品id',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信图文' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_wx_img
-- ----------------------------
INSERT INTO `t_wx_img` VALUES (18, '改变关键字', '这里是描述秒速改变改变', '/Public/upload/banner/2015/11-10/5641dff44e322.jpg', 'http://www.ego.com/index.php/Admin/Wechat/add_img/id/326/edit/1', '1447159325', '1447162878', 'vjotae1439949952', '标题改变', 0, '');
INSERT INTO `t_wx_img` VALUES (21, 'iphone', '漂亮的手机1千块钱抢购了.', 'http://www.ego.cn/Public/upload/weixin/2016/05-28/574943d30ded2.jpg', 'http://demo.ego.cn/index.php/Home/Goods/goodsInfo/id/1.html', '1464419295', '', 'eesops1462769263', 'iphone 1千块限时抢购', 0, '');

-- ----------------------------
-- Table structure for t_wx_keyword
-- ----------------------------
DROP TABLE IF EXISTS `t_wx_keyword`;
CREATE TABLE `t_wx_keyword`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '表id',
  `keyword` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关键词',
  `pid` int NOT NULL COMMENT '对应表ID',
  `token` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'token',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'TEXT' COMMENT '关键词操作类型',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `token`(`token`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 328 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_wx_keyword
-- ----------------------------
INSERT INTO `t_wx_keyword` VALUES (280, '孤鸿寡鹄', 5, 'vjotae1439949952', 'TEXT');
INSERT INTO `t_wx_keyword` VALUES (281, '包包', 6, 'vjotae1439949952', 'TEXT');
INSERT INTO `t_wx_keyword` VALUES (324, '车型的谁', 9, 'vjotae1439949952', 'TEXT');
INSERT INTO `t_wx_keyword` VALUES (325, '你好', 10, 'eesops1462769263', 'TEXT');
INSERT INTO `t_wx_keyword` VALUES (326, '你坏', 11, 'eesops1462769263', 'TEXT');
INSERT INTO `t_wx_keyword` VALUES (328, 'iphone', 21, 'eesops1462769263', 'IMG');

-- ----------------------------
-- Table structure for t_wx_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_wx_menu`;
CREATE TABLE `t_wx_menu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `level` tinyint(1) NULL DEFAULT 1 COMMENT '菜单级别',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'name',
  `sort` int NULL DEFAULT 0 COMMENT '排序',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '0 view 1 click',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'value',
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'token',
  `pid` int NULL DEFAULT 0 COMMENT '上级菜单',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_wx_menu
-- ----------------------------
INSERT INTO `t_wx_menu` VALUES (28, 1, 'XXX官网', 0, 'view', 'http://www.ego.cn/index.php/Mobile/', 'eesops1462769263', 0);
INSERT INTO `t_wx_menu` VALUES (29, 1, 'ego商城', 0, 'view', 'http://www.ego.cn/index.php/Mobile/', 'eesops1462769263', 0);
INSERT INTO `t_wx_menu` VALUES (30, 1, '你好TP', 0, 'click', '你好', 'eesops1462769263', 28);

-- ----------------------------
-- Table structure for t_wx_msg
-- ----------------------------
DROP TABLE IF EXISTS `t_wx_msg`;
CREATE TABLE `t_wx_msg`  (
  `msgid` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL COMMENT '系统用户ID',
  `titile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` int NOT NULL DEFAULT 0 COMMENT '创建时间',
  `sendtime` int NOT NULL DEFAULT 0 COMMENT '发送时间',
  `issend` tinyint(1) NULL DEFAULT 0 COMMENT '0未发送1成功2失败',
  `sendtype` tinyint(1) NULL DEFAULT 1 COMMENT '0单人1所有',
  PRIMARY KEY (`msgid`) USING BTREE,
  INDEX `uid`(`admin_id`) USING BTREE,
  INDEX `createymd`(`sendtime`) USING BTREE,
  INDEX `fake_id`(`titile`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_wx_msg
-- ----------------------------

-- ----------------------------
-- Table structure for t_wx_news
-- ----------------------------
DROP TABLE IF EXISTS `t_wx_news`;
CREATE TABLE `t_wx_news`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '表id',
  `keyword` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'keyword',
  `createtime` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间',
  `uptatetime` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新时间',
  `token` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'token',
  `img_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图文组合id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信图文' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_wx_news
-- ----------------------------

-- ----------------------------
-- Table structure for t_wx_text
-- ----------------------------
DROP TABLE IF EXISTS `t_wx_text`;
CREATE TABLE `t_wx_text`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '表id',
  `uid` int NOT NULL COMMENT '用户id',
  `uname` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `keyword` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关键词',
  `precisions` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'precisions',
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'text',
  `createtime` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建时间',
  `updatetime` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新时间',
  `click` int NOT NULL COMMENT '点击',
  `token` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'token',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文本回复表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_wx_text
-- ----------------------------
INSERT INTO `t_wx_text` VALUES (5, 27, '', '孤鸿寡鹄', 0, '啊飒飒', '1439958307', '1439958307', 0, 'vjotae1439949952');
INSERT INTO `t_wx_text` VALUES (6, 13, '', 'sas', 0, 'sasqa', '1447072140', '1447072140', 0, 'tiyykb1446817155');
INSERT INTO `t_wx_text` VALUES (9, 0, '', '车型的谁', 0, '好久好久双方都发生sfdgdfd', '1447078190', '', 0, 'vjotae1439949952');
INSERT INTO `t_wx_text` VALUES (10, 0, '', '你好', 0, '你也很好,', '1462772293', '', 0, 'eesops1462769263');
INSERT INTO `t_wx_text` VALUES (11, 0, '', '你坏', 0, '你也很坏', '1462777159', '', 0, 'eesops1462769263');

-- ----------------------------
-- Table structure for t_wx_user
-- ----------------------------
DROP TABLE IF EXISTS `t_wx_user`;
CREATE TABLE `t_wx_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '表id',
  `uid` int NOT NULL COMMENT 'uid',
  `wxname` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公众号名称',
  `aeskey` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'aeskey',
  `encode` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'encode',
  `appid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'appid',
  `appsecret` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'appsecret',
  `wxid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公众号原始ID',
  `weixin` char(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '微信号',
  `headerpic` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '头像地址',
  `token` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'token',
  `w_token` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '微信对接token',
  `create_time` int NOT NULL COMMENT 'create_time',
  `updatetime` int NOT NULL COMMENT 'updatetime',
  `tplcontentid` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容模版ID',
  `share_ticket` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分享ticket',
  `share_dated` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'share_dated',
  `authorizer_access_token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'authorizer_access_token',
  `authorizer_refresh_token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'authorizer_refresh_token',
  `authorizer_expires` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'authorizer_expires',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '类型',
  `web_access_token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT ' 网页授权token',
  `web_refresh_token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'web_refresh_token',
  `web_expires` int NOT NULL COMMENT '过期时间',
  `qr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qr',
  `menu_config` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '菜单',
  `wait_access` tinyint(1) NULL DEFAULT 0 COMMENT '微信接入状态,0待接入1已接入',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `uid_2`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信公共帐号' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_wx_user
-- ----------------------------
INSERT INTO `t_wx_user` VALUES (25, 0, 'XXX公司', '', 0, 'wxe7', '5352dc2', 'gh_b6', 'wyp5', '/Public/upload/weixin/2016/05-09/573016497ba11.jpg', 'eesops1462769263', 'so', 0, 0, '', '', '', '', '', '', 4, '2DSgPEXwHHeoIr028PiybdLufStxf4slWBbch0tQLmiS_A5FjcDXEPGPH4N3OmHI1InqJ5UJgbv3KanVevKTSSL4Eg78H4n0X1Rx73AeI1cDJVdACAVBN', '', 1473395491, '/Public/upload/weixin/2016/05-09/573016665a893.jpg', NULL, 1);

-- ----------------------------
-- Procedure structure for addDep
-- ----------------------------
DROP PROCEDURE IF EXISTS `addDep`;
delimiter ;;
CREATE PROCEDURE `addDep`(in depName varchar(32),in parentId int,in enabled boolean,out result int,out result2 int)
begin
  declare did int;
  declare pDepPath varchar(64);
  insert into t_department set name=depName,parentId=parentId,enabled=enabled;
  select row_count() into result;
  select last_insert_id() into did;
  set result2=did;
  select depPath into pDepPath from t_department where id=parentId;
  update t_department set depPath=concat(pDepPath,'.',did) where id=did;
  update t_department set isParent=true where id=parentId;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for deleteDep
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteDep`;
delimiter ;;
CREATE PROCEDURE `deleteDep`(in did int,out result int)
begin
  declare ecount int;
  declare pid int;
  declare pcount int;
  declare a int;
  select count(*) into a from t_department where id=did and isParent=false;
  if a=0 then set result=-2;
  else
  select count(*) into ecount from t_employee where departmentId=did;
  if ecount>0 then set result=-1;
  else 
  select parentId into pid from t_department where id=did;
  delete from t_department where id=did and isParent=false;
  select row_count() into result;
  select count(*) into pcount from t_department where parentId=pid;
  if pcount=0 then update t_department set isParent=false where id=pid;
  end if;
  end if;
  end if;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
