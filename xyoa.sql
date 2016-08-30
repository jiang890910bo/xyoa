/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50512
Source Host           : localhost:3306
Source Database       : xyoa

Target Server Type    : MYSQL
Target Server Version : 50512
File Encoding         : 65001

Date: 2016-08-30 22:49:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_contract`
-- ----------------------------
DROP TABLE IF EXISTS `tb_contract`;
CREATE TABLE `tb_contract` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `part_a_id` bigint(20) DEFAULT NULL COMMENT '甲方',
  `part_b_id` bigint(20) DEFAULT NULL COMMENT '乙方',
  `content` longblob COMMENT '内容',
  `status` char(255) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL,
  `creater_id` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updater_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_contract
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_department`
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dep_name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父级部门',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_department
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_duty`
-- ----------------------------
DROP TABLE IF EXISTS `tb_duty`;
CREATE TABLE `tb_duty` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `duty_name` varchar(50) DEFAULT NULL COMMENT '职务名称',
  `create_time` datetime DEFAULT NULL,
  `creater_id` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updater_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_duty
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_email`
-- ----------------------------
DROP TABLE IF EXISTS `tb_email`;
CREATE TABLE `tb_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_employee_id` bigint(20) DEFAULT NULL COMMENT '发送者',
  `to_employee_id` varchar(10) DEFAULT NULL COMMENT '接收者：当为‘all’为所有，当为数字时为接收员工的Id,多个员工以引文逗号隔开',
  `content` longblob COMMENT '内容',
  `status` char(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater_id` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_email
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_employee`
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE `tb_employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `work_code` varchar(20) DEFAULT NULL COMMENT '工号',
  `name` varchar(50) DEFAULT NULL,
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `duty_id` bigint(20) DEFAULT NULL COMMENT '职务',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色',
  `department_id` bigint(20) DEFAULT NULL COMMENT '部门id',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `status` char(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `creater_id` bigint(20) DEFAULT NULL,
  `updater_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_employee
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_employee_role_ref`
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee_role_ref`;
CREATE TABLE `tb_employee_role_ref` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater_id` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updater_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_employee_role_ref
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_push_card`
-- ----------------------------
DROP TABLE IF EXISTS `tb_push_card`;
CREATE TABLE `tb_push_card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) DEFAULT NULL,
  `check_in_date` date DEFAULT NULL COMMENT '打卡上班日期',
  `check_in_time` time DEFAULT NULL COMMENT '打卡上班时间',
  `check_out_date` date DEFAULT NULL COMMENT '打卡下班日期',
  `check_out_time` time DEFAULT NULL COMMENT '打卡下班时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_push_card
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_role`
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` bigint(20) NOT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater_id` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updater_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_vacation`
-- ----------------------------
DROP TABLE IF EXISTS `tb_vacation`;
CREATE TABLE `tb_vacation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_date` date DEFAULT NULL COMMENT '起始日期',
  `from_time` time DEFAULT NULL COMMENT '起始时间',
  `to_date` date DEFAULT NULL COMMENT '截止日期',
  `to_time` time DEFAULT NULL COMMENT '截止日期',
  `status` char(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creater_id` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updater_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_vacation
-- ----------------------------
