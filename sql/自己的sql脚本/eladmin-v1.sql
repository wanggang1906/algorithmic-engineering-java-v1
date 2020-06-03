/*
Navicat MySQL Data Transfer

Source Server         : Localhost_MySql
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : eladmin-v1

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-06-03 17:41:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a_test02
-- ----------------------------
DROP TABLE IF EXISTS `a_test02`;
CREATE TABLE `a_test02` (
  `id` bigint(20) NOT NULL,
  `int_field` int(20) DEFAULT NULL,
  `string_ield` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_test02
-- ----------------------------
INSERT INTO `a_test02` VALUES ('1267749306216091648', '1', '1');
INSERT INTO `a_test02` VALUES ('1267749383848464384', '0', '0');
INSERT INTO `a_test02` VALUES ('1267749425455960064', null, null);
INSERT INTO `a_test02` VALUES ('1267749676287922176', '1', '2');
INSERT INTO `a_test02` VALUES ('1267755416104865792', '12', '12');

-- ----------------------------
-- Table structure for a_test_id_name
-- ----------------------------
DROP TABLE IF EXISTS `a_test_id_name`;
CREATE TABLE `a_test_id_name` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_test_id_name
-- ----------------------------
INSERT INTO `a_test_id_name` VALUES ('1', '10', '10', '10');
INSERT INTO `a_test_id_name` VALUES ('1267397710240157696', '12', null, null);
INSERT INTO `a_test_id_name` VALUES ('1267738593158369280', '12', null, null);
INSERT INTO `a_test_id_name` VALUES ('1267738692450127872', '213', null, null);
INSERT INTO `a_test_id_name` VALUES ('1267739240750518272', '123', null, null);
INSERT INTO `a_test_id_name` VALUES ('1267740107167895552', '11', null, null);
INSERT INTO `a_test_id_name` VALUES ('1267740882266886144', '11', null, null);

-- ----------------------------
-- Table structure for code_column_config
-- ----------------------------
DROP TABLE IF EXISTS `code_column_config`;
CREATE TABLE `code_column_config` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) DEFAULT NULL,
  `column_name` varchar(255) DEFAULT NULL,
  `column_type` varchar(255) DEFAULT NULL,
  `dict_name` varchar(255) DEFAULT NULL,
  `extra` varchar(255) DEFAULT NULL,
  `form_show` bit(1) DEFAULT NULL,
  `form_type` varchar(255) DEFAULT NULL,
  `key_type` varchar(255) DEFAULT NULL,
  `list_show` bit(1) DEFAULT NULL,
  `not_null` bit(1) DEFAULT NULL,
  `query_type` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `date_annotation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`column_id`) USING BTREE,
  KEY `idx_table_name` (`table_name`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代码生成字段信息存储';

-- ----------------------------
-- Records of code_column_config
-- ----------------------------
INSERT INTO `code_column_config` VALUES ('187', 'a_test_id_name', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('188', 'a_test_id_name', 'name', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('189', 'a_test_id_name', 'addr', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('190', 'a_test_id_name', 'phone', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('191', 'a_test02', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('194', 'a_test02', 'int_field', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('195', 'a_test02', 'string_ield', 'varchar', null, '', '', null, '', '', '\0', null, '', null);

-- ----------------------------
-- Table structure for code_gen_config
-- ----------------------------
DROP TABLE IF EXISTS `code_gen_config`;
CREATE TABLE `code_gen_config` (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) DEFAULT NULL COMMENT '表名',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `cover` bit(1) DEFAULT NULL COMMENT '是否覆盖',
  `module_name` varchar(255) DEFAULT NULL COMMENT '模块名称',
  `pack` varchar(255) DEFAULT NULL COMMENT '至于哪个包下',
  `path` varchar(255) DEFAULT NULL COMMENT '前端代码生成的路径',
  `api_path` varchar(255) DEFAULT NULL COMMENT '前端Api文件路径',
  `prefix` varchar(255) DEFAULT NULL COMMENT '表前缀',
  `api_alias` varchar(255) DEFAULT NULL COMMENT '接口名称',
  PRIMARY KEY (`config_id`) USING BTREE,
  KEY `idx_table_name` (`table_name`(100))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代码生成器配置';

-- ----------------------------
-- Records of code_gen_config
-- ----------------------------
INSERT INTO `code_gen_config` VALUES ('6', 'a_test_id_name', 'test02', '\0', 'test-con', 'me.zhengjie.controller', 'example/test02', 'example/test02\\', null, 'ATest02');
INSERT INTO `code_gen_config` VALUES ('7', 'a_test02', 'test02', '\0', 'test-con', 'me.zhengjie.test02', 'example/test02', 'example/test02\\', null, 'gen-test02');

-- ----------------------------
-- Table structure for mnt_app
-- ----------------------------
DROP TABLE IF EXISTS `mnt_app`;
CREATE TABLE `mnt_app` (
  `app_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '应用名称',
  `upload_path` varchar(255) DEFAULT NULL COMMENT '上传目录',
  `deploy_path` varchar(255) DEFAULT NULL COMMENT '部署路径',
  `backup_path` varchar(255) DEFAULT NULL COMMENT '备份路径',
  `port` int(255) DEFAULT NULL COMMENT '应用端口',
  `start_script` varchar(4000) DEFAULT NULL COMMENT '启动脚本',
  `deploy_script` varchar(4000) DEFAULT NULL COMMENT '部署脚本',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`app_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='应用管理';

-- ----------------------------
-- Records of mnt_app
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_database
-- ----------------------------
DROP TABLE IF EXISTS `mnt_database`;
CREATE TABLE `mnt_database` (
  `db_id` varchar(50) NOT NULL COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `jdbc_url` varchar(255) NOT NULL COMMENT 'jdbc连接',
  `user_name` varchar(255) NOT NULL COMMENT '账号',
  `pwd` varchar(255) NOT NULL COMMENT '密码',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`db_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据库管理';

-- ----------------------------
-- Records of mnt_database
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy`;
CREATE TABLE `mnt_deploy` (
  `deploy_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `app_id` bigint(20) DEFAULT NULL COMMENT '应用编号',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`deploy_id`) USING BTREE,
  KEY `FK6sy157pseoxx4fmcqr1vnvvhy` (`app_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部署管理';

-- ----------------------------
-- Records of mnt_deploy
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy_history
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_history`;
CREATE TABLE `mnt_deploy_history` (
  `history_id` varchar(50) NOT NULL COMMENT 'ID',
  `app_name` varchar(255) NOT NULL COMMENT '应用名称',
  `deploy_date` datetime NOT NULL COMMENT '部署日期',
  `deploy_user` varchar(50) NOT NULL COMMENT '部署用户',
  `ip` varchar(20) NOT NULL COMMENT '服务器IP',
  `deploy_id` bigint(20) DEFAULT NULL COMMENT '部署编号',
  PRIMARY KEY (`history_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部署历史管理';

-- ----------------------------
-- Records of mnt_deploy_history
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_server`;
CREATE TABLE `mnt_deploy_server` (
  `deploy_id` bigint(20) NOT NULL COMMENT '部署ID',
  `server_id` bigint(20) NOT NULL COMMENT '服务ID',
  PRIMARY KEY (`deploy_id`,`server_id`) USING BTREE,
  KEY `FKeaaha7jew9a02b3bk9ghols53` (`server_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='应用与服务器关联';

-- ----------------------------
-- Records of mnt_deploy_server
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_server`;
CREATE TABLE `mnt_server` (
  `server_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `account` varchar(50) DEFAULT NULL COMMENT '账号',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `port` int(11) DEFAULT NULL COMMENT '端口',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`server_id`) USING BTREE,
  KEY `idx_ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='服务器管理';

-- ----------------------------
-- Records of mnt_server
-- ----------------------------
INSERT INTO `mnt_server` VALUES ('1', 'root', '132.232.129.20', '腾讯云', 'Dqjdda1996.', '8013', null, null, '2019-11-24 20:35:02', null);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint(20) DEFAULT NULL COMMENT '上级部门',
  `sub_count` int(5) DEFAULT '0' COMMENT '子部门数目',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `dept_sort` int(5) DEFAULT '999' COMMENT '排序',
  `enabled` bit(1) NOT NULL COMMENT '状态',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE,
  KEY `inx_pid` (`pid`),
  KEY `inx_enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部门';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('2', '7', '0', '研发部', '3', '', null, 'admin', '2019-03-25 09:15:32', '2020-05-10 17:37:58');
INSERT INTO `sys_dept` VALUES ('5', '7', '0', '运维部', '4', '', null, null, '2019-03-25 09:20:44', null);
INSERT INTO `sys_dept` VALUES ('6', '8', '0', '测试部', '6', '', null, null, '2019-03-25 09:52:18', null);
INSERT INTO `sys_dept` VALUES ('7', null, '2', '华南分部', '0', '', null, 'admin', '2019-03-25 11:04:50', '2020-05-10 19:59:12');
INSERT INTO `sys_dept` VALUES ('8', null, '2', '华北分部', '1', '', null, 'admin', '2019-03-25 11:04:53', '2020-05-14 12:54:00');
INSERT INTO `sys_dept` VALUES ('15', '8', '0', 'UI部门', '7', '', 'admin', 'admin', '2020-05-13 22:56:53', '2020-05-14 12:54:13');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '字典名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', 'user_status', '用户状态', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict` VALUES ('4', 'dept_status', '部门状态', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict` VALUES ('5', 'job_status', '岗位状态', null, null, '2019-10-27 20:31:36', null);

-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_detail`;
CREATE TABLE `sys_dict_detail` (
  `detail_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dict_id` bigint(11) DEFAULT NULL COMMENT '字典id',
  `label` varchar(255) NOT NULL COMMENT '字典标签',
  `value` varchar(255) NOT NULL COMMENT '字典值',
  `dict_sort` int(5) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`detail_id`) USING BTREE,
  KEY `FK5tpkputc6d9nboxojdbgnpmyb` (`dict_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典详情';

-- ----------------------------
-- Records of sys_dict_detail
-- ----------------------------
INSERT INTO `sys_dict_detail` VALUES ('1', '1', '激活', 'true', '1', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict_detail` VALUES ('2', '1', '禁用', 'false', '2', null, null, null, null);
INSERT INTO `sys_dict_detail` VALUES ('3', '4', '启用', 'true', '1', null, null, null, null);
INSERT INTO `sys_dict_detail` VALUES ('4', '4', '停用', 'false', '2', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict_detail` VALUES ('5', '5', '启用', 'true', '1', null, null, null, null);
INSERT INTO `sys_dict_detail` VALUES ('6', '5', '停用', 'false', '2', null, null, '2019-10-27 20:31:36', null);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '岗位名称',
  `enabled` bit(1) NOT NULL COMMENT '岗位状态',
  `job_sort` int(5) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`job_id`) USING BTREE,
  UNIQUE KEY `uniq_name` (`name`),
  KEY `inx_enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='岗位';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('8', '人事专员', '', '3', null, null, '2019-03-29 14:52:28', null);
INSERT INTO `sys_job` VALUES ('10', '产品经理', '', '4', null, null, '2019-03-29 14:55:51', null);
INSERT INTO `sys_job` VALUES ('11', '全栈开发', '', '2', null, 'admin', '2019-03-31 13:39:30', '2020-05-05 11:33:43');
INSERT INTO `sys_job` VALUES ('12', '软件测试', '', '5', null, 'admin', '2019-03-31 13:39:43', '2020-05-10 19:56:26');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `description` varchar(255) DEFAULT NULL,
  `log_type` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `params` text,
  `request_ip` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `exception_detail` text,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  KEY `log_create_time_index` (`create_time`),
  KEY `inx_log_type` (`log_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2763 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('2573', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '7', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 11:51:43');
INSERT INTO `sys_log` VALUES ('2574', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=null, pid=6)  }', '169.254.215.193', '13', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 11:51:51');
INSERT INTO `sys_log` VALUES ('2575', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@575bf89c]]  }', '169.254.215.193', '276', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 11:52:16');
INSERT INTO `sys_log` VALUES ('2576', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '4', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 11:52:16');
INSERT INTO `sys_log` VALUES ('2577', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=null, pid=1)  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 11:52:19');
INSERT INTO `sys_log` VALUES ('2578', '修改菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.update()', '{me.zhengjie.modules.system.domain.Menu@53b67d2e[id=1,\n,roles=<null>,\n,title=系统管理,\n,componentName=<null>,\n,menuSort=1,\n,component=<null>,\n,path=system,\n,type=0,\n,permission=<null>,\n,icon=system,\n,cache=false,\n,hidden=false,\n,pid=<null>,\n,subCount=7,\n,iFrame=false,\n]  }', '169.254.215.193', '45', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 11:52:23');
INSERT INTO `sys_log` VALUES ('2579', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '8', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 11:52:23');
INSERT INTO `sys_log` VALUES ('2580', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=null, pid=1)  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 11:52:27');
INSERT INTO `sys_log` VALUES ('2581', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@575bf89c]]  }', '169.254.215.193', '259', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 11:53:47');
INSERT INTO `sys_log` VALUES ('2582', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 11:53:48');
INSERT INTO `sys_log` VALUES ('2583', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 11:53:57');
INSERT INTO `sys_log` VALUES ('2584', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '86', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 13:30:52');
INSERT INTO `sys_log` VALUES ('2585', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '10', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 13:32:09');
INSERT INTO `sys_log` VALUES ('2586', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '117', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 14:11:55');
INSERT INTO `sys_log` VALUES ('2587', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@13d06685]]  }', '169.254.215.193', '1572', 'admin', ' 本地链路', 'Internet Explorer 11', null, '2020-06-02 14:40:39');
INSERT INTO `sys_log` VALUES ('2588', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '162', 'admin', ' 本地链路', 'Internet Explorer 11', null, '2020-06-02 14:40:46');
INSERT INTO `sys_log` VALUES ('2589', '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '169.254.215.193', '220', 'admin', ' 本地链路', 'Internet Explorer 11', null, '2020-06-02 14:40:50');
INSERT INTO `sys_log` VALUES ('2590', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@15741204]]  }', '169.254.215.193', '1460', 'admin', ' 本地链路', 'Internet Explorer 11', null, '2020-06-02 15:48:00');
INSERT INTO `sys_log` VALUES ('2591', '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '169.254.215.193', '296', 'admin', ' 本地链路', 'Internet Explorer 11', null, '2020-06-02 15:48:10');
INSERT INTO `sys_log` VALUES ('2592', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=dept_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.215.193', '12307', 'admin', ' 本地链路', 'Internet Explorer 11', null, '2020-06-02 15:48:34');
INSERT INTO `sys_log` VALUES ('2593', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '90', 'admin', ' 本地链路', 'Internet Explorer 11', null, '2020-06-02 15:48:34');
INSERT INTO `sys_log` VALUES ('2594', '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '169.254.215.193', '12226', 'admin', ' 本地链路', 'Internet Explorer 11', null, '2020-06-02 15:48:34');
INSERT INTO `sys_log` VALUES ('2595', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@15741204]]  }', '169.254.215.193', '259', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:10:21');
INSERT INTO `sys_log` VALUES ('2596', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '11', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:10:28');
INSERT INTO `sys_log` VALUES ('2597', '新增菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{me.zhengjie.modules.system.domain.Menu@35bd4635[id=120,\n,roles=<null>,\n,title=WEB,\n,componentName=<null>,\n,menuSort=7,\n,component=<null>,\n,path=example,\n,type=0,\n,permission=<null>,\n,icon=dev,\n,cache=false,\n,hidden=false,\n,pid=<null>,\n,subCount=0,\n,iFrame=false,\n]  }', '169.254.215.193', '119', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:10:59');
INSERT INTO `sys_log` VALUES ('2598', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '14', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:10:59');
INSERT INTO `sys_log` VALUES ('2599', '新增菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{me.zhengjie.modules.system.domain.Menu@49daa97b[id=121,\n,roles=<null>,\n,title=wgcrud,\n,componentName=Wgcrud,\n,menuSort=1,\n,component=example/wgcrud/index,\n,path=wgcrud,\n,type=1,\n,permission=<null>,\n,icon=education,\n,cache=false,\n,hidden=false,\n,pid=120,\n,subCount=0,\n,iFrame=false,\n]  }', '169.254.215.193', '68', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:12:36');
INSERT INTO `sys_log` VALUES ('2600', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '17', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:12:36');
INSERT INTO `sys_log` VALUES ('2601', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=null, pid=120)  }', '169.254.215.193', '14', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:12:46');
INSERT INTO `sys_log` VALUES ('2602', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=null, pid=1)  }', '169.254.215.193', '10', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:12:48');
INSERT INTO `sys_log` VALUES ('2603', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '11', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:13:16');
INSERT INTO `sys_log` VALUES ('2604', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=null, pid=120)  }', '169.254.215.193', '8', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:13:19');
INSERT INTO `sys_log` VALUES ('2605', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=null, pid=1)  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:13:27');
INSERT INTO `sys_log` VALUES ('2606', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '9', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:14:27');
INSERT INTO `sys_log` VALUES ('2607', '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '169.254.215.193', '41', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:14:30');
INSERT INTO `sys_log` VALUES ('2608', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '8', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:14:41');
INSERT INTO `sys_log` VALUES ('2609', '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '169.254.215.193', '43', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:14:50');
INSERT INTO `sys_log` VALUES ('2610', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '5845', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:16:44');
INSERT INTO `sys_log` VALUES ('2611', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '8537', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:23:16');
INSERT INTO `sys_log` VALUES ('2612', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '24797', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:27:05');
INSERT INTO `sys_log` VALUES ('2613', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '4408', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:33:01');
INSERT INTO `sys_log` VALUES ('2614', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '4591', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:34:18');
INSERT INTO `sys_log` VALUES ('2615', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getSuperior()', '{[120]  }', '169.254.215.193', '11334', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:34:33');
INSERT INTO `sys_log` VALUES ('2616', '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '169.254.215.193', '159', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:34:53');
INSERT INTO `sys_log` VALUES ('2617', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getSuperior()', '{[33, 97, 34, 98, 35, 36, 37, 38, 39, 41, 116, 1, 2, 3, 5, 6, 7, 9, 10, 11, 14, 15, 16, 80, 18, 82, 19, 83, 21, 22, 23, 90, 28, 92, 93, 30, 94, 32]  }', '169.254.215.193', '5723', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:35:00');
INSERT INTO `sys_log` VALUES ('2618', '修改角色菜单', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{me.zhengjie.modules.system.domain.Role@281b8d2c[id=1,\n,users=<null>,\n,menus=[me.zhengjie.modules.system.domain.Menu@763d77be[id=33,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@37308954[id=97,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@1a8ef8ad[id=34,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@17a8abc3[id=98,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@a35be0f[id=35,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@39fcfc34[id=36,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@54da2036[id=37,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6fe6fdd[id=38,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@211c7ccb[id=39,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@7fdf2980[id=41,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@7a816ddd[id=116,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@f7475d7[id=120,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@217fb5e2[id=121,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@99f8da4[id=1,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@934eee4[id=2,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@75b818fe[id=3,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@2d3d0870[id=5,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@58ba42de[id=6,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@76d7d4e3[id=7,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@439d5d2f[id=9,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6a6b3a4[id=10,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@c00bd1c[id=11,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@443810b3[id=14,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6d65593e[id=15,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@5eedeca5[id=80,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@578c5239[id=16,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@53357df3[id=18,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@145e6202[id=82,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@25e72ce8[id=83,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@104faff7[id=19,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@68ed82e8[id=21,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@f44a385[id=22,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@13d84ee9[id=23,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@7e056b72[id=90,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@7a7b4c98[id=28,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@500990d9[id=92,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@1773337[id=93,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@54fc8690[id=30,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@74431f1b[id=94,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@68d0d612[id=32,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n]],\n,depts=<null>,\n,name=<null>,\n,dataScope=本级,\n,level=3,\n,description=<null>,\n]  }', '169.254.215.193', '317', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:35:08');
INSERT INTO `sys_log` VALUES ('2619', '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '169.254.215.193', '28', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:35:15');
INSERT INTO `sys_log` VALUES ('2620', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '6545', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:36:27');
INSERT INTO `sys_log` VALUES ('2621', '新增菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{me.zhengjie.modules.system.domain.Menu@7edae6bd[id=122,\n,roles=<null>,\n,title=gencrud,\n,componentName=ATestIdName,\n,menuSort=2,\n,component=example/gencrud/index,\n,path=gencrud,\n,type=1,\n,permission=<null>,\n,icon=dev,\n,cache=false,\n,hidden=false,\n,pid=120,\n,subCount=0,\n,iFrame=false,\n]  }', '169.254.215.193', '75', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:38:07');
INSERT INTO `sys_log` VALUES ('2622', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:38:08');
INSERT INTO `sys_log` VALUES ('2623', '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '169.254.215.193', '27', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:38:11');
INSERT INTO `sys_log` VALUES ('2624', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getSuperior()', '{[33, 97, 34, 98, 35, 36, 37, 38, 39, 41, 116, 120, 121, 1, 2, 3, 5, 6, 7, 9, 10, 11, 14, 15, 16, 80, 18, 82, 19, 83, 21, 22, 23, 90, 28, 92, 93, 30, 94, 32]  }', '169.254.215.193', '427', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:38:14');
INSERT INTO `sys_log` VALUES ('2625', '修改角色菜单', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{me.zhengjie.modules.system.domain.Role@45feb932[id=1,\n,users=<null>,\n,menus=[me.zhengjie.modules.system.domain.Menu@252b2aea[id=33,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@43241b75[id=97,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@79b969fa[id=34,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@25f5493f[id=98,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@59f54b11[id=35,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@3ae90ce9[id=36,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@82d54f7[id=37,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@71e487c[id=38,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@7440264d[id=39,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@63cf268[id=41,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@645494b4[id=116,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@11fc7dea[id=120,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@647b43d6[id=121,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@5354283[id=122,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@11cc75a[id=1,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@43867c1[id=2,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@156994d2[id=3,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@ede4576[id=5,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@691f75e0[id=6,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@2ede016d[id=7,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@7748cf60[id=9,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@b41c10a[id=10,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@19e315f7[id=11,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@47e8bacf[id=14,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@76ea4e9d[id=15,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@732698db[id=80,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@72eb67e5[id=16,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@70d795b5[id=18,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@546da394[id=82,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@134a0982[id=83,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@3ab78041[id=19,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@7601d09f[id=21,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@4f49acc8[id=22,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@c8cbaba[id=23,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@a3f96e2[id=90,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@72c22a12[id=28,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@70eff76e[id=92,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@195fdaa3[id=93,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6fa1d7ec[id=30,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@cd0f2b0[id=94,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@30b30c3[id=32,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n]],\n,depts=<null>,\n,name=<null>,\n,dataScope=本级,\n,level=3,\n,description=<null>,\n]  }', '169.254.215.193', '62', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:38:17');
INSERT INTO `sys_log` VALUES ('2626', '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '169.254.215.193', '20', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:38:23');
INSERT INTO `sys_log` VALUES ('2627', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '65', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:38:27');
INSERT INTO `sys_log` VALUES ('2628', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '145', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:42:42');
INSERT INTO `sys_log` VALUES ('2629', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '9', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:42:49');
INSERT INTO `sys_log` VALUES ('2630', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '8', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:42:55');
INSERT INTO `sys_log` VALUES ('2631', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=11, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '27', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:43:00');
INSERT INTO `sys_log` VALUES ('2632', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=1, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '10', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:43:07');
INSERT INTO `sys_log` VALUES ('2633', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=1, name=1) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '31', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:43:17');
INSERT INTO `sys_log` VALUES ('2634', '新增gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.create()', '{ATestIdName(id=1267738593158369280, name=12, addr=null, phone=null)  }', '169.254.215.193', '39', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:43:29');
INSERT INTO `sys_log` VALUES ('2635', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=1, name=1) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '16', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:43:29');
INSERT INTO `sys_log` VALUES ('2636', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=1, name=1) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '8', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:43:42');
INSERT INTO `sys_log` VALUES ('2637', '新增gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.create()', '{ATestIdName(id=1267738692450127872, name=213, addr=null, phone=null)  }', '169.254.215.193', '12', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:43:52');
INSERT INTO `sys_log` VALUES ('2638', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=1, name=1) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:43:53');
INSERT INTO `sys_log` VALUES ('2639', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=1, name=1) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '9', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:43:55');
INSERT INTO `sys_log` VALUES ('2640', '新增gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.create()', '{ATestIdName(id=1267739240750518272, name=123, addr=null, phone=null)  }', '169.254.215.193', '48257', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:46:30');
INSERT INTO `sys_log` VALUES ('2641', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=1, name=1) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '8', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:46:31');
INSERT INTO `sys_log` VALUES ('2642', '新增gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.create()', '{ATestIdName(id=1267740107167895552, name=11, addr=null, phone=null)  }', '169.254.215.193', '307196', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:52:35');
INSERT INTO `sys_log` VALUES ('2643', '新增gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.create()', '{ATestIdName(id=1267740882266886144, name=11, addr=null, phone=null)  }', '169.254.215.193', '1885', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:52:35');
INSERT INTO `sys_log` VALUES ('2644', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.215.193', '145', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 16:53:04');
INSERT INTO `sys_log` VALUES ('2645', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.215.193', '27', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:05:12');
INSERT INTO `sys_log` VALUES ('2646', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '42', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:11:47');
INSERT INTO `sys_log` VALUES ('2647', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=null, pid=120)  }', '169.254.215.193', '13', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:11:53');
INSERT INTO `sys_log` VALUES ('2648', '新增菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.create()', '{me.zhengjie.modules.system.domain.Menu@5c25b96c[id=123,\n,roles=<null>,\n,title=genTest02,\n,componentName=ATest02,\n,menuSort=999,\n,component=example/test02/index,\n,path=gentest02,\n,type=1,\n,permission=<null>,\n,icon=download,\n,cache=false,\n,hidden=false,\n,pid=120,\n,subCount=0,\n,iFrame=false,\n]  }', '169.254.215.193', '314', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:12:54');
INSERT INTO `sys_log` VALUES ('2649', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '17', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:12:54');
INSERT INTO `sys_log` VALUES ('2650', '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '169.254.215.193', '72', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:12:57');
INSERT INTO `sys_log` VALUES ('2651', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.getSuperior()', '{[33, 97, 34, 98, 35, 36, 37, 38, 39, 41, 116, 120, 121, 122, 1, 2, 3, 5, 6, 7, 9, 10, 11, 14, 15, 16, 80, 18, 82, 19, 83, 21, 22, 23, 90, 28, 92, 93, 30, 94, 32]  }', '169.254.215.193', '510', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:12:59');
INSERT INTO `sys_log` VALUES ('2652', '修改角色菜单', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.updateMenu()', '{me.zhengjie.modules.system.domain.Role@28480485[id=1,\n,users=<null>,\n,menus=[me.zhengjie.modules.system.domain.Menu@6b000aa7[id=33,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@4f721743[id=97,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@5708c5f1[id=34,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@72263fec[id=98,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@1998463d[id=35,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@460f8242[id=36,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@5739e03f[id=37,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@14236c6b[id=38,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@4f51797c[id=39,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@7576ff46[id=41,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6dd6d1cf[id=116,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6219b82a[id=120,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@2647b78c[id=121,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6409e0cd[id=122,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@3f0a1d2a[id=123,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@5f6853b9[id=1,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6240139c[id=2,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@5e1e8ecc[id=3,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@39094c5b[id=5,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@24612558[id=6,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@465f1ebb[id=7,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6c1d9052[id=9,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@1f05621e[id=10,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@32e3cf43[id=11,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@cf7b562[id=14,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@ce82bae[id=15,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@38c9bdbf[id=80,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@14fce432[id=16,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@25111f6a[id=18,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6869e53d[id=82,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@1db889ca[id=83,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6e96333b[id=19,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@43519bcc[id=21,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@6436de96[id=22,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@3d99fd03[id=23,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@62491e60[id=90,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@2d09761e[id=28,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@7f19df47[id=92,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@d9a5442[id=93,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@278af18f[id=30,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@4155dae6[id=94,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n], me.zhengjie.modules.system.domain.Menu@7087c66c[id=32,\n,roles=<null>,\n,title=<null>,\n,componentName=<null>,\n,menuSort=999,\n,component=<null>,\n,path=<null>,\n,type=<null>,\n,permission=<null>,\n,icon=<null>,\n,cache=<null>,\n,hidden=<null>,\n,pid=<null>,\n,subCount=0,\n,iFrame=<null>,\n]],\n,depts=<null>,\n,name=<null>,\n,dataScope=本级,\n,level=3,\n,description=<null>,\n]  }', '169.254.215.193', '132', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:13:04');
INSERT INTO `sys_log` VALUES ('2653', '查询角色', 'INFO', 'me.zhengjie.modules.system.rest.RoleController.query()', '{RoleQueryCriteria(blurry=null, createTime=null) Page request [number: 0, size 10, sort: level: ASC]  }', '169.254.215.193', '35', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:13:11');
INSERT INTO `sys_log` VALUES ('2654', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.215.193', '168', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:17:18');
INSERT INTO `sys_log` VALUES ('2655', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.215.193', '26', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:17:25');
INSERT INTO `sys_log` VALUES ('2656', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.215.193', '30', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:17:46');
INSERT INTO `sys_log` VALUES ('2657', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.215.193', '22', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:17:50');
INSERT INTO `sys_log` VALUES ('2658', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.215.193', '162', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:19:55');
INSERT INTO `sys_log` VALUES ('2659', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.215.193', '21', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:20:27');
INSERT INTO `sys_log` VALUES ('2660', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.215.193', '26', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:21:10');
INSERT INTO `sys_log` VALUES ('2661', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '111', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:25:51');
INSERT INTO `sys_log` VALUES ('2662', '新增gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.create()', '{ATest02(id=1267749306216091648, intField=null, stringIeld=null)  }', '169.254.215.193', '33', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:26:03');
INSERT INTO `sys_log` VALUES ('2663', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '21', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:26:03');
INSERT INTO `sys_log` VALUES ('2664', '新增gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.create()', '{ATest02(id=1267749383848464384, intField=null, stringIeld=null)  }', '169.254.215.193', '12', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:26:22');
INSERT INTO `sys_log` VALUES ('2665', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '7', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:26:22');
INSERT INTO `sys_log` VALUES ('2666', '新增gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.create()', '{ATest02(id=1267749425455960064, intField=null, stringIeld=null)  }', '169.254.215.193', '11', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:26:31');
INSERT INTO `sys_log` VALUES ('2667', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '7', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:26:32');
INSERT INTO `sys_log` VALUES ('2668', '新增gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.create()', '{ATest02(id=1267749676287922176, intField=null, stringIeld=null)  }', '169.254.215.193', '12169', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:27:31');
INSERT INTO `sys_log` VALUES ('2669', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '9', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:27:32');
INSERT INTO `sys_log` VALUES ('2670', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '10', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:28:44');
INSERT INTO `sys_log` VALUES ('2671', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '9', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:28:59');
INSERT INTO `sys_log` VALUES ('2672', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '8', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:29:24');
INSERT INTO `sys_log` VALUES ('2673', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@200b6ea0]]  }', '169.254.215.193', '1596', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:40:31');
INSERT INTO `sys_log` VALUES ('2674', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '96', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:40:32');
INSERT INTO `sys_log` VALUES ('2675', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '32', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:40:51');
INSERT INTO `sys_log` VALUES ('2676', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '9', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:42:28');
INSERT INTO `sys_log` VALUES ('2677', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '13', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:42:31');
INSERT INTO `sys_log` VALUES ('2678', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '8', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:44:09');
INSERT INTO `sys_log` VALUES ('2679', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@200b6ea0]]  }', '169.254.215.193', '256', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:44:17');
INSERT INTO `sys_log` VALUES ('2680', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '11', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:46:13');
INSERT INTO `sys_log` VALUES ('2681', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '25', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:48:38');
INSERT INTO `sys_log` VALUES ('2682', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '14', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:49:07');
INSERT INTO `sys_log` VALUES ('2683', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '7', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:49:13');
INSERT INTO `sys_log` VALUES ('2684', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '5', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:49:46');
INSERT INTO `sys_log` VALUES ('2685', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '8', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:49:52');
INSERT INTO `sys_log` VALUES ('2686', '修改gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.update()', '{ATest02(id=1267749676287922176, intField=1, stringIeld=2)  }', '169.254.215.193', '76', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:50:06');
INSERT INTO `sys_log` VALUES ('2687', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '12', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:50:06');
INSERT INTO `sys_log` VALUES ('2688', '新增gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.create()', '{ATest02(id=1267755416104865792, intField=12, stringIeld=12)  }', '169.254.215.193', '5804', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:50:20');
INSERT INTO `sys_log` VALUES ('2689', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '10', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:50:20');
INSERT INTO `sys_log` VALUES ('2690', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '5', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:50:26');
INSERT INTO `sys_log` VALUES ('2691', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:50:42');
INSERT INTO `sys_log` VALUES ('2692', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:51:31');
INSERT INTO `sys_log` VALUES ('2693', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '9', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:53:07');
INSERT INTO `sys_log` VALUES ('2694', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '7', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:53:11');
INSERT INTO `sys_log` VALUES ('2695', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '4', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:53:14');
INSERT INTO `sys_log` VALUES ('2696', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '5', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:53:15');
INSERT INTO `sys_log` VALUES ('2697', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '7', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:53:21');
INSERT INTO `sys_log` VALUES ('2698', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '9', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:57:20');
INSERT INTO `sys_log` VALUES ('2699', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '5', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:57:38');
INSERT INTO `sys_log` VALUES ('2700', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '7', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:57:41');
INSERT INTO `sys_log` VALUES ('2701', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=null, name=2) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '33', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:57:49');
INSERT INTO `sys_log` VALUES ('2702', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '12', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:58:36');
INSERT INTO `sys_log` VALUES ('2703', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '8', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:58:45');
INSERT INTO `sys_log` VALUES ('2704', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:58:46');
INSERT INTO `sys_log` VALUES ('2705', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '5', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:58:47');
INSERT INTO `sys_log` VALUES ('2706', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:58:48');
INSERT INTO `sys_log` VALUES ('2707', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '5', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:59:05');
INSERT INTO `sys_log` VALUES ('2708', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '7', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:59:12');
INSERT INTO `sys_log` VALUES ('2709', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:59:13');
INSERT INTO `sys_log` VALUES ('2710', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:59:14');
INSERT INTO `sys_log` VALUES ('2711', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:59:14');
INSERT INTO `sys_log` VALUES ('2712', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '6', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 17:59:15');
INSERT INTO `sys_log` VALUES ('2713', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '9', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-02 18:00:22');
INSERT INTO `sys_log` VALUES ('2714', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@7c943251]]  }', '169.254.215.193', '2208', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:08:57');
INSERT INTO `sys_log` VALUES ('2715', '查询gencrud', 'INFO', 'me.zhengjie.controller.rest.ATestIdNameController.query()', '{ATestIdNameQueryCriteria(id=null, name=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '68', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:09:06');
INSERT INTO `sys_log` VALUES ('2716', '查询gen-test02', 'INFO', 'me.zhengjie.test02.rest.ATest02Controller.query()', '{ATest02QueryCriteria() Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '30', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:09:09');
INSERT INTO `sys_log` VALUES ('2717', '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '169.254.215.193', '98', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:14:42');
INSERT INTO `sys_log` VALUES ('2718', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=dept_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.215.193', '169', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:14:42');
INSERT INTO `sys_log` VALUES ('2719', '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '169.254.215.193', '1438', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:17:58');
INSERT INTO `sys_log` VALUES ('2720', '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '169.254.215.193', '132095', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:17:58');
INSERT INTO `sys_log` VALUES ('2721', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=dept_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.215.193', '132104', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:17:58');
INSERT INTO `sys_log` VALUES ('2722', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=dept_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.215.193', '1429', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:17:59');
INSERT INTO `sys_log` VALUES ('2723', '查询菜单', 'INFO', 'me.zhengjie.modules.system.rest.MenuController.query()', '{MenuQueryCriteria(blurry=null, createTime=null, pidIsNull=true, pid=null)  }', '169.254.215.193', '25', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:18:15');
INSERT INTO `sys_log` VALUES ('2724', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=dept_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.215.193', '10', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:18:20');
INSERT INTO `sys_log` VALUES ('2725', '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '169.254.215.193', '3042', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:18:20');
INSERT INTO `sys_log` VALUES ('2726', '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '169.254.215.193', '62528', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:19:48');
INSERT INTO `sys_log` VALUES ('2727', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=dept_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.215.193', '8', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:19:48');
INSERT INTO `sys_log` VALUES ('2728', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=dept_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.215.193', '4122', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:20:54');
INSERT INTO `sys_log` VALUES ('2729', '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '169.254.215.193', '4114', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:20:54');
INSERT INTO `sys_log` VALUES ('2730', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=dept_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.215.193', '15', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:22:45');
INSERT INTO `sys_log` VALUES ('2731', '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '169.254.215.193', '4486', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:22:45');
INSERT INTO `sys_log` VALUES ('2732', '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '169.254.215.193', '7861', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:24:05');
INSERT INTO `sys_log` VALUES ('2733', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=dept_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.215.193', '7871', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 15:24:06');
INSERT INTO `sys_log` VALUES ('2734', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '424', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 16:25:55');
INSERT INTO `sys_log` VALUES ('2735', '上传图片', 'INFO', 'me.zhengjie.rest.PictureController.upload()', '{org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@43af5278  }', '0:0:0:0:0:0:0:1', '11855', 'admin', '上海市 联通', 'Chrome 8', null, '2020-06-03 16:26:18');
INSERT INTO `sys_log` VALUES ('2736', '上传图片', 'INFO', 'me.zhengjie.rest.PictureController.upload()', '{org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@6676e98a  }', '0:0:0:0:0:0:0:1', '11761', 'admin', '上海市 联通', 'Chrome 8', null, '2020-06-03 16:26:34');
INSERT INTO `sys_log` VALUES ('2737', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '33', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 16:26:35');
INSERT INTO `sys_log` VALUES ('2738', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '10', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 16:26:36');
INSERT INTO `sys_log` VALUES ('2739', '上传图片', 'INFO', 'me.zhengjie.rest.PictureController.upload()', '{org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@44994cdf  }', '0:0:0:0:0:0:0:1', '7880', 'admin', '上海市 联通', 'Chrome 8', null, '2020-06-03 16:27:06');
INSERT INTO `sys_log` VALUES ('2740', '上传图片', 'INFO', 'me.zhengjie.rest.PictureController.upload()', '{org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@ce4dd1b  }', '0:0:0:0:0:0:0:1', '9460', 'admin', '上海市 联通', 'Chrome 8', null, '2020-06-03 16:27:28');
INSERT INTO `sys_log` VALUES ('2741', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '19', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 16:27:28');
INSERT INTO `sys_log` VALUES ('2742', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '7', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 16:27:28');
INSERT INTO `sys_log` VALUES ('2743', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '11', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 16:28:18');
INSERT INTO `sys_log` VALUES ('2744', '上传图片', 'INFO', 'me.zhengjie.rest.PictureController.upload()', '{org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@c173793  }', '0:0:0:0:0:0:0:1', '213496', 'admin', '上海市 联通', 'Chrome 8', null, '2020-06-03 16:32:48');
INSERT INTO `sys_log` VALUES ('2745', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '128', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 16:48:53');
INSERT INTO `sys_log` VALUES ('2746', '查询部门', 'INFO', 'me.zhengjie.modules.system.rest.DeptController.query()', '{DeptQueryCriteria(name=null, enabled=null, pid=null, pidIsNull=true, createTime=null)  }', '169.254.215.193', '12866', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:02:43');
INSERT INTO `sys_log` VALUES ('2747', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=dept_status) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.215.193', '12938', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:02:43');
INSERT INTO `sys_log` VALUES ('2748', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '110', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:08:59');
INSERT INTO `sys_log` VALUES ('2749', '上传图片', 'INFO', 'me.zhengjie.rest.PictureController.upload00()', '{org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@3f3d4787  }', '0:0:0:0:0:0:0:1', '10596', 'admin', '上海市 联通', 'Chrome 8', null, '2020-06-03 17:09:24');
INSERT INTO `sys_log` VALUES ('2750', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '16', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:09:28');
INSERT INTO `sys_log` VALUES ('2751', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '7', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:09:28');
INSERT INTO `sys_log` VALUES ('2752', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '20', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:09:36');
INSERT INTO `sys_log` VALUES ('2753', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '288', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:20:23');
INSERT INTO `sys_log` VALUES ('2754', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '27', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:21:44');
INSERT INTO `sys_log` VALUES ('2755', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '45', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:23:05');
INSERT INTO `sys_log` VALUES ('2756', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '10', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:23:18');
INSERT INTO `sys_log` VALUES ('2757', '上传图片', 'INFO', 'me.zhengjie.rest.PictureController.upload()', '{org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@5d1ffbc9  }', '0:0:0:0:0:0:0:1', '16736', 'admin', '上海市 联通', 'Chrome 8', null, '2020-06-03 17:26:26');
INSERT INTO `sys_log` VALUES ('2758', '上传图片', 'INFO', 'me.zhengjie.rest.PictureController.upload()', '{org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@7f41e2c1  }', '0:0:0:0:0:0:0:1', '37277', 'admin', '上海市 联通', 'Chrome 8', null, '2020-06-03 17:28:24');
INSERT INTO `sys_log` VALUES ('2759', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '21', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:30:32');
INSERT INTO `sys_log` VALUES ('2760', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '19', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:30:33');
INSERT INTO `sys_log` VALUES ('2761', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '17', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:31:58');
INSERT INTO `sys_log` VALUES ('2762', '查询图片', 'INFO', 'me.zhengjie.rest.PictureController.query()', '{PictureQueryCriteria(filename=null, username=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.215.193', '16', 'admin', ' 本地链路', 'Chrome 8', null, '2020-06-03 17:33:48');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint(20) DEFAULT NULL COMMENT '上级菜单ID',
  `sub_count` int(5) DEFAULT '0' COMMENT '子菜单数目',
  `type` int(11) DEFAULT NULL COMMENT '菜单类型',
  `title` varchar(255) DEFAULT NULL COMMENT '菜单标题',
  `name` varchar(255) DEFAULT NULL COMMENT '组件名称',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `menu_sort` int(5) DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `path` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `i_frame` bit(1) DEFAULT NULL COMMENT '是否外链',
  `cache` bit(1) DEFAULT b'0' COMMENT '缓存',
  `hidden` bit(1) DEFAULT b'0' COMMENT '隐藏',
  `permission` varchar(255) DEFAULT NULL COMMENT '权限',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`menu_id`) USING BTREE,
  UNIQUE KEY `uniq_title` (`title`),
  UNIQUE KEY `uniq_name` (`name`),
  KEY `inx_pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', null, '7', '0', '系统管理', null, null, '1', 'system', 'system', '\0', '\0', '\0', null, null, null, '2018-12-18 15:11:29', null);
INSERT INTO `sys_menu` VALUES ('2', '1', '3', '1', '用户管理', 'User', 'system/user/index', '2', 'peoples', 'user', '\0', '\0', '\0', 'user:list', null, null, '2018-12-18 15:14:44', null);
INSERT INTO `sys_menu` VALUES ('3', '1', '3', '1', '角色管理', 'Role', 'system/role/index', '3', 'role', 'role', '\0', '\0', '\0', 'roles:list', null, null, '2018-12-18 15:16:07', null);
INSERT INTO `sys_menu` VALUES ('5', '1', '3', '1', '菜单管理', 'Menu', 'system/menu/index', '5', 'menu', 'menu', '\0', '\0', '\0', 'menu:list', null, null, '2018-12-18 15:17:28', null);
INSERT INTO `sys_menu` VALUES ('6', null, '5', '0', '系统监控', null, null, '10', 'monitor', 'monitor', '\0', '\0', '\0', null, null, null, '2018-12-18 15:17:48', null);
INSERT INTO `sys_menu` VALUES ('7', '6', '0', '1', '操作日志', 'Log', 'monitor/log/index', '11', 'log', 'logs', '\0', '\0', '\0', null, null, null, '2018-12-18 15:18:26', null);
INSERT INTO `sys_menu` VALUES ('9', '6', '0', '1', 'SQL监控', 'Sql', 'monitor/sql/index', '18', 'sqlMonitor', 'druid', '\0', '\0', '\0', null, null, null, '2018-12-18 15:19:34', null);
INSERT INTO `sys_menu` VALUES ('10', null, '5', '0', '组件管理', null, null, '50', 'zujian', 'components', '\0', '\0', '\0', null, null, null, '2018-12-19 13:38:16', null);
INSERT INTO `sys_menu` VALUES ('11', '10', '0', '1', '图标库', 'Icons', 'components/icons/index', '51', 'icon', 'icon', '\0', '\0', '\0', null, null, null, '2018-12-19 13:38:49', null);
INSERT INTO `sys_menu` VALUES ('14', '36', '0', '1', '邮件工具', 'Email', 'tools/email/index', '35', 'email', 'email', '\0', '\0', '\0', null, null, null, '2018-12-27 10:13:09', null);
INSERT INTO `sys_menu` VALUES ('15', '10', '0', '1', '富文本', 'Editor', 'components/Editor', '52', 'fwb', 'tinymce', '\0', '\0', '\0', null, null, null, '2018-12-27 11:58:25', null);
INSERT INTO `sys_menu` VALUES ('16', '36', '2', '1', '图床管理', 'Pictures', 'tools/picture/index', '33', 'image', 'pictures', '\0', '\0', '\0', 'pictures:list', null, null, '2018-12-28 09:36:53', null);
INSERT INTO `sys_menu` VALUES ('18', '36', '3', '1', '存储管理', 'Storage', 'tools/storage/index', '34', 'qiniu', 'storage', '\0', '\0', '\0', 'storage:list', null, null, '2018-12-31 11:12:15', null);
INSERT INTO `sys_menu` VALUES ('19', '36', '0', '1', '支付宝工具', 'AliPay', 'tools/aliPay/index', '37', 'alipay', 'aliPay', '\0', '\0', '\0', null, null, null, '2018-12-31 14:52:38', null);
INSERT INTO `sys_menu` VALUES ('21', null, '2', '0', '多级菜单', null, '', '900', 'menu', 'nested', '\0', '\0', '', null, null, null, '2019-01-04 16:22:03', null);
INSERT INTO `sys_menu` VALUES ('22', '21', '2', '1', '二级菜单1', null, 'nested/menu1/index', '999', 'menu', 'menu1', '\0', '\0', '\0', null, null, null, '2019-01-04 16:23:29', null);
INSERT INTO `sys_menu` VALUES ('23', '21', '0', '1', '二级菜单2', null, 'nested/menu2/index', '999', 'menu', 'menu2', '\0', '\0', '\0', null, null, null, '2019-01-04 16:23:57', null);
INSERT INTO `sys_menu` VALUES ('24', '22', '0', '1', '三级菜单1', null, 'nested/menu1/menu1-1', '999', 'menu', 'menu1-1', '\0', '\0', '\0', null, null, null, '2019-01-04 16:24:48', null);
INSERT INTO `sys_menu` VALUES ('27', '22', '0', '1', '三级菜单2', null, 'nested/menu1/menu1-2', '999', 'menu', 'menu1-2', '\0', '\0', '\0', null, null, null, '2019-01-07 17:27:32', null);
INSERT INTO `sys_menu` VALUES ('28', '1', '3', '1', '任务调度', 'Timing', 'system/timing/index', '999', 'timing', 'timing', '\0', '\0', '\0', 'timing:list', null, null, '2019-01-07 20:34:40', null);
INSERT INTO `sys_menu` VALUES ('30', '36', '0', '1', '代码生成', 'GeneratorIndex', 'generator/index', '32', 'dev', 'generator', '\0', '', '\0', null, null, null, '2019-01-11 15:45:55', null);
INSERT INTO `sys_menu` VALUES ('32', '6', '0', '1', '异常日志', 'ErrorLog', 'monitor/log/errorLog', '12', 'error', 'errorLog', '\0', '\0', '\0', null, null, null, '2019-01-13 13:49:03', null);
INSERT INTO `sys_menu` VALUES ('33', '10', '0', '1', 'Markdown', 'Markdown', 'components/MarkDown', '53', 'markdown', 'markdown', '\0', '\0', '\0', null, null, null, '2019-03-08 13:46:44', null);
INSERT INTO `sys_menu` VALUES ('34', '10', '0', '1', 'Yaml编辑器', 'YamlEdit', 'components/YamlEdit', '54', 'dev', 'yaml', '\0', '\0', '\0', null, null, null, '2019-03-08 15:49:40', null);
INSERT INTO `sys_menu` VALUES ('35', '1', '3', '1', '部门管理', 'Dept', 'system/dept/index', '6', 'dept', 'dept', '\0', '\0', '\0', 'dept:list', null, null, '2019-03-25 09:46:00', null);
INSERT INTO `sys_menu` VALUES ('36', null, '8', '0', '系统工具', null, '', '30', 'sys-tools', 'sys-tools', '\0', '\0', '\0', null, null, null, '2019-03-29 10:57:35', null);
INSERT INTO `sys_menu` VALUES ('37', '1', '3', '1', '岗位管理', 'Job', 'system/job/index', '7', 'Steve-Jobs', 'job', '\0', '\0', '\0', 'job:list', null, null, '2019-03-29 13:51:18', null);
INSERT INTO `sys_menu` VALUES ('38', '36', '0', '1', '接口文档', 'Swagger', 'tools/swagger/index', '36', 'swagger', 'swagger2', '\0', '\0', '\0', null, null, null, '2019-03-29 19:57:53', null);
INSERT INTO `sys_menu` VALUES ('39', '1', '3', '1', '字典管理', 'Dict', 'system/dict/index', '8', 'dictionary', 'dict', '\0', '\0', '\0', 'dict:list', null, null, '2019-04-10 11:49:04', null);
INSERT INTO `sys_menu` VALUES ('41', '6', '0', '1', '在线用户', 'OnlineUser', 'monitor/online/index', '10', 'Steve-Jobs', 'online', '\0', '\0', '\0', null, null, null, '2019-10-26 22:08:43', null);
INSERT INTO `sys_menu` VALUES ('44', '2', '0', '2', '用户新增', null, '', '2', '', '', '\0', '\0', '\0', 'user:add', null, null, '2019-10-29 10:59:46', null);
INSERT INTO `sys_menu` VALUES ('45', '2', '0', '2', '用户编辑', null, '', '3', '', '', '\0', '\0', '\0', 'user:edit', null, null, '2019-10-29 11:00:08', null);
INSERT INTO `sys_menu` VALUES ('46', '2', '0', '2', '用户删除', null, '', '4', '', '', '\0', '\0', '\0', 'user:del', null, null, '2019-10-29 11:00:23', null);
INSERT INTO `sys_menu` VALUES ('48', '3', '0', '2', '角色创建', null, '', '2', '', '', '\0', '\0', '\0', 'roles:add', null, null, '2019-10-29 12:45:34', null);
INSERT INTO `sys_menu` VALUES ('49', '3', '0', '2', '角色修改', null, '', '3', '', '', '\0', '\0', '\0', 'roles:edit', null, null, '2019-10-29 12:46:16', null);
INSERT INTO `sys_menu` VALUES ('50', '3', '0', '2', '角色删除', null, '', '4', '', '', '\0', '\0', '\0', 'roles:del', null, null, '2019-10-29 12:46:51', null);
INSERT INTO `sys_menu` VALUES ('52', '5', '0', '2', '菜单新增', null, '', '2', '', '', '\0', '\0', '\0', 'menu:add', null, null, '2019-10-29 12:55:07', null);
INSERT INTO `sys_menu` VALUES ('53', '5', '0', '2', '菜单编辑', null, '', '3', '', '', '\0', '\0', '\0', 'menu:edit', null, null, '2019-10-29 12:55:40', null);
INSERT INTO `sys_menu` VALUES ('54', '5', '0', '2', '菜单删除', null, '', '4', '', '', '\0', '\0', '\0', 'menu:del', null, null, '2019-10-29 12:56:00', null);
INSERT INTO `sys_menu` VALUES ('56', '35', '0', '2', '部门新增', null, '', '2', '', '', '\0', '\0', '\0', 'dept:add', null, null, '2019-10-29 12:57:09', null);
INSERT INTO `sys_menu` VALUES ('57', '35', '0', '2', '部门编辑', null, '', '3', '', '', '\0', '\0', '\0', 'dept:edit', null, null, '2019-10-29 12:57:27', null);
INSERT INTO `sys_menu` VALUES ('58', '35', '0', '2', '部门删除', null, '', '4', '', '', '\0', '\0', '\0', 'dept:del', null, null, '2019-10-29 12:57:41', null);
INSERT INTO `sys_menu` VALUES ('60', '37', '0', '2', '岗位新增', null, '', '2', '', '', '\0', '\0', '\0', 'job:add', null, null, '2019-10-29 12:58:27', null);
INSERT INTO `sys_menu` VALUES ('61', '37', '0', '2', '岗位编辑', null, '', '3', '', '', '\0', '\0', '\0', 'job:edit', null, null, '2019-10-29 12:58:45', null);
INSERT INTO `sys_menu` VALUES ('62', '37', '0', '2', '岗位删除', null, '', '4', '', '', '\0', '\0', '\0', 'job:del', null, null, '2019-10-29 12:59:04', null);
INSERT INTO `sys_menu` VALUES ('64', '39', '0', '2', '字典新增', null, '', '2', '', '', '\0', '\0', '\0', 'dict:add', null, null, '2019-10-29 13:00:17', null);
INSERT INTO `sys_menu` VALUES ('65', '39', '0', '2', '字典编辑', null, '', '3', '', '', '\0', '\0', '\0', 'dict:edit', null, null, '2019-10-29 13:00:42', null);
INSERT INTO `sys_menu` VALUES ('66', '39', '0', '2', '字典删除', null, '', '4', '', '', '\0', '\0', '\0', 'dict:del', null, null, '2019-10-29 13:00:59', null);
INSERT INTO `sys_menu` VALUES ('70', '16', '0', '2', '图片上传', null, '', '2', '', '', '\0', '\0', '\0', 'pictures:add', null, null, '2019-10-29 13:05:34', null);
INSERT INTO `sys_menu` VALUES ('71', '16', '0', '2', '图片删除', null, '', '3', '', '', '\0', '\0', '\0', 'pictures:del', null, null, '2019-10-29 13:05:52', null);
INSERT INTO `sys_menu` VALUES ('73', '28', '0', '2', '任务新增', null, '', '2', '', '', '\0', '\0', '\0', 'timing:add', null, null, '2019-10-29 13:07:28', null);
INSERT INTO `sys_menu` VALUES ('74', '28', '0', '2', '任务编辑', null, '', '3', '', '', '\0', '\0', '\0', 'timing:edit', null, null, '2019-10-29 13:07:41', null);
INSERT INTO `sys_menu` VALUES ('75', '28', '0', '2', '任务删除', null, '', '4', '', '', '\0', '\0', '\0', 'timing:del', null, null, '2019-10-29 13:07:54', null);
INSERT INTO `sys_menu` VALUES ('77', '18', '0', '2', '上传文件', null, '', '2', '', '', '\0', '\0', '\0', 'storage:add', null, null, '2019-10-29 13:09:09', null);
INSERT INTO `sys_menu` VALUES ('78', '18', '0', '2', '文件编辑', null, '', '3', '', '', '\0', '\0', '\0', 'storage:edit', null, null, '2019-10-29 13:09:22', null);
INSERT INTO `sys_menu` VALUES ('79', '18', '0', '2', '文件删除', null, '', '4', '', '', '\0', '\0', '\0', 'storage:del', null, null, '2019-10-29 13:09:34', null);
INSERT INTO `sys_menu` VALUES ('80', '6', '0', '1', '服务监控', 'ServerMonitor', 'monitor/server/index', '14', 'codeConsole', 'server', '\0', '\0', '\0', 'monitor:list', null, 'admin', '2019-11-07 13:06:39', '2020-05-04 18:20:50');
INSERT INTO `sys_menu` VALUES ('82', '36', '0', '1', '生成配置', 'GeneratorConfig', 'generator/config', '33', 'dev', 'generator/config/:tableName', '\0', '', '', '', null, null, '2019-11-17 20:08:56', null);
INSERT INTO `sys_menu` VALUES ('83', '10', '0', '1', '图表库', 'Echarts', 'components/Echarts', '50', 'chart', 'echarts', '\0', '', '\0', '', null, null, '2019-11-21 09:04:32', null);
INSERT INTO `sys_menu` VALUES ('90', null, '5', '1', '运维管理', 'Mnt', '', '20', 'mnt', 'mnt', '\0', '\0', '\0', null, null, null, '2019-11-09 10:31:08', null);
INSERT INTO `sys_menu` VALUES ('92', '90', '3', '1', '服务器', 'ServerDeploy', 'mnt/server/index', '22', 'server', 'mnt/serverDeploy', '\0', '\0', '\0', 'serverDeploy:list', null, null, '2019-11-10 10:29:25', null);
INSERT INTO `sys_menu` VALUES ('93', '90', '3', '1', '应用管理', 'App', 'mnt/app/index', '23', 'app', 'mnt/app', '\0', '\0', '\0', 'app:list', null, null, '2019-11-10 11:05:16', null);
INSERT INTO `sys_menu` VALUES ('94', '90', '3', '1', '部署管理', 'Deploy', 'mnt/deploy/index', '24', 'deploy', 'mnt/deploy', '\0', '\0', '\0', 'deploy:list', null, null, '2019-11-10 15:56:55', null);
INSERT INTO `sys_menu` VALUES ('97', '90', '1', '1', '部署备份', 'DeployHistory', 'mnt/deployHistory/index', '25', 'backup', 'mnt/deployHistory', '\0', '\0', '\0', 'deployHistory:list', null, null, '2019-11-10 16:49:44', null);
INSERT INTO `sys_menu` VALUES ('98', '90', '3', '1', '数据库管理', 'Database', 'mnt/database/index', '26', 'database', 'mnt/database', '\0', '\0', '\0', 'database:list', null, null, '2019-11-10 20:40:04', null);
INSERT INTO `sys_menu` VALUES ('102', '97', '0', '2', '删除', null, '', '999', '', '', '\0', '\0', '\0', 'deployHistory:del', null, null, '2019-11-17 09:32:48', null);
INSERT INTO `sys_menu` VALUES ('103', '92', '0', '2', '服务器新增', null, '', '999', '', '', '\0', '\0', '\0', 'serverDeploy:add', null, null, '2019-11-17 11:08:33', null);
INSERT INTO `sys_menu` VALUES ('104', '92', '0', '2', '服务器编辑', null, '', '999', '', '', '\0', '\0', '\0', 'serverDeploy:edit', null, null, '2019-11-17 11:08:57', null);
INSERT INTO `sys_menu` VALUES ('105', '92', '0', '2', '服务器删除', null, '', '999', '', '', '\0', '\0', '\0', 'serverDeploy:del', null, null, '2019-11-17 11:09:15', null);
INSERT INTO `sys_menu` VALUES ('106', '93', '0', '2', '应用新增', null, '', '999', '', '', '\0', '\0', '\0', 'app:add', null, null, '2019-11-17 11:10:03', null);
INSERT INTO `sys_menu` VALUES ('107', '93', '0', '2', '应用编辑', null, '', '999', '', '', '\0', '\0', '\0', 'app:edit', null, null, '2019-11-17 11:10:28', null);
INSERT INTO `sys_menu` VALUES ('108', '93', '0', '2', '应用删除', null, '', '999', '', '', '\0', '\0', '\0', 'app:del', null, null, '2019-11-17 11:10:55', null);
INSERT INTO `sys_menu` VALUES ('109', '94', '0', '2', '部署新增', null, '', '999', '', '', '\0', '\0', '\0', 'deploy:add', null, null, '2019-11-17 11:11:22', null);
INSERT INTO `sys_menu` VALUES ('110', '94', '0', '2', '部署编辑', null, '', '999', '', '', '\0', '\0', '\0', 'deploy:edit', null, null, '2019-11-17 11:11:41', null);
INSERT INTO `sys_menu` VALUES ('111', '94', '0', '2', '部署删除', null, '', '999', '', '', '\0', '\0', '\0', 'deploy:del', null, null, '2019-11-17 11:12:01', null);
INSERT INTO `sys_menu` VALUES ('112', '98', '0', '2', '数据库新增', null, '', '999', '', '', '\0', '\0', '\0', 'database:add', null, null, '2019-11-17 11:12:43', null);
INSERT INTO `sys_menu` VALUES ('113', '98', '0', '2', '数据库编辑', null, '', '999', '', '', '\0', '\0', '\0', 'database:edit', null, null, '2019-11-17 11:12:58', null);
INSERT INTO `sys_menu` VALUES ('114', '98', '0', '2', '数据库删除', null, '', '999', '', '', '\0', '\0', '\0', 'database:del', null, null, '2019-11-17 11:13:14', null);
INSERT INTO `sys_menu` VALUES ('116', '36', '0', '1', '生成预览', 'Preview', 'generator/preview', '999', 'java', 'generator/preview/:tableName', '\0', '', '', null, null, null, '2019-11-26 14:54:36', null);
INSERT INTO `sys_menu` VALUES ('120', null, '3', '0', 'WEB', null, null, '7', 'dev', 'example', '\0', '\0', '\0', null, 'admin', 'admin', '2020-06-02 16:10:59', '2020-06-02 16:10:59');
INSERT INTO `sys_menu` VALUES ('121', '120', '0', '1', 'wgcrud', 'Wgcrud', 'example/wgcrud/index', '1', 'education', 'wgcrud', '\0', '\0', '\0', null, 'admin', 'admin', '2020-06-02 16:12:36', '2020-06-02 16:12:36');
INSERT INTO `sys_menu` VALUES ('122', '120', '0', '1', 'gencrud', 'ATestIdName', 'example/gencrud/index', '2', 'dev', 'gencrud', '\0', '\0', '\0', null, 'admin', 'admin', '2020-06-02 16:38:07', '2020-06-02 16:38:07');
INSERT INTO `sys_menu` VALUES ('123', '120', '0', '1', 'genTest02', 'ATest02', 'example/test02/index', '999', 'download', 'gentest02', '\0', '\0', '\0', null, 'admin', 'admin', '2020-06-02 17:12:54', '2020-06-02 17:12:54');

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) DEFAULT NULL COMMENT 'Spring Bean名称',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron 表达式',
  `is_pause` bit(1) DEFAULT NULL COMMENT '状态：1暂停、0启用',
  `job_name` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `method_name` varchar(255) DEFAULT NULL COMMENT '方法名称',
  `params` varchar(255) DEFAULT NULL COMMENT '参数',
  `description` varchar(255) DEFAULT NULL COMMENT '备注',
  `person_in_charge` varchar(100) DEFAULT NULL COMMENT '负责人',
  `email` varchar(100) DEFAULT NULL COMMENT '报警邮箱',
  `sub_task` varchar(100) DEFAULT NULL COMMENT '子任务ID',
  `pause_after_failure` bit(1) DEFAULT NULL COMMENT '任务失败后是否暂停',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`job_id`) USING BTREE,
  KEY `inx_is_pause` (`is_pause`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='定时任务';

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------
INSERT INTO `sys_quartz_job` VALUES ('2', 'testTask', '0/5 * * * * ?', '', '测试1', 'run1', 'test', '带参测试，多参使用json', null, null, null, null, null, 'admin', '2019-08-22 14:08:29', '2020-05-05 17:26:19');
INSERT INTO `sys_quartz_job` VALUES ('3', 'testTask', '0/5 * * * * ?', '', '测试', 'run', '', '不带参测试', 'Zheng Jie', '', '2,6', '', null, 'admin', '2019-09-26 16:44:39', '2020-05-05 20:45:39');
INSERT INTO `sys_quartz_job` VALUES ('5', 'Test', '0/5 * * * * ?', '', '任务告警测试', 'run', null, '测试', 'test', '', null, '', 'admin', 'admin', '2020-05-05 20:32:41', '2020-05-05 20:36:13');
INSERT INTO `sys_quartz_job` VALUES ('6', 'testTask', '0/5 * * * * ?', '', '测试3', 'run2', null, '测试3', 'Zheng Jie', '', null, '', 'admin', 'admin', '2020-05-05 20:35:41', '2020-05-05 20:36:07');

-- ----------------------------
-- Table structure for sys_quartz_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_log`;
CREATE TABLE `sys_quartz_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `cron_expression` varchar(255) DEFAULT NULL,
  `exception_detail` text,
  `is_success` bit(1) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `method_name` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='定时任务日志';

-- ----------------------------
-- Records of sys_quartz_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `level` int(255) DEFAULT NULL COMMENT '角色级别',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `data_scope` varchar(255) DEFAULT NULL COMMENT '数据权限',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE KEY `uniq_name` (`name`),
  KEY `role_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '1', '-', '全部', null, 'admin', '2018-11-23 11:04:37', '2020-06-02 17:13:04');
INSERT INTO `sys_role` VALUES ('2', '普通用户', '2', '-', '自定义', null, 'admin', '2018-11-23 13:09:06', '2020-05-11 18:28:45');

-- ----------------------------
-- Table structure for sys_roles_depts
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_depts`;
CREATE TABLE `sys_roles_depts` (
  `role_id` bigint(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE,
  KEY `FK7qg6itn5ajdoa9h9o78v9ksur` (`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色部门关联';

-- ----------------------------
-- Records of sys_roles_depts
-- ----------------------------
INSERT INTO `sys_roles_depts` VALUES ('2', '7');

-- ----------------------------
-- Table structure for sys_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_menus`;
CREATE TABLE `sys_roles_menus` (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`,`role_id`) USING BTREE,
  KEY `FKcngg2qadojhi3a651a5adkvbq` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色菜单关联';

-- ----------------------------
-- Records of sys_roles_menus
-- ----------------------------
INSERT INTO `sys_roles_menus` VALUES ('1', '1');
INSERT INTO `sys_roles_menus` VALUES ('2', '1');
INSERT INTO `sys_roles_menus` VALUES ('3', '1');
INSERT INTO `sys_roles_menus` VALUES ('5', '1');
INSERT INTO `sys_roles_menus` VALUES ('6', '1');
INSERT INTO `sys_roles_menus` VALUES ('7', '1');
INSERT INTO `sys_roles_menus` VALUES ('9', '1');
INSERT INTO `sys_roles_menus` VALUES ('10', '1');
INSERT INTO `sys_roles_menus` VALUES ('11', '1');
INSERT INTO `sys_roles_menus` VALUES ('14', '1');
INSERT INTO `sys_roles_menus` VALUES ('15', '1');
INSERT INTO `sys_roles_menus` VALUES ('16', '1');
INSERT INTO `sys_roles_menus` VALUES ('18', '1');
INSERT INTO `sys_roles_menus` VALUES ('19', '1');
INSERT INTO `sys_roles_menus` VALUES ('21', '1');
INSERT INTO `sys_roles_menus` VALUES ('22', '1');
INSERT INTO `sys_roles_menus` VALUES ('23', '1');
INSERT INTO `sys_roles_menus` VALUES ('28', '1');
INSERT INTO `sys_roles_menus` VALUES ('30', '1');
INSERT INTO `sys_roles_menus` VALUES ('32', '1');
INSERT INTO `sys_roles_menus` VALUES ('33', '1');
INSERT INTO `sys_roles_menus` VALUES ('34', '1');
INSERT INTO `sys_roles_menus` VALUES ('35', '1');
INSERT INTO `sys_roles_menus` VALUES ('36', '1');
INSERT INTO `sys_roles_menus` VALUES ('37', '1');
INSERT INTO `sys_roles_menus` VALUES ('38', '1');
INSERT INTO `sys_roles_menus` VALUES ('39', '1');
INSERT INTO `sys_roles_menus` VALUES ('41', '1');
INSERT INTO `sys_roles_menus` VALUES ('80', '1');
INSERT INTO `sys_roles_menus` VALUES ('82', '1');
INSERT INTO `sys_roles_menus` VALUES ('83', '1');
INSERT INTO `sys_roles_menus` VALUES ('90', '1');
INSERT INTO `sys_roles_menus` VALUES ('92', '1');
INSERT INTO `sys_roles_menus` VALUES ('93', '1');
INSERT INTO `sys_roles_menus` VALUES ('94', '1');
INSERT INTO `sys_roles_menus` VALUES ('97', '1');
INSERT INTO `sys_roles_menus` VALUES ('98', '1');
INSERT INTO `sys_roles_menus` VALUES ('116', '1');
INSERT INTO `sys_roles_menus` VALUES ('120', '1');
INSERT INTO `sys_roles_menus` VALUES ('121', '1');
INSERT INTO `sys_roles_menus` VALUES ('122', '1');
INSERT INTO `sys_roles_menus` VALUES ('123', '1');
INSERT INTO `sys_roles_menus` VALUES ('1', '2');
INSERT INTO `sys_roles_menus` VALUES ('2', '2');
INSERT INTO `sys_roles_menus` VALUES ('3', '2');
INSERT INTO `sys_roles_menus` VALUES ('5', '2');
INSERT INTO `sys_roles_menus` VALUES ('10', '2');
INSERT INTO `sys_roles_menus` VALUES ('21', '2');
INSERT INTO `sys_roles_menus` VALUES ('36', '2');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门名称',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `gender` varchar(2) DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `avatar_name` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `avatar_path` varchar(255) DEFAULT NULL COMMENT '头像真实路径',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `is_admin` bit(1) DEFAULT b'0' COMMENT '是否为admin账号',
  `enabled` bigint(20) DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新着',
  `pwd_reset_time` datetime DEFAULT NULL COMMENT '修改密码的时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `UK_kpubos9gc2cvtkb0thktkbkes` (`email`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`),
  KEY `FK5rwmryny6jthaaxkogownknqp` (`dept_id`) USING BTREE,
  KEY `FKpq2dhypk2qgt68nauh2by22jb` (`avatar_name`) USING BTREE,
  KEY `inx_enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '2', 'admin', '管理员', '男', '18888888888', '201507802@qq.com', null, null, '$2a$10$Egp1/gvFlt7zhlXVfEFw4OfWQCGPw0ClmMcc6FjTnvXNRVf9zdMRa', '', '1', null, 'admin', '2020-05-03 16:38:31', '2018-08-23 09:11:56', '2020-05-05 10:12:21');
INSERT INTO `sys_user` VALUES ('2', '2', 'test', '测试', '男', '18888888888', '231@qq.com', null, null, '$2a$10$4XcyudOYTSz6fue6KFNMHeUQnCX5jbBQypLEnGk1PmekXt5c95JcK', '\0', '1', 'admin', 'admin', null, '2020-05-05 11:15:49', '2020-05-05 11:20:51');

-- ----------------------------
-- Table structure for sys_users_jobs
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_jobs`;
CREATE TABLE `sys_users_jobs` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `job_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_users_jobs
-- ----------------------------
INSERT INTO `sys_users_jobs` VALUES ('1', '11');
INSERT INTO `sys_users_jobs` VALUES ('1', '12');
INSERT INTO `sys_users_jobs` VALUES ('2', '12');

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  KEY `FKq4eq273l04bpu4efj0jd0jb98` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户角色关联';

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
INSERT INTO `sys_users_roles` VALUES ('1', '1');
INSERT INTO `sys_users_roles` VALUES ('2', '2');

-- ----------------------------
-- Table structure for tool_alipay_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_alipay_config`;
CREATE TABLE `tool_alipay_config` (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `app_id` varchar(255) DEFAULT NULL COMMENT '应用ID',
  `charset` varchar(255) DEFAULT NULL COMMENT '编码',
  `format` varchar(255) DEFAULT NULL COMMENT '类型 固定格式json',
  `gateway_url` varchar(255) DEFAULT NULL COMMENT '网关地址',
  `notify_url` varchar(255) DEFAULT NULL COMMENT '异步回调',
  `private_key` text COMMENT '私钥',
  `public_key` text COMMENT '公钥',
  `return_url` varchar(255) DEFAULT NULL COMMENT '回调地址',
  `sign_type` varchar(255) DEFAULT NULL COMMENT '签名方式',
  `sys_service_provider_id` varchar(255) DEFAULT NULL COMMENT '商户号',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='支付宝配置类';

-- ----------------------------
-- Records of tool_alipay_config
-- ----------------------------
INSERT INTO `tool_alipay_config` VALUES ('1', '2016091700532697', 'utf-8', 'JSON', 'https://openapi.alipaydev.com/gateway.do', 'http://api.auauz.net/api/aliPay/notify', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5js8sInU10AJ0cAQ8UMMyXrQ+oHZEkVt5lBwsStmTJ7YikVYgbskx1YYEXTojRsWCb+SH/kDmDU4pK/u91SJ4KFCRMF2411piYuXU/jF96zKrADznYh/zAraqT6hvAIVtQAlMHN53nx16rLzZ/8jDEkaSwT7+HvHiS+7sxSojnu/3oV7BtgISoUNstmSe8WpWHOaWv19xyS+Mce9MY4BfseFhzTICUymUQdd/8hXA28/H6osUfAgsnxAKv7Wil3aJSgaJczWuflYOve0dJ3InZkhw5Cvr0atwpk8YKBQjy5CdkoHqvkOcIB+cYHXJKzOE5tqU7inSwVbHzOLQ3XbnAgMBAAECggEAVJp5eT0Ixg1eYSqFs9568WdetUNCSUchNxDBu6wxAbhUgfRUGZuJnnAll63OCTGGck+EGkFh48JjRcBpGoeoHLL88QXlZZbC/iLrea6gcDIhuvfzzOffe1RcZtDFEj9hlotg8dQj1tS0gy9pN9g4+EBH7zeu+fyv+qb2e/v1l6FkISXUjpkD7RLQr3ykjiiEw9BpeKb7j5s7Kdx1NNIzhkcQKNqlk8JrTGDNInbDM6inZfwwIO2R1DHinwdfKWkvOTODTYa2MoAvVMFT9Bec9FbLpoWp7ogv1JMV9svgrcF9XLzANZ/OQvkbe9TV9GWYvIbxN6qwQioKCWO4GPnCAQKBgQDgW5MgfhX8yjXqoaUy/d1VjI8dHeIyw8d+OBAYwaxRSlCfyQ+tieWcR2HdTzPca0T0GkWcKZm0ei5xRURgxt4DUDLXNh26HG0qObbtLJdu/AuBUuCqgOiLqJ2f1uIbrz6OZUHns+bT/jGW2Ws8+C13zTCZkZt9CaQsrp3QOGDx5wKBgQDTul39hp3ZPwGNFeZdkGoUoViOSd5Lhowd5wYMGAEXWRLlU8z+smT5v0POz9JnIbCRchIY2FAPKRdVTICzmPk2EPJFxYTcwaNbVqL6lN7J2IlXXMiit5QbiLauo55w7plwV6LQmKm9KV7JsZs5XwqF7CEovI7GevFzyD3w+uizAQKBgC3LY1eRhOlpWOIAhpjG6qOoohmeXOphvdmMlfSHq6WYFqbWwmV4rS5d/6LNpNdL6fItXqIGd8I34jzql49taCmi+A2nlR/E559j0mvM20gjGDIYeZUz5MOE8k+K6/IcrhcgofgqZ2ZED1ksHdB/E8DNWCswZl16V1FrfvjeWSNnAoGAMrBplCrIW5xz+J0Hm9rZKrs+AkK5D4fUv8vxbK/KgxZ2KaUYbNm0xv39c+PZUYuFRCz1HDGdaSPDTE6WeWjkMQd5mS6ikl9hhpqFRkyh0d0fdGToO9yLftQKOGE/q3XUEktI1XvXF0xyPwNgUCnq0QkpHyGVZPtGFxwXiDvpvgECgYA5PoB+nY8iDiRaJNko9w0hL4AeKogwf+4TbCw+KWVEn6jhuJa4LFTdSqp89PktQaoVpwv92el/AhYjWOl/jVCm122f9b7GyoelbjMNolToDwe5pF5RnSpEuDdLy9MfE8LnE3PlbE7E5BipQ3UjSebkgNboLHH/lNZA5qvEtvbfvQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAut9evKRuHJ/2QNfDlLwvN/S8l9hRAgPbb0u61bm4AtzaTGsLeMtScetxTWJnVvAVpMS9luhEJjt+Sbk5TNLArsgzzwARgaTKOLMT1TvWAK5EbHyI+eSrc3s7Awe1VYGwcubRFWDm16eQLv0k7iqiw+4mweHSz/wWyvBJVgwLoQ02btVtAQErCfSJCOmt0Q/oJQjj08YNRV4EKzB19+f5A+HQVAKy72dSybTzAK+3FPtTtNen/+b5wGeat7c32dhYHnGorPkPeXLtsqqUTp1su5fMfd4lElNdZaoCI7osZxWWUo17vBCZnyeXc9fk0qwD9mK6yRAxNbrY72Xx5VqIqwIDAQAB', 'http://api.auauz.net/api/aliPay/return', 'RSA2', '2088102176044281');

-- ----------------------------
-- Table structure for tool_email_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_email_config`;
CREATE TABLE `tool_email_config` (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `from_user` varchar(255) DEFAULT NULL COMMENT '收件人',
  `host` varchar(255) DEFAULT NULL COMMENT '邮件服务器SMTP地址',
  `pass` varchar(255) DEFAULT NULL COMMENT '密码',
  `port` varchar(255) DEFAULT NULL COMMENT '端口',
  `user` varchar(255) DEFAULT NULL COMMENT '发件者用户名',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱配置';

-- ----------------------------
-- Records of tool_email_config
-- ----------------------------

-- ----------------------------
-- Table structure for tool_local_storage
-- ----------------------------
DROP TABLE IF EXISTS `tool_local_storage`;
CREATE TABLE `tool_local_storage` (
  `storage_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `real_name` varchar(255) DEFAULT NULL COMMENT '文件真实的名称',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `suffix` varchar(255) DEFAULT NULL COMMENT '后缀',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `size` varchar(100) DEFAULT NULL COMMENT '大小',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`storage_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='本地存储';

-- ----------------------------
-- Records of tool_local_storage
-- ----------------------------

-- ----------------------------
-- Table structure for tool_picture
-- ----------------------------
DROP TABLE IF EXISTS `tool_picture`;
CREATE TABLE `tool_picture` (
  `picture_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `filename` varchar(255) DEFAULT NULL COMMENT '图片名称',
  `md5code` varchar(255) DEFAULT NULL COMMENT '文件的MD5值',
  `size` varchar(255) DEFAULT NULL COMMENT '图片大小',
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `delete_url` varchar(255) DEFAULT NULL COMMENT '删除的URL',
  `height` varchar(255) DEFAULT NULL COMMENT '图片高度',
  `width` varchar(255) DEFAULT NULL COMMENT '图片宽度',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `create_time` datetime DEFAULT NULL COMMENT '上传日期',
  PRIMARY KEY (`picture_id`) USING BTREE,
  UNIQUE KEY `uniq_md5_code` (`md5code`),
  KEY `inx_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Sm.Ms图床';

-- ----------------------------
-- Records of tool_picture
-- ----------------------------
INSERT INTO `tool_picture` VALUES ('2', '屏幕截图(334).png', '06f80cf928b39bb89b21ef7bb81d6826', '302.07KB   ', 'https://i.loli.net/2020/06/03/BaIXO9yKPA2NRs4.png', 'https://sm.ms/delete/NX3FUQezYaLMJZox5pBlKtSbrf', '900', '1600', 'admin', '2020-06-03 16:26:18');
INSERT INTO `tool_picture` VALUES ('3', '屏幕截图(378).png', '6c491add3c900b85db9ec05b29d66f33', '170.93KB   ', 'https://i.loli.net/2020/06/03/zkAqSdtv1UbGHu2.png', 'https://sm.ms/delete/tgilw8G591rKvOFHR4xacYWyeP', '900', '1600', 'admin', '2020-06-03 16:26:33');
INSERT INTO `tool_picture` VALUES ('4', '01.jpg', '21e6c581007b741784ec337ba367b731', '7.72KB   ', 'https://i.loli.net/2020/06/03/DfdLxasPMyet4Vv.jpg', 'https://sm.ms/delete/7FjEbJBzH54RXZyWCvTqQipIG1', '339', '500', 'admin', '2020-06-03 16:27:28');
INSERT INTO `tool_picture` VALUES ('5', 'tim.jpeg', '4127602ca5cfb81f9b33c96fc82a1572', '45.83KB   ', 'https://i.loli.net/2020/06/03/AiWqhldxu1KaFmb.jpg', 'https://sm.ms/delete/8fCHspFyrTGOe23bnhVAoWYRUQ', '801', '1020', 'admin', '2020-06-03 16:32:26');
INSERT INTO `tool_picture` VALUES ('6', 'timg.jpeg', '86cf5de75bad0ab57be11e7650831512', '8.98KB   ', 'https://i.loli.net/2020/06/03/JWXgbG2cSPEZjtQ.jpg', 'https://sm.ms/delete/xBj3NaSiouWTEF1zdfvyDw9A5p', '284', '284', 'admin', '2020-06-03 17:09:24');
INSERT INTO `tool_picture` VALUES ('7', '04.jpg', 'cb4aad65aced30e8169e2fbb6c4d6e05', '7.79KB   ', 'https://i.loli.net/2020/06/03/GmhFZC7asNvtzpb.jpg', 'https://sm.ms/delete/uDNp5qUEv7QG2PItRBWmfa1cw6', '300', '450', 'admin', '2020-06-03 17:26:26');
INSERT INTO `tool_picture` VALUES ('8', '03.jpg', 'ffbd2627f760e57bdd6149dce8fc03cc', '13.43KB   ', 'https://i.loli.net/2020/06/03/bKYMhSlVFNAPyao.jpg', 'https://sm.ms/delete/BEvPwoQJK7MtbSAuhqUli5rnNx', '352', '500', 'admin', '2020-06-03 17:27:56');

-- ----------------------------
-- Table structure for tool_qiniu_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_qiniu_config`;
CREATE TABLE `tool_qiniu_config` (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `access_key` text COMMENT 'accessKey',
  `bucket` varchar(255) DEFAULT NULL COMMENT 'Bucket 识别符',
  `host` varchar(255) NOT NULL COMMENT '外链域名',
  `secret_key` text COMMENT 'secretKey',
  `type` varchar(255) DEFAULT NULL COMMENT '空间类型',
  `zone` varchar(255) DEFAULT NULL COMMENT '机房',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='七牛云配置';

-- ----------------------------
-- Records of tool_qiniu_config
-- ----------------------------

-- ----------------------------
-- Table structure for tool_qiniu_content
-- ----------------------------
DROP TABLE IF EXISTS `tool_qiniu_content`;
CREATE TABLE `tool_qiniu_content` (
  `content_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bucket` varchar(255) DEFAULT NULL COMMENT 'Bucket 识别符',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `size` varchar(255) DEFAULT NULL COMMENT '文件大小',
  `type` varchar(255) DEFAULT NULL COMMENT '文件类型：私有或公开',
  `url` varchar(255) DEFAULT NULL COMMENT '文件url',
  `suffix` varchar(255) DEFAULT NULL COMMENT '文件后缀',
  `update_time` datetime DEFAULT NULL COMMENT '上传或同步的时间',
  PRIMARY KEY (`content_id`) USING BTREE,
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='七牛云文件存储';

-- ----------------------------
-- Records of tool_qiniu_content
-- ----------------------------
