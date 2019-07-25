/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : bubu

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 25/07/2019 18:54:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_lv_dt
-- ----------------------------
DROP TABLE IF EXISTS `t_lv_dt`;
CREATE TABLE `t_lv_dt`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yh_id` int(11) NULL DEFAULT NULL,
  `dx_id` int(11) NULL DEFAULT NULL,
  `lx` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lv_dz
-- ----------------------------
DROP TABLE IF EXISTS `t_lv_dz`;
CREATE TABLE `t_lv_dz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yh_id` int(11) NULL DEFAULT NULL,
  `zj_id` int(11) NULL DEFAULT NULL,
  `zjyh_id` int(11) NULL DEFAULT NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lv_gz
-- ----------------------------
DROP TABLE IF EXISTS `t_lv_gz`;
CREATE TABLE `t_lv_gz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gzyh_id` int(11) NULL DEFAULT NULL,
  `dxyh_id` int(11) NULL DEFAULT NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lv_pl
-- ----------------------------
DROP TABLE IF EXISTS `t_lv_pl`;
CREATE TABLE `t_lv_pl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NULL DEFAULT NULL,
  `zj_id` int(11) NULL DEFAULT NULL,
  `plyh_id` int(11) NULL DEFAULT NULL,
  `dxyh_id` int(11) NULL DEFAULT NULL,
  `dzsl` int(11) NULL DEFAULT NULL,
  `plnr` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plsj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lv_sc
-- ----------------------------
DROP TABLE IF EXISTS `t_lv_sc`;
CREATE TABLE `t_lv_sc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yh_id` int(11) NULL DEFAULT NULL,
  `zj_id` int(11) NULL DEFAULT NULL,
  `zjyh_id` int(11) NULL DEFAULT NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lv_sx
-- ----------------------------
DROP TABLE IF EXISTS `t_lv_sx`;
CREATE TABLE `t_lv_sx`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sxyh_id` int(11) NULL DEFAULT NULL,
  `dxyh_id` int(11) NULL DEFAULT NULL,
  `nr` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lv_tg
-- ----------------------------
DROP TABLE IF EXISTS `t_lv_tg`;
CREATE TABLE `t_lv_tg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yh_id` int(11) NULL DEFAULT NULL,
  `zj_id` int(11) NULL DEFAULT NULL,
  `wz_id` int(11) NULL DEFAULT NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lv_wz
-- ----------------------------
DROP TABLE IF EXISTS `t_lv_wz`;
CREATE TABLE `t_lv_wz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wj_id` int(11) NULL DEFAULT NULL,
  `bt` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fm` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nr` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `wzzt` int(11) NULL DEFAULT NULL,
  `wzzs` int(11) NULL DEFAULT NULL,
  `ydsl` int(11) NULL DEFAULT NULL,
  `plsl` int(11) NULL DEFAULT NULL,
  `xhsl` int(11) NULL DEFAULT NULL,
  `zssl` int(11) NULL DEFAULT NULL,
  `fbsj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wzxh` int(11) NULL DEFAULT NULL,
  `yh_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lv_xh
-- ----------------------------
DROP TABLE IF EXISTS `t_lv_xh`;
CREATE TABLE `t_lv_xh`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yh_id` int(11) NULL DEFAULT NULL,
  `zj_id` int(11) NULL DEFAULT NULL,
  `zjyh_id` int(11) NULL DEFAULT NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_lv_zs
-- ----------------------------
DROP TABLE IF EXISTS `t_lv_zs`;
CREATE TABLE `t_lv_zs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yh_id` int(11) NULL DEFAULT NULL,
  `zsje` int(11) NULL DEFAULT NULL,
  `zj_id` int(11) NULL DEFAULT NULL,
  `zjyh_id` int(11) NULL DEFAULT NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_mobi_code
-- ----------------------------
DROP TABLE IF EXISTS `t_mobi_code`;
CREATE TABLE `t_mobi_code`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_mobi_code
-- ----------------------------
INSERT INTO `t_mobi_code` VALUES ('2acb7a75aeca11e9af9868f728009142', '666672', 1, '1564051893');

-- ----------------------------
-- Table structure for t_mobi_manager
-- ----------------------------
DROP TABLE IF EXISTS `t_mobi_manager`;
CREATE TABLE `t_mobi_manager`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iphone` int(64) NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alias` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_mobi_manager
-- ----------------------------
INSERT INTO `t_mobi_manager` VALUES ('064c55e4ae9b11e9ab2168f728009142', '891511545@qq.com', NULL, '666666', NULL, 'cbadpig', 1, 1);
INSERT INTO `t_mobi_manager` VALUES ('3b680cbfaeca11e9af9868f728009142', '89151154335@qq.com', NULL, '666666', NULL, NULL, 2, 0);
INSERT INTO `t_mobi_manager` VALUES ('fa1b167aaeb811e9af9868f728009142', '8915115445@qq.com', NULL, '666666', NULL, NULL, 2, 0);

-- ----------------------------
-- Table structure for t_mobi_managerlog
-- ----------------------------
DROP TABLE IF EXISTS `t_mobi_managerlog`;
CREATE TABLE `t_mobi_managerlog`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `managerid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `targetid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_mobi_managermenu
-- ----------------------------
DROP TABLE IF EXISTS `t_mobi_managermenu`;
CREATE TABLE `t_mobi_managermenu`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `managerid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menuid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_mobi_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_mobi_menu`;
CREATE TABLE `t_mobi_menu`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parentid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sys_hmd
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_hmd`;
CREATE TABLE `t_sys_hmd`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yh_id` int(11) NULL DEFAULT NULL,
  `hyh_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_sys_yh
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_yh`;
CREATE TABLE `t_sys_yh`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sj` int(11) NULL DEFAULT NULL,
  `yx` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mm` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nc` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xb` int(11) NULL DEFAULT NULL,
  `lx` int(11) NULL DEFAULT NULL,
  `jsxx` int(11) NULL DEFAULT NULL,
  `jsyxtz` int(11) NULL DEFAULT NULL,
  `grms` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zskg` int(11) NULL DEFAULT NULL,
  `zsms` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `txtp` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zcsj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dlsj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tp_dt
-- ----------------------------
DROP TABLE IF EXISTS `t_tp_dt`;
CREATE TABLE `t_tp_dt`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yh_id` int(11) NULL DEFAULT NULL,
  `dx_id` int(11) NULL DEFAULT NULL,
  `lx` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tp_dz
-- ----------------------------
DROP TABLE IF EXISTS `t_tp_dz`;
CREATE TABLE `t_tp_dz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yh_id` int(11) NULL DEFAULT NULL,
  `zj_id` int(11) NULL DEFAULT NULL,
  `zjyh_id` int(11) NULL DEFAULT NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tp_gz
-- ----------------------------
DROP TABLE IF EXISTS `t_tp_gz`;
CREATE TABLE `t_tp_gz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gzyh_id` int(11) NULL DEFAULT NULL,
  `dxyh_id` int(11) NULL DEFAULT NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tp_pl
-- ----------------------------
DROP TABLE IF EXISTS `t_tp_pl`;
CREATE TABLE `t_tp_pl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NULL DEFAULT NULL,
  `zj_id` int(11) NULL DEFAULT NULL,
  `plyh_id` int(11) NULL DEFAULT NULL,
  `dxyh_id` int(11) NULL DEFAULT NULL,
  `dzsl` int(11) NULL DEFAULT NULL,
  `plnr` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `plsj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tp_sc
-- ----------------------------
DROP TABLE IF EXISTS `t_tp_sc`;
CREATE TABLE `t_tp_sc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yh_id` int(11) NULL DEFAULT NULL,
  `zj_id` int(11) NULL DEFAULT NULL,
  `zjyh_id` int(11) NULL DEFAULT NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tp_sx
-- ----------------------------
DROP TABLE IF EXISTS `t_tp_sx`;
CREATE TABLE `t_tp_sx`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sxyh_id` int(11) NULL DEFAULT NULL,
  `dxyh_id` int(11) NULL DEFAULT NULL,
  `nr` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tp_tg
-- ----------------------------
DROP TABLE IF EXISTS `t_tp_tg`;
CREATE TABLE `t_tp_tg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yh_id` int(11) NULL DEFAULT NULL,
  `zj_id` int(11) NULL DEFAULT NULL,
  `wz_id` int(11) NULL DEFAULT NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tp_wz
-- ----------------------------
DROP TABLE IF EXISTS `t_tp_wz`;
CREATE TABLE `t_tp_wz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wj_id` int(11) NULL DEFAULT NULL,
  `bt` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fm` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nr` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `wzzt` int(11) NULL DEFAULT NULL,
  `wzzs` int(11) NULL DEFAULT NULL,
  `ydsl` int(11) NULL DEFAULT NULL,
  `plsl` int(11) NULL DEFAULT NULL,
  `xhsl` int(11) NULL DEFAULT NULL,
  `zssl` int(11) NULL DEFAULT NULL,
  `fbsj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wzxh` int(11) NULL DEFAULT NULL,
  `yh_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tp_xh
-- ----------------------------
DROP TABLE IF EXISTS `t_tp_xh`;
CREATE TABLE `t_tp_xh`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yh_id` int(11) NULL DEFAULT NULL,
  `zj_id` int(11) NULL DEFAULT NULL,
  `zjyh_id` int(11) NULL DEFAULT NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_tp_zs
-- ----------------------------
DROP TABLE IF EXISTS `t_tp_zs`;
CREATE TABLE `t_tp_zs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yh_id` int(11) NULL DEFAULT NULL,
  `zsje` int(11) NULL DEFAULT NULL,
  `zj_id` int(11) NULL DEFAULT NULL,
  `zjyh_id` int(11) NULL DEFAULT NULL,
  `zt` int(11) NULL DEFAULT NULL,
  `sj` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
