/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : oa

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-05-01 23:25:14
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
  PRIMARY KEY (`uid`),
  KEY `udeptid` (`deptid`),
  CONSTRAINT `udeptid` FOREIGN KEY (`deptid`) REFERENCES `depart` (`deptid`)
) ENGINE=InnoDB AUTO_INCREMENT=10058 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('10000', 'taomee', '888888', '012c4741dff14e8bb12824cd2179b6c4', '罗涛', '男', '21', '5001640@qq.com');
INSERT INTO `users` VALUES ('10001', '包万春', '888888', '', '包万春', '女', '21', '5001235@qq.com');
INSERT INTO `users` VALUES ('10002', '鲍成东', '888888', '', '鲍成东', '男', '22', '5001236@qq.com');
INSERT INTO `users` VALUES ('10003', '蔡宗平', '888888', '', '蔡宗平', '男', '23', '5001237@qq.com');
INSERT INTO `users` VALUES ('10004', '陈新建', '888888', '', '陈新建', '男', '24', '5001238@qq.com');
INSERT INTO `users` VALUES ('10005', '陈子烨', '888888', '', '陈子烨', '男', '25', '5001239@qq.com');
INSERT INTO `users` VALUES ('10006', '杜家柱', '888888', '', '杜家柱', '男', '21', '5001240@qq.com');
INSERT INTO `users` VALUES ('10007', '高峰', '888888', 'dda78eeefb0c47ad98575203721cec2e', '高峰', '男', '21', '5001241@qq.com');
INSERT INTO `users` VALUES ('10008', '高鹏', '888888', '', '高鹏', '男', '21', '5001242@qq.com');
INSERT INTO `users` VALUES ('10009', '郭诚', '888888', '', '郭诚', '男', '21', '5001243@qq.com');
INSERT INTO `users` VALUES ('10010', '何文伍', '888888', '6593da9abd92456181413f9d0deb81ce', '何文伍', '男', '21', '5001244@qq.com');
INSERT INTO `users` VALUES ('10011', '黄冰', '888888', 'a34542b5f25342ecbdcce488414892fb', '黄冰', '女', '23', '5001245@qq.com');
INSERT INTO `users` VALUES ('10012', '黄金华', '888888', '', '黄金华', '男', '23', '5001246@qq.com');
INSERT INTO `users` VALUES ('10013', '黄星智', '888888', '', '黄星智', '男', '23', '5001247@qq.com');
INSERT INTO `users` VALUES ('10014', '江秋旭', '888888', '', '江秋旭', '男', '23', '5001248@qq.com');
INSERT INTO `users` VALUES ('10015', '蒋士虎', '888888', '', '蒋士虎', '男', '23', '5001249@qq.com');
INSERT INTO `users` VALUES ('10016', '雷军亚', '888888', '', '雷军亚', '男', '23', '5001250@qq.com');
INSERT INTO `users` VALUES ('10017', '黎军', '888888', '', '黎军', '男', '23', '5001251@qq.com');
INSERT INTO `users` VALUES ('10018', '李杰', '888888', '', '李杰', '男', '24', '5001252@qq.com');
INSERT INTO `users` VALUES ('10019', '李莉梅', '888888', '', '李莉梅', '女', '24', '5001253@qq.com');
INSERT INTO `users` VALUES ('10020', '李祈芳', '888888', '', '李祈芳', '女', '24', '5001254@qq.com');
INSERT INTO `users` VALUES ('10021', '李启明', '888888', '', '李启明', '男', '24', '5001255@qq.com');
INSERT INTO `users` VALUES ('10022', '李绪强', '888888', '', '李绪强', '男', '24', '5001256@qq.com');
INSERT INTO `users` VALUES ('10023', '刘龙光', '888888', '', '刘龙光', '男', '24', '5001257@qq.com');
INSERT INTO `users` VALUES ('10024', '毛渝', '888888', '', '毛渝', '男', '24', '5001258@qq.com');
INSERT INTO `users` VALUES ('10025', '潘宝俊', '888888', '', '潘宝俊', '男', '22', '5001259@qq.com');
INSERT INTO `users` VALUES ('10026', '任辉敏', '888888', '', '任辉敏', '女', '22', '5001260@qq.com');
INSERT INTO `users` VALUES ('10027', '石柳青', '888888', '', '石柳青', '女', '22', '5001261@qq.com');
INSERT INTO `users` VALUES ('10028', '宋建华', '888888', '', '宋建华', '男', '22', '5001262@qq.com');
INSERT INTO `users` VALUES ('10029', '覃道胜', '888888', '', '覃道胜', '男', '22', '5001263@qq.com');
INSERT INTO `users` VALUES ('10030', '王改霞', '888888', '', '王改霞', '女', '22', '5001264@qq.com');
INSERT INTO `users` VALUES ('10031', '王明星', '888888', '', '王明星', '男', '25', '5001265@qq.com');
INSERT INTO `users` VALUES ('10032', '魏立博', '888888', '', '魏立博', '男', '25', '5001266@qq.com');
INSERT INTO `users` VALUES ('10033', '吴国安', '888888', '', '吴国安', '男', '25', '5001267@qq.com');
INSERT INTO `users` VALUES ('10034', '徐珊珊', '888888', '', '徐珊珊', '女', '25', '5001268@qq.com');
INSERT INTO `users` VALUES ('10035', '徐婉芳', '888888', '', '徐婉芳', '女', '25', '5001269@qq.com');
INSERT INTO `users` VALUES ('10036', '徐宇', '888888', 'e76462fca9d8455d9846bc3692e15a78', '徐宇', '男', '25', '5001270@qq.com');
INSERT INTO `users` VALUES ('10037', '鄢腾', '888888', '', '鄢腾', '男', '25', '5001271@qq.com');
INSERT INTO `users` VALUES ('10038', '杨桂英', '888888', '', '杨桂英', '女', '25', '5001272@qq.com');
INSERT INTO `users` VALUES ('10039', '杨萍', '888888', '', '杨萍', '男', '21', '5001273@qq.com');
INSERT INTO `users` VALUES ('10040', '杨晔', '888888', '', '杨晔', '女', '21', '5001274@qq.com');
INSERT INTO `users` VALUES ('10041', '喻佺', '888888', '', '喻佺', '男', '21', '5001275@qq.com');
INSERT INTO `users` VALUES ('10042', '袁昊杰', '888888', '', '袁昊杰', '男', '24', '5001276@qq.com');
INSERT INTO `users` VALUES ('10043', '张良泽', '888888', '', '张良泽', '男', '24', '5001277@qq.com');
INSERT INTO `users` VALUES ('10044', '张梅杰', '888888', '', '张梅杰', '男', '22', '5001278@qq.com');
INSERT INTO `users` VALUES ('10045', '赵剑波', '888888', '', '赵剑波', '男', '22', '5001279@qq.com');
INSERT INTO `users` VALUES ('10046', '赵雪尔', '888888', '', '赵雪尔', '女', '24', '5001280@qq.com');
INSERT INTO `users` VALUES ('10047', '周小飞', '888888', '', '周小飞', '男', '24', '5001281@qq.com');
INSERT INTO `users` VALUES ('10048', '周长静', '888888', '', '周长静', '女', '22', '5001282@qq.com');
INSERT INTO `users` VALUES ('10049', '朱训兵', '888888', '', '朱训兵', '男', '22', '5001283@qq.com');
