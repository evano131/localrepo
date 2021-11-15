/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : talent_pool

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-11-15 08:28:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_pass` varchar(255) DEFAULT NULL,
  `admin_nickname` varchar(255) DEFAULT NULL,
  `admin_email` varchar(50) DEFAULT NULL COMMENT '用户邮箱',
  `admin_status` tinyint(3) DEFAULT NULL COMMENT '用户状态',
  `creator_name` varchar(50) DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(6) DEFAULT NULL COMMENT '创建时间',
  `last_updatetime` datetime(6) DEFAULT NULL COMMENT '最后更新时间',
  `last_updater` varchar(50) DEFAULT NULL COMMENT '最后更新人',
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '$2a$10$TcgqJ7kFuYnM4Py280RqSOSbINS0EXPrmXk8r/3hXgTD0vt5dzGAi', 'admin', '', '0', '', null, null, null);
INSERT INTO `admin` VALUES ('2', 'xxx', '$2a$10$TcgqJ7kFuYnM4Py280RqSOSbINS0EXPrmXk8r/3hXgTD0vt5dzGAi', 'xxx', '', '0', '', null, null, null);
INSERT INTO `admin` VALUES ('3', 'yyy', '$2a$10$TcgqJ7kFuYnM4Py280RqSOSbINS0EXPrmXk8r/3hXgTD0vt5dzGAi', 'yyy', '', '0', '', null, null, null);
INSERT INTO `admin` VALUES ('4', 'yty', '$2a$10$s51GeiiHY8DIpB3zEo8A2.gAnGOb.oRvO3o7qXWa7cG4p8njPYgJa', '于通宇', '', '0', '', null, null, null);
INSERT INTO `admin` VALUES ('6', 'ei6466', '$2a$10$YHng3QjbhFrBTekfqlv7H.oOkHt46lTtQRdk3cOkyRKxnc24pYkJC', '炉石', '', '0', '', null, null, null);
INSERT INTO `admin` VALUES ('7', '1378379304', '$2a$10$mjgfKR8ZVkAo/bWbopyV3u1fs4DMWcb12tZwkNw52npixflLw2ye.', 'ei6466808', '', '0', '', null, null, null);

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `admin_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1', '1');
INSERT INTO `admin_role` VALUES ('2', '15');
INSERT INTO `admin_role` VALUES ('3', '13');
INSERT INTO `admin_role` VALUES ('4', '1');
INSERT INTO `admin_role` VALUES ('5', '12');
INSERT INTO `admin_role` VALUES ('6', '19');
INSERT INTO `admin_role` VALUES ('7', '1');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '人事管理', '', null);
INSERT INTO `menu` VALUES ('2', '职位管理', '', null);
INSERT INTO `menu` VALUES ('3', '简历管理', '', null);
INSERT INTO `menu` VALUES ('4', '其他设置', '', null);
INSERT INTO `menu` VALUES ('5', '站点管理', '', null);
INSERT INTO `menu` VALUES ('6', '系统管理', '', null);
INSERT INTO `menu` VALUES ('7', '员工管理', '/admin/admin', '1');
INSERT INTO `menu` VALUES ('8', '角色管理', '/role/admin', '1');
INSERT INTO `menu` VALUES ('9', '客户信息', '/user/admin', '2');
INSERT INTO `menu` VALUES ('10', '客户订单', '/userorder/admin', '2');
INSERT INTO `menu` VALUES ('11', '客户预购', '/cart/admin', '2');
INSERT INTO `menu` VALUES ('12', '客户收藏', '/favorite/admin', '2');
INSERT INTO `menu` VALUES ('13', '品牌管理', '/brand/admin', '3');
INSERT INTO `menu` VALUES ('14', '分类管理', '/category/admin', '3');
INSERT INTO `menu` VALUES ('15', '规格管理', '/sku/admin', '3');
INSERT INTO `menu` VALUES ('16', '参数管理', '/attr/admin', '3');
INSERT INTO `menu` VALUES ('17', '产品管理', '/spu/admin', '3');
INSERT INTO `menu` VALUES ('18', '订单信息', '/order/admin', '4');
INSERT INTO `menu` VALUES ('19', '产品报表', '/spuorder/admin', '4');
INSERT INTO `menu` VALUES ('20', '分类报表', '/categoryorder/admin', '4');
INSERT INTO `menu` VALUES ('21', '品牌报表', '/brandorder/admin', '4');
INSERT INTO `menu` VALUES ('22', '轮播管理', '/banner/admin', '5');
INSERT INTO `menu` VALUES ('23', '在线客服', '/service/admin', '5');
INSERT INTO `menu` VALUES ('25', '系统设置', '/system/admin', '6');

-- ----------------------------
-- Table structure for operate
-- ----------------------------
DROP TABLE IF EXISTS `operate`;
CREATE TABLE `operate` (
  `operate_id` int(11) NOT NULL AUTO_INCREMENT,
  `operate_name` varchar(255) DEFAULT NULL,
  `operate_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`operate_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of operate
-- ----------------------------
INSERT INTO `operate` VALUES ('7', '员工管理', '/admin/admin');
INSERT INTO `operate` VALUES ('8', '角色管理', '/role/admin');
INSERT INTO `operate` VALUES ('9', '客户信息', '/user/admin');
INSERT INTO `operate` VALUES ('10', '客户订单', '/userorder/admin');
INSERT INTO `operate` VALUES ('11', '客户预购', '/cart/admin');
INSERT INTO `operate` VALUES ('12', '客户收藏', '/favorite/admin');
INSERT INTO `operate` VALUES ('13', '品牌管理', '/brand/admin');
INSERT INTO `operate` VALUES ('14', '分类管理', '/category/admin');
INSERT INTO `operate` VALUES ('15', '规格管理', '/sku/admin');
INSERT INTO `operate` VALUES ('16', '参数管理', '/attr/admin');
INSERT INTO `operate` VALUES ('17', '产品管理', '/spu/admin');
INSERT INTO `operate` VALUES ('18', '订单信息', '/order/admin');
INSERT INTO `operate` VALUES ('19', '产品报表', '/spuorder/admin');
INSERT INTO `operate` VALUES ('20', '分类报表', '/categoryorder/admin');
INSERT INTO `operate` VALUES ('21', '品牌报表', '/brandorder/admin');
INSERT INTO `operate` VALUES ('22', '轮播管理', '/banner/admin');
INSERT INTO `operate` VALUES ('23', '在线客服', '/service/admin');
INSERT INTO `operate` VALUES ('24', '站点信息', '/website/admin');
INSERT INTO `operate` VALUES ('25', '系统设置', '/system/admin');
INSERT INTO `operate` VALUES ('26', '添加员工', '/admin/add');
INSERT INTO `operate` VALUES ('27', '修改员工', '/admin/update');
INSERT INTO `operate` VALUES ('28', '删除员工', '/admin/delete');
INSERT INTO `operate` VALUES ('29', '添加角色', '/role/add');
INSERT INTO `operate` VALUES ('30', '修改角色', '/role/update');
INSERT INTO `operate` VALUES ('31', '删除角色', '/role/delete');
INSERT INTO `operate` VALUES ('32', '添加品牌', '/brand/add');
INSERT INTO `operate` VALUES ('33', '修改品牌', '/brand/update');
INSERT INTO `operate` VALUES ('34', '删除品牌', '/brand/delete');
INSERT INTO `operate` VALUES ('35', '添加分类', '/category/add');
INSERT INTO `operate` VALUES ('36', '修改分类', '/category/update');
INSERT INTO `operate` VALUES ('37', '删除分类', '/category/delete');
INSERT INTO `operate` VALUES ('38', '添加规格', '/sku/add');
INSERT INTO `operate` VALUES ('39', '修改规格', '/sku/update');
INSERT INTO `operate` VALUES ('40', '删除规格', '/sku/delete');
INSERT INTO `operate` VALUES ('41', '添加参数', '/attr/add');
INSERT INTO `operate` VALUES ('42', '修改参数', '/attr/update');
INSERT INTO `operate` VALUES ('43', '删除参数', '/attr/delete');
INSERT INTO `operate` VALUES ('44', '添加产品', '/spu/add');
INSERT INTO `operate` VALUES ('45', '修改产品', '/spu/update');
INSERT INTO `operate` VALUES ('46', '删除产品', '/spu/delete');
INSERT INTO `operate` VALUES ('47', '修改订单', '/order/update');
INSERT INTO `operate` VALUES ('48', '添加轮播', '/banner/add');
INSERT INTO `operate` VALUES ('49', '修改轮播', '/banner/update');
INSERT INTO `operate` VALUES ('50', '删除轮播', '/banner/delete');
INSERT INTO `operate` VALUES ('51', '添加客服', '/service/add');
INSERT INTO `operate` VALUES ('52', '修改客服', '/service/update');
INSERT INTO `operate` VALUES ('53', '删除客服', '/service/delete');
INSERT INTO `operate` VALUES ('54', '添加员工执行', '/admin/save');
INSERT INTO `operate` VALUES ('55', '修改员工执行', '/admin/alter');
INSERT INTO `operate` VALUES ('56', '添加角色执行', '/role/save');
INSERT INTO `operate` VALUES ('57', '修改角色执行', '/role/alter');
INSERT INTO `operate` VALUES ('58', '添加品牌执行', '/brand/save');
INSERT INTO `operate` VALUES ('59', '修改品牌执行', '/brand/alter');
INSERT INTO `operate` VALUES ('60', '添加分类执行', '/category/save');
INSERT INTO `operate` VALUES ('61', '修改分类执行', '/category/alter');
INSERT INTO `operate` VALUES ('62', '添加规格执行', '/sku/save');
INSERT INTO `operate` VALUES ('63', '修改规格执行', '/sku/alter');
INSERT INTO `operate` VALUES ('64', '添加参数执行', '/attr/save');
INSERT INTO `operate` VALUES ('65', '修改参数执行', '/attr/alter');
INSERT INTO `operate` VALUES ('66', '添加产品执行', '/spu/save');
INSERT INTO `operate` VALUES ('67', '修改产品执行', '/spu/alter');
INSERT INTO `operate` VALUES ('68', '修改订单执行', '/order/alter');
INSERT INTO `operate` VALUES ('69', '添加轮播执行', '/banner/save');
INSERT INTO `operate` VALUES ('70', '修改轮播执行', '/banner/alter');
INSERT INTO `operate` VALUES ('71', '添加客服执行', '/service/save');
INSERT INTO `operate` VALUES ('72', '修改客服执行', '/service/alter');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`permission_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '人事管理', null);
INSERT INTO `permission` VALUES ('2', '客户管理', null);
INSERT INTO `permission` VALUES ('3', '产品管理', null);
INSERT INTO `permission` VALUES ('4', '订单管理', null);
INSERT INTO `permission` VALUES ('5', '站点管理', null);
INSERT INTO `permission` VALUES ('6', '系统管理', null);
INSERT INTO `permission` VALUES ('7', '员工管理', '1');
INSERT INTO `permission` VALUES ('8', '角色管理', '1');
INSERT INTO `permission` VALUES ('9', '客户信息', '2');
INSERT INTO `permission` VALUES ('10', '客户订单', '2');
INSERT INTO `permission` VALUES ('11', '客户预购', '2');
INSERT INTO `permission` VALUES ('12', '客户收藏', '2');
INSERT INTO `permission` VALUES ('13', '品牌管理', '3');
INSERT INTO `permission` VALUES ('14', '分类管理', '3');
INSERT INTO `permission` VALUES ('15', '规格管理', '3');
INSERT INTO `permission` VALUES ('16', '参数管理', '3');
INSERT INTO `permission` VALUES ('17', '产品管理', '3');
INSERT INTO `permission` VALUES ('18', '订单信息', '4');
INSERT INTO `permission` VALUES ('19', '产品报表', '4');
INSERT INTO `permission` VALUES ('20', '分类报表', '4');
INSERT INTO `permission` VALUES ('21', '品牌报表', '4');
INSERT INTO `permission` VALUES ('22', '轮播管理', '5');
INSERT INTO `permission` VALUES ('23', '在线客服', '5');
INSERT INTO `permission` VALUES ('24', '站点信息', '5');
INSERT INTO `permission` VALUES ('25', '系统设置', '6');
INSERT INTO `permission` VALUES ('26', '添加员工', '7');
INSERT INTO `permission` VALUES ('27', '修改员工', '7');
INSERT INTO `permission` VALUES ('28', '删除员工', '7');
INSERT INTO `permission` VALUES ('29', '添加角色', '8');
INSERT INTO `permission` VALUES ('30', '修改角色', '8');
INSERT INTO `permission` VALUES ('31', '删除角色', '8');
INSERT INTO `permission` VALUES ('32', '添加品牌', '13');
INSERT INTO `permission` VALUES ('33', '修改品牌', '13');
INSERT INTO `permission` VALUES ('34', '删除品牌', '13');
INSERT INTO `permission` VALUES ('35', '添加分类', '14');
INSERT INTO `permission` VALUES ('36', '修改分类', '14');
INSERT INTO `permission` VALUES ('37', '删除分类', '14');
INSERT INTO `permission` VALUES ('38', '添加规格', '15');
INSERT INTO `permission` VALUES ('39', '修改规格', '15');
INSERT INTO `permission` VALUES ('40', '删除规格', '15');
INSERT INTO `permission` VALUES ('41', '添加参数', '16');
INSERT INTO `permission` VALUES ('42', '修改参数', '16');
INSERT INTO `permission` VALUES ('43', '删除参数', '16');
INSERT INTO `permission` VALUES ('44', '添加产品', '17');
INSERT INTO `permission` VALUES ('45', '修改产品', '17');
INSERT INTO `permission` VALUES ('46', '删除产品', '17');
INSERT INTO `permission` VALUES ('47', '修改订单', '18');
INSERT INTO `permission` VALUES ('48', '添加轮播', '22');
INSERT INTO `permission` VALUES ('49', '修改轮播', '22');
INSERT INTO `permission` VALUES ('50', '删除轮播', '22');
INSERT INTO `permission` VALUES ('51', '添加客服', '23');
INSERT INTO `permission` VALUES ('52', '修改客服', '23');
INSERT INTO `permission` VALUES ('53', '删除客服', '23');

-- ----------------------------
-- Table structure for permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `permission_menu`;
CREATE TABLE `permission_menu` (
  `permission_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of permission_menu
-- ----------------------------
INSERT INTO `permission_menu` VALUES ('1', '1');
INSERT INTO `permission_menu` VALUES ('2', '2');
INSERT INTO `permission_menu` VALUES ('3', '3');
INSERT INTO `permission_menu` VALUES ('4', '4');
INSERT INTO `permission_menu` VALUES ('5', '5');
INSERT INTO `permission_menu` VALUES ('6', '6');
INSERT INTO `permission_menu` VALUES ('7', '7');
INSERT INTO `permission_menu` VALUES ('8', '8');
INSERT INTO `permission_menu` VALUES ('9', '9');
INSERT INTO `permission_menu` VALUES ('10', '10');
INSERT INTO `permission_menu` VALUES ('11', '11');
INSERT INTO `permission_menu` VALUES ('12', '12');
INSERT INTO `permission_menu` VALUES ('13', '13');
INSERT INTO `permission_menu` VALUES ('14', '14');
INSERT INTO `permission_menu` VALUES ('15', '15');
INSERT INTO `permission_menu` VALUES ('16', '16');
INSERT INTO `permission_menu` VALUES ('17', '17');
INSERT INTO `permission_menu` VALUES ('18', '18');
INSERT INTO `permission_menu` VALUES ('19', '19');
INSERT INTO `permission_menu` VALUES ('20', '20');
INSERT INTO `permission_menu` VALUES ('21', '21');
INSERT INTO `permission_menu` VALUES ('22', '22');
INSERT INTO `permission_menu` VALUES ('23', '23');
INSERT INTO `permission_menu` VALUES ('24', '24');
INSERT INTO `permission_menu` VALUES ('25', '25');

-- ----------------------------
-- Table structure for permission_operate
-- ----------------------------
DROP TABLE IF EXISTS `permission_operate`;
CREATE TABLE `permission_operate` (
  `permission_id` int(11) DEFAULT NULL,
  `operate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of permission_operate
-- ----------------------------
INSERT INTO `permission_operate` VALUES ('7', '7');
INSERT INTO `permission_operate` VALUES ('8', '8');
INSERT INTO `permission_operate` VALUES ('9', '9');
INSERT INTO `permission_operate` VALUES ('10', '10');
INSERT INTO `permission_operate` VALUES ('11', '11');
INSERT INTO `permission_operate` VALUES ('12', '12');
INSERT INTO `permission_operate` VALUES ('13', '13');
INSERT INTO `permission_operate` VALUES ('14', '14');
INSERT INTO `permission_operate` VALUES ('15', '15');
INSERT INTO `permission_operate` VALUES ('16', '16');
INSERT INTO `permission_operate` VALUES ('17', '17');
INSERT INTO `permission_operate` VALUES ('18', '18');
INSERT INTO `permission_operate` VALUES ('19', '19');
INSERT INTO `permission_operate` VALUES ('20', '20');
INSERT INTO `permission_operate` VALUES ('21', '21');
INSERT INTO `permission_operate` VALUES ('22', '22');
INSERT INTO `permission_operate` VALUES ('23', '23');
INSERT INTO `permission_operate` VALUES ('24', '24');
INSERT INTO `permission_operate` VALUES ('25', '25');
INSERT INTO `permission_operate` VALUES ('26', '26');
INSERT INTO `permission_operate` VALUES ('27', '27');
INSERT INTO `permission_operate` VALUES ('28', '28');
INSERT INTO `permission_operate` VALUES ('29', '29');
INSERT INTO `permission_operate` VALUES ('30', '30');
INSERT INTO `permission_operate` VALUES ('31', '31');
INSERT INTO `permission_operate` VALUES ('32', '32');
INSERT INTO `permission_operate` VALUES ('33', '33');
INSERT INTO `permission_operate` VALUES ('34', '34');
INSERT INTO `permission_operate` VALUES ('35', '35');
INSERT INTO `permission_operate` VALUES ('36', '36');
INSERT INTO `permission_operate` VALUES ('37', '37');
INSERT INTO `permission_operate` VALUES ('38', '38');
INSERT INTO `permission_operate` VALUES ('39', '39');
INSERT INTO `permission_operate` VALUES ('40', '40');
INSERT INTO `permission_operate` VALUES ('41', '41');
INSERT INTO `permission_operate` VALUES ('42', '42');
INSERT INTO `permission_operate` VALUES ('43', '43');
INSERT INTO `permission_operate` VALUES ('44', '44');
INSERT INTO `permission_operate` VALUES ('45', '45');
INSERT INTO `permission_operate` VALUES ('46', '46');
INSERT INTO `permission_operate` VALUES ('47', '47');
INSERT INTO `permission_operate` VALUES ('48', '48');
INSERT INTO `permission_operate` VALUES ('49', '49');
INSERT INTO `permission_operate` VALUES ('50', '50');
INSERT INTO `permission_operate` VALUES ('51', '51');
INSERT INTO `permission_operate` VALUES ('52', '52');
INSERT INTO `permission_operate` VALUES ('53', '53');
INSERT INTO `permission_operate` VALUES ('26', '54');
INSERT INTO `permission_operate` VALUES ('27', '55');
INSERT INTO `permission_operate` VALUES ('29', '56');
INSERT INTO `permission_operate` VALUES ('30', '57');
INSERT INTO `permission_operate` VALUES ('32', '58');
INSERT INTO `permission_operate` VALUES ('33', '59');
INSERT INTO `permission_operate` VALUES ('35', '60');
INSERT INTO `permission_operate` VALUES ('36', '61');
INSERT INTO `permission_operate` VALUES ('38', '62');
INSERT INTO `permission_operate` VALUES ('39', '63');
INSERT INTO `permission_operate` VALUES ('41', '64');
INSERT INTO `permission_operate` VALUES ('42', '65');
INSERT INTO `permission_operate` VALUES ('44', '66');
INSERT INTO `permission_operate` VALUES ('45', '67');
INSERT INTO `permission_operate` VALUES ('47', '68');
INSERT INTO `permission_operate` VALUES ('48', '69');
INSERT INTO `permission_operate` VALUES ('49', '70');
INSERT INTO `permission_operate` VALUES ('51', '71');
INSERT INTO `permission_operate` VALUES ('52', '72');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '系统管理员');
INSERT INTO `role` VALUES ('2', '人事经理');
INSERT INTO `role` VALUES ('3', '面试管理员');
INSERT INTO `role` VALUES ('4', '业务分管副总经理');
INSERT INTO `role` VALUES ('5', '市场经理');
INSERT INTO `role` VALUES ('6', '销售经理');
INSERT INTO `role` VALUES ('7', '产品经理');
INSERT INTO `role` VALUES ('8', '人力资源经理');
INSERT INTO `role` VALUES ('9', '财务经理');
INSERT INTO `role` VALUES ('10', '物流经理');
INSERT INTO `role` VALUES ('11', '售后服务经理');
INSERT INTO `role` VALUES ('12', '市场专员');
INSERT INTO `role` VALUES ('13', '销售专员');
INSERT INTO `role` VALUES ('14', '人事专员');
INSERT INTO `role` VALUES ('15', '产品专员');
INSERT INTO `role` VALUES ('16', '会计');
INSERT INTO `role` VALUES ('17', '配送专员');
INSERT INTO `role` VALUES ('18', '仓库管理');
INSERT INTO `role` VALUES ('19', '客服专员');
INSERT INTO `role` VALUES (null, '');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1');
INSERT INTO `role_permission` VALUES ('1', '2');
INSERT INTO `role_permission` VALUES ('1', '3');
INSERT INTO `role_permission` VALUES ('1', '4');
INSERT INTO `role_permission` VALUES ('1', '5');
INSERT INTO `role_permission` VALUES ('1', '6');
INSERT INTO `role_permission` VALUES ('1', '7');
INSERT INTO `role_permission` VALUES ('1', '8');
INSERT INTO `role_permission` VALUES ('1', '9');
INSERT INTO `role_permission` VALUES ('1', '10');
INSERT INTO `role_permission` VALUES ('1', '11');
INSERT INTO `role_permission` VALUES ('1', '12');
INSERT INTO `role_permission` VALUES ('1', '13');
INSERT INTO `role_permission` VALUES ('1', '14');
INSERT INTO `role_permission` VALUES ('1', '15');
INSERT INTO `role_permission` VALUES ('1', '16');
INSERT INTO `role_permission` VALUES ('1', '17');
INSERT INTO `role_permission` VALUES ('1', '18');
INSERT INTO `role_permission` VALUES ('1', '19');
INSERT INTO `role_permission` VALUES ('1', '20');
INSERT INTO `role_permission` VALUES ('1', '21');
INSERT INTO `role_permission` VALUES ('1', '22');
INSERT INTO `role_permission` VALUES ('1', '23');
INSERT INTO `role_permission` VALUES ('1', '24');
INSERT INTO `role_permission` VALUES ('1', '25');
INSERT INTO `role_permission` VALUES ('1', '26');
INSERT INTO `role_permission` VALUES ('1', '27');
INSERT INTO `role_permission` VALUES ('1', '28');
INSERT INTO `role_permission` VALUES ('1', '29');
INSERT INTO `role_permission` VALUES ('1', '30');
INSERT INTO `role_permission` VALUES ('1', '31');
INSERT INTO `role_permission` VALUES ('1', '32');
INSERT INTO `role_permission` VALUES ('1', '33');
INSERT INTO `role_permission` VALUES ('1', '34');
INSERT INTO `role_permission` VALUES ('1', '35');
INSERT INTO `role_permission` VALUES ('1', '36');
INSERT INTO `role_permission` VALUES ('1', '37');
INSERT INTO `role_permission` VALUES ('1', '38');
INSERT INTO `role_permission` VALUES ('1', '39');
INSERT INTO `role_permission` VALUES ('1', '40');
INSERT INTO `role_permission` VALUES ('1', '41');
INSERT INTO `role_permission` VALUES ('1', '42');
INSERT INTO `role_permission` VALUES ('1', '43');
INSERT INTO `role_permission` VALUES ('1', '44');
INSERT INTO `role_permission` VALUES ('1', '45');
INSERT INTO `role_permission` VALUES ('1', '46');
INSERT INTO `role_permission` VALUES ('1', '47');
INSERT INTO `role_permission` VALUES ('1', '48');
INSERT INTO `role_permission` VALUES ('1', '49');
INSERT INTO `role_permission` VALUES ('1', '50');
INSERT INTO `role_permission` VALUES ('1', '51');
INSERT INTO `role_permission` VALUES ('1', '52');
INSERT INTO `role_permission` VALUES ('1', '53');
INSERT INTO `role_permission` VALUES ('15', '3');
INSERT INTO `role_permission` VALUES ('15', '16');
INSERT INTO `role_permission` VALUES ('15', '17');
INSERT INTO `role_permission` VALUES ('15', '41');
INSERT INTO `role_permission` VALUES ('15', '42');
INSERT INTO `role_permission` VALUES ('15', '43');
INSERT INTO `role_permission` VALUES ('15', '44');
INSERT INTO `role_permission` VALUES ('15', '45');
INSERT INTO `role_permission` VALUES ('15', '46');

-- ----------------------------
-- Table structure for talentpool_assessment
-- ----------------------------
DROP TABLE IF EXISTS `talentpool_assessment`;
CREATE TABLE `talentpool_assessment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `resume_id` int(11) DEFAULT NULL COMMENT '简历ID',
  `interviewer` varchar(50) DEFAULT NULL COMMENT '面试主管',
  `employ` tinyint(3) DEFAULT NULL COMMENT '是否聘用(1.是  2 否)',
  `candidate_status` tinyint(3) DEFAULT NULL COMMENT '专业技能（1.较差 2.一般 3.基本满意 4.较好 5.优秀）',
  `relevant_experience` tinyint(3) DEFAULT NULL COMMENT '工作经验（1-5同专业技能）',
  `education_training` tinyint(3) DEFAULT NULL COMMENT '教育或培训（1-5同专业技能）',
  `initiative` tinyint(3) DEFAULT NULL COMMENT '主动性（1-5同专业技能）',
  `communication_skills` tinyint(3) DEFAULT NULL COMMENT '沟通能力（1-5同专业技能）',
  `attitude` tinyint(3) DEFAULT NULL COMMENT '态度（1-5同专业技能）',
  `appearance` tinyint(3) DEFAULT NULL COMMENT '仪容（1-5同专业技能）',
  `advantage` varchar(255) DEFAULT NULL COMMENT '优点',
  `shortcoming` varchar(255) DEFAULT NULL COMMENT '缺点',
  `recruitment_channels` varchar(50) DEFAULT NULL COMMENT '招聘渠道',
  `creator_name` varchar(255) CHARACTER SET utf32 DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(6) DEFAULT NULL COMMENT '创建时间',
  `last_updatetime` datetime(6) DEFAULT NULL COMMENT '最后更新时间',
  `last_updater` varchar(255) DEFAULT NULL COMMENT '最后更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of talentpool_assessment
-- ----------------------------

-- ----------------------------
-- Table structure for talentpool_background
-- ----------------------------
DROP TABLE IF EXISTS `talentpool_background`;
CREATE TABLE `talentpool_background` (
  `edu_id` int(11) NOT NULL COMMENT '背景ID 主键',
  `resume_id` int(11) NOT NULL COMMENT '简历编号',
  `edu_starttime` datetime NOT NULL COMMENT '起始时间',
  `edu_endtime` datetime NOT NULL COMMENT '结束时间',
  `edu_schoolname` varchar(50) NOT NULL COMMENT '就读学校',
  `edu_major` varchar(50) NOT NULL COMMENT '就读专业',
  `education` varchar(50) NOT NULL COMMENT '学历',
  PRIMARY KEY (`edu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of talentpool_background
-- ----------------------------

-- ----------------------------
-- Table structure for talentpool_experience
-- ----------------------------
DROP TABLE IF EXISTS `talentpool_experience`;
CREATE TABLE `talentpool_experience` (
  `experience_id` int(11) NOT NULL COMMENT '经验ID',
  `resume_id` int(11) DEFAULT NULL COMMENT '简历编号',
  `item_starttime` datetime DEFAULT NULL COMMENT '起始时间',
  `item_endtime` datetime DEFAULT NULL COMMENT '结束时间',
  `item_name` varchar(50) DEFAULT NULL COMMENT '项目名称',
  `item_post` varchar(50) DEFAULT NULL COMMENT '项目职位',
  `item_content` varchar(255) DEFAULT NULL COMMENT '项目内容',
  PRIMARY KEY (`experience_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of talentpool_experience
-- ----------------------------

-- ----------------------------
-- Table structure for talentpool_position
-- ----------------------------
DROP TABLE IF EXISTS `talentpool_position`;
CREATE TABLE `talentpool_position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '职位编号',
  `position_name` varchar(50) DEFAULT NULL COMMENT '职位名称',
  `creator` varchar(50) DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `last_updatetime` datetime DEFAULT NULL COMMENT '最后更新时间',
  `last_updater` datetime DEFAULT NULL COMMENT '最后更新人',
  PRIMARY KEY (`position_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of talentpool_position
-- ----------------------------

-- ----------------------------
-- Table structure for talentpool_resume
-- ----------------------------
DROP TABLE IF EXISTS `talentpool_resume`;
CREATE TABLE `talentpool_resume` (
  `resume_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '简历表ID',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `gender` char(4) DEFAULT NULL COMMENT '性别',
  `photo_url` varchar(255) DEFAULT NULL COMMENT '照片',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `position_id` int(11) DEFAULT NULL COMMENT '求职职位 -- 职位编号',
  `skills` varchar(255) DEFAULT NULL COMMENT '技能',
  `evaluation` varchar(255) DEFAULT NULL COMMENT '自我评价',
  `expected_salary` decimal(10,2) DEFAULT NULL COMMENT '期望薪资',
  `current_location` varchar(255) DEFAULT NULL COMMENT '当前所在地',
  `entry_time` datetime DEFAULT NULL COMMENT '入职时间',
  `departure_time` datetime DEFAULT NULL COMMENT '离职时间',
  `entry_salary` int(11) DEFAULT NULL COMMENT '入职薪资',
  `other` varchar(255) DEFAULT NULL COMMENT '其他',
  `admin_id` int(11) DEFAULT NULL COMMENT '面试人',
  `interview_time` datetime DEFAULT NULL COMMENT '面试时间',
  `interview_results` tinyint(3) DEFAULT NULL COMMENT '面试结果编号（1.通过 2.未通过3.未面试）',
  `resume_url` varchar(255) DEFAULT NULL COMMENT '简历Url',
  `creator_name` varchar(255) DEFAULT NULL COMMENT '创建人',
  `createtime` datetime(6) DEFAULT NULL COMMENT '创建时间',
  `last_updatetime` datetime(6) DEFAULT NULL COMMENT '最后更新时间',
  `last_updater` varchar(255) DEFAULT NULL COMMENT '最后更新人',
  PRIMARY KEY (`resume_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of talentpool_resume
-- ----------------------------
