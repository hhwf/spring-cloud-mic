-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
                          `MENU_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
                          `PARENT_ID` bigint(20) NOT NULL COMMENT '上级菜单ID',
                          `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单/按钮名称',
                          `URL` varchar(100) DEFAULT NULL COMMENT '菜单URL',
                          `PERMS` text COMMENT '权限标识',
                          `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
                          `TYPE` char(2) NOT NULL COMMENT '类型 0菜单 1按钮',
                          `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
                          `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
                          `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
                          PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '0', '系统管理', null, null, 'zmdi zmdi-settings', '0', '1', '2017-12-27 16:39:07', null);
INSERT INTO `t_menu` VALUES ('2', '0', '系统监控', null, null, 'zmdi zmdi-shield-security', '0', '2', '2017-12-27 16:45:51', '2018-01-17 17:08:28');
INSERT INTO `t_menu` VALUES ('3', '1', '用户管理', 'user', 'user:list', '', '0', '1', '2017-12-27 16:47:13', '2018-04-25 09:00:01');
INSERT INTO `t_menu` VALUES ('4', '1', '角色管理', 'role', 'role:list', '', '0', '2', '2017-12-27 16:48:09', '2018-04-25 09:01:12');
INSERT INTO `t_menu` VALUES ('5', '1', '菜单管理', 'menu', 'menu:list', '', '0', '3', '2017-12-27 16:48:57', '2018-04-25 09:01:30');
INSERT INTO `t_menu` VALUES ('6', '1', '部门管理', 'dept', 'dept:list', '', '0', '4', '2017-12-27 16:57:33', '2018-04-25 09:01:40');
INSERT INTO `t_menu` VALUES ('8', '2', '在线用户', 'session', 'session:list', '', '0', '1', '2017-12-27 16:59:33', '2018-04-25 09:02:04');
INSERT INTO `t_menu` VALUES ('10', '2', '系统日志', 'log', 'log:list', '', '0', '3', '2017-12-27 17:00:50', '2018-04-25 09:02:18');
INSERT INTO `t_menu` VALUES ('11', '3', '新增用户', null, 'user:add', null, '1', null, '2017-12-27 17:02:58', null);
INSERT INTO `t_menu` VALUES ('12', '3', '修改用户', null, 'user:update', null, '1', null, '2017-12-27 17:04:07', null);
INSERT INTO `t_menu` VALUES ('13', '3', '删除用户', null, 'user:delete', null, '1', null, '2017-12-27 17:04:58', null);
INSERT INTO `t_menu` VALUES ('14', '4', '新增角色', null, 'role:add', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('15', '4', '修改角色', null, 'role:update', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('16', '4', '删除角色', null, 'role:delete', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('17', '5', '新增菜单', null, 'menu:add', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('18', '5', '修改菜单', null, 'menu:update', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('19', '5', '删除菜单', null, 'menu:delete', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('20', '6', '新增部门', null, 'dept:add', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('21', '6', '修改部门', null, 'dept:update', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('22', '6', '删除部门', null, 'dept:delete', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('23', '8', '踢出用户', null, 'user:kickout', null, '1', null, '2017-12-27 17:11:13', null);
INSERT INTO `t_menu` VALUES ('24', '10', '删除日志', null, 'log:delete', null, '1', null, '2017-12-27 17:11:45', null);
INSERT INTO `t_menu` VALUES ('58', '0', '网络资源', null, null, 'zmdi zmdi-globe-alt', '0', null, '2018-01-12 15:28:48', '2018-01-22 19:49:26');
INSERT INTO `t_menu` VALUES ('59', '58', '天气查询', 'weather', 'weather:list', '', '0', null, '2018-01-12 15:40:02', '2018-04-25 09:02:57');
INSERT INTO `t_menu` VALUES ('61', '58', '每日一文', 'article', 'article:list', '', '0', null, '2018-01-15 17:17:14', '2018-04-25 09:03:08');
INSERT INTO `t_menu` VALUES ('64', '1', '字典管理', 'dict', 'dict:list', '', '0', null, '2018-01-18 10:38:25', '2018-04-25 09:01:50');
INSERT INTO `t_menu` VALUES ('65', '64', '新增字典', null, 'dict:add', null, '1', null, '2018-01-18 19:10:08', null);
INSERT INTO `t_menu` VALUES ('66', '64', '修改字典', null, 'dict:update', null, '1', null, '2018-01-18 19:10:27', null);
INSERT INTO `t_menu` VALUES ('67', '64', '删除字典', null, 'dict:delete', null, '1', null, '2018-01-18 19:10:47', null);
INSERT INTO `t_menu` VALUES ('81', '58', '影视资讯', null, null, null, '0', null, '2018-01-22 14:12:59', null);
INSERT INTO `t_menu` VALUES ('82', '81', '正在热映', 'movie/hot', 'movie:hot', '', '0', null, '2018-01-22 14:13:47', '2018-04-25 09:03:48');
INSERT INTO `t_menu` VALUES ('83', '81', '即将上映', 'movie/coming', 'movie:coming', '', '0', null, '2018-01-22 14:14:36', '2018-04-25 09:04:05');
INSERT INTO `t_menu` VALUES ('86', '58', 'One 一个', null, null, null, '0', null, '2018-01-26 09:42:41', '2018-01-26 09:43:46');
INSERT INTO `t_menu` VALUES ('87', '86', '绘画', 'one/painting', 'one:painting', '', '0', null, '2018-01-26 09:47:14', '2018-04-25 09:04:17');
INSERT INTO `t_menu` VALUES ('88', '86', '语文', 'one/yuwen', 'one:yuwen', '', '0', null, '2018-01-26 09:47:40', '2018-04-25 09:04:30');
INSERT INTO `t_menu` VALUES ('89', '86', '散文', 'one/essay', 'one:essay', '', '0', null, '2018-01-26 09:48:05', '2018-04-25 09:04:42');
INSERT INTO `t_menu` VALUES ('101', '0', '任务调度', null, null, 'zmdi zmdi-alarm', '0', null, '2018-02-24 15:52:57', null);
INSERT INTO `t_menu` VALUES ('102', '101', '定时任务', 'job', 'job:list', '', '0', null, '2018-02-24 15:53:53', '2018-04-25 09:05:12');
INSERT INTO `t_menu` VALUES ('103', '102', '新增任务', null, 'job:add', null, '1', null, '2018-02-24 15:55:10', null);
INSERT INTO `t_menu` VALUES ('104', '102', '修改任务', null, 'job:update', null, '1', null, '2018-02-24 15:55:53', null);
INSERT INTO `t_menu` VALUES ('105', '102', '删除任务', null, 'job:delete', null, '1', null, '2018-02-24 15:56:18', null);
INSERT INTO `t_menu` VALUES ('106', '102', '暂停任务', null, 'job:pause', null, '1', null, '2018-02-24 15:57:08', null);
INSERT INTO `t_menu` VALUES ('107', '102', '恢复任务', null, 'job:resume', null, '1', null, '2018-02-24 15:58:21', null);
INSERT INTO `t_menu` VALUES ('108', '102', '立即执行任务', null, 'job:run', null, '1', null, '2018-02-24 15:59:45', null);
INSERT INTO `t_menu` VALUES ('109', '101', '调度日志', 'jobLog', 'jobLog:list', '', '0', null, '2018-02-24 16:00:45', '2018-04-25 09:05:25');
INSERT INTO `t_menu` VALUES ('110', '109', '删除日志', null, 'jobLog:delete', null, '1', null, '2018-02-24 16:01:21', null);
INSERT INTO `t_menu` VALUES ('113', '2', 'Redis监控', 'redis/info', 'redis:list', '', '0', null, '2018-06-28 14:29:42', null);
INSERT INTO `t_menu` VALUES ('114', '2', 'Redis终端', 'redis/terminal', 'redis:terminal', '', '0', null, '2018-06-28 15:35:21', null);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
                          `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
                          `ROLE_NAME` varchar(100) NOT NULL COMMENT '角色名称',
                          `REMARK` varchar(100) DEFAULT NULL COMMENT '角色描述',
                          `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
                          `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
                          PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', '管理员', '2017-12-27 16:23:11', '2018-02-24 16:01:45');
INSERT INTO `t_role` VALUES ('2', '测试账号', '测试账号', '2017-12-27 16:25:09', '2018-01-23 09:11:11');
INSERT INTO `t_role` VALUES ('3', '注册账户', '注册账户，只可查看，不可操作', '2017-12-29 16:00:15', '2018-02-24 17:33:45');
INSERT INTO `t_role` VALUES ('23', '用户管理员', '负责用户的增删改操作', '2018-01-09 15:32:41', null);
INSERT INTO `t_role` VALUES ('24', '系统监控员', '可查看系统监控信息，但不可操作', '2018-01-09 15:52:01', '2018-03-07 19:05:33');
INSERT INTO `t_role` VALUES ('25', '用户查看', '查看用户，无相应操作权限', '2018-01-09 15:56:30', null);
INSERT INTO `t_role` VALUES ('63', '影院工作者', '可查看影视信息', '2018-02-06 08:48:28', '2018-03-07 19:05:26');
INSERT INTO `t_role` VALUES ('64', '天气预报员', '可查看天气预报信息', '2018-02-27 08:47:04', null);
INSERT INTO `t_role` VALUES ('65', '文章审核', '文章类', '2018-02-27 08:48:01', '2018-03-13 11:20:34');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
                               `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID',
                               `MENU_ID` bigint(20) NOT NULL COMMENT '菜单/按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES ('3', '58');
INSERT INTO `t_role_menu` VALUES ('3', '59');
INSERT INTO `t_role_menu` VALUES ('3', '61');
INSERT INTO `t_role_menu` VALUES ('3', '81');
INSERT INTO `t_role_menu` VALUES ('3', '82');
INSERT INTO `t_role_menu` VALUES ('3', '83');
INSERT INTO `t_role_menu` VALUES ('3', '86');
INSERT INTO `t_role_menu` VALUES ('3', '87');
INSERT INTO `t_role_menu` VALUES ('3', '88');
INSERT INTO `t_role_menu` VALUES ('3', '89');
INSERT INTO `t_role_menu` VALUES ('3', '1');
INSERT INTO `t_role_menu` VALUES ('3', '3');
INSERT INTO `t_role_menu` VALUES ('3', '4');
INSERT INTO `t_role_menu` VALUES ('3', '5');
INSERT INTO `t_role_menu` VALUES ('3', '6');
INSERT INTO `t_role_menu` VALUES ('3', '64');
INSERT INTO `t_role_menu` VALUES ('3', '2');
INSERT INTO `t_role_menu` VALUES ('3', '8');
INSERT INTO `t_role_menu` VALUES ('3', '10');
INSERT INTO `t_role_menu` VALUES ('3', '101');
INSERT INTO `t_role_menu` VALUES ('3', '102');
INSERT INTO `t_role_menu` VALUES ('3', '109');
INSERT INTO `t_role_menu` VALUES ('63', '58');
INSERT INTO `t_role_menu` VALUES ('63', '81');
INSERT INTO `t_role_menu` VALUES ('63', '82');
INSERT INTO `t_role_menu` VALUES ('63', '83');
INSERT INTO `t_role_menu` VALUES ('24', '8');
INSERT INTO `t_role_menu` VALUES ('24', '2');
INSERT INTO `t_role_menu` VALUES ('24', '10');
INSERT INTO `t_role_menu` VALUES ('65', '86');
INSERT INTO `t_role_menu` VALUES ('65', '88');
INSERT INTO `t_role_menu` VALUES ('65', '89');
INSERT INTO `t_role_menu` VALUES ('65', '58');
INSERT INTO `t_role_menu` VALUES ('65', '61');
INSERT INTO `t_role_menu` VALUES ('2', '81');
INSERT INTO `t_role_menu` VALUES ('2', '61');
INSERT INTO `t_role_menu` VALUES ('2', '24');
INSERT INTO `t_role_menu` VALUES ('2', '82');
INSERT INTO `t_role_menu` VALUES ('2', '83');
INSERT INTO `t_role_menu` VALUES ('2', '58');
INSERT INTO `t_role_menu` VALUES ('2', '59');
INSERT INTO `t_role_menu` VALUES ('2', '2');
INSERT INTO `t_role_menu` VALUES ('2', '8');
INSERT INTO `t_role_menu` VALUES ('2', '10');
INSERT INTO `t_role_menu` VALUES ('23', '11');
INSERT INTO `t_role_menu` VALUES ('23', '12');
INSERT INTO `t_role_menu` VALUES ('23', '13');
INSERT INTO `t_role_menu` VALUES ('23', '3');
INSERT INTO `t_role_menu` VALUES ('23', '1');
INSERT INTO `t_role_menu` VALUES ('25', '1');
INSERT INTO `t_role_menu` VALUES ('25', '3');
INSERT INTO `t_role_menu` VALUES ('1', '59');
INSERT INTO `t_role_menu` VALUES ('1', '2');
INSERT INTO `t_role_menu` VALUES ('1', '3');
INSERT INTO `t_role_menu` VALUES ('1', '67');
INSERT INTO `t_role_menu` VALUES ('1', '1');
INSERT INTO `t_role_menu` VALUES ('1', '4');
INSERT INTO `t_role_menu` VALUES ('1', '5');
INSERT INTO `t_role_menu` VALUES ('1', '6');
INSERT INTO `t_role_menu` VALUES ('1', '20');
INSERT INTO `t_role_menu` VALUES ('1', '21');
INSERT INTO `t_role_menu` VALUES ('1', '22');
INSERT INTO `t_role_menu` VALUES ('1', '10');
INSERT INTO `t_role_menu` VALUES ('1', '8');
INSERT INTO `t_role_menu` VALUES ('1', '58');
INSERT INTO `t_role_menu` VALUES ('1', '66');
INSERT INTO `t_role_menu` VALUES ('1', '11');
INSERT INTO `t_role_menu` VALUES ('1', '12');
INSERT INTO `t_role_menu` VALUES ('1', '64');
INSERT INTO `t_role_menu` VALUES ('1', '13');
INSERT INTO `t_role_menu` VALUES ('1', '14');
INSERT INTO `t_role_menu` VALUES ('1', '65');
INSERT INTO `t_role_menu` VALUES ('1', '15');
INSERT INTO `t_role_menu` VALUES ('1', '16');
INSERT INTO `t_role_menu` VALUES ('1', '17');
INSERT INTO `t_role_menu` VALUES ('1', '18');
INSERT INTO `t_role_menu` VALUES ('1', '23');
INSERT INTO `t_role_menu` VALUES ('1', '81');
INSERT INTO `t_role_menu` VALUES ('1', '82');
INSERT INTO `t_role_menu` VALUES ('1', '83');
INSERT INTO `t_role_menu` VALUES ('1', '19');
INSERT INTO `t_role_menu` VALUES ('1', '24');
INSERT INTO `t_role_menu` VALUES ('1', '61');
INSERT INTO `t_role_menu` VALUES ('1', '86');
INSERT INTO `t_role_menu` VALUES ('1', '87');
INSERT INTO `t_role_menu` VALUES ('1', '88');
INSERT INTO `t_role_menu` VALUES ('1', '89');
INSERT INTO `t_role_menu` VALUES ('1', '101');
INSERT INTO `t_role_menu` VALUES ('1', '102');
INSERT INTO `t_role_menu` VALUES ('1', '103');
INSERT INTO `t_role_menu` VALUES ('1', '104');
INSERT INTO `t_role_menu` VALUES ('1', '105');
INSERT INTO `t_role_menu` VALUES ('1', '106');
INSERT INTO `t_role_menu` VALUES ('1', '107');
INSERT INTO `t_role_menu` VALUES ('1', '108');
INSERT INTO `t_role_menu` VALUES ('1', '109');
INSERT INTO `t_role_menu` VALUES ('1', '110');
INSERT INTO `t_role_menu` VALUES ('64', '59');
INSERT INTO `t_role_menu` VALUES ('64', '58');
INSERT INTO `t_role_menu` VALUES ('1', '113');
INSERT INTO `t_role_menu` VALUES ('1', '114');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
                          `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
                          `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
                          `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
                          `DEPT_ID` bigint(20) DEFAULT NULL COMMENT '部门ID',
                          `EMAIL` varchar(128) DEFAULT NULL COMMENT '邮箱',
                          `MOBILE` varchar(20) DEFAULT NULL COMMENT '联系电话',
                          `STATUS` char(1) NOT NULL COMMENT '状态 0锁定 1有效',
                          `CRATE_TIME` datetime NOT NULL COMMENT '创建时间',
                          `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
                          `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
                          `SSEX` char(1) DEFAULT NULL COMMENT '性别 0男 1女',
                          `THEME` varchar(10) DEFAULT NULL COMMENT '主题',
                          `AVATAR` varchar(100) DEFAULT NULL COMMENT '头像',
                          `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '描述',
                          PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('4', 'MrBird', '42ee25d1e43e9f57119a00d0a39e5250', '5', 'mrbird@hotmail.com', '13455533222', '1', '2017-12-27 15:47:19', '2018-03-21 09:05:12', '2018-04-02 17:29:32', '0', 'green', 'default.jpg', '我是作者。');
INSERT INTO `t_user` VALUES ('6', 'tester', '243e29429b340192700677d48c09d992', '6', 'tester@qq.com', '13888888888', '1', '2017-12-27 17:35:14', '2018-03-27 09:21:08', '2018-01-23 09:17:27', '1', 'teal', 'default.jpg', null);
INSERT INTO `t_user` VALUES ('23', 'scott', 'ac3af72d9f95161a502fd326865c2f15', '6', 'scott@qq.com', '15134627380', '1', '2017-12-29 16:16:39', '2018-03-29 16:18:36', '2018-03-20 17:59:04', '0', 'blue-grey', 'default.jpg', '我是scott，嗯嗯');
INSERT INTO `t_user` VALUES ('24', 'smith', '228208eafc74e48c44619cc543fc0efe', '3', 'smith@qq.com', '13364754932', '1', '2017-12-29 16:21:31', '2018-02-27 08:48:16', '2018-02-27 08:48:27', '1', 'teal', 'default.jpg', null);
INSERT INTO `t_user` VALUES ('25', 'allen', '83baac97928a113986054efacaeec1d2', '3', 'allen@qq.com', '13427374857', '0', '2017-12-29 16:21:54', '2018-01-17 11:28:16', null, '1', 'indigo', 'default.jpg', null);
INSERT INTO `t_user` VALUES ('26', 'martin', 'b26c9edca9a61016bca1f6fb042e679e', '4', 'martin@qq.com', '15562736678', '1', '2017-12-29 16:22:24', '2018-01-25 09:23:15', '2018-01-25 17:24:50', '1', 'teal', 'default.jpg', null);
INSERT INTO `t_user` VALUES ('27', 'ford', '0448f0dcfd856b0e831842072b532141', '6', 'ford@qq.com', '15599998373', '0', '2017-12-29 16:22:52', '2018-03-13 11:19:56', '2018-03-08 16:31:59', '0', 'cyan', 'default.jpg', null);
INSERT INTO `t_user` VALUES ('91', '系统监控员', '7c28d1cd33414ac15832f7be92668b7a', '6', 'xtjk@qq.com', '18088736652', '1', '2018-01-09 15:52:56', null, '2018-01-09 15:53:12', '0', 'cyan', 'default.jpg', null);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
                               `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
                               `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('27', '3');
INSERT INTO `t_user_role` VALUES ('24', '65');
INSERT INTO `t_user_role` VALUES ('26', '3');
INSERT INTO `t_user_role` VALUES ('26', '23');
INSERT INTO `t_user_role` VALUES ('26', '24');
INSERT INTO `t_user_role` VALUES ('25', '3');
INSERT INTO `t_user_role` VALUES ('91', '24');
INSERT INTO `t_user_role` VALUES ('4', '1');
INSERT INTO `t_user_role` VALUES ('6', '1');
INSERT INTO `t_user_role` VALUES ('6', '2');
INSERT INTO `t_user_role` VALUES ('6', '3');
INSERT INTO `t_user_role` VALUES ('6', '25');
INSERT INTO `t_user_role` VALUES ('6', '63');
INSERT INTO `t_user_role` VALUES ('23', '2');
INSERT INTO `t_user_role` VALUES ('23', '3');
INSERT INTO `t_user_role` VALUES ('23', '23');
INSERT INTO `t_user_role` VALUES ('23', '24');
INSERT INTO `t_user_role` VALUES ('23', '25');
