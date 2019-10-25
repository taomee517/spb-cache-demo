/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50722
Source Host           : 127.0.0.1:3306
Source Database       : oa

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-10-25 16:34:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for depart
-- ----------------------------
DROP TABLE IF EXISTS `depart`;
CREATE TABLE `depart` (
  `deptid` int(2) NOT NULL AUTO_INCREMENT,
  `deptname` varchar(255) NOT NULL,
  `displaytype` int(2) DEFAULT '0',
  PRIMARY KEY (`deptid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of depart
-- ----------------------------
INSERT INTO `depart` VALUES ('21', '研发部', '0');
INSERT INTO `depart` VALUES ('22', '产品部', '0');
INSERT INTO `depart` VALUES ('23', '销售部', '0');
INSERT INTO `depart` VALUES ('24', '测试部', '0');
INSERT INTO `depart` VALUES ('25', '市场部', '0');
INSERT INTO `depart` VALUES ('27', '人事部', '0');
INSERT INTO `depart` VALUES ('29', '自动化部', '1');
INSERT INTO `depart` VALUES ('30', '技术支援部', '1');
INSERT INTO `depart` VALUES ('31', '农业部', '1');
INSERT INTO `depart` VALUES ('33', '风控部', '1');
INSERT INTO `depart` VALUES ('39', 'bug', '1');
INSERT INTO `depart` VALUES ('40', '法务部', '1');
INSERT INTO `depart` VALUES ('41', '法务部', '1');
INSERT INTO `depart` VALUES ('42', '法务部', '1');
INSERT INTO `depart` VALUES ('43', '再来一个法务部', '1');
INSERT INTO `depart` VALUES ('44', '法务部33', '1');
INSERT INTO `depart` VALUES ('45', 'bugbug', '1');
INSERT INTO `depart` VALUES ('46', 'bug2', '1');
INSERT INTO `depart` VALUES ('47', 'bug3', '1');
INSERT INTO `depart` VALUES ('48', 'bug4', '1');
INSERT INTO `depart` VALUES ('49', 'bug5', '1');
INSERT INTO `depart` VALUES ('50', 'bug6', '1');
INSERT INTO `depart` VALUES ('51', 'bug9', '1');
INSERT INTO `depart` VALUES ('52', 'bug8', '1');
INSERT INTO `depart` VALUES ('53', 'bug10', '1');
INSERT INTO `depart` VALUES ('54', 'bug10', '1');
INSERT INTO `depart` VALUES ('55', 'bug11', '1');
INSERT INTO `depart` VALUES ('56', 'bug0', '1');
INSERT INTO `depart` VALUES ('57', 'bug1', '1');
INSERT INTO `depart` VALUES ('58', 'bug2', '1');
INSERT INTO `depart` VALUES ('59', 'bug3', '1');
INSERT INTO `depart` VALUES ('60', 'bug4', '1');
INSERT INTO `depart` VALUES ('61', 'bug5', '1');
INSERT INTO `depart` VALUES ('62', 'bug6', '1');
INSERT INTO `depart` VALUES ('63', 'bug7', '1');
INSERT INTO `depart` VALUES ('64', 'bug', '1');
INSERT INTO `depart` VALUES ('65', 'bug1', '1');
INSERT INTO `depart` VALUES ('66', 'bug', '1');
INSERT INTO `depart` VALUES ('67', '农业部', '1');
INSERT INTO `depart` VALUES ('68', 'bug', '1');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menuid` int(2) NOT NULL,
  `menu` varchar(255) NOT NULL,
  `parentid` int(2) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '人事管理', '0', '', '0');
INSERT INTO `menu` VALUES ('2', '部门管理', '1', 'depart.jsp', '0');
INSERT INTO `menu` VALUES ('3', '员工管理', '1', 'user.jsp', '0');
INSERT INTO `menu` VALUES ('4', '日程管理', '0', '', '0');
INSERT INTO `menu` VALUES ('5', '我的日程', '4', 'schedule.html', '0');
INSERT INTO `menu` VALUES ('6', '部门日程', '4', '1.jsp', '0');
INSERT INTO `menu` VALUES ('7', '系统管理', '0', '', '0');
INSERT INTO `menu` VALUES ('8', '角色管理', '7', 'role.jsp', '0');
INSERT INTO `menu` VALUES ('9', '登录日志', '7', '2.jsp', '0');
INSERT INTO `menu` VALUES ('10', '考勤管理', '0', '', '0');
INSERT INTO `menu` VALUES ('11', '考勤统计', '10', '3.jsp', '0');
INSERT INTO `menu` VALUES ('12', '考勤历史记录', '10', '4.jsp', '0');
INSERT INTO `menu` VALUES ('13', '消息传递', '0', '', '0');
INSERT INTO `menu` VALUES ('14', '消息管理', '13', '5.jsp', '0');
INSERT INTO `menu` VALUES ('15', '信箱', '13', '6.jsp', '0');
INSERT INTO `menu` VALUES ('16', '查询部门', '1', '', '1');
INSERT INTO `menu` VALUES ('17', '新增部门', '1', null, '1');

-- ----------------------------
-- Table structure for privilege
-- ----------------------------
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `pid` int(2) NOT NULL AUTO_INCREMENT,
  `roleid` int(2) NOT NULL,
  `menuid` int(2) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `pmenuid` (`menuid`),
  KEY `proleid` (`roleid`),
  CONSTRAINT `pmenuid` FOREIGN KEY (`menuid`) REFERENCES `menu` (`menuid`),
  CONSTRAINT `proleid` FOREIGN KEY (`roleid`) REFERENCES `role` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privilege
-- ----------------------------
INSERT INTO `privilege` VALUES ('1', '1', '1');
INSERT INTO `privilege` VALUES ('2', '1', '2');
INSERT INTO `privilege` VALUES ('3', '1', '3');
INSERT INTO `privilege` VALUES ('4', '1', '4');
INSERT INTO `privilege` VALUES ('5', '1', '5');
INSERT INTO `privilege` VALUES ('6', '1', '6');
INSERT INTO `privilege` VALUES ('7', '1', '7');
INSERT INTO `privilege` VALUES ('8', '1', '8');
INSERT INTO `privilege` VALUES ('9', '1', '9');
INSERT INTO `privilege` VALUES ('10', '1', '10');
INSERT INTO `privilege` VALUES ('11', '1', '11');
INSERT INTO `privilege` VALUES ('12', '1', '12');
INSERT INTO `privilege` VALUES ('13', '1', '13');
INSERT INTO `privilege` VALUES ('14', '1', '14');
INSERT INTO `privilege` VALUES ('15', '1', '15');
INSERT INTO `privilege` VALUES ('16', '12', '1');
INSERT INTO `privilege` VALUES ('17', '12', '2');
INSERT INTO `privilege` VALUES ('18', '12', '3');
INSERT INTO `privilege` VALUES ('19', '12', '4');
INSERT INTO `privilege` VALUES ('20', '12', '5');
INSERT INTO `privilege` VALUES ('21', '12', '6');
INSERT INTO `privilege` VALUES ('22', '12', '7');
INSERT INTO `privilege` VALUES ('23', '12', '8');
INSERT INTO `privilege` VALUES ('24', '12', '9');
INSERT INTO `privilege` VALUES ('25', '12', '10');
INSERT INTO `privilege` VALUES ('26', '12', '11');
INSERT INTO `privilege` VALUES ('27', '12', '12');
INSERT INTO `privilege` VALUES ('28', '12', '13');
INSERT INTO `privilege` VALUES ('29', '12', '14');
INSERT INTO `privilege` VALUES ('30', '12', '15');
INSERT INTO `privilege` VALUES ('37', '2', '4');
INSERT INTO `privilege` VALUES ('38', '2', '5');
INSERT INTO `privilege` VALUES ('39', '2', '6');
INSERT INTO `privilege` VALUES ('40', '2', '13');
INSERT INTO `privilege` VALUES ('41', '2', '14');
INSERT INTO `privilege` VALUES ('42', '2', '15');
INSERT INTO `privilege` VALUES ('43', '5', '4');
INSERT INTO `privilege` VALUES ('44', '5', '5');
INSERT INTO `privilege` VALUES ('45', '5', '6');
INSERT INTO `privilege` VALUES ('46', '5', '13');
INSERT INTO `privilege` VALUES ('47', '5', '14');
INSERT INTO `privilege` VALUES ('48', '5', '15');
INSERT INTO `privilege` VALUES ('49', '6', '1');
INSERT INTO `privilege` VALUES ('50', '6', '2');
INSERT INTO `privilege` VALUES ('51', '6', '3');
INSERT INTO `privilege` VALUES ('52', '6', '4');
INSERT INTO `privilege` VALUES ('53', '6', '5');
INSERT INTO `privilege` VALUES ('54', '6', '6');
INSERT INTO `privilege` VALUES ('55', '6', '10');
INSERT INTO `privilege` VALUES ('56', '6', '11');
INSERT INTO `privilege` VALUES ('57', '6', '12');
INSERT INTO `privilege` VALUES ('58', '6', '13');
INSERT INTO `privilege` VALUES ('59', '6', '14');
INSERT INTO `privilege` VALUES ('60', '6', '15');
INSERT INTO `privilege` VALUES ('73', '10', '4');
INSERT INTO `privilege` VALUES ('74', '10', '5');
INSERT INTO `privilege` VALUES ('75', '10', '6');
INSERT INTO `privilege` VALUES ('76', '10', '10');
INSERT INTO `privilege` VALUES ('77', '10', '11');
INSERT INTO `privilege` VALUES ('78', '10', '12');
INSERT INTO `privilege` VALUES ('79', '10', '13');
INSERT INTO `privilege` VALUES ('80', '10', '14');
INSERT INTO `privilege` VALUES ('81', '10', '15');
INSERT INTO `privilege` VALUES ('82', '13', '4');
INSERT INTO `privilege` VALUES ('83', '13', '5');
INSERT INTO `privilege` VALUES ('84', '13', '6');
INSERT INTO `privilege` VALUES ('85', '13', '7');
INSERT INTO `privilege` VALUES ('86', '13', '13');
INSERT INTO `privilege` VALUES ('87', '13', '14');
INSERT INTO `privilege` VALUES ('88', '13', '15');
INSERT INTO `privilege` VALUES ('89', '9', '4');
INSERT INTO `privilege` VALUES ('90', '9', '5');
INSERT INTO `privilege` VALUES ('91', '9', '6');
INSERT INTO `privilege` VALUES ('92', '9', '13');
INSERT INTO `privilege` VALUES ('93', '9', '14');
INSERT INTO `privilege` VALUES ('94', '9', '15');
INSERT INTO `privilege` VALUES ('95', '14', '4');
INSERT INTO `privilege` VALUES ('96', '14', '5');
INSERT INTO `privilege` VALUES ('97', '14', '6');
INSERT INTO `privilege` VALUES ('98', '14', '13');
INSERT INTO `privilege` VALUES ('99', '14', '14');
INSERT INTO `privilege` VALUES ('100', '14', '15');
INSERT INTO `privilege` VALUES ('101', '11', '4');
INSERT INTO `privilege` VALUES ('102', '11', '5');
INSERT INTO `privilege` VALUES ('103', '11', '6');
INSERT INTO `privilege` VALUES ('104', '11', '13');
INSERT INTO `privilege` VALUES ('105', '11', '14');
INSERT INTO `privilege` VALUES ('106', '11', '15');
INSERT INTO `privilege` VALUES ('107', '8', '1');
INSERT INTO `privilege` VALUES ('108', '8', '2');
INSERT INTO `privilege` VALUES ('109', '8', '3');
INSERT INTO `privilege` VALUES ('110', '8', '4');
INSERT INTO `privilege` VALUES ('111', '8', '5');
INSERT INTO `privilege` VALUES ('112', '8', '6');
INSERT INTO `privilege` VALUES ('113', '8', '10');
INSERT INTO `privilege` VALUES ('114', '8', '11');
INSERT INTO `privilege` VALUES ('115', '8', '12');
INSERT INTO `privilege` VALUES ('116', '8', '13');
INSERT INTO `privilege` VALUES ('117', '8', '14');
INSERT INTO `privilege` VALUES ('118', '8', '15');
INSERT INTO `privilege` VALUES ('125', '15', '4');
INSERT INTO `privilege` VALUES ('126', '15', '5');
INSERT INTO `privilege` VALUES ('127', '15', '6');
INSERT INTO `privilege` VALUES ('128', '15', '13');
INSERT INTO `privilege` VALUES ('129', '15', '14');
INSERT INTO `privilege` VALUES ('130', '15', '15');
INSERT INTO `privilege` VALUES ('131', '1', '16');
INSERT INTO `privilege` VALUES ('132', '1', '17');
INSERT INTO `privilege` VALUES ('133', '12', '16');
INSERT INTO `privilege` VALUES ('134', '12', '17');
INSERT INTO `privilege` VALUES ('146', '3', '4');
INSERT INTO `privilege` VALUES ('147', '3', '5');
INSERT INTO `privilege` VALUES ('148', '3', '6');
INSERT INTO `privilege` VALUES ('149', '3', '10');
INSERT INTO `privilege` VALUES ('150', '3', '12');
INSERT INTO `privilege` VALUES ('151', '3', '13');
INSERT INTO `privilege` VALUES ('152', '3', '14');
INSERT INTO `privilege` VALUES ('153', '3', '15');
INSERT INTO `privilege` VALUES ('154', '4', '1');
INSERT INTO `privilege` VALUES ('155', '4', '2');
INSERT INTO `privilege` VALUES ('156', '4', '3');
INSERT INTO `privilege` VALUES ('157', '4', '4');
INSERT INTO `privilege` VALUES ('158', '4', '5');
INSERT INTO `privilege` VALUES ('159', '4', '6');
INSERT INTO `privilege` VALUES ('160', '4', '13');
INSERT INTO `privilege` VALUES ('161', '4', '14');
INSERT INTO `privilege` VALUES ('162', '4', '15');
INSERT INTO `privilege` VALUES ('163', '7', '4');
INSERT INTO `privilege` VALUES ('164', '7', '5');
INSERT INTO `privilege` VALUES ('165', '7', '13');
INSERT INTO `privilege` VALUES ('166', '7', '14');
INSERT INTO `privilege` VALUES ('167', '7', '15');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleid` int(2) NOT NULL,
  `role` varchar(255) NOT NULL,
  `roleinfo` varchar(255) NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '拥有所有权限');
INSERT INTO `role` VALUES ('2', '讲师（基地）', '负责给基地学生上课');
INSERT INTO `role` VALUES ('3', '讲师（院校）', '负责给学校学生上课');
INSERT INTO `role` VALUES ('4', '教务主管', '负责管理教务');
INSERT INTO `role` VALUES ('5', '教学经理', '管理所有讲师');
INSERT INTO `role` VALUES ('6', '教学总监', '负责管理整个教学部');
INSERT INTO `role` VALUES ('7', '就业专员', '负责就业');
INSERT INTO `role` VALUES ('8', '就业总监', '管理整个就业部');
INSERT INTO `role` VALUES ('9', '市场经理', '管理市场部');
INSERT INTO `role` VALUES ('10', '推广主管', '负责公司的推广');
INSERT INTO `role` VALUES ('11', '网管', '负责公司的网络硬件');
INSERT INTO `role` VALUES ('12', '院校合作经理', '负责院校课程');
INSERT INTO `role` VALUES ('13', '在线客服', '负责客服');
INSERT INTO `role` VALUES ('14', '咨询顾问（市场部）', '给学生提供咨询课程');
INSERT INTO `role` VALUES ('15', '咨询师（渠道）', '负责渠道学生咨询');

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `org_name` varchar(32) DEFAULT NULL COMMENT '组织结构名称',
  `levelcode` varchar(32) DEFAULT NULL COMMENT '组织结构编码',
  `manage_user` varchar(32) DEFAULT NULL COMMENT '机构管理员',
  `manage_uid` int(11) DEFAULT NULL COMMENT '机构管理员用户id',
  `contact_user` varchar(32) DEFAULT NULL COMMENT '联系人',
  `contact_phone` varchar(16) DEFAULT NULL COMMENT '联系电话',
  `contact_address` varchar(128) DEFAULT NULL COMMENT '联系地址',
  `active_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '激活状态：1，激活，2,冻结',
  `car_num` int(11) DEFAULT NULL COMMENT '车辆数量',
  `terminal_num` int(11) DEFAULT NULL COMMENT '设备数量',
  `crt_time` datetime DEFAULT NULL COMMENT '创建时间',
  `crt_uid` int(11) DEFAULT NULL COMMENT '创建人',
  `upd_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `upd_uid` int(11) DEFAULT NULL COMMENT '更新人',
  `old_level_code` varchar(32) DEFAULT NULL COMMENT '旧平台商户部门levelcode',
  `device_type` varchar(255) DEFAULT NULL COMMENT '同步设备类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='组织机构';

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES ('1', '总管理员添加商户1', '1/', '商户1', '3', '商户1联系人', '13111111111', '商户1联系地址', '1', '7', '4', '2018-09-11 12:18:18', '1', '2018-12-12 13:14:23', '1', '1/2013', '22,23,17,16,3');
INSERT INTO `sys_org` VALUES ('2', '总管员添加商户2', '2/', '商户2', '4', '商户2联系人', '13122222222', '商户2联系地址', '1', '0', '4', '2018-09-11 12:19:35', '1', '2018-12-20 15:04:49', '1', null, null);
INSERT INTO `sys_org` VALUES ('3', '成员添加商户1', '3/', 'cysh1', '6', '成员添加商户1联系人', '成员添加商户1联系电话', '成员添加商户1联系地址', '1', null, null, '2018-09-11 13:34:45', '2', '2018-09-14 14:55:53', '1', null, null);
INSERT INTO `sys_org` VALUES ('4', '开发商户', '4/', '123456789', '19', 'zy', '13627652098', '123', '1', '7', '3', '2018-09-29 09:02:24', '1', '2018-12-18 11:39:46', '1', '', '3,22');
INSERT INTO `sys_org` VALUES ('5', 'renwei11', '5/', 'renwei1', '24', 'ddddd', 'ddd', 'dddd', '1', null, '2', '2018-10-13 10:29:50', '1', '2018-11-08 09:46:21', '1', null, null);
INSERT INTO `sys_org` VALUES ('6', '549156', '6/', '6516', '26', '9582', '2592921', '95129', '2', '1', '3', '2018-10-13 15:30:24', '1', '2018-11-22 17:06:27', '1', null, null);
INSERT INTO `sys_org` VALUES ('7', '张霞商户', '7/', 'zxsh', '27', 'zhangxia', '13666666666', '商户联系地址', '1', '0', '1', '2018-10-15 14:01:14', '1', '2018-11-13 14:09:05', '1', '', '22');
INSERT INTO `sys_org` VALUES ('8', 'renwei2', '8/', 'renwei2', '29', '1234', '2222', '2222', '1', null, null, '2018-10-16 13:53:12', '1', '2018-10-16 13:52:50', null, null, null);
INSERT INTO `sys_org` VALUES ('9', '123213', '9/', '123123123123', '38', '123123', '123123', '123123', '1', null, null, '2018-10-29 09:34:41', '1', '2018-10-29 09:34:28', null, null, null);
INSERT INTO `sys_org` VALUES ('10', 'rw', '10/', 'rw', '40', '121', '121', '121', '1', null, null, '2018-10-30 17:46:39', '1', '2018-11-13 08:44:09', '1', null, null);
INSERT INTO `sys_org` VALUES ('11', 'rw1', '11/', 'rw1', '41', '33', '33', '333', '1', null, null, '2018-10-30 17:46:57', '1', '2018-10-30 17:46:47', null, null, null);
INSERT INTO `sys_org` VALUES ('12', '钛捷', '12/', '钛捷管理员', '88', '桂林', '13689466446', '上海-浦东', '1', '5000', '1', '2018-11-06 10:06:51', '1', '2018-11-07 14:58:41', '1', null, null);
INSERT INTO `sys_org` VALUES ('13', '重庆人保财险', '13/', 'ccccccc', '42', '123', '123', '123', '2', null, null, '2018-11-10 17:00:11', '1', '2018-11-16 11:09:30', null, '1/2013/1', '3,22,23,17,16');
INSERT INTO `sys_org` VALUES ('14', '', '14/', '1234512345', '43', '123', '12345678911', '123', '1', null, null, '2018-11-13 09:33:02', '1', '2018-11-13 09:33:03', null, null, null);
INSERT INTO `sys_org` VALUES ('15', 'ces', '15/', '1', '44', '123', '112312', '13123123', '1', null, null, '2018-11-13 11:40:22', '1', '2018-11-16 11:27:47', '1', '1/2013/2', '22,16,23,3');
INSERT INTO `sys_org` VALUES ('16', '重庆伟红名车维修有限公司', '16/', '111', '45', '123', '123', '123', '2', null, null, '2018-11-13 14:04:02', '1', '2018-11-13 14:06:24', '1', '1/617/632', '3');
INSERT INTO `sys_org` VALUES ('17', '重庆伟红名车维修有限公司', '17/', 'sdfsdf', '46', 'sdf', 'sdf', 'fs', '1', null, null, '2018-11-13 14:53:20', '1', '2018-11-13 14:53:20', null, '1/617/632', '3,22');
INSERT INTO `sys_org` VALUES ('18', '重庆金融测试门店', '18/', 'qweqwe', '47', 'asd', 'asd', 'asd', '2', '1', null, '2018-11-14 14:02:03', '1', '2018-12-20 09:06:45', null, '1/807/1778', '22,3,23');
INSERT INTO `sys_org` VALUES ('19', '湖南达田汽车贸易有限公司', '19/', '123123asd', '48', '123', '123', '123', '2', null, null, '2018-11-14 19:35:19', '1', '2018-11-14 19:34:57', null, '1/2215/2453', '22,23,16');
INSERT INTO `sys_org` VALUES ('20', '湖南省常德市', '20/', 'sad123', '49', '123', '123', '123', '1', null, null, '2018-11-20 10:02:50', '1', '2018-11-20 10:37:00', null, '1/10/377', '3');
INSERT INTO `sys_org` VALUES ('21', '常德华运通丰田汽车销售服务有限公司', '21/', '123213123123', '52', '123', '123', '123', '1', null, null, '2018-11-20 10:29:31', '1', '2018-11-20 10:29:15', null, '1/2215/2425', '3,22,23,16,17');
INSERT INTO `sys_org` VALUES ('22', '重庆万家丰田汽车销售服务有限公司', '22/', '1234567890', '54', '111', '111', '1111', '1', null, null, '2018-11-22 20:58:03', '1', '2018-11-22 20:57:49', null, '1/10/41/42/2122', '3,22,23,16,17');
INSERT INTO `sys_org` VALUES ('23', '重庆龙华实业集团众华汽车销售服务有限公司(东风本田)', '23/', 'fsdfsd', '56', '123', '123', '123', '1', null, null, '2018-11-23 19:44:56', '1', '2018-11-23 19:44:44', null, '1/1421/1433', '3,22,23,16,17');

-- ----------------------------
-- Table structure for userole
-- ----------------------------
DROP TABLE IF EXISTS `userole`;
CREATE TABLE `userole` (
  `uroleid` int(3) NOT NULL,
  `uid` int(2) NOT NULL,
  `roleid` int(2) NOT NULL DEFAULT '2',
  PRIMARY KEY (`uroleid`),
  KEY `uroleid` (`roleid`),
  KEY `uuid` (`uid`),
  CONSTRAINT `uroleid` FOREIGN KEY (`roleid`) REFERENCES `role` (`roleid`),
  CONSTRAINT `uuid` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userole
-- ----------------------------
INSERT INTO `userole` VALUES ('1', '10000', '1');
INSERT INTO `userole` VALUES ('2', '10000', '12');
INSERT INTO `userole` VALUES ('3', '10001', '1');
INSERT INTO `userole` VALUES ('4', '10001', '4');
INSERT INTO `userole` VALUES ('5', '10002', '2');
INSERT INTO `userole` VALUES ('6', '10003', '3');
INSERT INTO `userole` VALUES ('7', '10004', '4');
INSERT INTO `userole` VALUES ('8', '10005', '5');
INSERT INTO `userole` VALUES ('9', '10006', '6');
INSERT INTO `userole` VALUES ('10', '10007', '7');
INSERT INTO `userole` VALUES ('11', '10008', '8');
INSERT INTO `userole` VALUES ('12', '10009', '9');
INSERT INTO `userole` VALUES ('13', '10010', '10');
INSERT INTO `userole` VALUES ('14', '10011', '11');
INSERT INTO `userole` VALUES ('15', '10012', '12');
INSERT INTO `userole` VALUES ('16', '10013', '13');
INSERT INTO `userole` VALUES ('17', '10014', '14');
INSERT INTO `userole` VALUES ('18', '10015', '15');
INSERT INTO `userole` VALUES ('19', '10016', '3');
INSERT INTO `userole` VALUES ('20', '10017', '2');
INSERT INTO `userole` VALUES ('21', '10018', '3');
INSERT INTO `userole` VALUES ('22', '10019', '4');
INSERT INTO `userole` VALUES ('23', '10020', '5');
INSERT INTO `userole` VALUES ('24', '10021', '6');
INSERT INTO `userole` VALUES ('25', '10022', '7');
INSERT INTO `userole` VALUES ('26', '10023', '8');
INSERT INTO `userole` VALUES ('27', '10024', '9');
INSERT INTO `userole` VALUES ('28', '10025', '10');
INSERT INTO `userole` VALUES ('29', '10026', '11');
INSERT INTO `userole` VALUES ('30', '10027', '12');
INSERT INTO `userole` VALUES ('31', '10028', '13');
INSERT INTO `userole` VALUES ('32', '10029', '14');
INSERT INTO `userole` VALUES ('33', '10030', '15');
INSERT INTO `userole` VALUES ('34', '10031', '11');
INSERT INTO `userole` VALUES ('35', '10032', '2');
INSERT INTO `userole` VALUES ('36', '10033', '3');
INSERT INTO `userole` VALUES ('37', '10034', '4');
INSERT INTO `userole` VALUES ('38', '10035', '5');
INSERT INTO `userole` VALUES ('39', '10036', '6');
INSERT INTO `userole` VALUES ('40', '10037', '7');
INSERT INTO `userole` VALUES ('41', '10038', '8');
INSERT INTO `userole` VALUES ('42', '10039', '9');
INSERT INTO `userole` VALUES ('43', '10040', '10');
INSERT INTO `userole` VALUES ('44', '10041', '11');
INSERT INTO `userole` VALUES ('45', '10042', '12');
INSERT INTO `userole` VALUES ('46', '10043', '13');
INSERT INTO `userole` VALUES ('47', '10044', '14');
INSERT INTO `userole` VALUES ('48', '10045', '15');
INSERT INTO `userole` VALUES ('49', '10046', '11');
INSERT INTO `userole` VALUES ('50', '10047', '2');
INSERT INTO `userole` VALUES ('51', '10048', '3');
INSERT INTO `userole` VALUES ('52', '10049', '4');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(5) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `upw` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `realname` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `deptid` int(2) NOT NULL,
  `email` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `udeptid` (`deptid`),
  CONSTRAINT `udeptid` FOREIGN KEY (`deptid`) REFERENCES `depart` (`deptid`)
) ENGINE=InnoDB AUTO_INCREMENT=10058 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('10000', 'taomee', '888888', '012c4741dff14e8bb12824cd2179b6c4', '罗涛', '男', '21', '5001640@qq.com', null);
INSERT INTO `users` VALUES ('10001', '包万春', '888888', '', '包万春', '女', '21', '5001235@qq.com', null);
INSERT INTO `users` VALUES ('10002', '鲍成东', '888888', '', '鲍成东', '男', '22', '5001236@qq.com', null);
INSERT INTO `users` VALUES ('10003', '蔡宗平', '888888', '', '蔡宗平', '男', '23', '5001237@qq.com', null);
INSERT INTO `users` VALUES ('10004', '陈新建', '888888', '', '陈新建', '男', '24', '5001238@qq.com', null);
INSERT INTO `users` VALUES ('10005', '陈子烨', '888888', '', '陈子烨', '男', '25', '5001239@qq.com', null);
INSERT INTO `users` VALUES ('10006', '杜家柱', '888888', '', '杜家柱', '男', '21', '5001240@qq.com', null);
INSERT INTO `users` VALUES ('10007', '高峰', '888888', 'dda78eeefb0c47ad98575203721cec2e', '高峰', '男', '21', '5001241@qq.com', null);
INSERT INTO `users` VALUES ('10008', '高鹏', '888888', '', '高鹏', '男', '21', '5001242@qq.com', null);
INSERT INTO `users` VALUES ('10009', '郭诚', '888888', '', '郭诚', '男', '21', '5001243@qq.com', null);
INSERT INTO `users` VALUES ('10010', '何文伍', '888888', '6593da9abd92456181413f9d0deb81ce', '何文伍', '男', '21', '5001244@qq.com', null);
INSERT INTO `users` VALUES ('10011', '黄冰', '888888', 'a34542b5f25342ecbdcce488414892fb', '黄冰', '女', '23', '5001245@qq.com', 'img+url');
INSERT INTO `users` VALUES ('10012', '黄金华', '888888', '', '黄金华', '男', '23', '5001246@qq.com', null);
INSERT INTO `users` VALUES ('10013', '黄星智', '888888', '', '黄星智', '男', '23', '5001247@qq.com', null);
INSERT INTO `users` VALUES ('10014', '江秋旭', '888888', '', '江秋旭', '男', '23', '5001248@qq.com', null);
INSERT INTO `users` VALUES ('10015', '蒋士虎', '888888', '', '蒋士虎', '男', '23', '5001249@qq.com', null);
INSERT INTO `users` VALUES ('10016', '雷军亚', '888888', '', '雷军亚', '男', '23', '5001250@qq.com', null);
INSERT INTO `users` VALUES ('10017', '黎军', '888888', '', '黎军', '男', '23', '5001251@qq.com', null);
INSERT INTO `users` VALUES ('10018', '李杰', '888888', '', '李杰', '男', '24', '5001252@qq.com', null);
INSERT INTO `users` VALUES ('10019', '李莉梅', '888888', '', '李莉梅', '女', '24', '5001253@qq.com', null);
INSERT INTO `users` VALUES ('10020', '李祈芳', '888888', '', '李祈芳', '女', '24', '5001254@qq.com', null);
INSERT INTO `users` VALUES ('10021', '李启明', '888888', '', '李启明', '男', '24', '5001255@qq.com', null);
INSERT INTO `users` VALUES ('10022', '李绪强', '888888', '', '李绪强', '男', '24', '5001256@qq.com', null);
INSERT INTO `users` VALUES ('10023', '刘龙光', '888888', '', '刘龙光', '男', '24', '5001257@qq.com', null);
INSERT INTO `users` VALUES ('10024', '毛渝', '888888', '', '毛渝', '男', '24', '5001258@qq.com', null);
INSERT INTO `users` VALUES ('10025', '潘宝俊', '888888', '', '潘宝俊', '男', '22', '5001259@qq.com', null);
INSERT INTO `users` VALUES ('10026', '任辉敏', '888888', '', '任辉敏', '女', '22', '5001260@qq.com', null);
INSERT INTO `users` VALUES ('10027', '石柳青', '888888', '', '石柳青', '女', '22', '5001261@qq.com', null);
INSERT INTO `users` VALUES ('10028', '宋建华', '888888', '', '宋建华', '男', '22', '5001262@qq.com', null);
INSERT INTO `users` VALUES ('10029', '覃道胜', '888888', '', '覃道胜', '男', '22', '5001263@qq.com', null);
INSERT INTO `users` VALUES ('10030', '王改霞', '888888', '', '王改霞', '女', '22', '5001264@qq.com', null);
INSERT INTO `users` VALUES ('10031', '王明星', '888888', '', '王明星', '男', '25', '5001265@qq.com', null);
INSERT INTO `users` VALUES ('10032', '魏立博', '888888', '', '魏立博', '男', '25', '5001266@qq.com', null);
INSERT INTO `users` VALUES ('10033', '吴国安', '888888', '', '吴国安', '男', '25', '5001267@qq.com', null);
INSERT INTO `users` VALUES ('10034', '徐珊珊', '888888', '', '徐珊珊', '女', '25', '5001268@qq.com', null);
INSERT INTO `users` VALUES ('10035', '徐婉芳', '888888', '', '徐婉芳', '女', '25', '5001269@qq.com', null);
INSERT INTO `users` VALUES ('10036', '徐宇', '888888', 'e76462fca9d8455d9846bc3692e15a78', '徐宇', '男', '25', '5001270@qq.com', null);
INSERT INTO `users` VALUES ('10037', '鄢腾', '888888', '', '鄢腾', '男', '25', '5001271@qq.com', null);
INSERT INTO `users` VALUES ('10038', '杨桂英', '888888', '', '杨桂英', '女', '25', '5001272@qq.com', null);
INSERT INTO `users` VALUES ('10039', '杨萍', '888888', '', '杨萍', '男', '21', '5001273@qq.com', null);
INSERT INTO `users` VALUES ('10040', '杨晔', '888888', '', '杨晔', '女', '21', '5001274@qq.com', null);
INSERT INTO `users` VALUES ('10041', '喻佺', '888888', '', '喻佺', '男', '21', '5001275@qq.com', null);
INSERT INTO `users` VALUES ('10042', '袁昊杰', '888888', '', '袁昊杰', '男', '24', '5001276@qq.com', null);
INSERT INTO `users` VALUES ('10043', '张良泽', '888888', '', '张良泽', '男', '24', '5001277@qq.com', null);
INSERT INTO `users` VALUES ('10044', '张梅杰', '888888', '', '张梅杰', '男', '22', '5001278@qq.com', null);
INSERT INTO `users` VALUES ('10045', '赵剑波', '888888', '', '赵剑波', '男', '22', '5001279@qq.com', null);
INSERT INTO `users` VALUES ('10046', '赵雪尔', '888888', '', '赵雪尔', '女', '24', '5001280@qq.com', null);
INSERT INTO `users` VALUES ('10047', '周小飞', '888888', '', '周小飞', '男', '24', '5001281@qq.com', null);
INSERT INTO `users` VALUES ('10048', '周长静', '888888', '', '周长静', '女', '22', '5001282@qq.com', null);
INSERT INTO `users` VALUES ('10049', '朱训兵', '888888', '', '朱训兵', '男', '22', '5001283@qq.com', null);
