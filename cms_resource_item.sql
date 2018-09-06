/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : mysql.test.tuboshi.co:3306
 Source Schema         : sHouseApp_pre

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 03/09/2018 20:47:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_resource_item
-- ----------------------------
DROP TABLE IF EXISTS `cms_resource_item`;
CREATE TABLE `cms_resource_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin COMMENT 'json 数据',
  `sort` int(11) DEFAULT 0 COMMENT '排序',
  `resource_id` int(11) DEFAULT NULL COMMENT '资源 id, 索引',
  `scope` int(11) DEFAULT NULL COMMENT '作用域,比如城市 id',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime(0) DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `last_modified_date` datetime(0) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `normal_index_resource_id`(`resource_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 189 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_resource_item
-- ----------------------------
INSERT INTO `cms_resource_item` VALUES (2, '{\"picUrl\":\"https://img.2boss.cn/resource/img/7e7eaff66249737842fa0c3381c3b25b.jpg\",\"linkUrl\":\"http://mtest02.2boss.cn/webapp/activity/credit?estateId=13079808\",\"mUrl\":\"http://agenttest02.2boss.cn/upload-bargain\",\"beginTime\":\"2018-04-31 01:12:00\",\"endTime\":\"2018-09-31 00:12:01\"}', 10000, 2, 605, NULL, '2018-05-22 16:32:53', NULL, '2018-08-21 16:32:34', 35);
INSERT INTO `cms_resource_item` VALUES (6, '{\"iconUrl\":\"https://img.2boss.cn/resource/img/23d4035d66e89b3823f64305523f60ee.jpg\",\"name\":\"查成交\",\"url\":\"rabbit://findBargain\",\"mUrl\":\"\"}', 5006, 1, NULL, NULL, '2018-05-25 14:39:57', NULL, '2018-08-06 09:55:35', 19);
INSERT INTO `cms_resource_item` VALUES (7, '{\"iconUrl\":\"https://img.2boss.cn/resource/img/54821bb7847788244cd147d604259bea.jpg\",\"name\":\"地产头条\",\"url\":\"rabbit://landTopic\",\"mUrl\":\"\"}', 5001, 1, NULL, NULL, '2018-05-25 14:40:29', NULL, '2018-07-19 15:29:06', 11);
INSERT INTO `cms_resource_item` VALUES (8, '{\"iconUrl\":\"https://img.2boss.cn/resource/img/9c318cbe66239105fbce2e3b00a1a475.jpg\",\"name\":\"新房\",\"url\":\"rabbit://scenes/newHousePage\",\"mUrl\":\"/webapp/605/scene?type=1\"}', 5002, 1, 605, NULL, '2018-05-25 14:41:03', NULL, '2018-08-13 16:27:24', 13);
INSERT INTO `cms_resource_item` VALUES (9, '{\"iconUrl\":\"https://img.2boss.cn/resource/img/fce296336f8c6ca328be7e0edc5b5dea.jpg\",\"name\":\"二手房\",\"url\":\"rabbit://scenes/secondHousePage\",\"mUrl\":\"/webapp/605/scene?type=2\"}', 5003, 1, 605, NULL, '2018-05-25 14:41:25', NULL, '2018-08-13 16:27:32', 12);
INSERT INTO `cms_resource_item` VALUES (10, '{\"iconUrl\":\"https://img.2boss.cn/resource/img/9b9bcc96aa8453f1f4c767cad0cc0fdf.jpg\",\"name\":\"估价\",\"url\":\"rabbit://publishEvaluate\",\"mUrl\":\"/webapp/estimate?cityId=605\"}', 5005, 1, 605, NULL, '2018-05-25 14:42:51', NULL, '2018-08-13 13:52:35', 15);
INSERT INTO `cms_resource_item` VALUES (34, '{\"topic\":\"地产达人观\",\"title\":\"买房之后怎么迁户口？你想知道的都在这里！\",\"image\":\"https://img.2boss.cn/resource/img/59e4c5077460d24b883eb544ac95491d.jpg\",\"url\":\"rabbit://articleDetail?articleId=25892\",\"mUrl\":\"https://www.baidu.com\",\"video\":false}', 0, 4, 605, NULL, '2018-05-25 15:31:37', NULL, '2018-07-24 11:14:32', 12);
INSERT INTO `cms_resource_item` VALUES (39, '{\"topic\":\"看房笔记\",\"title\":\"对标香港，在深圳拥有33亿身家的可能\",\"image\":\"https://img.2boss.cn/resource/img/c44d3fe3a62429c0508c6643f62158c1.jpg\",\"url\":\"rabbit://articleDetail?articleId=25899\",\"mUrl\":\"https://arti.2boss.cn/artieditor/20180515161105.html?articleId=25899\",\"video\":false}', 0, 4, 605, NULL, '2018-05-25 17:37:11', NULL, '2018-07-17 13:25:55', 7);
INSERT INTO `cms_resource_item` VALUES (48, '{\"topic\":\"地产情报站\",\"title\":\"房贷利率悄悄松绑？央行报告释放最新信号，买不买房的都要看！\",\"image\":\"https://img.2boss.cn/resource/img/59e4c5077460d24b883eb544ac95491d.jpg\",\"url\":\"rabbit://articleDetail?articleId=26913\",\"mUrl\":\"https://artitest.2boss.cn/artieditor/20180615145353.html?articleId=26913\",\"video\":false}', 21, 5, 605, NULL, '2018-05-25 17:43:07', NULL, '2018-07-17 11:39:25', 6);
INSERT INTO `cms_resource_item` VALUES (49, '{\"topic\":\"看房笔记 \",\"title\":\"200多万的重点小学学区房在这里\",\"image\":\"https://img.2boss.cn/resource/img/f3af96a0fc46f54c5037b6bbe87a3316.jpg\",\"url\":\"rabbit://articleDetail?articleId=25878\",\"mUrl\":\"https://artitest.2boss.cn/artieditor/20180615145353.html?articleId=25878\",\"video\":true}', 20, 5, 605, NULL, '2018-05-25 17:43:15', NULL, '2018-07-17 11:41:08', 6);
INSERT INTO `cms_resource_item` VALUES (50, '{\"topic\":\"地产最强大脑\",\"title\":\"4月新房成交涨也刚需跌也刚需\",\"image\":\"https://img.2boss.cn/resource/img/c0e0e65f60b4ef36ad663c2d18383b6d.jpg\",\"url\":\"https://arti.2boss.cn/artieditor/20180515102812.html?articleId=25871\",\"mUrl\":\"https://arti.2boss.cn/artieditor/20180515102812.html?articleId=25871\",\"video\":false}', 21, 5, 605, NULL, '2018-05-25 17:43:23', NULL, '2018-07-17 13:32:32', 9);
INSERT INTO `cms_resource_item` VALUES (52, '{\"topic\":\"兔仔看房\",\"title\":\"浦江镇视频介绍\",\"image\":\"https://img.2boss.cn/resource/img/ae41a13ee785a173ed2e25ec222af0f3.jpg\",\"url\":\"rabbit://articleDetail?articleId=26116\",\"mUrl\":\"https://arti.2boss.cn/artieditor/20180521104850.html?articleId=26116\",\"video\":true}', 22, 5, 605, NULL, '2018-05-25 17:43:41', NULL, '2018-07-17 13:30:41', 8);
INSERT INTO `cms_resource_item` VALUES (53, '{\"title\":\"镇宁路上戏 | 毕业之后不分手\",\"author\":\"地产经纬\",\"image\":\"https://img.2boss.cn/resource/img/e6532e6bff6c302d97c167c900576faf.jpg\",\"pubTime\":\"05.27\",\"url\":\"rabbit://articleDetail?articleId=25894\",\"mUrl\":\"https://arti.2boss.cn/artieditor/20180515150912.html?articleId=25894\"}', 5, 7, 605, NULL, '2018-05-25 17:43:52', NULL, '2018-07-17 11:44:26', 6);
INSERT INTO `cms_resource_item` VALUES (54, '{\"title\":\"中央公园，提档升级，楼市有大戏...\",\"author\":\"大卫聊地产\",\"image\":\"https://img.2boss.cn/resource/img/c0e0e65f60b4ef36ad663c2d18383b6d.jpg\",\"pubTime\":\"05.04\",\"url\":\"rabbit://articleDetail?articleId=26113\",\"mUrl\":\"https://arti.2boss.cn/artieditor/20180521103156.html?articleId=26113\"}', 4, 7, 605, NULL, '2018-05-25 17:44:00', NULL, '2018-07-17 13:35:13', 7);
INSERT INTO `cms_resource_item` VALUES (55, '{\"title\":\"【上海新盘资讯】必看！5.7-5.13，开盘\",\"author\":\"新房荟\",\"image\":\"https://img.2boss.cn/resource/img/6d9e609c57421dad71d8841a89209c1f.jpg\",\"pubTime\":\"05.07\",\"url\":\"rabbit://articleDetail?articleId=26115\",\"mUrl\":\"https://arti.2boss.cn/artieditor/20180515150912.html?articleId=26115\"}', 3, 7, 605, NULL, '2018-05-25 17:44:06', NULL, '2018-07-17 11:44:40', 4);
INSERT INTO `cms_resource_item` VALUES (57, '{\"picUrl\":\"https://img.2boss.cn/resource/img/d6fb4a4e0205130918145a9ed6fd4c98.jpg\",\"linkUrl\":\"https://mtest02.2boss.cn/webapp/605/house-report?type=1\",\"mUrl\":\"\",\"beginTime\":\"2018-01-03 12:12:00\",\"endTime\":\"2018-09-02 12:12:10\"}', 900, 2, 605, NULL, '2018-05-28 15:40:07', NULL, '2018-07-23 15:45:18', 14);
INSERT INTO `cms_resource_item` VALUES (64, '{\"title\":\"鲁迅公园 | 上外，高冷美女最多的大学\",\"author\":\"玥读城市\",\"image\":\"https://img.2boss.cn/resource/img/89f74edb33612dd5130927beca264908.jpg\",\"pubTime\":\"09.04\",\"url\":\"https://arti.2boss.cn/artieditor/20180515152018.html?articleId=25897\",\"mUrl\":\"https://arti.2boss.cn/artieditor/20180515152018.html?articleId=25897\"}', 1, 6, 605, NULL, '2018-05-28 16:19:59', NULL, '2018-07-17 11:36:38', 4);
INSERT INTO `cms_resource_item` VALUES (82, '{\"title\":\"买房之后怎么迁户口？你想知道的都在这里！\",\"author\":\"谢大0528\",\"image\":\"https://img.2boss.cn/resource/img/1ed3397763559d62d4254c1e90682886.jpg\",\"pubTime\":\"05.07\",\"url\":\"rabbit://articleDetail?articleId=25906\",\"mUrl\":\"https://arti.2boss.cn/artieditor/20180515170821.html?articleId=25906\"}', 3, 6, 605, NULL, '2018-05-28 18:04:03', NULL, '2018-07-17 11:47:56', 4);
INSERT INTO `cms_resource_item` VALUES (84, '{\"title\":\"【兔博士楼市周报】上海|最受关注二手小区TOP20\",\"author\":\"兔博士上海\",\"image\":\"https://img.2boss.cn/resource/img/0d9e8eee574b3bcdd7b685f26939a08b.jpg\",\"pubTime\":\"05.29\",\"url\":\"https://arti.2boss.cn/artieditor/20180521103830.html?articleId=26112\",\"mUrl\":\"https://arti.2boss.cn/artieditor/20180521103830.html?articleId=26112\"}', 4, 6, 605, NULL, '2018-05-29 11:11:15', NULL, '2018-07-17 11:36:23', 3);
INSERT INTO `cms_resource_item` VALUES (89, '{\"slogan\":\"看房之前， 当然要看兔博士！\"}', 0, 3, 605, NULL, '2018-05-29 18:21:11', NULL, '2018-06-04 16:28:26', 10);
INSERT INTO `cms_resource_item` VALUES (96, '{\"topic\":\"大V说房\",\"title\":\"【兔仔看房】 张江板块视频介绍\",\"image\":\"https://img.2boss.cn/resource/img/4d4c41b971d029bc0e95654897853520.jpg\",\"url\":\"http://2boss.oss-cn-hangzhou.aliyuncs.com/Dr2_MP4/%E5%BC%A0%E6%B1%9F%E9%AB%98%E7%A7%912.mp4\",\"mUrl\":\"http://2boss.oss-cn-hangzhou.aliyuncs.com/Dr2_MP4/%E5%BC%A0%E6%B1%9F%E9%AB%98%E7%A7%912.mp4\",\"video\":true}', 71, 4, 605, NULL, '2018-05-30 17:48:49', NULL, '2018-07-17 11:13:16', 9);
INSERT INTO `cms_resource_item` VALUES (100, '{\"picUrl\":\"https://img.2boss.cn/resource/img/f3af96a0fc46f54c5037b6bbe87a3316.jpg\",\"linkUrl\":\"http://mtest02.2boss.cn/#/house-report?id=1&isHideTitle=1\",\"mUrl\":\"http://www.baidu.com\",\"beginTime\":\"2018-05-31 00:00:00\",\"endTime\":\"2019-08-31 00:00:00\"}', 90, 2, NULL, NULL, '2018-05-31 21:12:16', NULL, '2018-08-28 19:42:42', 7);
INSERT INTO `cms_resource_item` VALUES (101, '{\"topic\":\"CSCS\",\"title\":\"CSCS\",\"image\":\"https://img.2boss.cn/resource/img/540af5ee6c50aa483d59b44bb0ea8a1c.jpg\",\"url\":\"rabbit://articleDetail?articleId=25892\",\"video\":false}', 0, 4, 604, NULL, '2018-06-01 00:13:18', NULL, '2018-06-01 00:13:18', 0);
INSERT INTO `cms_resource_item` VALUES (102, '{\"topic\":\"CDCD\",\"title\":\"CDCD\",\"image\":\"https://img.2boss.cn/resource/img/9d1156b988a764d74db9cd790db76ffe.jpg\",\"url\":\"rabbit://articleDetail?articleId=25892\",\"video\":false}', 0, 4, 604, NULL, '2018-06-01 00:14:18', NULL, '2018-06-01 00:14:18', 0);
INSERT INTO `cms_resource_item` VALUES (106, '{\"title\":\"【兔博士楼市周报】广州|最受关注的新房板块TOP20\",\"author\":\"兔博士成都\",\"image\":\"https://img.2boss.cn/resource/img/8f412ea8d1ca53e3d3fd9b7b2f23af99.jpg\",\"pubTime\":\"05.07\",\"url\":\"rabbit://articleDetail?articleId=23224\",\"mUrl\":\"https://arti.2boss.cn/20180203-083550-48/drl.html\"}', 6, 7, NULL, NULL, '2018-06-05 09:48:50', NULL, '2018-07-17 13:33:30', 2);
INSERT INTO `cms_resource_item` VALUES (107, '{\"picUrl\":\"https://img.2boss.cn/resource/img/a6e87ac3bc56df00b919ec3faf6150ae.jpg\",\"linkUrl\":\"http://mtest02.2boss.cn/#/house-report?id=1&isHideTitle=1\",\"mUrl\":\"https://arti.2boss.cn/artieditor/20180515170821.html?articleId=27614\",\"beginTime\":\"2018-05-31 19:35:00\",\"endTime\":\"2018-07-31 19:35:00\"}', 0, 2, NULL, NULL, '2018-06-07 10:47:22', NULL, '2018-08-28 19:43:04', 9);
INSERT INTO `cms_resource_item` VALUES (109, '{\"topic\":\"测试测试\",\"title\":\"cs\",\"image\":\"https://img.2boss.cn/resource/img/5bb0da311c4a202b781c59059c87af78.jpg\",\"url\":\"rabbit://articleDetail?articleId=26913\",\"mUrl\":\"https://artitest.2boss.cn/artieditor/20180615145353.html?articleId=26913\",\"video\":false}', 12222, 5, 605, NULL, '2018-06-15 15:20:49', NULL, '2018-07-17 11:39:06', 1);
INSERT INTO `cms_resource_item` VALUES (111, '{\"name\":\"新里波洛克公馆（新房）\",\"houseId\":29579,\"cityId\":605,\"beginTime\":\"2018-05-31\",\"endTime\":\"2018-06-27\"}', 2, 10, 605, NULL, '2018-06-26 16:31:47', NULL, '2018-06-26 16:31:47', 0);
INSERT INTO `cms_resource_item` VALUES (112, '{\"name\":\"风鸣美谷\",\"houseId\":30299,\"cityId\":605,\"beginTime\":\"2018-06-28\",\"endTime\":\"2018-09-28\"}', 1, 10, 605, NULL, '2018-06-27 13:42:34', NULL, '2018-06-27 13:42:52', 1);
INSERT INTO `cms_resource_item` VALUES (114, '{\"name\":\"紫禁壹号院(新房)\",\"houseId\":6074,\"cityId\":604,\"beginTime\":\"2018-05-31\",\"endTime\":\"2018-09-28\"}', 2, 10, NULL, NULL, '2018-06-27 13:50:20', NULL, '2018-06-27 13:50:20', 0);
INSERT INTO `cms_resource_item` VALUES (115, '{\"name\":\"金科王府(新房)\",\"houseId\":1067,\"cityId\":604,\"beginTime\":\"2018-05-31\",\"endTime\":\"2018-06-27\"}', 0, 10, 604, NULL, '2018-06-27 14:36:02', NULL, '2018-06-27 14:36:02', 0);
INSERT INTO `cms_resource_item` VALUES (116, '{\"name\":\"龙湖春江名城(即将开盘)\",\"houseId\":11696,\"cityId\":607,\"beginTime\":\"2018-05-31\",\"endTime\":\"2018-09-31\"}', 0, 10, 607, NULL, '2018-06-27 16:28:40', NULL, '2018-06-27 16:28:40', 0);
INSERT INTO `cms_resource_item` VALUES (117, '{\"name\":\"三盛国际城(即将开盘)\",\"houseId\":10979,\"cityId\":604,\"beginTime\":\"2018-05-31\",\"endTime\":\"2018-09-28\"}', 1, 10, 604, NULL, '2018-06-28 09:45:06', NULL, '2018-06-28 09:45:06', 0);
INSERT INTO `cms_resource_item` VALUES (118, '{\"name\":\"天和湖滨艺墅(即将开盘)\",\"houseId\":25816,\"cityId\":605,\"beginTime\":\"2018-05-31\",\"endTime\":\"2018-09-28\"}', 2, 10, 605, NULL, '2018-06-28 14:31:44', NULL, '2018-06-28 14:31:44', 0);
INSERT INTO `cms_resource_item` VALUES (119, '{\"name\":\"葛洲坝虹桥紫郡公馆(即将开盘)\",\"houseId\":28339,\"cityId\":605,\"beginTime\":\"2018-06-29\",\"endTime\":\"2018-09-28\"}', 3, 10, 605, NULL, '2018-06-28 14:32:57', NULL, '2018-06-28 14:32:57', 0);
INSERT INTO `cms_resource_item` VALUES (120, '{\"title\":\"test\",\"author\":\"兔博士上海\",\"image\":\"https://img.2boss.cn/resource/img/d0f4ffbbf76d4d1f98c123db5fe973a5.jpg\",\"pubTime\":\"05.29\",\"url\":\"rabbit://articleDetail?articleId=25898\"}', 0, 6, 640, NULL, '2018-07-04 11:05:04', NULL, '2018-07-04 11:05:04', 0);
INSERT INTO `cms_resource_item` VALUES (121, '{\"title\":\"【兔博士楼市周报】上海|最受关注的新盘\",\"author\":\"小明哥\",\"image\":\"https://img.2boss.cn/resource/img/c151a840007a5fe8659a93b0c4e454a3.jpg\",\"pubTime\":\"07.10\",\"url\":\"rabbit://articleDetail?articleId=26934\",\"mUrl\":\"https://arti.2boss.cn/artieditor/20180515170821.html?articleId=26934\"}', 4, 6, 605, NULL, '2018-07-11 16:40:05', NULL, '2018-07-24 16:32:43', 3);
INSERT INTO `cms_resource_item` VALUES (122, '{\"topic\":\"兔博士地产最强大脑\",\"title\":\"【兔博士楼市周报】上海|最受关注的新盘\",\"image\":\"https://img.2boss.cn/resource/img/c151a840007a5fe8659a93b0c4e454a3.jpg\",\"url\":\"rabbit://articleDetail?articleId=27614\",\"mUrl\":\"https://arti.2boss.cn/artieditor/20180515152427.html?articleId=27614\",\"video\":false}', 0, 4, 605, NULL, '2018-07-11 16:40:58', NULL, '2018-07-17 11:33:51', 2);
INSERT INTO `cms_resource_item` VALUES (123, '{\"topic\":\"兔博士地产最强大脑\",\"title\":\"【兔博士楼市周报】上海|首发新盘情报\",\"image\":\"https://img.2boss.cn/resource/img/c151a840007a5fe8659a93b0c4e454a3.jpg\",\"url\":\"rabbit://articleDetail?articleId=27635\",\"mUrl\":\"https://arti.2boss.cn/artieditor/20180515152427.html?articleId=27635\",\"video\":false}', 0, 4, 605, NULL, '2018-07-11 16:41:52', NULL, '2018-07-17 11:25:17', 3);
INSERT INTO `cms_resource_item` VALUES (124, '{\"picUrl\":\"https://img.2boss.cn/resource/img/1ed3397763559d62d4254c1e90682886.jpg\",\"linkUrl\":\"http://192.168.115.69:3000/webapp/report/certificate/3620?isHideTitle=1\",\"mUrl\":\"https://arti.2boss.cn/20180607-170936-7338/drl.html\",\"beginTime\":\"2018-07-24 00:00:00\",\"endTime\":\"2019-07-24 00:00:00\"}', 0, 2, 605, NULL, '2018-07-24 09:30:26', NULL, '2018-09-03 15:22:23', 3);
INSERT INTO `cms_resource_item` VALUES (125, '{\"iconUrl\":null,\"name\":\"新房\",\"url\":\"rabbit://scenes/newHousePage\",\"mUrl\":\"/webapp/604/scene?type=1\"}', 0, 1, 604, NULL, '2018-08-13 16:25:26', NULL, '2018-08-13 16:25:26', 0);
INSERT INTO `cms_resource_item` VALUES (126, '{\"iconUrl\":null,\"name\":\"二手房\",\"url\":\"rabbit://scenes/secondHousePage\",\"mUrl\":\"/webapp/604/scene?type=2\"}', 0, 1, 604, NULL, '2018-08-13 16:25:47', NULL, '2018-08-13 16:25:47', 0);
INSERT INTO `cms_resource_item` VALUES (127, '{\"iconUrl\":null,\"name\":\"二手房\",\"url\":\"rabbit://scenes/secondHousePage\",\"mUrl\":\"/webapp/622/scene?type=2\"}', 0, 1, 622, NULL, '2018-08-13 16:26:20', NULL, '2018-08-13 16:26:20', 0);
INSERT INTO `cms_resource_item` VALUES (128, '{\"iconUrl\":null,\"name\":\"新房\",\"url\":\"rabbit://scenes/newHousePage\",\"mUrl\":\"/webapp/622/scene?type=1\"}', 0, 1, 622, NULL, '2018-08-13 16:26:37', NULL, '2018-08-13 16:26:37', 0);
INSERT INTO `cms_resource_item` VALUES (129, '{\"iconUrl\":null,\"name\":\"新房\",\"url\":\"rabbit://scenes/newHousePage\",\"mUrl\":\"/webapp/612/scene?type=1\"}', 0, 1, 612, NULL, '2018-08-13 16:30:24', NULL, '2018-08-13 16:30:24', 0);
INSERT INTO `cms_resource_item` VALUES (130, '{\"iconUrl\":null,\"name\":\"二手房\",\"url\":\"rabbit://scenes/secondHousePage\",\"mUrl\":\"/webapp/612/scene?type=2\"}', 0, 1, 612, NULL, '2018-08-13 16:30:44', NULL, '2018-08-13 16:30:44', 0);
INSERT INTO `cms_resource_item` VALUES (131, '{\"iconUrl\":null,\"name\":\"二手房\",\"url\":\"rabbit://scenes/secondHousePage\",\"mUrl\":\"/webapp/633/scene?type=2\"}', 0, 1, 633, NULL, '2018-08-13 16:31:09', NULL, '2018-08-13 16:31:09', 0);
INSERT INTO `cms_resource_item` VALUES (132, '{\"iconUrl\":null,\"name\":\"新房\",\"url\":\"rabbit://scenes/newHousePage\",\"mUrl\":\"/webapp/633/scene?type=1\"}', 0, 1, 633, NULL, '2018-08-13 16:31:25', NULL, '2018-08-13 16:31:25', 0);
INSERT INTO `cms_resource_item` VALUES (133, '{\"picUrl\":\"https://img.2boss.cn/resource/img/540af5ee6c50aa483d59b44bb0ea8a1c.jpg\",\"linkUrl\":\"rabbit://scenes/secondHousePage\",\"mUrl\":\"/webapp/605/scene?type=2\",\"beginTime\":\"2018-08-11 00:00:00\",\"endTime\":\"2019-08-11 00:00:00\"}', 0, 8, 605, NULL, '2018-08-13 16:35:53', NULL, '2018-08-13 16:35:53', 0);
INSERT INTO `cms_resource_item` VALUES (134, '{\"name\":\"test\",\"age\":20,\"logo\":\"https://img.2boss.cn/resource/img/59491885c62bce2b0e14a72a4d8846e2.jpg\",\"favorite_color\":\"#ffa500\",\"gender\":\"男\",\"location\":{\"city\":\"上海\",\"street\":\"金科路\",\"address\":\"上海  金科路\"},\"pets\":[{\"type\":\"狗\",\"name\":\"花花\"}]}', 0, 11, NULL, NULL, '2018-08-15 09:35:37', NULL, '2018-08-15 09:35:37', 0);
INSERT INTO `cms_resource_item` VALUES (160, '{\"houseId\":\"11805\",\"houseName\":\"南湖东园一区\",\"beginTime\":\"2018-01-03 12:12:00\",\"endTime\":\"2018-08-17 11:23:30\"}', 0, 14, 604, NULL, '2018-08-17 16:06:32', NULL, '2018-08-17 16:06:32', 0);
INSERT INTO `cms_resource_item` VALUES (161, '{\"houseId\":\"19\",\"houseName\":\"早安方庄\",\"beginTime\":\"2018-01-03 12:12:00\",\"endTime\":\"2018-08-18 11:23:30\"}', 0, 14, 604, NULL, '2018-08-17 16:08:33', NULL, '2018-08-17 16:48:25', 1);
INSERT INTO `cms_resource_item` VALUES (162, '{\"houseId\":\"16738\",\"houseName\":\"杨思小区\",\"beginTime\":\"2018-08-17 15:55:00\",\"endTime\":\"2018-08-17 15:56:00\"}', 0, 14, 605, NULL, '2018-08-17 16:11:57', NULL, '2018-08-17 16:47:32', 1);
INSERT INTO `cms_resource_item` VALUES (163, '{\"houseId\":\"32627\",\"houseName\":\"亲密别墅\",\"beginTime\":\"2018-07-23 11:40:23\",\"endTime\":\"2018-08-17 11:23:30\"}', 0, 14, 604, NULL, '2018-08-17 16:32:55', NULL, '2018-08-17 16:32:55', 0);
INSERT INTO `cms_resource_item` VALUES (165, '{\"houseId\":\"18049\",\"houseName\":\"张江汤臣豪园四期\",\"beginTime\":\"2018-08-17 15:55:00\",\"endTime\":\"2018-08-24 15:55:00\"}', 0, 14, 605, NULL, '2018-08-17 16:37:50', NULL, '2018-08-17 16:37:50', 0);
INSERT INTO `cms_resource_item` VALUES (166, '{\"title\":\"【兔博士楼市周报】上海|最受关注的新盘\",\"url\":\"https://www.baidu.com\",\"h5Url\":\"https://www.baidu.com\",\"imgUrl\":\"https://img.2boss.cn/resource/img/4250026b093ebdc62683086c934cf76c.jpg\",\"type\":\"全图模式\",\"beginTime\":\"2018-01-03 12:12:00\",\"endTime\":\"2018-08-02 12:12:00\"}', 0, 12, 605, NULL, '2018-08-17 16:45:15', NULL, '2018-08-20 17:29:02', 1);
INSERT INTO `cms_resource_item` VALUES (167, '{\"title\":\"【兔仔看房】 张江板块视频介绍\",\"url\":\"https://www.baidu.com\",\"h5Url\":\"\",\"imgUrl\":\"https://img.2boss.cn/resource/img/59491885c62bce2b0e14a72a4d8846e2.jpg\",\"type\":\"全图模式\",\"beginTime\":\"2017-06-01 00:00:00\",\"endTime\":\"2018-08-22 23:00:00\"}', 0, 12, 605, NULL, '2018-08-17 16:45:32', NULL, '2018-08-20 18:32:40', 3);
INSERT INTO `cms_resource_item` VALUES (168, '{\"title\":\"【兔博士楼市周报】上海|最受关注的新盘\",\"url\":\"https://www.baidu.com\",\"h5Url\":\"https://www.baidu.com\",\"imgUrl\":\"https://img.2boss.cn/resource/img/4250026b093ebdc62683086c934cf76c.jpg\",\"type\":\"全图模式\",\"beginTime\":\"2018-01-03 12:12:00\",\"endTime\":\"2018-12-02 12:12:00\"}', 0, 12, NULL, NULL, '2018-08-17 16:45:39', NULL, '2018-08-28 16:10:51', 4);
INSERT INTO `cms_resource_item` VALUES (169, '{\"title\":\"【兔博士楼市周报】上海|最受关注的新盘\",\"url\":\"https://www.baidu.com\",\"h5Url\":\"https://www.baidu.com\",\"imgUrl\":\"https://img.2boss.cn/resource/img/b3c8622cc85a5783b6b39e6c998f8c1e.jpg\",\"type\":\"全图模式\",\"beginTime\":\"2018-01-03 12:12:00\",\"endTime\":\"2018-08-02 12:12:00\"}', 0, 12, 605, NULL, '2018-08-17 16:45:58', NULL, '2018-08-20 17:29:13', 1);
INSERT INTO `cms_resource_item` VALUES (172, '{\"houseId\":\"10367\",\"houseName\":\"双清路14号院\",\"beginTime\":\"2018-08-17 12:12:00\",\"endTime\":\"2018-09-02 12:12:00\"}', 0, 14, 604, NULL, '2018-08-17 16:46:54', NULL, '2018-08-17 16:46:54', 0);
INSERT INTO `cms_resource_item` VALUES (173, '{\"title\":\"【兔仔看房】 张江板块视频介绍\",\"url\":\"https://www.baidu.com\",\"h5Url\":\"https://www.baidu.com\",\"imgUrl\":\"https://img.2boss.cn/resource/img/59491885c62bce2b0e14a72a4d8846e2.jpg\",\"type\":\"全图模式\",\"beginTime\":\"2017-06-01 00:00:00\",\"endTime\":\"2018-08-16 12:12:00\"}', 0, 12, 605, NULL, '2018-08-17 16:47:22', NULL, '2018-08-17 16:51:33', 1);
INSERT INTO `cms_resource_item` VALUES (174, '{\"houseId\":\"32627\",\"houseName\":\"亲密别墅\",\"beginTime\":\"2018-01-03 12:12:00\",\"endTime\":\"2018-08-23 11:23:30\"}', 0, 14, 605, NULL, '2018-08-17 16:51:32', NULL, '2018-08-17 16:51:32', 0);
INSERT INTO `cms_resource_item` VALUES (176, '{\"clickUrl\":\"https://www.baidu.com\",\"h5Url\":\"\",\"imgUrl\":\"https://img.2boss.cn/resource/img/4250026b093ebdc62683086c934cf76c.jpg\",\"plateId\":0,\"houseId\":0,\"type\":\"小区--看房笔记广告\",\"status\":1,\"remark\":\"\",\"beginTime\":\"2018-01-03 12:12:00\",\"endTime\":\"2018-09-16 12:12:00\"}', 0, 13, 605, NULL, '2018-08-22 14:41:49', NULL, '2018-08-22 14:41:49', 0);
INSERT INTO `cms_resource_item` VALUES (177, '{\"clickUrl\":\"\",\"h5Url\":\"https://www.baidu.com\",\"imgUrl\":\"https://img.2boss.cn/resource/img/b3c8622cc85a5783b6b39e6c998f8c1e.jpg\",\"plateId\":0,\"houseId\":0,\"type\":\"小区--看房笔记广告\",\"status\":1,\"remark\":\"\",\"beginTime\":\"2018-01-03 12:12:00\",\"endTime\":\"2018-09-02 12:12:00\"}', 0, 13, NULL, NULL, '2018-08-22 14:42:26', NULL, '2018-08-22 14:42:26', 0);
INSERT INTO `cms_resource_item` VALUES (180, '{\"agentName\":\"21世纪网\",\"top_logo1\":\"https://img.2boss.cn/resource/img/brand_logo_21century_top.png\",\"bottom_logo1\":\"https://img.2boss.cn/resource/img/brand_21century_bottom.png\",\"top_logo2\":\"https://img.2boss.cn/resource/img/brand_2logo_21century_logo2_top.png\",\"bottom_logo2\":\"https://img.2boss.cn/resource/img/21century_logo2_bottom.png\",\"tag_logo\":\"https://img.2boss.cn/resource/img/houselist_21century_label.png\"}', 0, 16, 605, NULL, '2018-08-23 17:12:16', NULL, '2018-08-24 09:41:33', 1);
INSERT INTO `cms_resource_item` VALUES (181, '{\"agentName\":\"中原\",\"top_logo1\":\"https://img.2boss.cn/resource/img/brand_logo_zhongyuan_top.png\",\"bottom_logo1\":\"https://img.2boss.cn/resource/img/brand_zhongyuan_bottom.png\",\"top_logo2\":\"https://img.2boss.cn/resource/img/brand_2logo_zhongyuan_logo2_top.png\",\"bottom_logo2\":\"https://img.2boss.cn/resource/img/zhongyuan_bg_logo2_bottom.png\",\"tag_logo\":\"https://img.2boss.cn/resource/img/houselist_zhongyuan_label.png\"}', 0, 16, 605, NULL, '2018-08-23 19:09:01', NULL, '2018-08-23 19:09:01', 0);
INSERT INTO `cms_resource_item` VALUES (182, '{\"agentName\":\"搜房网\",\"top_logo1\":\"https://img.2boss.cn/resource/img/brand_logo_zhongyuan_top.png\",\"bottom_logo1\":\"https://img.2boss.cn/resource/img/brand_zhongyuan_bottom.png\",\"top_logo2\":\"https://img.2boss.cn/resource/img/brand_2logo_zhongyuan_logo2_top.png\",\"bottom_logo2\":\"https://img.2boss.cn/resource/img/zhongyuan_bg_logo2_bottom.png\",\"tag_logo\":\"https://img.2boss.cn/resource/img/houselist_zhongyuan_label.png\"}', 0, 16, 605, NULL, '2018-08-23 19:13:45', NULL, '2018-08-23 19:13:45', 0);
INSERT INTO `cms_resource_item` VALUES (183, '{\"nativeUrl\":\"rabbit://buyCard\",\"h5Url\":\"https://m.2boss.cn/webapp/profile/buyvip\",\"imgUrl\":\"https://img.2boss.cn/resource/img/c16e041ab037043a9632f780fae8e82f.jpg\",\"status\":\"有效\",\"beginTime\":\"2018-01-01 12:10:00\",\"endTime\":\"2019-01-01 12:00:00\"}', 0, 15, NULL, NULL, '2018-08-24 14:45:11', NULL, '2018-08-28 16:56:25', 3);
INSERT INTO `cms_resource_item` VALUES (184, '{\"nativeUrl\":\"rabbit://buyCard\",\"h5Url\":\"http://www.baidu.com\",\"imgUrl\":\"https://img.2boss.cn/resource/img/b4c5f64f1397c7a5af1f37c1fb6e1993.jpg\",\"status\":\"有效\",\"beginTime\":\"2018-06-01 00:01:00\",\"endTime\":\"2019-06-01 00:00:00\"}', 0, 15, 605, NULL, '2018-08-24 14:51:22', NULL, '2018-08-24 16:48:25', 2);
INSERT INTO `cms_resource_item` VALUES (186, '{\"nativeUrl\":\"rabbit://buyCard\",\"h5Url\":\"cs\",\"imgUrl\":\"https://img.2boss.cn/resource/img/540af5ee6c50aa483d59b44bb0ea8a1c.jpg\",\"status\":\"有效\",\"beginTime\":\"2018-06-01 00:00:00\",\"endTime\":\"2019-06-01 00:00:00\"}', 0, 15, NULL, NULL, '2018-08-24 16:46:54', NULL, '2018-08-24 16:46:54', 0);
INSERT INTO `cms_resource_item` VALUES (187, '{\"agentName\":\"21世纪网\",\"top_logo1\":\"https://img.2boss.cn/resource/img/brand_logo_21century_top.png\",\"bottom_logo1\":\"https://img.2boss.cn/resource/img/brand_21century_bottom.png\",\"top_logo2\":\"https://img.2boss.cn/resource/img/brand_2logo_21century_logo2_top.png\",\"bottom_logo2\":\"https://img.2boss.cn/resource/img/21century_logo2_bottom.png\",\"tag_logo\":\"https://img.2boss.cn/resource/img/houselist_21century_label.png\"}', 0, 16, 604, NULL, '2018-08-27 15:36:42', NULL, '2018-08-27 16:02:23', 1);
INSERT INTO `cms_resource_item` VALUES (188, '{\"agentName\":\"中原\",\"top_logo1\":\"https://img.2boss.cn/resource/img/brand_logo_zhongyuan_top.png\",\"bottom_logo1\":\"https://img.2boss.cn/resource/img/brand_zhongyuan_bottom.png\",\"top_logo2\":\"https://img.2boss.cn/resource/img/brand_2logo_zhongyuan_logo2_top.png\",\"bottom_logo2\":\"https://img.2boss.cn/resource/img/zhongyuan_bg_logo2_bottom.png\",\"tag_logo\":\"https://img.2boss.cn/resource/img/houselist_zhongyuan_label.png\"}', 0, 16, 604, NULL, '2018-08-27 19:01:18', NULL, '2018-08-27 19:03:36', 1);

SET FOREIGN_KEY_CHECKS = 1;
