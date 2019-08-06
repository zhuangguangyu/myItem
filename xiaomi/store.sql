/*
 Navicat Premium Data Transfer

 Source Server         : first
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : store

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 20/06/2019 21:48:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1ea5904b5bcb439fa010eaf24441366b', '笔记本电脑');
INSERT INTO `category` VALUES ('3e2524a8f03045fda4c5c343a67e853d', '电视');
INSERT INTO `category` VALUES ('924888eac229404cb8c51a85b81bd8a9', '智能硬件');
INSERT INTO `category` VALUES ('a9742e2a627d4891b0185fb3bee5ebe2', '耳机');
INSERT INTO `category` VALUES ('b7c86f9bcfb048f690f19843ab98aebe', '平板电脑');
INSERT INTO `category` VALUES ('d8612b50639d4b4da1cfa93d05b4a67d', '小米手机');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `itemid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `oid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `oid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ordertime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `pid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pdate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pflag` int(11) DEFAULT NULL,
  `cid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('22346572a4ea410293e31252da95cb3f', '小米9', 'e75d078cfcf04a43a02944001e892bac.jpg', '2019年06月20日 21:21:08', '最强处理器', 4122, 4333, 1, NULL, 'd8612b50639d4b4da1cfa93d05b4a67d');
INSERT INTO `product` VALUES ('2311054812d54bdabf41412bac39322d', 'Redmi K20', 'f7d18a45351b497488e866c647f36c4c.jpg', '2019年06月20日 20:53:48', '游戏之王', 1244, 1256, 1, NULL, 'd8612b50639d4b4da1cfa93d05b4a67d');
INSERT INTO `product` VALUES ('339767c2af5b45fc9df9d3288d5b0f9f', 'Redmi AirDots真无限蓝牙耳机', '654903e780c445ce9b8fad5a3552594d.jpg', '2019年06月20日 20:49:43', '洗耳恭听', 123, 222, 1, NULL, 'a9742e2a627d4891b0185fb3bee5ebe2');
INSERT INTO `product` VALUES ('4631f7e3f12340fa89c4c2d04cd23bc6', '蓝牙耳机', '617c252e408f4a2eb0d70131d3b4e8d2.jpg', '2019年06月20日 15:09:17', '便捷', 100, 1000, 1, NULL, 'a9742e2a627d4891b0185fb3bee5ebe2');
INSERT INTO `product` VALUES ('473b47af3b1842f69a467c704dd9e44d', '米家万能遥控器', 'b71cf84e37794c1bbf907c19f02cba5d.jpg', '2019年06月20日 20:47:15', '隔壁小花家的电器都认我为主，哈哈哈', 500, 600, 0, NULL, '924888eac229404cb8c51a85b81bd8a9');
INSERT INTO `product` VALUES ('54847d2c38ce47528e5929fa30faaea1', '小米MIX3', '91d485a4cc744e6aace8c3ba5434014d.jpg', '2019年06月20日 21:21:41', '尊贵，典藏', 4623, 4555, 1, NULL, 'd8612b50639d4b4da1cfa93d05b4a67d');
INSERT INTO `product` VALUES ('8540712fec66403c8020beabb71ea86e', '小米蓝牙项圈耳机', '7fd8ee7c48624c01a7b969bee3d36bc2.jpg', '2019年06月20日 20:51:29', '跑步必备的', 213, 233, 1, NULL, 'a9742e2a627d4891b0185fb3bee5ebe2');
INSERT INTO `product` VALUES ('8f966370047349dd92c31a7594754e10', '米家人体传感器', '5ccb4c7833b64c7086ffe56f30a2b9e0.jpg', '2019年06月20日 20:44:25', '有了它，健康再也不离家', 366, 400, 1, NULL, '924888eac229404cb8c51a85b81bd8a9');
INSERT INTO `product` VALUES ('be85bf5c5c9b48c6ac0b3cf4b57c7ae0', '米家扫地机器人', 'cb5d969f6ffe482e97164993e97bc42f.jpg', '2019年06月20日 20:46:10', '再也不做家庭主男啦', 888, 999, 0, NULL, '924888eac229404cb8c51a85b81bd8a9');
INSERT INTO `product` VALUES ('d629df0590e2411884874edfd2b984fd', '九号平衡车', '410f81c5107948409112127caacb3d4f.jpg', '2019年06月20日 20:42:47', '快捷，便携是我们永恒的追求', 998, 999, 1, NULL, '924888eac229404cb8c51a85b81bd8a9');
INSERT INTO `product` VALUES ('da6ce482546c4c2abd333aa099ab7aea', '小米净水器', '3d1eb9f82eaa47358a63e6286486a116.jpg', '2019年06月20日 20:48:50', '水来，谁先来？！', 500, 999, 1, NULL, '924888eac229404cb8c51a85b81bd8a9');
INSERT INTO `product` VALUES ('e18d1de512584ee491ed35c4bb512d63', '小米有限耳机K歌版', 'e4dc3947a457468fa47a37a8e0f9cd6e.jpg', '2019年06月20日 20:52:45', '开黑，开黑，快来开黑', 255, 666, 0, NULL, 'a9742e2a627d4891b0185fb3bee5ebe2');
INSERT INTO `product` VALUES ('e341b8037bf740d08338aef8bc7c2e02', '米家温湿电子表', '7129addcd6304811b349acf3a4613adf.jpg', '2019年06月20日 20:48:03', '好习惯就是出门看看表', 66, 99, 0, NULL, '924888eac229404cb8c51a85b81bd8a9');
INSERT INTO `product` VALUES ('e5d859df5d524408bb0bc054022d5374', '黑鲨游戏手机', 'cb16807bc2924e3397cb7d779115e0f1.jpg', '2019年06月20日 21:20:33', '液冷的哦', 3222, 3666, 1, NULL, 'd8612b50639d4b4da1cfa93d05b4a67d');
INSERT INTO `product` VALUES ('e9c5dc127774496e867526b494f0a7fc', 'Redmi K20黑色', 'ea2f078e6e9140b9a4b5356056e7006a.png', '2019年06月20日 21:19:55', '高贵的黑', 896, 999, 1, NULL, 'd8612b50639d4b4da1cfa93d05b4a67d');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1f4c9e9a07824f0e828fe3a0bc7372ed', 'xiaobai', '123456', '白小鹏', '234123@qq.com', NULL, 'male', '2019-06-05');
INSERT INTO `user` VALUES ('50dcdcefea854414b0e893c0af6baf65', 'xiaohei', '123123', '黑子', 'adfadf@qq.com', NULL, 'male', '2019-06-13');
INSERT INTO `user` VALUES ('6fcd66a2236945bab56fccfc1217d7ff', 'xiaobai', '123456', '白小鹏', '234123@qq.com', NULL, 'male', '2019-06-05');

SET FOREIGN_KEY_CHECKS = 1;
