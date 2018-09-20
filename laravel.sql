/*
Navicat MariaDB Data Transfer

Source Server         : hcj
Source Server Version : 100119
Source Host           : localhost:3306
Source Database       : laravel

Target Server Type    : MariaDB
Target Server Version : 100119
File Encoding         : 65001

Date: 2018-09-20 20:49:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'system', '系统管理', '2018-09-05 15:46:43', '2018-09-05 15:46:43');
INSERT INTO `admin_permissions` VALUES ('2', 'post', '文章管理', '2018-09-05 15:47:18', '2018-09-05 15:47:18');
INSERT INTO `admin_permissions` VALUES ('3', 'topic', '专题管理', '2018-09-05 15:47:49', '2018-09-05 15:47:49');
INSERT INTO `admin_permissions` VALUES ('4', 'notice', '通知管理', '2018-09-05 15:48:22', '2018-09-05 15:48:22');

-- ----------------------------
-- Table structure for admin_permission_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_role`;
CREATE TABLE `admin_permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permission_role
-- ----------------------------
INSERT INTO `admin_permission_role` VALUES ('1', '1', '1', null, null);
INSERT INTO `admin_permission_role` VALUES ('2', '2', '1', null, null);
INSERT INTO `admin_permission_role` VALUES ('3', '3', '1', null, null);
INSERT INTO `admin_permission_role` VALUES ('4', '4', '1', null, null);
INSERT INTO `admin_permission_role` VALUES ('7', '2', '2', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'sys-manager', '系统管理员', '2018-09-05 15:49:25', '2018-09-05 15:49:25');
INSERT INTO `admin_roles` VALUES ('2', 'post-manager', '文章管理员', '2018-09-05 16:15:40', '2018-09-05 16:15:40');

-- ----------------------------
-- Table structure for admin_role_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_user`;
CREATE TABLE `admin_role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_user
-- ----------------------------
INSERT INTO `admin_role_user` VALUES ('2', '1', '1');
INSERT INTO `admin_role_user` VALUES ('4', '2', '2');

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'atest1', '$2y$10$OWEkknNNi4zC9Al3dhUegeeIcXDbCdUcuFqnc1SJm45AMknHgBMnW', '2018-09-03 12:53:40', '2018-09-03 12:53:40');
INSERT INTO `admin_users` VALUES ('2', 'atest2', '$2y$10$IB.xtSCh1jC28Wlg92/0w.5gbb79e8KOcm3p4J9bbFBJIeWAe9gwa', '2018-09-03 14:57:32', '2018-09-03 14:57:32');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '1', '41', '第一创建', '2018-08-26 12:10:16', '2018-08-26 12:10:16');
INSERT INTO `comments` VALUES ('2', '1', '41', '第二评论', '2018-08-26 12:32:15', '2018-08-26 12:32:15');

-- ----------------------------
-- Table structure for fans
-- ----------------------------
DROP TABLE IF EXISTS `fans`;
CREATE TABLE `fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fan_id` int(11) NOT NULL DEFAULT '0',
  `star_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of fans
-- ----------------------------
INSERT INTO `fans` VALUES ('1', '2', '1', '2018-08-30 13:24:45', '2018-08-30 13:24:45');
INSERT INTO `fans` VALUES ('3', '3', '2', '2018-08-30 18:47:19', '2018-08-30 18:47:19');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2018_08_21_094153_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('4', '2018_08_26_105259_create_comments_table', '2');
INSERT INTO `migrations` VALUES ('5', '2018_08_26_164722_create_zans_table', '3');
INSERT INTO `migrations` VALUES ('6', '2018_08_29_152726_create_fans_table', '4');
INSERT INTO `migrations` VALUES ('7', '2018_08_31_171118_create_topics_table', '5');
INSERT INTO `migrations` VALUES ('8', '2018_08_31_171230_create_post_topic_table', '5');
INSERT INTO `migrations` VALUES ('9', '2018_09_02_145058_create_admin_users_table', '6');
INSERT INTO `migrations` VALUES ('10', '2018_09_04_101524_alter_posts_table', '7');
INSERT INTO `migrations` VALUES ('11', '2018_09_04_194051_create_permission_and_roles', '8');
INSERT INTO `migrations` VALUES ('12', '2018_09_06_153025_create_notice_table', '9');
INSERT INTO `migrations` VALUES ('13', '2018_09_06_163520_create_jobs_table', '10');

-- ----------------------------
-- Table structure for notices
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of notices
-- ----------------------------
INSERT INTO `notices` VALUES ('1', '这是测试通知', '这是测试通知这是测试通知这是测试通知', '2018-09-06 16:05:30', '2018-09-06 16:05:30');
INSERT INTO `notices` VALUES ('2', '中秋节快乐', '中秋团圆！ 吃月饼咯！', '2018-09-06 16:49:01', '2018-09-06 16:49:01');
INSERT INTO `notices` VALUES ('3', '中秋节快乐1', '中秋团圆！ 吃月饼咯！', '2018-09-06 16:50:52', '2018-09-06 16:50:52');
INSERT INTO `notices` VALUES ('4', '中秋节快乐2', '中秋团圆！ 吃月饼咯！', '2018-09-06 16:55:34', '2018-09-06 16:55:34');
INSERT INTO `notices` VALUES ('5', '中秋节快乐3', '中秋团圆！ 吃月饼咯！', '2018-09-06 16:59:23', '2018-09-06 16:59:23');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('41', '22222222', '<p>2222222<br></p>', '1', '2018-08-25 13:36:37', '2018-08-25 13:36:37', '0');
INSERT INTO `posts` VALUES ('42', '最新Laravel 5.4快速开发简书网站项目实战教程', '<ul><li>\r\n第1章 课程介绍\r\n\r\n第2章 Laravel 5.4介绍\r\n</li><li>\r\n\r\n第3章 安装启动Laravel项目\r\n</li><li>\r\n\r\n第4章 文章模块\r\n</li><li>\r\n\r\n第5章 Laravel核心思想\r\n</li><li>\r\n第6章 用户注册登录注册模块\r\n\r\n第7章 评论模块\r\n</li><li>\r\n\r\n第8章 赞模块\r\n</li><li>\r\n\r\n第9章 搜索模块\r\n</li><li>\r\n\r\n第10章 个人中心模块\r\n</li><li>\r\n\r\n第11章 专题模块\r\n</li><li>\r\n\r\n第12章 后台基础框架搭建\r\n</li><li>\r\n\r\n第13章 管理人员模块\r\n</li><li>\r\n\r\n第14章 审核模块\r\n</li><li>\r\n第15章 权限模块</li><li>\r\n第16章 专题管理模块\r\n\r\n第17章 系统通知模块\r\n</li><li>\r\n第18章 性能优化</li></ul><p><br></p>', '1', '2018-08-28 19:48:24', '2018-08-28 19:48:24', '0');
INSERT INTO `posts` VALUES ('43', '22223333', '<h4>Quick Example</h4><p>1.create a index</p><pre>curl -XPUT http://localhost:9200/index</pre><p>2.create a mapping</p><pre>curl -XPOST http://localhost:9200/index/fulltext/_mapping -H <span><span>\'</span>Content-Type:application/json<span>\'</span></span> -d<span><span>\'</span></span>\r\n<span>{</span>\r\n<span>        \"properties\": {</span>\r\n<span>            \"content\": {</span>\r\n<span>                \"type\": \"text\",</span>\r\n<span>                \"analyzer\": \"ik_max_word\",</span>\r\n<span>                \"search_analyzer\": \"ik_max_word\"</span>\r\n<span>            }</span>\r\n<span>        }</span>\r\n<span></span>\r\n<span>}<span>\'</span></span></pre><p>3.index some docs</p><pre>curl -XPOST http://localhost:9200/index/fulltext/1 -H <span><span>\'</span>Content-Type:application/json<span>\'</span></span> -d<span><span>\'</span></span>\r\n<span>{\"content\":\"美国留给伊拉克的是个烂摊子吗\"}</span>\r\n<span><span>\'</span></span></pre><pre>curl -XPOST http://localhost:9200/index/fulltext/2 -H <span><span>\'</span>Content-Type:application/json<span>\'</span></span> -d<span><span>\'</span></span>\r\n<span>{\"content\":\"公安部：各地校车将享最高路权\"}</span>\r\n<span><span>\'</span></span></pre><p><br></p>', '1', '2018-08-28 19:49:07', '2018-08-28 19:49:07', '0');
INSERT INTO `posts` VALUES ('44', '我有多喜欢你，你会知道', '<p>其实以前不太相信缘分，宿命的，但发生的一些事，离开的一个人，让我开始相信缘分。从前，总是太天真，以为用真心就能换真心，再大的鸿沟都能跨过去。后来发现不是的，没有缘分，差了点什么，任你再强求也留不住的。虽然那是不久之前的事，对我却恍若隔世了。现在回想当时，太天真，朋友说的那些确实都是对的。</p><p>对不起啊，我不该和你说这些的。我应该喜欢的人是你，而不是他，毕竟我是他权衡利弊后决定放弃的人，而你是那个一眼就选中我的人。可是，我必须很诚实的告诉你，我的先生，也许,我说的是也许，我真的再也不会像喜欢他那样毫无保留的喜欢一个人了，哪怕那个人是你，真的很对不起啊。</p><br><br><p>作者：言希or小乔</p><br><p>链接：https://www.jianshu.com/p/a192450ef668</p><br><p>來源：简书</p><br><p>简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。</p><p><br></p>', '2', '2018-08-30 12:44:45', '2018-08-30 12:44:45', '0');
INSERT INTO `posts` VALUES ('45', '我有多喜欢你，你会知道', '<p>其实以前不太相信缘分，宿命的，但发生的一些事，离开的一个人，让我开始相信缘分。从前，总是太天真，以为用真心就能换真心，再大的鸿沟都能跨过去。后来发现不是的，没有缘分，差了点什么，任你再强求也留不住的。虽然那是不久之前的事，对我却恍若隔世了。现在回想当时，太天真，朋友说的那些确实都是对的。</p><p>对不起啊，我不该和你说这些的。我应该喜欢的人是你，而不是他，毕竟我是他权衡利弊后决定放弃的人，而你是那个一眼就选中我的人。可是，我必须很诚实的告诉你，我的先生，也许,我说的是也许，我真的再也不会像喜欢他那样毫无保留的喜欢一个人了，哪怕那个人是你，真的很对不起啊。</p><br><br><p>作者：言希or小乔</p><br><p>链接：https://www.jianshu.com/p/a192450ef668</p><br><p>來源：简书</p><br><p>简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。</p><p><br></p>', '2', '2018-08-30 12:45:11', '2018-08-30 12:45:11', '0');
INSERT INTO `posts` VALUES ('46', '11111111111', '<p>11111111111<br></p>', '1', '2018-08-30 12:45:32', '2018-08-30 12:45:32', '0');
INSERT INTO `posts` VALUES ('47', '11111111', '<p>11111111111<br></p><p>ss<br></p><p>ss<br></p>', '1', '2018-08-30 12:49:21', '2018-08-30 12:49:21', '0');
INSERT INTO `posts` VALUES ('48', '2222222222', '<p>2222222222<br></p>', '2', '2018-08-30 12:55:02', '2018-08-30 12:55:02', '0');
INSERT INTO `posts` VALUES ('49', 'test3', '<p>test3test3test3test3test3test3test3test3</p><p><br></p>', '2', '2018-08-30 17:42:21', '2018-08-30 17:42:21', '0');
INSERT INTO `posts` VALUES ('50', 'test3', '<p>test3test3test3test3test3test3test3test3</p><p><br></p>', '2', '2018-08-30 17:46:07', '2018-09-04 12:01:18', '1');
INSERT INTO `posts` VALUES ('51', '333333333333333333333', '<p>33333333333333333333333333</p>', '2', '2018-08-30 17:46:33', '2018-09-04 12:01:13', '-1');
INSERT INTO `posts` VALUES ('52', '33333333', '<p>333333<img src=\"http://127.0.0.1:8000/storage/562f30fb48d60f0e73adf5a982ba8d50/uUIuWlDIX7fXEASawn8n1wErYD6Z4mGPQdap2pm2.jpeg\" alt=\"机械 - 10\" style=\"max-width: 100%;\"></p><p><br></p>', '2', '2018-08-30 18:00:29', '2018-09-04 12:00:08', '-1');

-- ----------------------------
-- Table structure for post_topics
-- ----------------------------
DROP TABLE IF EXISTS `post_topics`;
CREATE TABLE `post_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of post_topics
-- ----------------------------
INSERT INTO `post_topics` VALUES ('1', '42', '1', '2018-09-01 11:36:04', '2018-09-01 11:36:04');

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES ('1', 'lvyou', '2018-08-31 18:43:27', '2018-08-31 18:43:27');
INSERT INTO `topics` VALUES ('2', '美食', '2018-09-06 11:46:17', '2018-09-06 11:46:17');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '胡创健', '1034870635@qq.com', '$2y$10$kMN5F7iOaJolh9qv0CVv4.lDkq7FkaqkvNC9UZaU6IhRJ4lZNQele', '8nhBRPiCfWBkPJuChQlwUuySuCBZgoe1yRQd0fr87M775QzHjomFnceIEaET', '2018-08-24 18:14:36', '2018-08-24 18:14:36');
INSERT INTO `users` VALUES ('2', 'aaa', 'aaa@qq.com', '$2y$10$qOI.sIzFKNc3D.TvbtVAX.DdmnqMF.6ktUElt5REm1kuwP410ujIm', 'DqsmDytoxt5rlQAZgDDyI0NsqsnMjm0uObYayDXRE6TkD1qJbO7jXhBItQNf', '2018-08-25 12:52:41', '2018-08-25 12:52:41');
INSERT INTO `users` VALUES ('3', '111', '11@qq.com', '$2y$10$5R4Xahgcs9xxCFfAabu/Oe/lda9voIqRWOKu/InFXSZXI53rOonZK', 'LkerQPnbdOYwVLDwv7RWN6UFhNngY0Rsee954i1twKNwTw6gW7pO4wWZraUq', '2018-08-30 18:46:46', '2018-08-30 18:46:46');

-- ----------------------------
-- Table structure for user_notice
-- ----------------------------
DROP TABLE IF EXISTS `user_notice`;
CREATE TABLE `user_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notice_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_notice
-- ----------------------------
INSERT INTO `user_notice` VALUES ('1', '1', '5');
INSERT INTO `user_notice` VALUES ('2', '2', '5');
INSERT INTO `user_notice` VALUES ('3', '3', '5');

-- ----------------------------
-- Table structure for zans
-- ----------------------------
DROP TABLE IF EXISTS `zans`;
CREATE TABLE `zans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of zans
-- ----------------------------
INSERT INTO `zans` VALUES ('2', '1', '41', '2018-08-26 19:09:11', '2018-08-26 19:09:11');
