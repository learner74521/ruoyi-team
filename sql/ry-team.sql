-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.26 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  10.3.0.5909
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 ry-team 的数据库结构
CREATE DATABASE IF NOT EXISTS `ry-team` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `ry-team`;

-- 导出  表 ry-team.gen_table 结构
CREATE TABLE IF NOT EXISTS `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

-- 正在导出表  ry-team.gen_table 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(23, 'wx_chat_sys', '系统发布活动表', NULL, NULL, 'WxChatSys', 'crud', 'com.ruoyi.wechatapi.myhome', 'wechatapi', 'sys', '系统发布活动', 'ruoyi', '0', '/', '{"treeName":"","treeParentCode":"","treeCode":""}', 'admin', '2020-09-24 19:03:35', '', '2020-09-24 19:05:16', '');
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;

-- 导出  表 ry-team.gen_table_column 结构
CREATE TABLE IF NOT EXISTS `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

-- 正在导出表  ry-team.gen_table_column 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
	(161, '23', 'sys_id', '系统活动id', 'bigint(20)', 'Long', 'sysId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-09-24 19:03:35', NULL, '2020-09-24 19:05:16'),
	(162, '23', 'sys_name', '系统活动名', 'varchar(50)', 'String', 'sysName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-09-24 19:03:35', NULL, '2020-09-24 19:05:16'),
	(163, '23', 'sys_introduce', '系统活动介绍', 'varchar(100)', 'String', 'sysIntroduce', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-09-24 19:03:35', NULL, '2020-09-24 19:05:16'),
	(164, '23', 'sys_image', '系统活动海报', 'varchar(100)', 'String', 'sysImage', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-09-24 19:03:35', NULL, '2020-09-24 19:05:16'),
	(165, '23', 'create_time', '活动开始时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2020-09-24 19:03:35', NULL, '2020-09-24 19:05:16'),
	(166, '23', 'end_time', '活动结束时间', 'datetime', 'Date', 'endTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-09-24 19:03:35', NULL, '2020-09-24 19:05:16'),
	(167, '23', 'sys_exist', '活动是否存在(0是，1否)', 'int(1)', 'Integer', 'sysExist', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-09-24 19:03:35', NULL, '2020-09-24 19:05:17'),
	(168, '23', 'sys1', 'null', 'varchar(50)', 'String', 'sys1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-09-24 19:03:35', NULL, '2020-09-24 19:05:17'),
	(169, '23', 'sys2', 'null', 'varchar(50)', 'String', 'sys2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-09-24 19:03:35', NULL, '2020-09-24 19:05:17');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;

-- 导出  表 ry-team.interest_user 结构
CREATE TABLE IF NOT EXISTS `interest_user` (
  `interest_userId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户兴趣ID',
  `open_id` varchar(50) DEFAULT NULL COMMENT '微信用户唯一标识',
  `interest_id` bigint(20) DEFAULT NULL COMMENT '兴趣ID',
  `interest_gameName` varchar(10) DEFAULT NULL COMMENT '游戏名称1',
  `interest_model` varchar(10) DEFAULT NULL COMMENT '游戏模式1',
  `interest_gameName_nd` varchar(10) DEFAULT NULL COMMENT '游戏名称2',
  `interest_model_nd` varchar(10) DEFAULT NULL COMMENT '游戏模式2',
  PRIMARY KEY (`interest_userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户兴趣爱好表';

-- 正在导出表  ry-team.interest_user 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `interest_user` DISABLE KEYS */;
INSERT INTO `interest_user` (`interest_userId`, `open_id`, `interest_id`, `interest_gameName`, `interest_model`, `interest_gameName_nd`, `interest_model_nd`) VALUES
	(1, '123456', 1, '王者荣耀', '五黑', '和平精英', '刚枪'),
	(2, '123456', 1, '王者荣耀', '五黑', '和平精英', '刚枪'),
	(3, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `interest_user` ENABLE KEYS */;

-- 导出  表 ry-team.qrtz_blob_triggers 结构
CREATE TABLE IF NOT EXISTS `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  ry-team.qrtz_blob_triggers 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;

-- 导出  表 ry-team.qrtz_calendars 结构
CREATE TABLE IF NOT EXISTS `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  ry-team.qrtz_calendars 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;

-- 导出  表 ry-team.qrtz_cron_triggers 结构
CREATE TABLE IF NOT EXISTS `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  ry-team.qrtz_cron_triggers 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` (`sched_name`, `trigger_name`, `trigger_group`, `cron_expression`, `time_zone_id`) VALUES
	('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai'),
	('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai'),
	('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;

-- 导出  表 ry-team.qrtz_fired_triggers 结构
CREATE TABLE IF NOT EXISTS `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  ry-team.qrtz_fired_triggers 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;

-- 导出  表 ry-team.qrtz_job_details 结构
CREATE TABLE IF NOT EXISTS `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- 正在导出表  ry-team.qrtz_job_details 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` (`sched_name`, `job_name`, `job_group`, `description`, `job_class_name`, `is_durable`, `is_nonconcurrent`, `is_update_data`, `requests_recovery`, `job_data`) VALUES
	('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', _binary 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017B528BAE3878707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800),
	('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', _binary 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017B528BAE3878707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800),
	('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', _binary 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017B528BAE3878707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;

-- 导出  表 ry-team.qrtz_locks 结构
CREATE TABLE IF NOT EXISTS `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  ry-team.qrtz_locks 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` (`sched_name`, `lock_name`) VALUES
	('RuoyiScheduler', 'STATE_ACCESS'),
	('RuoyiScheduler', 'TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;

-- 导出  表 ry-team.qrtz_paused_trigger_grps 结构
CREATE TABLE IF NOT EXISTS `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  ry-team.qrtz_paused_trigger_grps 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;

-- 导出  表 ry-team.qrtz_scheduler_state 结构
CREATE TABLE IF NOT EXISTS `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  ry-team.qrtz_scheduler_state 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` (`sched_name`, `instance_name`, `last_checkin_time`, `checkin_interval`) VALUES
	('RuoyiScheduler', 'DESKTOP-7QJSVUL1637400646298', 1637411871437, 15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;

-- 导出  表 ry-team.qrtz_simple_triggers 结构
CREATE TABLE IF NOT EXISTS `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  ry-team.qrtz_simple_triggers 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;

-- 导出  表 ry-team.qrtz_simprop_triggers 结构
CREATE TABLE IF NOT EXISTS `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 正在导出表  ry-team.qrtz_simprop_triggers 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;

-- 导出  表 ry-team.qrtz_triggers 结构
CREATE TABLE IF NOT EXISTS `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(20) DEFAULT NULL,
  `prev_fire_time` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(20) NOT NULL,
  `end_time` bigint(20) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(6) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- 正在导出表  ry-team.qrtz_triggers 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`, `job_name`, `job_group`, `description`, `next_fire_time`, `prev_fire_time`, `priority`, `trigger_state`, `trigger_type`, `start_time`, `end_time`, `calendar_name`, `misfire_instr`, `job_data`) VALUES
	('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1637400650000, -1, 5, 'PAUSED', 'CRON', 1637400646000, 0, NULL, 2, _binary ''),
	('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1637400660000, -1, 5, 'PAUSED', 'CRON', 1637400646000, 0, NULL, 2, _binary ''),
	('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1637400660000, -1, 5, 'PAUSED', 'CRON', 1637400646000, 0, NULL, 2, _binary '');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;

-- 导出  表 ry-team.sys_config 结构
CREATE TABLE IF NOT EXISTS `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

-- 正在导出表  ry-team.sys_config 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-08-17 13:18:11', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),
	(2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-08-17 13:18:11', '', NULL, '初始化密码 123456'),
	(3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-08-17 13:18:11', '', NULL, '深色主题theme-dark，浅色主题theme-light'),
	(4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2021-08-17 13:18:11', '', NULL, '是否开启登录验证码功能（true开启，false关闭）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;

-- 导出  表 ry-team.sys_dept 结构
CREATE TABLE IF NOT EXISTS `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- 正在导出表  ry-team.sys_dept 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
	(100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-08-17 13:18:03', '', NULL),
	(101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-08-17 13:18:03', '', NULL),
	(102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-08-17 13:18:03', '', NULL),
	(103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-08-17 13:18:03', '', NULL),
	(104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-08-17 13:18:03', '', NULL),
	(105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-08-17 13:18:03', '', NULL),
	(106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-08-17 13:18:03', '', NULL),
	(107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-08-17 13:18:03', '', NULL),
	(108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-08-17 13:18:03', '', NULL),
	(109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-08-17 13:18:03', '', NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;

-- 导出  表 ry-team.sys_dict_data 结构
CREATE TABLE IF NOT EXISTS `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

-- 正在导出表  ry-team.sys_dict_data 的数据：~28 rows (大约)
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '性别男'),
	(2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '性别女'),
	(3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '性别未知'),
	(4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '显示菜单'),
	(5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '隐藏菜单'),
	(6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '正常状态'),
	(7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '停用状态'),
	(8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '正常状态'),
	(9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '停用状态'),
	(10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '默认分组'),
	(11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '系统分组'),
	(12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '系统默认是'),
	(13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '系统默认否'),
	(14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '通知'),
	(15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '公告'),
	(16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '正常状态'),
	(17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '关闭状态'),
	(18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '新增操作'),
	(19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '修改操作'),
	(20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '删除操作'),
	(21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '授权操作'),
	(22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '导出操作'),
	(23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '导入操作'),
	(24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '强退操作'),
	(25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '生成操作'),
	(26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '清空操作'),
	(27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-08-17 13:18:11', '', NULL, '正常状态'),
	(28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-08-17 13:18:11', '', NULL, '停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;

-- 导出  表 ry-team.sys_dict_type 结构
CREATE TABLE IF NOT EXISTS `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

-- 正在导出表  ry-team.sys_dict_type 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '用户性别列表'),
	(2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '菜单状态列表'),
	(3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '系统开关列表'),
	(4, '任务状态', 'sys_job_status', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '任务状态列表'),
	(5, '任务分组', 'sys_job_group', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '任务分组列表'),
	(6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '系统是否列表'),
	(7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '通知类型列表'),
	(8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '通知状态列表'),
	(9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '操作类型列表'),
	(10, '系统状态', 'sys_common_status', '0', 'admin', '2021-08-17 13:18:10', '', NULL, '登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;

-- 导出  表 ry-team.sys_job 结构
CREATE TABLE IF NOT EXISTS `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

-- 正在导出表  ry-team.sys_job 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-08-17 13:18:11', '', NULL, ''),
	(2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-08-17 13:18:11', '', NULL, ''),
	(3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-08-17 13:18:11', '', NULL, '');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;

-- 导出  表 ry-team.sys_job_log 结构
CREATE TABLE IF NOT EXISTS `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

-- 正在导出表  ry-team.sys_job_log 的数据：~16 rows (大约)
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
INSERT INTO `sys_job_log` (`job_log_id`, `job_name`, `job_group`, `invoke_target`, `job_message`, `status`, `exception_info`, `create_time`) VALUES
	(1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2020-09-04 21:04:31'),
	(2, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：4毫秒', '0', '', '2020-09-29 19:22:32'),
	(3, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2020-09-29 19:22:42'),
	(4, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2020-09-29 19:22:52'),
	(5, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2020-09-29 19:23:02'),
	(6, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2020-09-29 19:23:12'),
	(7, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2020-09-29 19:23:22'),
	(8, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2020-09-29 19:23:32'),
	(9, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2020-09-29 19:23:42'),
	(10, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2020-09-29 19:23:52'),
	(11, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2020-09-29 19:24:02'),
	(12, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2020-09-29 19:24:12'),
	(13, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2020-09-29 19:24:17'),
	(14, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2020-09-29 19:24:32'),
	(15, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：3毫秒', '0', '', '2020-09-29 19:25:02'),
	(16, '月底定时删除签到表', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '月底定时删除签到表 总共耗时：2毫秒', '0', '', '2020-10-01 00:00:00');
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;

-- 导出  表 ry-team.sys_logininfor 结构
CREATE TABLE IF NOT EXISTS `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

-- 正在导出表  ry-team.sys_logininfor 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;

-- 导出  表 ry-team.sys_menu 结构
CREATE TABLE IF NOT EXISTS `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1061 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

-- 正在导出表  ry-team.sys_menu 的数据：~83 rows (大约)
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '系统管理', 0, 1, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-08-17 13:18:04', '', NULL, '系统管理目录'),
	(2, '系统监控', 0, 2, 'monitor', NULL, 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2021-08-17 13:18:04', '', NULL, '系统监控目录'),
	(3, '系统工具', 0, 3, 'tool', NULL, 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2021-08-17 13:18:04', '', NULL, '系统工具目录'),
	(4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2021-08-17 13:18:05', '', NULL, '若依官网地址'),
	(100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-08-17 13:18:05', '', NULL, '用户管理菜单'),
	(101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-08-17 13:18:05', '', NULL, '角色管理菜单'),
	(102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-08-17 13:18:05', '', NULL, '菜单管理菜单'),
	(103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-08-17 13:18:05', '', NULL, '部门管理菜单'),
	(104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2021-08-17 13:18:05', '', NULL, '岗位管理菜单'),
	(105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2021-08-17 13:18:05', '', NULL, '字典管理菜单'),
	(106, '参数设置', 1, 7, 'config', 'system/config/index', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2021-08-17 13:18:05', '', NULL, '参数设置菜单'),
	(107, '通知公告', 1, 8, 'notice', 'system/notice/index', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2021-08-17 13:18:05', '', NULL, '通知公告菜单'),
	(108, '日志管理', 1, 9, 'log', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2021-08-17 13:18:05', '', NULL, '日志管理菜单'),
	(109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-08-17 13:18:05', '', NULL, '在线用户菜单'),
	(110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2021-08-17 13:18:05', '', NULL, '定时任务菜单'),
	(111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2021-08-17 13:18:05', '', NULL, '数据监控菜单'),
	(112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-08-17 13:18:05', '', NULL, '服务监控菜单'),
	(113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2021-08-17 13:18:05', '', NULL, '缓存监控菜单'),
	(114, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-08-17 13:18:05', '', NULL, '表单构建菜单'),
	(115, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-08-17 13:18:05', '', NULL, '代码生成菜单'),
	(116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-08-17 13:18:05', '', NULL, '系统接口菜单'),
	(500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-08-17 13:18:05', '', NULL, '操作日志菜单'),
	(501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-08-17 13:18:05', '', NULL, '登录日志菜单'),
	(1001, '用户查询', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-08-17 13:18:05', '', NULL, ''),
	(1002, '用户新增', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1003, '用户修改', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1004, '用户删除', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1005, '用户导出', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1006, '用户导入', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1007, '重置密码', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1008, '角色查询', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1009, '角色新增', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1010, '角色修改', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1011, '角色删除', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1012, '角色导出', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1013, '菜单查询', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1014, '菜单新增', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1015, '菜单修改', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1016, '菜单删除', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1017, '部门查询', 103, 1, '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1018, '部门新增', 103, 2, '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1019, '部门修改', 103, 3, '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1020, '部门删除', 103, 4, '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1021, '岗位查询', 104, 1, '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1022, '岗位新增', 104, 2, '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-08-17 13:18:06', '', NULL, ''),
	(1023, '岗位修改', 104, 3, '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1024, '岗位删除', 104, 4, '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1025, '岗位导出', 104, 5, '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1026, '字典查询', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1027, '字典新增', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1028, '字典修改', 105, 3, '#', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1029, '字典删除', 105, 4, '#', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1030, '字典导出', 105, 5, '#', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1031, '参数查询', 106, 1, '#', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1032, '参数新增', 106, 2, '#', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1033, '参数修改', 106, 3, '#', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1034, '参数删除', 106, 4, '#', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1035, '参数导出', 106, 5, '#', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1036, '公告查询', 107, 1, '#', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1037, '公告新增', 107, 2, '#', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1038, '公告修改', 107, 3, '#', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1039, '公告删除', 107, 4, '#', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1040, '操作查询', 500, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1041, '操作删除', 500, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1042, '日志导出', 500, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1043, '登录查询', 501, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-08-17 13:18:07', '', NULL, ''),
	(1044, '登录删除', 501, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1045, '日志导出', 501, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1046, '在线查询', 109, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1047, '批量强退', 109, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1048, '单条强退', 109, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1049, '任务查询', 110, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1050, '任务新增', 110, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1051, '任务修改', 110, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1052, '任务删除', 110, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1053, '状态修改', 110, 5, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1054, '任务导出', 110, 7, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1055, '生成查询', 115, 1, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1056, '生成修改', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1057, '生成删除', 115, 3, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1058, '导入代码', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1059, '预览代码', 115, 4, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-08-17 13:18:08', '', NULL, ''),
	(1060, '生成代码', 115, 5, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-08-17 13:18:08', '', NULL, '');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;

-- 导出  表 ry-team.sys_notice 结构
CREATE TABLE IF NOT EXISTS `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

-- 正在导出表  ry-team.sys_notice 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', _binary 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-08-17 13:18:11', '', NULL, '管理员'),
	(2, '维护通知：2018-07-01 若依系统凌晨维护', '1', _binary 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2021-08-17 13:18:11', '', NULL, '管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;

-- 导出  表 ry-team.sys_oper_log 结构
CREATE TABLE IF NOT EXISTS `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';

-- 正在导出表  ry-team.sys_oper_log 的数据：~282 rows (大约)
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`) VALUES
	(100, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-20 21:08:18'),
	(101, '重置密码', 2, 'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\r\n  "userId" : [ "1" ],\r\n  "loginName" : [ "admin" ],\r\n  "oldPassword" : [ "admin123" ],\r\n  "newPassword" : [ "123456" ],\r\n  "confirm" : [ "123456" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-20 21:51:17'),
	(102, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "sys_notice" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 11:12:27'),
	(103, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "1" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 11:13:36'),
	(104, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 12:55:48'),
	(105, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  "userId" : [ "1" ],\r\n  "deptId" : [ "103" ],\r\n  "userName" : [ "Boss" ],\r\n  "dept.deptName" : [ "研发部门" ],\r\n  "phonenumber" : [ "15888888888" ],\r\n  "email" : [ "475833855@qq.con" ],\r\n  "loginName" : [ "admin" ],\r\n  "sex" : [ "0" ],\r\n  "role" : [ "1" ],\r\n  "remark" : [ "管理员" ],\r\n  "status" : [ "0" ],\r\n  "roleIds" : [ "1" ],\r\n  "postIds" : [ "1" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2020-04-21 17:44:36'),
	(106, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  "userId" : [ "2" ],\r\n  "deptId" : [ "105" ],\r\n  "userName" : [ "若依" ],\r\n  "dept.deptName" : [ "测试部门" ],\r\n  "phonenumber" : [ "15666666666" ],\r\n  "email" : [ "ry@qq.com" ],\r\n  "loginName" : [ "ry" ],\r\n  "sex" : [ "0" ],\r\n  "role" : [ "2" ],\r\n  "remark" : [ "测试员" ],\r\n  "status" : [ "0" ],\r\n  "roleIds" : [ "2" ],\r\n  "postIds" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 17:44:59'),
	(107, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.update()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\r\n  "id" : [ "" ],\r\n  "userName" : [ "TeamBoss" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "email" : [ "475833855@qq.com" ],\r\n  "sex" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 17:48:36'),
	(108, '用户管理', 5, 'com.ruoyi.web.controller.system.SysUserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\r\n  "deptId" : [ "" ],\r\n  "parentId" : [ "" ],\r\n  "loginName" : [ "" ],\r\n  "phonenumber" : [ "" ],\r\n  "status" : [ "" ],\r\n  "params[beginTime]" : [ "" ],\r\n  "params[endTime]" : [ "" ],\r\n  "orderByColumn" : [ "createTime" ],\r\n  "isAsc" : [ "desc" ]\r\n}', '{\r\n  "msg" : "09fbacc3-13af-4b34-b10a-f19539aec97a_用户数据.xlsx",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 18:47:29'),
	(109, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\r\n  "deptId" : [ "101" ],\r\n  "parentId" : [ "100" ],\r\n  "parentName" : [ "若依科技" ],\r\n  "deptName" : [ "总公司" ],\r\n  "orderNum" : [ "1" ],\r\n  "leader" : [ "若依" ],\r\n  "phone" : [ "15888888888" ],\r\n  "email" : [ "ry@qq.com" ],\r\n  "status" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 19:02:50'),
	(110, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\r\n  "deptId" : [ "102" ],\r\n  "parentId" : [ "100" ],\r\n  "parentName" : [ "若依科技" ],\r\n  "deptName" : [ "分公司" ],\r\n  "orderNum" : [ "2" ],\r\n  "leader" : [ "若依" ],\r\n  "phone" : [ "15888888888" ],\r\n  "email" : [ "ry@qq.com" ],\r\n  "status" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 19:03:00'),
	(111, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  "parentId" : [ "0" ],\r\n  "menuType" : [ "M" ],\r\n  "menuName" : [ "权限管理" ],\r\n  "url" : [ "" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "fa fa-cogs" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 19:06:27'),
	(112, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "用户权限" ],\r\n  "url" : [ "" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "0" ],\r\n  "icon" : [ "" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 19:07:26'),
	(113, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2001" ],\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "用户权限" ],\r\n  "url" : [ "#" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 19:07:57'),
	(114, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "1" ],\r\n  "parentId" : [ "0" ],\r\n  "menuType" : [ "M" ],\r\n  "menuName" : [ "系统管理" ],\r\n  "url" : [ "#" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "0" ],\r\n  "icon" : [ "fa fa-gear" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 19:08:09'),
	(115, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "1" ],\r\n  "parentId" : [ "0" ],\r\n  "menuType" : [ "M" ],\r\n  "menuName" : [ "系统管理" ],\r\n  "url" : [ "#" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "fa fa-gear" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 19:08:30'),
	(116, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2000" ],\r\n  "parentId" : [ "0" ],\r\n  "menuType" : [ "M" ],\r\n  "menuName" : [ "权限管理" ],\r\n  "url" : [ "#" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "2" ],\r\n  "icon" : [ "fa fa-cogs" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 19:08:34'),
	(117, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2000" ],\r\n  "parentId" : [ "0" ],\r\n  "menuType" : [ "M" ],\r\n  "menuName" : [ "权限管理" ],\r\n  "url" : [ "#" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "3" ],\r\n  "icon" : [ "fa fa-cogs" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 19:08:40'),
	(118, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2000" ],\r\n  "parentId" : [ "0" ],\r\n  "menuType" : [ "M" ],\r\n  "menuName" : [ "权限管理" ],\r\n  "url" : [ "#" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "4" ],\r\n  "icon" : [ "fa fa-cogs" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-21 19:08:44'),
	(119, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\r\n  "roleName" : [ "学生" ],\r\n  "roleKey" : [ "student" ],\r\n  "roleSort" : [ "3" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "学生认证" ],\r\n  "menuIds" : [ "1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 11:07:27'),
	(120, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  "roleId" : [ "100" ],\r\n  "roleName" : [ "学生" ],\r\n  "roleKey" : [ "student" ],\r\n  "roleSort" : [ "3" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "学生认证" ],\r\n  "menuIds" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 11:09:43'),
	(121, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\r\n  "roleName" : [ "测试员" ],\r\n  "roleKey" : [ "test" ],\r\n  "roleSort" : [ "2" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "测试工作" ],\r\n  "menuIds" : [ "1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115,2000,2001" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 11:13:58'),
	(122, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  "roleId" : [ "2" ],\r\n  "roleName" : [ "普通角色" ],\r\n  "roleKey" : [ "common" ],\r\n  "roleSort" : [ "3" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "普通角色" ],\r\n  "menuIds" : [ "1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115,2000,2001" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 11:14:12'),
	(123, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  "roleId" : [ "100" ],\r\n  "roleName" : [ "学生" ],\r\n  "roleKey" : [ "student" ],\r\n  "roleSort" : [ "4" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "学生认证" ],\r\n  "menuIds" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 11:14:24'),
	(124, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  "roleId" : [ "2" ],\r\n  "roleName" : [ "普通角色" ],\r\n  "roleKey" : [ "common" ],\r\n  "roleSort" : [ "3" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "普通角色" ],\r\n  "menuIds" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 11:14:43'),
	(125, '字典类型', 5, 'com.ruoyi.web.controller.system.SysDictTypeController.export()', 'POST', 1, 'admin', '研发部门', '/system/dict/export', '127.0.0.1', '内网IP', '{\r\n  "dictName" : [ "" ],\r\n  "dictType" : [ "" ],\r\n  "status" : [ "" ],\r\n  "params[beginTime]" : [ "" ],\r\n  "params[endTime]" : [ "" ],\r\n  "orderByColumn" : [ "createTime" ],\r\n  "isAsc" : [ "desc" ]\r\n}', '{\r\n  "msg" : "e7c2bde5-9bdd-4299-9057-0faa37cd6402_字典类型.xlsx",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 11:16:32'),
	(126, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  "deptId" : [ "107" ],\r\n  "userName" : [ "student1" ],\r\n  "deptName" : [ "运维部门" ],\r\n  "phonenumber" : [ "15866666666" ],\r\n  "email" : [ "475833855@qq.con" ],\r\n  "loginName" : [ "root" ],\r\n  "password" : [ "123456" ],\r\n  "sex" : [ "0" ],\r\n  "role" : [ "100" ],\r\n  "remark" : [ "" ],\r\n  "status" : [ "0" ],\r\n  "roleIds" : [ "100" ],\r\n  "postIds" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 11:26:54'),
	(127, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "sys_user" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 12:39:35'),
	(128, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/sys_user', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-04-22 12:39:48'),
	(129, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "2" ],\r\n  "tableName" : [ "sys_user" ],\r\n  "tableComment" : [ "用户信息表" ],\r\n  "className" : [ "SysUser" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "11" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "用户ID" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "userId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "12" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "微信用户唯一标识" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "openId" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "13" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "部门ID" ],\r\n  "columns[2].javaType" : [ "Long" ],\r\n  "columns[2].javaField" : [ "deptId" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "14" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "登录账号" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "loginName" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "LIKE" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "15" ],\r\n  "columns[4].sort" : [ "5" ],\r\n  "columns[4].columnComment" : [ "用户昵称" ],\r\n  "columns[', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 13:21:23'),
	(130, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "2" ],\r\n  "tableName" : [ "sys_user" ],\r\n  "tableComment" : [ "用户信息表" ],\r\n  "className" : [ "SysUser" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "11" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "用户ID" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "userId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "12" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "微信用户唯一标识" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "openId" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "13" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "部门ID" ],\r\n  "columns[2].javaType" : [ "Long" ],\r\n  "columns[2].javaField" : [ "deptId" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "14" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "登录账号" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "loginName" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "LIKE" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "15" ],\r\n  "columns[4].sort" : [ "5" ],\r\n  "columns[4].columnComment" : [ "用户昵称" ],\r\n  "columns[', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 13:23:44'),
	(131, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "user_interest" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 13:25:16'),
	(132, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "3" ],\r\n  "tableName" : [ "user_interest" ],\r\n  "tableComment" : [ "用户兴趣爱好表" ],\r\n  "className" : [ "UserInterest" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "32" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "null" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "interestId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "tplCategory" : [ "crud" ],\r\n  "packageName" : [ "com.ruoyi.system" ],\r\n  "moduleName" : [ "system" ],\r\n  "businessName" : [ "interest" ],\r\n  "functionName" : [ "用户兴趣爱好" ],\r\n  "params[treeCode]" : [ "" ],\r\n  "params[treeParentCode]" : [ "" ],\r\n  "params[treeName]" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 13:26:45'),
	(133, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "3" ],\r\n  "tableName" : [ "user_interest" ],\r\n  "tableComment" : [ "用户兴趣爱好表" ],\r\n  "className" : [ "UserInterest" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "32" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "null" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "interestId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "tplCategory" : [ "tree" ],\r\n  "packageName" : [ "com.ruoyi.system" ],\r\n  "moduleName" : [ "system" ],\r\n  "businessName" : [ "interest" ],\r\n  "functionName" : [ "用户兴趣爱好" ],\r\n  "params[treeCode]" : [ "interest_id" ],\r\n  "params[treeParentCode]" : [ "interest_id" ],\r\n  "params[treeName]" : [ "interest_id" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 13:29:16'),
	(134, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "3" ],\r\n  "tableName" : [ "user_interest" ],\r\n  "tableComment" : [ "用户兴趣爱好表" ],\r\n  "className" : [ "UserInterest" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "32" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "null" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "interestId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "tplCategory" : [ "crud" ],\r\n  "packageName" : [ "com.ruoyi.system" ],\r\n  "moduleName" : [ "system" ],\r\n  "businessName" : [ "interest" ],\r\n  "functionName" : [ "用户兴趣爱好" ],\r\n  "params[treeCode]" : [ "" ],\r\n  "params[treeParentCode]" : [ "" ],\r\n  "params[treeName]" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-22 13:30:08'),
	(135, '用户管理', 5, 'com.ruoyi.web.controller.system.SysUserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\r\n  "deptId" : [ "" ],\r\n  "parentId" : [ "" ],\r\n  "loginName" : [ "" ],\r\n  "phonenumber" : [ "" ],\r\n  "status" : [ "" ],\r\n  "params[beginTime]" : [ "" ],\r\n  "params[endTime]" : [ "" ],\r\n  "orderByColumn" : [ "createTime" ],\r\n  "isAsc" : [ "desc" ]\r\n}', '{\r\n  "msg" : "d2f06579-510a-47a2-8ede-9f91d6c18dd7_用户数据.xlsx",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-23 10:32:31'),
	(136, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  "deptId" : [ "109" ],\r\n  "userName" : [ "admin" ],\r\n  "deptName" : [ "财务部门" ],\r\n  "phonenumber" : [ "15866666667" ],\r\n  "email" : [ "ryl@163.com" ],\r\n  "loginName" : [ "ros" ],\r\n  "password" : [ "123456" ],\r\n  "sex" : [ "0" ],\r\n  "role" : [ "100" ],\r\n  "remark" : [ "" ],\r\n  "status" : [ "0" ],\r\n  "roleIds" : [ "100" ],\r\n  "postIds" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-23 12:51:44'),
	(137, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\r\n  "userId" : [ "2" ],\r\n  "status" : [ "1" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-23 14:08:01'),
	(138, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\r\n  "userId" : [ "1" ],\r\n  "status" : [ "1" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2020-04-23 14:08:06'),
	(139, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\r\n  "userId" : [ "2" ],\r\n  "status" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-23 14:08:21'),
	(140, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "3" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-23 15:46:57'),
	(141, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "user_interest" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-23 15:47:03'),
	(142, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "4" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-23 15:48:39'),
	(143, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "interest_user" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-23 15:48:47'),
	(144, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "5" ],\r\n  "tableName" : [ "interest_user" ],\r\n  "tableComment" : [ "用户兴趣爱好表" ],\r\n  "className" : [ "InterestUser" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "34" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "用户兴趣ID" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "interestUserid" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "35" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "微信用户唯一标识" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "openId" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "36" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "兴趣ID" ],\r\n  "columns[2].javaType" : [ "Long" ],\r\n  "columns[2].javaField" : [ "interestId" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "37" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "游戏名称1" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "interestGamename" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "38" ],\r\n  "columns[4].sort" : [ "5" ],\r\n  "columns[4].columnComment" : [ "游戏模式1" ],\r\n  "columns[4].javaType" : [ "String" ],\r\n  "columns[4].javaField" : [ "interestModel" ],\r\n  "columns[4].isInsert" : [ "1" ],\r\n  "columns[4].queryType" : [ "EQ" ],\r\n  "columns[4].htmlType" : [ "input" ],\r\n  "columns[4].dictType" : [ "" ],\r\n  "columns[5].columnId" : [ "39" ],\r\n  "columns[', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-23 15:51:11'),
	(145, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/interest_user', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-04-23 15:52:58'),
	(146, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  "userId" : [ "100" ],\r\n  "deptId" : [ "107" ],\r\n  "userName" : [ "student1" ],\r\n  "dept.deptName" : [ "运维部门" ],\r\n  "phonenumber" : [ "15866666666" ],\r\n  "email" : [ "475833855@qq.con" ],\r\n  "loginName" : [ "root" ],\r\n  "sex" : [ "0" ],\r\n  "role" : [ "2" ],\r\n  "remark" : [ "" ],\r\n  "status" : [ "0" ],\r\n  "roleIds" : [ "2" ],\r\n  "postIds" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-23 18:08:34'),
	(147, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  "userId" : [ "100" ],\r\n  "deptId" : [ "107" ],\r\n  "userName" : [ "student1" ],\r\n  "dept.deptName" : [ "运维部门" ],\r\n  "phonenumber" : [ "15866666666" ],\r\n  "email" : [ "475833855@qq.con" ],\r\n  "loginName" : [ "root" ],\r\n  "sex" : [ "0" ],\r\n  "role" : [ "1", "101" ],\r\n  "remark" : [ "" ],\r\n  "status" : [ "0" ],\r\n  "roleIds" : [ "1,101" ],\r\n  "postIds" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-23 18:09:00'),
	(148, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  "userId" : [ "100" ],\r\n  "deptId" : [ "107" ],\r\n  "userName" : [ "student1" ],\r\n  "dept.deptName" : [ "运维部门" ],\r\n  "phonenumber" : [ "15866666666" ],\r\n  "email" : [ "475833855@qq.con" ],\r\n  "loginName" : [ "root" ],\r\n  "sex" : [ "0" ],\r\n  "role" : [ "100" ],\r\n  "remark" : [ "学生" ],\r\n  "status" : [ "0" ],\r\n  "roleIds" : [ "100" ],\r\n  "postIds" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-23 18:10:13'),
	(149, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "举报检验" ],\r\n  "url" : [ "" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "2" ],\r\n  "icon" : [ "" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-26 11:16:40'),
	(150, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "身份检验" ],\r\n  "url" : [ "" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "3" ],\r\n  "icon" : [ "" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-26 11:27:58'),
	(151, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_user" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-26 17:20:11'),
	(152, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "6" ],\r\n  "tableName" : [ "wx_user" ],\r\n  "tableComment" : [ "微信用户" ],\r\n  "className" : [ "WxUser" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "41" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "微信用户标识" ],\r\n  "columns[0].javaType" : [ "String" ],\r\n  "columns[0].javaField" : [ "wxOpenid" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].isEdit" : [ "1" ],\r\n  "columns[0].isList" : [ "1" ],\r\n  "columns[0].isQuery" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].isRequired" : [ "1" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "42" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "用户昵称" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "wxName" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "LIKE" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "43" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "用户头像" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "wxAvatar" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "44" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "手机号" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "phonenumber" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-26 18:24:13'),
	(153, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_user', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-04-26 18:24:41'),
	(154, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2001" ],\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "用户权限" ],\r\n  "url" : [ "/permission/wechat" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 11:34:54'),
	(155, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2001" ],\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "用户权限" ],\r\n  "url" : [ "/wechat/WeChatUser" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "wechat:WeChatUser:view" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 11:36:32'),
	(156, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "6" ],\r\n  "tableName" : [ "wx_user" ],\r\n  "tableComment" : [ "微信用户" ],\r\n  "className" : [ "WxUser" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "41" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "微信用户标识" ],\r\n  "columns[0].javaType" : [ "String" ],\r\n  "columns[0].javaField" : [ "wxOpenid" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].isEdit" : [ "1" ],\r\n  "columns[0].isList" : [ "1" ],\r\n  "columns[0].isQuery" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].isRequired" : [ "1" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "42" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "用户昵称" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "wxName" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "LIKE" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "43" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "用户头像" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "wxAvatar" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "44" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "手机号" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "phonenumber" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 11:40:00'),
	(157, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_user', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-04-27 11:40:21'),
	(158, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2001" ],\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "用户权限" ],\r\n  "url" : [ "/premission/WeChatUser" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "premission:WeChatUser:view" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 11:53:08'),
	(159, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2001" ],\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "用户权限" ],\r\n  "url" : [ "/premission/WeChatUser" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "premission:wechat:view" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 11:53:53'),
	(160, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2001" ],\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "用户权限" ],\r\n  "url" : [ "/premission/wechat" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "premission:wechat:view" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 12:11:49'),
	(161, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  "parentId" : [ "2001" ],\r\n  "menuType" : [ "F" ],\r\n  "menuName" : [ "用户查询" ],\r\n  "url" : [ "" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "premission:wechat:list" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 12:12:37'),
	(162, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  "parentId" : [ "2001" ],\r\n  "menuType" : [ "F" ],\r\n  "menuName" : [ "用户增加" ],\r\n  "url" : [ "" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "premission:wechat:add" ],\r\n  "orderNum" : [ "2" ],\r\n  "icon" : [ "" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 12:13:54'),
	(163, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2001" ],\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "用户权限" ],\r\n  "url" : [ "/premission/wechat" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "premission:wechat:view" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 12:21:26'),
	(164, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2004" ],\r\n  "parentId" : [ "2001" ],\r\n  "menuType" : [ "F" ],\r\n  "menuName" : [ "用户查询" ],\r\n  "url" : [ "#" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "premission:wechat:list" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 12:23:20'),
	(165, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  "parentId" : [ "2001" ],\r\n  "menuType" : [ "F" ],\r\n  "menuName" : [ "用户修改" ],\r\n  "url" : [ "" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "premission:wechat:edit" ],\r\n  "orderNum" : [ "3" ],\r\n  "icon" : [ "" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 12:24:16'),
	(166, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2001" ],\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "用户权限" ],\r\n  "url" : [ "/system/user" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "system:user:view" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 12:50:56'),
	(167, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2001" ],\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "用户权限" ],\r\n  "url" : [ "/system/user" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "system:user:view" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 12:51:54'),
	(168, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2001" ],\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "用户权限" ],\r\n  "url" : [ "/premission/wechat" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "premission:wechat:list" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 13:00:35'),
	(169, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2001" ],\r\n  "parentId" : [ "2000" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "用户权限" ],\r\n  "url" : [ "/premission/wechat" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "premission:wechat:view" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 14:03:54'),
	(170, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2004" ],\r\n  "parentId" : [ "2001" ],\r\n  "menuType" : [ "F" ],\r\n  "menuName" : [ "用户查询" ],\r\n  "url" : [ "#" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "premission:wechat:list" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 14:04:32'),
	(171, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  "parentId" : [ "2001" ],\r\n  "menuType" : [ "F" ],\r\n  "menuName" : [ "用户移除" ],\r\n  "url" : [ "" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "premission:wechat:remove" ],\r\n  "orderNum" : [ "4" ],\r\n  "icon" : [ "" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 14:08:18'),
	(172, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  "parentId" : [ "2001" ],\r\n  "menuType" : [ "F" ],\r\n  "menuName" : [ "用户导出" ],\r\n  "url" : [ "" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "export" ],\r\n  "orderNum" : [ "5" ],\r\n  "icon" : [ "" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 14:09:13'),
	(173, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "2008" ],\r\n  "parentId" : [ "2001" ],\r\n  "menuType" : [ "F" ],\r\n  "menuName" : [ "用户导出" ],\r\n  "url" : [ "#" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "premission:wechat:export" ],\r\n  "orderNum" : [ "5" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-27 14:09:31'),
	(174, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "44444" ],\r\n  "wxName" : [ "张三" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "wxSex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "" ],\r\n  "loginTime" : [ "2020-04-27" ]\r\n}', 'null', 1, 'Invalid bound statement (not found): com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser', '2020-04-27 14:32:38'),
	(175, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "44444" ],\r\n  "wxName" : [ "张三" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "wxSex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "" ],\r\n  "loginTime" : [ "2020-04-27" ]\r\n}', 'null', 1, 'Invalid bound statement (not found): com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser', '2020-04-27 14:32:46'),
	(176, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "44444" ],\r\n  "wxName" : [ "张三" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "wxSex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "444" ],\r\n  "loginTime" : [ "2020-04-27" ]\r\n}', 'null', 1, 'Invalid bound statement (not found): com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser', '2020-04-27 14:33:46'),
	(177, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "6" ],\r\n  "tableName" : [ "wx_user" ],\r\n  "tableComment" : [ "微信用户" ],\r\n  "className" : [ "WxUser" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "41" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "微信用户标识" ],\r\n  "columns[0].javaType" : [ "String" ],\r\n  "columns[0].javaField" : [ "wxOpenid" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].isEdit" : [ "1" ],\r\n  "columns[0].isList" : [ "1" ],\r\n  "columns[0].isQuery" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].isRequired" : [ "1" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "42" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "用户昵称" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "wxName" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "LIKE" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "43" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "用户头像" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "wxAvatar" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "44" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "手机号" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "phonenumber" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-28 16:59:59'),
	(178, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_user', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-04-28 17:00:50'),
	(179, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "44444" ],\r\n  "wxName" : [ "" ],\r\n  "wxAvatar" : [ "" ],\r\n  "phonenumber" : [ "" ],\r\n  "wxSex" : [ "" ],\r\n  "wxLevel" : [ "" ],\r\n  "wxCard" : [ "" ]\r\n}', 'null', 1, 'Invalid bound statement (not found): com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser', '2020-04-28 17:50:09'),
	(180, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "100", "100" ],\r\n  "wxName" : [ "张三" ],\r\n  "phonenumber" : [ "" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "2" ],\r\n  "wxCard" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作失败",\r\n  "code" : 500\r\n}', 0, NULL, '2020-04-29 20:09:15'),
	(181, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  "dictName" : [ "在线状态" ],\r\n  "dictType" : [ "wx_user_line" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 20:23:29'),
	(182, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\r\n  "dictId" : [ "100" ],\r\n  "dictName" : [ "在线状态" ],\r\n  "dictType" : [ "wx_user_line" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "用户在线列表" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 20:23:52'),
	(183, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  "dictLabel" : [ "在线" ],\r\n  "dictValue" : [ "on_line" ],\r\n  "dictType" : [ "wx_user_line" ],\r\n  "cssClass" : [ "on_line" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "用户在线" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 20:25:40'),
	(184, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "100" ],\r\n  "dictLabel" : [ "在线" ],\r\n  "dictValue" : [ "on_line" ],\r\n  "dictType" : [ "wx_user_line" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "用户在线" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 20:26:05'),
	(185, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  "dictLabel" : [ "离线" ],\r\n  "dictValue" : [ "2" ],\r\n  "dictType" : [ "wx_user_line" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "用户离线" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 20:27:46'),
	(186, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "101" ],\r\n  "dictLabel" : [ "离线" ],\r\n  "dictValue" : [ "off_line" ],\r\n  "dictType" : [ "wx_user_line" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "用户离线" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 20:29:19'),
	(187, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "101" ],\r\n  "dictLabel" : [ "离线" ],\r\n  "dictValue" : [ "off_line" ],\r\n  "dictType" : [ "wx_user_line" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "warning" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "用户离线" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 20:29:31'),
	(188, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "101" ],\r\n  "dictLabel" : [ "离线" ],\r\n  "dictValue" : [ "off_line" ],\r\n  "dictType" : [ "wx_user_line" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "danger" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "用户离线" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 20:29:38'),
	(189, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "100" ],\r\n  "dictLabel" : [ "在线" ],\r\n  "dictValue" : [ "on_line" ],\r\n  "dictType" : [ "wx_user_line" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "primary" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "用户在线" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 20:29:44'),
	(190, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "100", "100" ],\r\n  "wxName" : [ "张三" ],\r\n  "phonenumber" : [ "" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "2" ],\r\n  "wxCard" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作失败",\r\n  "code" : 500\r\n}', 0, NULL, '2020-04-29 20:49:04'),
	(191, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "456123" ],\r\n  "wxName" : [ "" ],\r\n  "phonenumber" : [ "" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "" ],\r\n  "wxCard" : [ "" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'456123\', \n         \n         \n         \n         \n         \n\' at line 13\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,                                                                                 create_time,                              )values (          ?,                                                                                 ?,                              )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'456123\', \n         \n         \n         \n         \n         \n\' at line 13\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'456123\', \n         \n         \n         \n         \n         \n\' at line 13', '2020-04-29 20:49:52'),
	(192, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "100", "100" ],\r\n  "wxName" : [ "张三" ],\r\n  "phonenumber" : [ "" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作失败",\r\n  "code" : 500\r\n}', 0, NULL, '2020-04-29 20:54:38'),
	(193, '微信用户', 5, 'com.ruoyi.web.controller.premission.WxUserController.export()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/export', '127.0.0.1', '内网IP', '{\r\n  "wxName" : [ "" ],\r\n  "wxSex" : [ "" ],\r\n  "status" : [ "" ],\r\n  "wxLevel" : [ "" ],\r\n  "wxCard" : [ "" ],\r\n  "params[beginTime]" : [ "" ],\r\n  "params[endTime]" : [ "" ],\r\n  "orderByColumn" : [ "" ],\r\n  "isAsc" : [ "asc" ]\r\n}', '{\r\n  "msg" : "58451e5d-f46c-4c4f-9f8b-fdcb723085e0_wechat.xlsx",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 21:26:49'),
	(194, '微信用户', 3, 'com.ruoyi.web.controller.premission.WxUserController.remove()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "101" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 21:27:01'),
	(195, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "1234856" ],\r\n  "wxName" : [ "111" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "1" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'1234856\', \n         \'111\', \n         \n         \'18266029366\'\' at line 13\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,                               wx_level,           wx_card,           create_time,                              )values (          ?,           ?,                     ?,                               ?,           ?,           ?,                              )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'1234856\', \n         \'111\', \n         \n         \'18266029366\'\' at line 13\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'1234856\', \n         \'111\', \n         \n         \'18266029366\'\' at line 13', '2020-04-29 21:28:18'),
	(196, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "123456" ],\r\n  "wxName" : [ "李四" ],\r\n  "phonenumber" : [ "" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "1" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123456\', \n         \'李四\', \n         \n         \n         \n\' at line 13\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                                                   wx_level,           wx_card,           create_time,                              )values (          ?,           ?,                                                   ?,           ?,           ?,                              )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123456\', \n         \'李四\', \n         \n         \n         \n\' at line 13\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123456\', \n         \'李四\', \n         \n         \n         \n\' at line 13', '2020-04-29 21:50:56'),
	(197, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "123456" ],\r\n  "wxName" : [ "李四" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "1" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123456\', \n         \'李四\', \n         \n         \'1826602936\' at line 13\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,                               wx_level,           wx_card,           create_time,                              )values (          ?,           ?,                     ?,                               ?,           ?,           ?,                              )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123456\', \n         \'李四\', \n         \n         \'1826602936\' at line 13\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123456\', \n         \'李四\', \n         \n         \'1826602936\' at line 13', '2020-04-29 21:52:31'),
	(198, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "123" ],\r\n  "wxName" : [ "李四" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "1" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'18266029366\',\' at line 13\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,                      wx_level,           wx_card,           create_time,                              )values (          ?,           ?,                     ?,                      ?,           ?,           ?,                              )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'18266029366\',\' at line 13\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'18266029366\',\' at line 13', '2020-04-29 21:53:27'),
	(199, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "123" ],\r\n  "wxName" : [ "李四" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "1" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'18266029366\',\' at line 11\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,                      wx_level,           wx_card,                    )values (          ?,           ?,                     ?,                      ?,           ?,                    )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'18266029366\',\' at line 11\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'18266029366\',\' at line 11', '2020-04-29 21:59:55'),
	(200, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "123" ],\r\n  "wxName" : [ "李四" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "1" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'18266029366\',\' at line 11\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,                               wx_level,           wx_card,                    )values (          ?,           ?,                     ?,                               ?,           ?,                    )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'18266029366\',\' at line 11\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'18266029366\',\' at line 11', '2020-04-29 22:04:54'),
	(201, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "123" ],\r\n  "wxName" : [ "李四" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "1" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'18266029366\',\' at line 11\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,                               wx_level,           wx_card,                    )values (          ?,           ?,                     ?,                               ?,           ?,                    )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'18266029366\',\' at line 11\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'18266029366\',\' at line 11', '2020-04-29 22:22:53'),
	(202, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "123" ],\r\n  "wxName" : [ "李四" ],\r\n  "phonenumber" : [ "1826602936" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "1" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'1826602936\', \' at line 11\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,                               wx_level,           wx_card,                    )values (          ?,           ?,                     ?,                               ?,           ?,                    )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'1826602936\', \' at line 11\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'1826602936\', \' at line 11', '2020-04-29 22:23:13'),
	(203, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, NULL, NULL, '/premission/wechat/add', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 22:31:37'),
	(204, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, NULL, NULL, '/premission/wechat/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 11\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,           wx_sex,           status,           wx_level,           wx_card,                    )values (          ?,           ?,                     ?,           ?,           ?,           ?,           ?,                    )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 11\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 11', '2020-04-29 22:33:30'),
	(205, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, NULL, NULL, '/premission/wechat/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'12345678\', \n\n\' at line 11\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,               )values (          ?,           ?,                     ?,               )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'12345678\', \n\n\' at line 11\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'12345678\', \n\n\' at line 11', '2020-04-29 22:35:20'),
	(206, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, NULL, NULL, '/premission/wechat/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 11\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,           wx_sex,           status,           wx_level,           wx_card,                    )values (          ?,           ?,                     ?,           ?,           ?,           ?,           ?,                    )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 11\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n         \'123\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 11', '2020-04-29 22:36:50'),
	(207, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, NULL, NULL, '/premission/wechat/add', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 22:46:52'),
	(208, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "111", "111" ],\r\n  "wxName" : [ "3" ],\r\n  "phonenumber" : [ "" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作失败",\r\n  "code" : 500\r\n}', 0, NULL, '2020-04-29 22:48:27'),
	(209, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "111", "111" ],\r\n  "wxName" : [ "" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作失败",\r\n  "code" : 500\r\n}', 0, NULL, '2020-04-29 22:50:12'),
	(210, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "111", "111" ],\r\n  "wxName" : [ "" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "0" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'(\n           wx_name = \'\',\n           wx_avatar = null,\n           phonenumber =\' at line 1\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.updateWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update wx_user set (            wx_name = ?,            wx_avatar = ?,            phonenumber = ?,             wx_sex = ?,             status = ?,           wx_level = ?,             wx_card = ?,             login_time = ?)         where wx_openid = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'(\n           wx_name = \'\',\n           wx_avatar = null,\n           phonenumber =\' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'(\n           wx_name = \'\',\n           wx_avatar = null,\n           phonenumber =\' at line 1', '2020-04-29 22:51:59'),
	(211, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "111", "111" ],\r\n  "wxName" : [ "" ],\r\n  "phonenumber" : [ "" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "" ],\r\n  "wxCard" : [ "" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where wx_openid = \'111,111\'\' at line 3\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.updateWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update wx_user                   where wx_openid = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where wx_openid = \'111,111\'\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where wx_openid = \'111,111\'\' at line 3', '2020-04-29 22:56:56'),
	(212, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "111", "222" ],\r\n  "wxName" : [ "" ],\r\n  "phonenumber" : [ "" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "" ],\r\n  "wxCard" : [ "" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where wx_openid = \'111,222\'\' at line 3\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.updateWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update wx_user                   where wx_openid = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where wx_openid = \'111,222\'\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where wx_openid = \'111,222\'\' at line 3', '2020-04-29 22:57:09'),
	(213, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "111", "111" ],\r\n  "wxName" : [ "" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "" ],\r\n  "wxCard" : [ "" ]\r\n}', '{\r\n  "msg" : "操作失败",\r\n  "code" : 500\r\n}', 0, NULL, '2020-04-29 22:59:22'),
	(214, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "111" ],\r\n  "wxName" : [ "李四" ],\r\n  "phonenumber" : [ "" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 23:02:29'),
	(215, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, NULL, NULL, '/premission/wechat/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n       \'123\',\n        \'李四\',\n        null,\n       \'12345678\',\n     \' at line 10\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(           wx_openid,           wx_name,                     phonenumber,            wx_sex,           status,            wx_level,           wx_card,          )values (        ?,         ?,         ?,        ?,        ?,         ?,        ?,         ?,         )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n       \'123\',\n        \'李四\',\n        null,\n       \'12345678\',\n     \' at line 10\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values (\n       \'123\',\n        \'李四\',\n        null,\n       \'12345678\',\n     \' at line 10', '2020-04-29 23:06:45'),
	(216, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "111" ],\r\n  "wxName" : [ "李四" ],\r\n  "phonenumber" : [ "" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "1" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 23:09:50'),
	(217, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "44444" ],\r\n  "wxName" : [ "李四" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "1" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.insertWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(           wx_openid,           wx_name,                     phonenumber,                                wx_level,           wx_card          )values(        ?,         ?,         ?,        ?,        ?,         ?,        ?,         ?         )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1', '2020-04-29 23:14:27'),
	(218, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "44444" ],\r\n  "wxName" : [ "李四" ],\r\n  "phonenumber" : [ "18266029366" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "1" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 23:17:03'),
	(219, '微信用户', 1, 'com.ruoyi.web.controller.premission.WxUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/add', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "12345" ],\r\n  "wxName" : [ "王五" ],\r\n  "phonenumber" : [ "15888888888" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "2" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-04-29 23:18:00'),
	(220, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  "dictName" : [ "权限等级" ],\r\n  "dictType" : [ "wx_access_level" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "用户权限等级" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 13:52:09'),
	(221, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  "dictLabel" : [ "3" ],\r\n  "dictValue" : [ "3" ],\r\n  "dictType" : [ "wx_access_level" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 13:55:31'),
	(222, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "102" ],\r\n  "dictLabel" : [ "3" ],\r\n  "dictValue" : [ "3" ],\r\n  "dictType" : [ "wx_access_level" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "所有功能正常使用" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 13:57:14'),
	(223, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  "dictLabel" : [ "2" ],\r\n  "dictValue" : [ "2" ],\r\n  "dictType" : [ "wx_access_level" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "限时关闭大型聊天室" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 13:58:25'),
	(224, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  "dictLabel" : [ "1" ],\r\n  "dictValue" : [ "1" ],\r\n  "dictType" : [ "wx_access_level" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "3" ],\r\n  "listClass" : [ "" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "限时关闭所有聊天室" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 13:58:57'),
	(225, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "100" ],\r\n  "wxName" : [ "张三" ],\r\n  "phonenumber" : [ "" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "2" ],\r\n  "wxCard" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 14:05:35'),
	(226, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "100" ],\r\n  "wxName" : [ "张三" ],\r\n  "phonenumber" : [ "" ],\r\n  "sex" : [ "0" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxCard" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 14:09:18'),
	(227, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  "dictName" : [ "身份认证" ],\r\n  "dictType" : [ "wx_user_card" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "用户身份认证" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 14:12:40'),
	(228, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  "dictLabel" : [ "无人证" ],\r\n  "dictValue" : [ "0" ],\r\n  "dictType" : [ "wx_user_card" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "primary" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "未进行身份认证" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 14:14:53'),
	(229, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "105" ],\r\n  "dictLabel" : [ "无认证" ],\r\n  "dictValue" : [ "0" ],\r\n  "dictType" : [ "wx_user_card" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "primary" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "未进行身份认证" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 14:15:05'),
	(230, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  "dictLabel" : [ "学生认证" ],\r\n  "dictValue" : [ "1" ],\r\n  "dictType" : [ "wx_user_card" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "primary" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "学生身份已认证" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 14:15:45'),
	(231, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "106" ],\r\n  "dictLabel" : [ "真实认证" ],\r\n  "dictValue" : [ "1" ],\r\n  "dictType" : [ "wx_user_card" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "primary" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "身份证已认证" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 14:16:31'),
	(232, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  "dictLabel" : [ "学生认证" ],\r\n  "dictValue" : [ "2" ],\r\n  "dictType" : [ "wx_user_card" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "3" ],\r\n  "listClass" : [ "primary" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "学生身份已认证" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 14:17:06'),
	(233, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "105" ],\r\n  "dictLabel" : [ "无认证" ],\r\n  "dictValue" : [ "0" ],\r\n  "dictType" : [ "wx_user_card" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "info" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "未进行身份认证" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 14:22:48'),
	(234, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "106" ],\r\n  "dictLabel" : [ "真实认证" ],\r\n  "dictValue" : [ "1" ],\r\n  "dictType" : [ "wx_user_card" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "success" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "身份证已认证" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 14:22:59'),
	(235, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "107" ],\r\n  "dictLabel" : [ "学生认证" ],\r\n  "dictValue" : [ "2" ],\r\n  "dictType" : [ "wx_user_card" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "3" ],\r\n  "listClass" : [ "success" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "学生身份已认证" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-01 14:23:33'),
	(236, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "111" ],\r\n  "wxName" : [ "李四" ],\r\n  "wxLevel" : [ "2" ],\r\n  "wxCard" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-05 14:01:00'),
	(237, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "100" ],\r\n  "parentId" : [ "1" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "员工管理" ],\r\n  "url" : [ "/system/user" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "system:user:view" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-05 14:05:15'),
	(238, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  "menuId" : [ "109" ],\r\n  "parentId" : [ "2" ],\r\n  "menuType" : [ "C" ],\r\n  "menuName" : [ "在线员工" ],\r\n  "url" : [ "/monitor/online" ],\r\n  "target" : [ "menuItem" ],\r\n  "perms" : [ "monitor:online:view" ],\r\n  "orderNum" : [ "1" ],\r\n  "icon" : [ "#" ],\r\n  "visible" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-05 14:05:30'),
	(239, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "6" ],\r\n  "tableName" : [ "wx_user" ],\r\n  "tableComment" : [ "微信用户" ],\r\n  "className" : [ "WxUserApi" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "41" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "微信用户标识" ],\r\n  "columns[0].javaType" : [ "String" ],\r\n  "columns[0].javaField" : [ "wxOpenid" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].isEdit" : [ "1" ],\r\n  "columns[0].isList" : [ "1" ],\r\n  "columns[0].isQuery" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].isRequired" : [ "1" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "42" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "用户昵称" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "wxName" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "LIKE" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "43" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "用户头像" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "wxAvatar" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "44" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "手机号" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "phonenumber" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-07 15:21:28'),
	(240, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_user', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-05-07 15:22:54'),
	(241, '微信用户', 1, 'com.ruoyi.wechatapi.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 13\r\n### The error may involve com.ruoyi.wechatapi.mapper.WxUserApiMapper.insertWxUserApi-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,           wx_sex,           status,           wx_level,           wx_card,           create_time,                              )values(          ?,           ?,                     ?,           ?,           ?,           ?,           ?,           ?,                              )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 13\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 13', '2020-05-07 15:51:25'),
	(242, '微信用户', 1, 'com.ruoyi.wechatapi.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 13\r\n### The error may involve com.ruoyi.wechatapi.mapper.WxUserApiMapper.insertWxUserApi-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,           wx_sex,           status,           wx_level,           wx_card,           create_time,                              )values(          ?,           ?,                     ?,           ?,           ?,           ?,           ?,           ?,                              )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 13\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 13', '2020-05-07 15:54:59'),
	(243, '微信用户', 1, 'com.ruoyi.wechatapi.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-07 15:57:00'),
	(244, '微信用户', 1, 'com.ruoyi.wechatapi.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 11\r\n### The error may involve com.ruoyi.wechatapi.mapper.WxUserApiMapper.insertWxUserApi-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,           wx_sex,           status,           wx_level,           wx_card,                  )values(          ?,           ?,                     ?,           ?,           ?,           ?,           ?,           )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 11\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 11', '2020-05-07 16:00:26'),
	(245, '微信用户', 1, 'com.ruoyi.wechatapi.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 13\r\n### The error may involve com.ruoyi.wechatapi.mapper.WxUserApiMapper.insertWxUserApi-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,           wx_sex,           status,           wx_level,           wx_card,           create_time,                              )values(          ?,           ?,                     ?,           ?,           ?,           ?,           ?,           ?,                              )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 13\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 13', '2020-05-07 16:02:10'),
	(246, '微信用户', 1, 'com.ruoyi.wechatapi.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1234\' for key \'PRIMARY\'\r\n### The error may involve com.ruoyi.wechatapi.mapper.WxUserApiMapper.insertWxUserApi-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,           wx_name,                     phonenumber,           wx_sex,           status,           wx_level,           wx_card             )values(          ?,           ?,                     ?,           ?,           ?,           ?,           ?             )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1234\' for key \'PRIMARY\'\n; Duplicate entry \'1234\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1234\' for key \'PRIMARY\'', '2020-05-07 16:05:12'),
	(247, '微信用户', 1, 'com.ruoyi.wechatapi.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 13\r\n### The error may involve com.ruoyi.wechatapi.mapper.WxUserApiMapper.insertWxUserApi-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(           wx_openid,           wx_name,                     phonenumber,            wx_sex,           status,            wx_level,           wx_card,           create_time,                              )values(          ?,           ?,                     ?,           ?,           ?,           ?,           ?,           ?,                              )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 13\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234\', \n         \'李四\', \n         \n         \'12345678\', \n \' at line 13', '2020-05-07 16:06:52'),
	(248, '微信用户', 1, 'com.ruoyi.wechatapi.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1234\' for key \'PRIMARY\'\r\n### The error may involve com.ruoyi.wechatapi.mapper.WxUserApiMapper.insertWxUserApi-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(           wx_openid,           wx_name,                     phonenumber,            wx_sex,           status,            wx_level,           wx_card             )values(          ?,           ?,                     ?,           ?,           ?,           ?,           ?             )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1234\' for key \'PRIMARY\'\n; Duplicate entry \'1234\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'1234\' for key \'PRIMARY\'', '2020-05-07 16:07:38'),
	(249, '微信用户', 1, 'com.ruoyi.wechatapi.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'12345\' for key \'PRIMARY\'\r\n### The error may involve com.ruoyi.wechatapi.mapper.WxUserApiMapper.insertWxUserApi-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(           wx_openid,           wx_name,                     phonenumber,            wx_sex,           status,            wx_level,           wx_card             )values(          ?,           ?,                     ?,           ?,           ?,           ?,           ?             )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'12345\' for key \'PRIMARY\'\n; Duplicate entry \'12345\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'12345\' for key \'PRIMARY\'', '2020-05-07 16:07:45'),
	(250, '微信用户', 1, 'com.ruoyi.wechatapi.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-07 16:07:57'),
	(251, '微信用户', 1, 'com.ruoyi.wechatapi.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234556\', \n         \'李四\', \n         \n         \'12345678\',\' at line 13\r\n### The error may involve com.ruoyi.wechatapi.mapper.WxUserApiMapper.insertWxUserApi-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(           wx_openid,           wx_name,                     phonenumber,            wx_sex,           status,            wx_level,           wx_card,           create_time,                              )values(          ?,           ?,                     ?,           ?,           ?,           ?,           ?,           ?,                              )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234556\', \n         \'李四\', \n         \n         \'12345678\',\' at line 13\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')values(\n         \'1234556\', \n         \'李四\', \n         \n         \'12345678\',\' at line 13', '2020-05-07 16:08:39'),
	(252, '微信用户', 1, 'com.ruoyi.wechatapi.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-07 16:12:06'),
	(253, '微信用户', 1, 'com.ruoyi.wechatapi.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-07 16:15:46'),
	(254, '微信用户', 2, 'com.ruoyi.wechatapi.controller.WxUserApiController.editSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/edit', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-07 16:19:20'),
	(255, '微信用户', 2, 'com.ruoyi.wechatapi.controller.WxUserApiController.editSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/edit', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-07 16:19:45'),
	(256, '微信用户', 2, 'com.ruoyi.wechatapi.controller.WxUserApiController.editSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/edit', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-07 16:20:48'),
	(257, '微信用户', 2, 'com.ruoyi.wechatapi.controller.WxUserApiController.editSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/edit', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-07 16:23:27'),
	(258, '微信用户', 2, 'com.ruoyi.wechatapi.controller.WxUserApiController.editSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/edit', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-07 16:28:18'),
	(259, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\r\n  "dictId" : [ "1" ],\r\n  "dictName" : [ "员工性别" ],\r\n  "dictType" : [ "sys_user_sex" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "用户性别列表" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 17:10:13'),
	(260, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  "dictName" : [ "用户性别" ],\r\n  "dictType" : [ "wx_user_sex" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "微信用户性别" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 17:10:50'),
	(261, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\r\n  "dictId" : [ "1" ],\r\n  "dictName" : [ "员工性别" ],\r\n  "dictType" : [ "sys_user_sex" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "员工性别列表" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 17:11:01'),
	(262, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  "dictLabel" : [ "未知" ],\r\n  "dictValue" : [ "0" ],\r\n  "dictType" : [ "wx_user_sex" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "primary" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 17:11:44'),
	(263, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "108" ],\r\n  "dictLabel" : [ "未知" ],\r\n  "dictValue" : [ "0" ],\r\n  "dictType" : [ "wx_user_sex" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "default" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 17:12:24'),
	(264, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  "dictLabel" : [ "男" ],\r\n  "dictValue" : [ "1" ],\r\n  "dictType" : [ "wx_user_sex" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "男" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 17:12:54'),
	(265, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "109" ],\r\n  "dictLabel" : [ "男" ],\r\n  "dictValue" : [ "1" ],\r\n  "dictType" : [ "wx_user_sex" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "性别男" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 17:13:16'),
	(266, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "108" ],\r\n  "dictLabel" : [ "未知" ],\r\n  "dictValue" : [ "0" ],\r\n  "dictType" : [ "wx_user_sex" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "default" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "性别未知" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 17:13:26'),
	(267, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  "dictLabel" : [ "女" ],\r\n  "dictValue" : [ "2" ],\r\n  "dictType" : [ "wx_user_sex" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "3" ],\r\n  "listClass" : [ "" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "性别女" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 17:13:49'),
	(268, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\r\n  "dictName" : [ "用户vip权限" ],\r\n  "dictType" : [ "wx_user_vip" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "微信用户vip权限" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:12:26'),
	(269, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  "dictLabel" : [ "No vip" ],\r\n  "dictValue" : [ "0" ],\r\n  "dictType" : [ "wx_user_vip" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "primary" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "没有vip权限" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:15:54'),
	(270, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "111" ],\r\n  "dictLabel" : [ "No vip" ],\r\n  "dictValue" : [ "0" ],\r\n  "dictType" : [ "wx_user_vip" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "success" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "没有vip权限" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:16:06'),
	(271, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "111" ],\r\n  "dictLabel" : [ "No vip" ],\r\n  "dictValue" : [ "0" ],\r\n  "dictType" : [ "wx_user_vip" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "info" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "没有vip权限" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:16:11'),
	(272, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "111" ],\r\n  "dictLabel" : [ "No vip" ],\r\n  "dictValue" : [ "0" ],\r\n  "dictType" : [ "wx_user_vip" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "warning" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "没有vip权限" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:16:18'),
	(273, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "111" ],\r\n  "dictLabel" : [ "No vip" ],\r\n  "dictValue" : [ "0" ],\r\n  "dictType" : [ "wx_user_vip" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "danger" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "没有vip权限" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:16:26'),
	(274, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "111" ],\r\n  "dictLabel" : [ "No vip" ],\r\n  "dictValue" : [ "0" ],\r\n  "dictType" : [ "wx_user_vip" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "1" ],\r\n  "listClass" : [ "warning" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "没有vip权限" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:16:31'),
	(275, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\r\n  "dictLabel" : [ "vip" ],\r\n  "dictValue" : [ "1" ],\r\n  "dictType" : [ "wx_user_vip" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "info" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "有vip权限" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:17:09'),
	(276, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "112" ],\r\n  "dictLabel" : [ "vip" ],\r\n  "dictValue" : [ "1" ],\r\n  "dictType" : [ "wx_user_vip" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "danger" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "有vip权限" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:17:21'),
	(277, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "112" ],\r\n  "dictLabel" : [ "vip" ],\r\n  "dictValue" : [ "1" ],\r\n  "dictType" : [ "wx_user_vip" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "primary" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "有vip权限" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:17:29'),
	(278, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\r\n  "dictCode" : [ "112" ],\r\n  "dictLabel" : [ "vip" ],\r\n  "dictValue" : [ "1" ],\r\n  "dictType" : [ "wx_user_vip" ],\r\n  "cssClass" : [ "" ],\r\n  "dictSort" : [ "2" ],\r\n  "listClass" : [ "info" ],\r\n  "isDefault" : [ "Y" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "有vip权限" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:17:39'),
	(279, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "1234556" ],\r\n  "wxName" : [ "赵四" ],\r\n  "wxLevel" : [ "3", "1" ],\r\n  "wxCard" : [ "1" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:28:47'),
	(280, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "1234" ],\r\n  "wxName" : [ "李四" ],\r\n  "wxLevel" : [ "3", "1" ],\r\n  "wxCard" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:31:26'),
	(281, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "1234" ],\r\n  "wxName" : [ "李四" ],\r\n  "wxLevel" : [ "3", "1" ],\r\n  "wxCard" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:37:20'),
	(282, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "123455" ],\r\n  "wxName" : [ "李四" ],\r\n  "wxLevel" : [ "3", "1" ],\r\n  "wxCard" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:39:38'),
	(283, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "12345" ],\r\n  "wxName" : [ "李四" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxVip" : [ "1" ],\r\n  "wxCard" : [ "0" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'wx_level = 3,\n            wx_card = 0 \n        where wx_openid = \'12345\'\' at line 8\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.updateWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update wx_user         SET wx_name = ?,                                                                 wx_vip = ?             wx_level = ?,             wx_card = ?          where wx_openid = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'wx_level = 3,\n            wx_card = 0 \n        where wx_openid = \'12345\'\' at line 8\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'wx_level = 3,\n            wx_card = 0 \n        where wx_openid = \'12345\'\' at line 8', '2020-05-09 19:42:13'),
	(284, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "123455" ],\r\n  "wxName" : [ "李四" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxVip" : [ "1" ],\r\n  "wxCard" : [ "0" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'wx_level = 3,\n            wx_card = 0 \n        where wx_openid = \'123455\'\' at line 8\r\n### The error may involve com.ruoyi.wechat.mapper.WxUserMapper.updateWxUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update wx_user         SET wx_name = ?,                                                                 wx_vip = ?             wx_level = ?,             wx_card = ?          where wx_openid = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'wx_level = 3,\n            wx_card = 0 \n        where wx_openid = \'123455\'\' at line 8\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'wx_level = 3,\n            wx_card = 0 \n        where wx_openid = \'123455\'\' at line 8', '2020-05-09 19:42:40'),
	(285, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "12345" ],\r\n  "wxName" : [ "李四" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxVip" : [ "1" ],\r\n  "wxCard" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:45:19'),
	(286, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "44444" ],\r\n  "wxName" : [ "李四" ],\r\n  "wxLevel" : [ "3" ],\r\n  "wxVip" : [ "0" ],\r\n  "wxCard" : [ "1" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:50:53'),
	(287, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "111" ],\r\n  "wxName" : [ "李四" ],\r\n  "wxLevel" : [ "1" ],\r\n  "wxVip" : [ "1" ],\r\n  "wxCard" : [ "2" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:51:12'),
	(288, '微信用户', 2, 'com.ruoyi.web.controller.premission.WxUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/premission/wechat/edit', '127.0.0.1', '内网IP', '{\r\n  "wxOpenid" : [ "111" ],\r\n  "wxName" : [ "李四" ],\r\n  "wxLevel" : [ "1" ],\r\n  "wxVip" : [ "1" ],\r\n  "wxCard" : [ "2" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-05-09 19:51:21'),
	(289, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "2" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-07-30 10:06:18'),
	(290, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "6" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-07-30 10:06:22'),
	(291, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "5" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-07-30 10:06:24'),
	(292, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_chat_people" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-07-30 10:06:55'),
	(293, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_chat_people', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-07-30 10:07:22'),
	(294, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "7" ],\r\n  "tableName" : [ "wx_chat_people" ],\r\n  "tableComment" : [ "聊天室人员信息" ],\r\n  "className" : [ "WxChatPeople" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "52" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "聊天室人员id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "peopleId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "53" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "聊天室人员唯一标识" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "peopleOpenid" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "54" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "创建时间" ],\r\n  "columns[2].javaType" : [ "Date" ],\r\n  "columns[2].javaField" : [ "createTime" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "datetime" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "55" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "所属聊天室id" ],\r\n  "columns[3].javaType" : [ "Long" ],\r\n  "columns[3].javaField" : [ "peopleRoomId" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "tplCategory" : [ "crud" ],\r\n  "packageName" : [ "com.ruoyi.wechatapi" ],\r\n  "moduleName" : [ "wechatapi" ],\r\n  "businessName" : [ "people" ],\r\n  "functionName" : [ "聊天室人员信息" ],\r\n  "params[tr', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-07-30 10:15:16'),
	(295, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_chat_people', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-07-30 10:15:46'),
	(296, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "7" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 17:44:22'),
	(297, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_discover_content" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 17:45:29'),
	(298, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_discover_comment" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 17:46:08'),
	(299, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "9" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 17:46:35'),
	(300, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "8" ],\r\n  "tableName" : [ "wx_discover_content" ],\r\n  "tableComment" : [ "发现区域的动态内容" ],\r\n  "className" : [ "WxDiscoverContent" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "56" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "动态内容的id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "contentId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "57" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "动态内容的发表人" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "contentUserOpenid" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "58" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "动态的文本内容" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "contentText" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "textarea" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "59" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "动态的图片内容" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "contentImage" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "60" ],\r\n  "columns[4].sort" : [ "5" ', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 17:48:35'),
	(301, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_discover_content', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-09 17:48:39'),
	(302, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "8" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:09:46'),
	(303, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_discover_comment" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:11:07'),
	(304, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "10" ],\r\n  "tableName" : [ "wx_discover_comment" ],\r\n  "tableComment" : [ "动态评论表" ],\r\n  "className" : [ "WxDiscoverComment" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "73" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "评论id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "commentId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "74" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "动态id" ],\r\n  "columns[1].javaType" : [ "Long" ],\r\n  "columns[1].javaField" : [ "contentId" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "75" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "评论人id" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "commentUserOpenid" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "76" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "评论文本内容" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "commentText" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "textarea" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "77" ],\r\n  "columns[4].sort" : [ "5" ],\r\n  "columns[4].', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:11:48'),
	(305, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_discover_comment', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-09 18:11:52'),
	(306, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "10" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:35:27'),
	(307, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_discover_reply" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:35:44'),
	(308, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "11" ],\r\n  "tableName" : [ "wx_discover_reply" ],\r\n  "tableComment" : [ "评论回复表" ],\r\n  "className" : [ "WxDiscoverReply" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "81" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "回复评论id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "replyId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "82" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "评论id" ],\r\n  "columns[1].javaType" : [ "Long" ],\r\n  "columns[1].javaField" : [ "commentId" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].isRequired" : [ "1" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "83" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "回复评论文本" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "replyText" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "textarea" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "84" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "回复人id" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "fromOpenid" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "85" ],\r\n  "columns[4].sort" :', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:36:33'),
	(309, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_discover_good" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:39:03'),
	(310, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "11" ],\r\n  "tableName" : [ "wx_discover_reply" ],\r\n  "tableComment" : [ "评论回复表" ],\r\n  "className" : [ "WxDiscoverReply" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "81" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "回复评论id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "replyId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "82" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "评论id" ],\r\n  "columns[1].javaType" : [ "Long" ],\r\n  "columns[1].javaField" : [ "commentId" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].isRequired" : [ "1" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "83" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "回复评论文本" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "replyText" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "textarea" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "84" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "回复人id" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "fromOpenid" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "85" ],\r\n  "columns[4].sort" :', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:39:37'),
	(311, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_discover_reply', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-09 18:39:54'),
	(312, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "12" ],\r\n  "tableName" : [ "wx_discover_good" ],\r\n  "tableComment" : [ "点赞表" ],\r\n  "className" : [ "WxDiscoverGood" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "90" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "点赞id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "goodId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "91" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "评论点赞id或作品点赞id" ],\r\n  "columns[1].javaType" : [ "Long" ],\r\n  "columns[1].javaField" : [ "goodTypeId" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "92" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "点赞类型(1作品点赞，2评论点赞)" ],\r\n  "columns[2].javaType" : [ "Integer" ],\r\n  "columns[2].javaField" : [ "goodType" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "select" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "93" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "点赞人id" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "goodUserOpenid" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "94" ],\r\n  "columns[4].sort" : [ "5" ],\r\n  "columns[', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:40:20'),
	(313, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_discover_good', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-09 18:40:26'),
	(314, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "12,11" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:54:41'),
	(315, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_discover_ statistics" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:54:48'),
	(316, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "13" ],\r\n  "tableName" : [ "wx_discover_ statistics" ],\r\n  "tableComment" : [ "动态表的点赞，评论，浏览量数量统计" ],\r\n  "className" : [ "WxDiscover statistics" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "97" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "统计id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "statisticsId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "98" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "动态id" ],\r\n  "columns[1].javaType" : [ "Long" ],\r\n  "columns[1].javaField" : [ "contentId" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "99" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "评论个数" ],\r\n  "columns[2].javaType" : [ "Long" ],\r\n  "columns[2].javaField" : [ "statisticsCommentNum" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "100" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "点赞个数" ],\r\n  "columns[3].javaType" : [ "Long" ],\r\n  "columns[3].javaField" : [ "statisticsGoodNum" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "101" ],\r\n  "columns[4].sort" : ', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:55:26'),
	(317, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "13" ],\r\n  "tableName" : [ "wx_discover_ statistics" ],\r\n  "tableComment" : [ "动态表的点赞，评论，浏览量数量统计" ],\r\n  "className" : [ "WxDiscoverstatistics" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "97" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "统计id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "statisticsId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "98" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "动态id" ],\r\n  "columns[1].javaType" : [ "Long" ],\r\n  "columns[1].javaField" : [ "contentId" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "99" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "评论个数" ],\r\n  "columns[2].javaType" : [ "Long" ],\r\n  "columns[2].javaField" : [ "statisticsCommentNum" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "100" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "点赞个数" ],\r\n  "columns[3].javaType" : [ "Long" ],\r\n  "columns[3].javaField" : [ "statisticsGoodNum" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "101" ],\r\n  "columns[4].sort" : [', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:55:48'),
	(318, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "13" ],\r\n  "tableName" : [ "wx_discover_ statistics" ],\r\n  "tableComment" : [ "动态表的点赞，评论，浏览量数量统计" ],\r\n  "className" : [ "WxDiscoverStatistics" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "97" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "统计id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "statisticsId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "98" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "动态id" ],\r\n  "columns[1].javaType" : [ "Long" ],\r\n  "columns[1].javaField" : [ "contentId" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "99" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "评论个数" ],\r\n  "columns[2].javaType" : [ "Long" ],\r\n  "columns[2].javaField" : [ "statisticsCommentNum" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "100" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "点赞个数" ],\r\n  "columns[3].javaType" : [ "Long" ],\r\n  "columns[3].javaField" : [ "statisticsGoodNum" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "101" ],\r\n  "columns[4].sort" : [', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 18:56:13'),
	(319, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_discover_%20statistics', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-09 18:56:19'),
	(320, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "13" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-09 19:01:51'),
	(321, '微信用户', 1, 'com.ruoyi.wechatapi.wxchat.controller.WxUserApiController.addSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/add', '127.0.0.1', '内网IP', '{ }', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'oxAbk5CeH5wLRRLPULfatdUbnv8g\' for key \'PRIMARY\'\r\n### The error may involve com.ruoyi.wechatapi.wxchat.mapper.WxUserApiMapper.insertWxUserApi-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into wx_user(          wx_openid,wx_name,wx_avatar,phonenumber,wx_sex,status,wx_level,wx_idCard,wx_stuCard,wx_vip,create_time         )values(          ?, ?,?,?,?, ?,?, ?,?, ?, sysdate()         )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'oxAbk5CeH5wLRRLPULfatdUbnv8g\' for key \'PRIMARY\'\n; Duplicate entry \'oxAbk5CeH5wLRRLPULfatdUbnv8g\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'oxAbk5CeH5wLRRLPULfatdUbnv8g\' for key \'PRIMARY\'', '2020-08-10 14:59:25'),
	(322, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_discover_image" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-10 18:55:28'),
	(323, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "14" ],\r\n  "tableName" : [ "wx_discover_image" ],\r\n  "tableComment" : [ "动态内容图片" ],\r\n  "className" : [ "WxDiscoverImage" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "105" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "图片id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "imageId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "106" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "动态id" ],\r\n  "columns[1].javaType" : [ "Long" ],\r\n  "columns[1].javaField" : [ "contentId" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].isRequired" : [ "1" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "107" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "图片地址" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "image1" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "108" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "图片地址" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "image2" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "109" ],\r\n  "columns[4].sort" : [ "5" ],', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-08-10 18:56:06'),
	(324, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_discover_image', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-10 18:56:09'),
	(325, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '111.17.131.29', 'XX XX', '{ }', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-08-16 14:30:42'),
	(326, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-09-03 13:50:46'),
	(327, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "java.io.FileNotFoundException: C:\\\\Users\\\\Lenovo\\\\AppData\\\\Local\\\\Temp\\\\tomcat.7897691839044207589.8088\\\\work\\\\Tomcat\\\\localhost\\\\ROOT\\\\home\\\\xiaofanzhuo\\\\ruoyi\\\\uploadPath\\\\avatar\\\\2020\\\\09\\\\04\\\\e12345d7c10ffcf2063ff105ab30e7ad.png (系统找不到指定的路径。)",\r\n  "code" : 500\r\n}', 0, NULL, '2020-09-04 10:11:37'),
	(328, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-04 10:17:37'),
	(329, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "14" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-04 10:18:27'),
	(330, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_myhome_sign" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-04 10:18:36'),
	(331, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "15" ],\r\n  "tableName" : [ "wx_myhome_sign" ],\r\n  "tableComment" : [ "签到表" ],\r\n  "className" : [ "WxMyhomeSign" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "116" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "签到id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "signId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "117" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "签到人唯一标识" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "signOpenid" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "118" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "创建日期" ],\r\n  "columns[2].javaType" : [ "Date" ],\r\n  "columns[2].javaField" : [ "createDate" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "datetime" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "119" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "签到日号" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "signDay" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "120" ],\r\n  "columns[4].sort" : [ "5" ],\r\n  "columns[4].columnComment" : [ "', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-04 10:20:42'),
	(332, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_myhome_sign', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-09-04 10:21:14'),
	(333, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "15" ],\r\n  "tableName" : [ "wx_myhome_sign" ],\r\n  "tableComment" : [ "签到表" ],\r\n  "className" : [ "WxMyhomeSign" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "116" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "签到id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "signId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "117" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "签到人唯一标识" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "signOpenid" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "118" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "创建日期" ],\r\n  "columns[2].javaType" : [ "Date" ],\r\n  "columns[2].javaField" : [ "createDate" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "datetime" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "119" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "签到日号" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "signDay" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "120" ],\r\n  "columns[4].sort" : [ "5" ],\r\n  "columns[4].columnComment" : [ "', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-04 11:11:04'),
	(334, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_myhome_sign', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-09-04 11:11:10'),
	(335, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "interest_user" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-04 17:30:31'),
	(336, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "16" ],\r\n  "tableName" : [ "interest_user" ],\r\n  "tableComment" : [ "用户兴趣爱好表" ],\r\n  "className" : [ "InterestUser" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "123" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "用户兴趣ID" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "interestUserid" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "124" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "微信用户唯一标识" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "interestOpenid" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "125" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "兴趣ID" ],\r\n  "columns[2].javaType" : [ "Long" ],\r\n  "columns[2].javaField" : [ "interestId" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "126" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "兴趣1" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "interestGamename" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "LIKE" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "127" ],\r\n  "columns[4].sort" : [ "5" ],\r\n  "column', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-04 17:31:35'),
	(337, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "15" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-04 17:31:42'),
	(338, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/interest_user', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-09-04 17:31:53'),
	(339, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "16" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-04 21:01:18'),
	(340, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_user" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-04 21:01:26'),
	(341, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "17" ],\r\n  "tableName" : [ "wx_user" ],\r\n  "tableComment" : [ "微信用户" ],\r\n  "className" : [ "WxUser" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "130" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "微信用户标识" ],\r\n  "columns[0].javaType" : [ "String" ],\r\n  "columns[0].javaField" : [ "wxOpenid" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "131" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "用户昵称" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "wxName" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "LIKE" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "132" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "用户头像" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "wxAvatar" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "133" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "手机号" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "phonenumber" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "134" ],\r\n  "columns[4].sort" : [ "5" ],\r\n  "columns[4].columnComment" : [ "性别（0未知，1男，2', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-04 21:02:49'),
	(342, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "17" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-07 15:53:46'),
	(343, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_myhome_authentication" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-07 15:53:56'),
	(344, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "18" ],\r\n  "tableName" : [ "wx_myhome_authentication" ],\r\n  "tableComment" : [ "用户身份认证" ],\r\n  "className" : [ "WxMyhomeAuthentication" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "143" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "认证id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "authenticationId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "144" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "认证类型（0身份证认证，1学生认证）" ],\r\n  "columns[1].javaType" : [ "Integer" ],\r\n  "columns[1].javaField" : [ "authenticationType" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "select" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "145" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "用户唯一标识" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "authenticationUserOpenid" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "146" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "认证证件" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "authenticationPhoto" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId"', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-07 15:54:45'),
	(345, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_myhome_authentication', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-09-07 15:54:48'),
	(346, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "18" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-08 13:27:57'),
	(347, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_chat_unread" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-08 13:36:53'),
	(348, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "19" ],\r\n  "tableName" : [ "wx_chat_unread" ],\r\n  "tableComment" : [ "聊天室未读信息" ],\r\n  "className" : [ "WxChatUnread" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "148" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "聊天室房间id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "roomId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "149" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "用户唯一标识" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "userOpenid" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "150" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "未读消息个数" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "unreadNumber" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "tplCategory" : [ "crud" ],\r\n  "packageName" : [ "com.ruoyi.wechatapi.wxchat" ],\r\n  "moduleName" : [ "wxchat" ],\r\n  "businessName" : [ "wxchat" ],\r\n  "functionName" : [ "聊天室未读信息" ],\r\n  "params[treeCode]" : [ "" ],\r\n  "params[treeParentCode]" : [ "" ],\r\n  "params[treeName]" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-08 13:55:50'),
	(349, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_chat_unread', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-09-08 13:55:56'),
	(350, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_myhome_feedback" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-09 16:28:56'),
	(351, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "19" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-09 16:29:15'),
	(352, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "20" ],\r\n  "tableName" : [ "wx_myhome_feedback" ],\r\n  "tableComment" : [ "用户反馈bug" ],\r\n  "className" : [ "WxMyhomeFeedback" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "151" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "反馈id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "feedbackId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "152" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "用户标识" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "feedbackUserOpenid" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].isRequired" : [ "1" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "153" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "反馈文本" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "feedbackText" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].isRequired" : [ "1" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "154" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "反馈图片" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "feedbackImages" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].isRequired" : [ "1" ],\r\n  "columns[3].htmlType" : [ "input" ', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-09 16:29:48'),
	(353, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_myhome_feedback', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-09-09 16:29:54'),
	(354, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "20" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-09 19:07:58'),
	(355, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_discover_care" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-09 19:08:04'),
	(356, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "21" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-09 19:08:25'),
	(357, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_discover_care" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-09 19:08:28'),
	(358, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "22" ],\r\n  "tableName" : [ "wx_discover_care" ],\r\n  "tableComment" : [ "用户关注表" ],\r\n  "className" : [ "WxDiscoverCare" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "158" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "关注id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "careId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "159" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "创建人" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "createOpenid" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "EQ" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "160" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "关注人" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "careOpenid" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "tplCategory" : [ "crud" ],\r\n  "packageName" : [ "com.ruoyi.wechatapi.discover" ],\r\n  "moduleName" : [ "discover" ],\r\n  "businessName" : [ "care" ],\r\n  "functionName" : [ "用户关注" ],\r\n  "params[treeCode]" : [ "" ],\r\n  "params[treeParentCode]" : [ "" ],\r\n  "params[treeName]" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-09 19:09:19'),
	(359, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_discover_care', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-09-09 19:09:33'),
	(360, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  "ids" : [ "22" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-24 19:03:30'),
	(361, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  "tables" : [ "wx_chat_sys" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-24 19:03:35'),
	(362, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "23" ],\r\n  "tableName" : [ "wx_chat_sys" ],\r\n  "tableComment" : [ "系统发布活动表" ],\r\n  "className" : [ "WxChatSys" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "161" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "系统活动id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "sysId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "162" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "系统活动名" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "sysName" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "LIKE" ],\r\n  "columns[1].isRequired" : [ "1" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "163" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "系统活动介绍" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "sysIntroduce" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "164" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "系统活动海报" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "sysImage" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "165" ],\r\n  "columns[4].sort" : [ "5', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-24 19:04:30'),
	(363, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\r\n  "tableId" : [ "23" ],\r\n  "tableName" : [ "wx_chat_sys" ],\r\n  "tableComment" : [ "系统发布活动表" ],\r\n  "className" : [ "WxChatSys" ],\r\n  "functionAuthor" : [ "ruoyi" ],\r\n  "remark" : [ "" ],\r\n  "columns[0].columnId" : [ "161" ],\r\n  "columns[0].sort" : [ "1" ],\r\n  "columns[0].columnComment" : [ "系统活动id" ],\r\n  "columns[0].javaType" : [ "Long" ],\r\n  "columns[0].javaField" : [ "sysId" ],\r\n  "columns[0].isInsert" : [ "1" ],\r\n  "columns[0].queryType" : [ "EQ" ],\r\n  "columns[0].htmlType" : [ "input" ],\r\n  "columns[0].dictType" : [ "" ],\r\n  "columns[1].columnId" : [ "162" ],\r\n  "columns[1].sort" : [ "2" ],\r\n  "columns[1].columnComment" : [ "系统活动名" ],\r\n  "columns[1].javaType" : [ "String" ],\r\n  "columns[1].javaField" : [ "sysName" ],\r\n  "columns[1].isInsert" : [ "1" ],\r\n  "columns[1].isEdit" : [ "1" ],\r\n  "columns[1].isList" : [ "1" ],\r\n  "columns[1].isQuery" : [ "1" ],\r\n  "columns[1].queryType" : [ "LIKE" ],\r\n  "columns[1].isRequired" : [ "1" ],\r\n  "columns[1].htmlType" : [ "input" ],\r\n  "columns[1].dictType" : [ "" ],\r\n  "columns[2].columnId" : [ "163" ],\r\n  "columns[2].sort" : [ "3" ],\r\n  "columns[2].columnComment" : [ "系统活动介绍" ],\r\n  "columns[2].javaType" : [ "String" ],\r\n  "columns[2].javaField" : [ "sysIntroduce" ],\r\n  "columns[2].isInsert" : [ "1" ],\r\n  "columns[2].isEdit" : [ "1" ],\r\n  "columns[2].isList" : [ "1" ],\r\n  "columns[2].isQuery" : [ "1" ],\r\n  "columns[2].queryType" : [ "EQ" ],\r\n  "columns[2].htmlType" : [ "input" ],\r\n  "columns[2].dictType" : [ "" ],\r\n  "columns[3].columnId" : [ "164" ],\r\n  "columns[3].sort" : [ "4" ],\r\n  "columns[3].columnComment" : [ "系统活动海报" ],\r\n  "columns[3].javaType" : [ "String" ],\r\n  "columns[3].javaField" : [ "sysImage" ],\r\n  "columns[3].isInsert" : [ "1" ],\r\n  "columns[3].isEdit" : [ "1" ],\r\n  "columns[3].isList" : [ "1" ],\r\n  "columns[3].isQuery" : [ "1" ],\r\n  "columns[3].queryType" : [ "EQ" ],\r\n  "columns[3].htmlType" : [ "input" ],\r\n  "columns[3].dictType" : [ "" ],\r\n  "columns[4].columnId" : [ "165" ],\r\n  "columns[4].sort" : [ "5', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-24 19:05:17'),
	(364, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/wx_chat_sys', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-09-24 19:05:45'),
	(365, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\r\n  "jobId" : [ "1" ],\r\n  "jobGroup" : [ "DEFAULT" ],\r\n  "status" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-29 19:22:31'),
	(366, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\r\n  "jobId" : [ "1" ],\r\n  "jobGroup" : [ "DEFAULT" ],\r\n  "status" : [ "1" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-29 19:24:12'),
	(367, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\r\n  "jobId" : [ "2" ],\r\n  "jobGroup" : [ "DEFAULT" ],\r\n  "status" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-29 19:24:16'),
	(368, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\r\n  "jobId" : [ "2" ],\r\n  "jobGroup" : [ "DEFAULT" ],\r\n  "status" : [ "1" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-29 19:24:45'),
	(369, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\r\n  "jobId" : [ "3" ],\r\n  "jobGroup" : [ "DEFAULT" ],\r\n  "status" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-29 19:24:48'),
	(370, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\r\n  "jobId" : [ "3" ],\r\n  "jobGroup" : [ "DEFAULT" ],\r\n  "status" : [ "1" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-29 19:25:20'),
	(371, '定时任务', 1, 'com.ruoyi.quartz.controller.SysJobController.addSave()', 'POST', 1, 'admin', '研发部门', '/monitor/job/add', '127.0.0.1', '内网IP', '{\r\n  "createBy" : [ "admin" ],\r\n  "jobName" : [ "月底定时删除签到表" ],\r\n  "jobGroup" : [ "DEFAULT" ],\r\n  "invokeTarget" : [ "ryTask.ryParams(\'ry\')" ],\r\n  "cronExpression" : [ "0 0 0 1 1-12 ? " ],\r\n  "misfirePolicy" : [ "1" ],\r\n  "concurrent" : [ "1" ],\r\n  "status" : [ "0" ],\r\n  "remark" : [ "" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-29 19:52:56'),
	(372, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\r\n  "jobId" : [ "4" ],\r\n  "jobGroup" : [ "DEFAULT" ],\r\n  "status" : [ "0" ]\r\n}', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2020-09-29 19:53:03'),
	(373, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{\n  "msg" : "java.io.FileNotFoundException: /tmp/tomcat.6105337166961662919.8088/work/Tomcat/localhost/ROOT/D:/ruoyi/uploadPath/avatar/2020/10/01/d83c56cdb0fded6dc63a1475186a6707.png (No such file or directory)",\n  "code" : 500\n}', 0, NULL, '2020-10-01 15:12:52'),
	(374, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{\n  "msg" : "java.io.FileNotFoundException: /tmp/tomcat.6105337166961662919.8088/work/Tomcat/localhost/ROOT/D:/ruoyi/uploadPath/avatar/2020/10/01/64c84fd9368c41a60b1ae827a512dc73.png (No such file or directory)",\n  "code" : 500\n}', 0, NULL, '2020-10-01 15:12:57'),
	(375, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-10-01 15:46:59'),
	(376, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{ }', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-10-01 15:47:26'),
	(377, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\n  "jobId" : [ "4" ],\n  "jobGroup" : [ "DEFAULT" ],\n  "status" : [ "1" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-10-02 15:25:30'),
	(378, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2002', '127.0.0.1', '内网IP', '{ }', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-10-26 13:21:06'),
	(379, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2003', '127.0.0.1', '内网IP', '{ }', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-10-26 13:21:12'),
	(380, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', 1, 'admin', '研发部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\n  "sessionId" : [ "35a6455d-7053-4be0-9aa3-b2e549251df4" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-12-18 14:56:27'),
	(381, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', 1, 'admin', '研发部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\n  "sessionId" : [ "3d9a30a5-5fc3-44dc-8be6-770df58b8219" ]\n}', '{\n  "msg" : "操作成功",\n  "code" : 0\n}', 0, NULL, '2020-12-18 14:56:32'),
	(382, '微信用户', 2, 'com.ruoyi.wechatapi.controller.WxUserApiController.editSave()', 'POST', 1, NULL, NULL, '/wechatapi/wxuser/edit', '127.0.0.1', '内网IP', '{ }', '{\r\n  "msg" : "操作成功",\r\n  "code" : 0\r\n}', 0, NULL, '2021-11-20 14:44:54');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;

-- 导出  表 ry-team.sys_post 结构
CREATE TABLE IF NOT EXISTS `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

-- 正在导出表  ry-team.sys_post 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 'ceo', '董事长', 1, '0', 'admin', '2021-08-17 13:18:04', '', NULL, ''),
	(2, 'se', '项目经理', 2, '0', 'admin', '2021-08-17 13:18:04', '', NULL, ''),
	(3, 'hr', '人力资源', 3, '0', 'admin', '2021-08-17 13:18:04', '', NULL, ''),
	(4, 'user', '普通员工', 4, '0', 'admin', '2021-08-17 13:18:04', '', NULL, '');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;

-- 导出  表 ry-team.sys_role 结构
CREATE TABLE IF NOT EXISTS `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

-- 正在导出表  ry-team.sys_role 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2021-08-17 13:18:04', '', NULL, '超级管理员'),
	(2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2021-08-17 13:18:04', '', NULL, '普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;

-- 导出  表 ry-team.sys_role_dept 结构
CREATE TABLE IF NOT EXISTS `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

-- 正在导出表  ry-team.sys_role_dept 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES
	(2, 100),
	(2, 101),
	(2, 105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;

-- 导出  表 ry-team.sys_role_menu 结构
CREATE TABLE IF NOT EXISTS `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

-- 正在导出表  ry-team.sys_role_menu 的数据：~84 rows (大约)
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 4),
	(2, 100),
	(2, 101),
	(2, 102),
	(2, 103),
	(2, 104),
	(2, 105),
	(2, 106),
	(2, 107),
	(2, 108),
	(2, 109),
	(2, 110),
	(2, 111),
	(2, 112),
	(2, 113),
	(2, 114),
	(2, 115),
	(2, 116),
	(2, 500),
	(2, 501),
	(2, 1000),
	(2, 1001),
	(2, 1002),
	(2, 1003),
	(2, 1004),
	(2, 1005),
	(2, 1006),
	(2, 1007),
	(2, 1008),
	(2, 1009),
	(2, 1010),
	(2, 1011),
	(2, 1012),
	(2, 1013),
	(2, 1014),
	(2, 1015),
	(2, 1016),
	(2, 1017),
	(2, 1018),
	(2, 1019),
	(2, 1020),
	(2, 1021),
	(2, 1022),
	(2, 1023),
	(2, 1024),
	(2, 1025),
	(2, 1026),
	(2, 1027),
	(2, 1028),
	(2, 1029),
	(2, 1030),
	(2, 1031),
	(2, 1032),
	(2, 1033),
	(2, 1034),
	(2, 1035),
	(2, 1036),
	(2, 1037),
	(2, 1038),
	(2, 1039),
	(2, 1040),
	(2, 1041),
	(2, 1042),
	(2, 1043),
	(2, 1044),
	(2, 1045),
	(2, 1046),
	(2, 1047),
	(2, 1048),
	(2, 1049),
	(2, 1050),
	(2, 1051),
	(2, 1052),
	(2, 1053),
	(2, 1054),
	(2, 1055),
	(2, 1056),
	(2, 1057),
	(2, 1058),
	(2, 1059),
	(2, 1060);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;

-- 导出  表 ry-team.sys_user 结构
CREATE TABLE IF NOT EXISTS `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

-- 正在导出表  ry-team.sys_user 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-08-17 13:18:04', 'admin', '2021-08-17 13:18:04', '', NULL, '管理员'),
	(2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-08-17 13:18:04', 'admin', '2021-08-17 13:18:04', '', NULL, '测试员');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;

-- 导出  表 ry-team.sys_user_online 结构
CREATE TABLE IF NOT EXISTS `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(11) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='在线用户记录';

-- 正在导出表  ry-team.sys_user_online 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;

-- 导出  表 ry-team.sys_user_post 结构
CREATE TABLE IF NOT EXISTS `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

-- 正在导出表  ry-team.sys_user_post 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES
	(1, 1),
	(2, 2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;

-- 导出  表 ry-team.sys_user_role 结构
CREATE TABLE IF NOT EXISTS `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

-- 正在导出表  ry-team.sys_user_role 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;

-- 导出  表 ry-team.wx_chat_news 结构
CREATE TABLE IF NOT EXISTS `wx_chat_news` (
  `news_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '消息id',
  `news_user_openid` varchar(50) DEFAULT '' COMMENT '聊天人唯一标识',
  `news_content` varchar(500) DEFAULT '' COMMENT '聊天文本',
  `news_image` varchar(200) DEFAULT '' COMMENT '聊天图片',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `news_room_id` bigint(20) DEFAULT NULL COMMENT '所属聊天室id',
  `news_type` varchar(10) DEFAULT '' COMMENT '消息类型',
  PRIMARY KEY (`news_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=368 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='聊天室聊天内容';

-- 正在导出表  ry-team.wx_chat_news 的数据：~38 rows (大约)
/*!40000 ALTER TABLE `wx_chat_news` DISABLE KEYS */;
INSERT INTO `wx_chat_news` (`news_id`, `news_user_openid`, `news_content`, `news_image`, `create_time`, `news_room_id`, `news_type`) VALUES
	(1, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '你好', NULL, '2020-06-25 12:26:23', 111, NULL),
	(2, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '胖胖', NULL, '2020-06-27 14:02:40', 111, NULL),
	(3, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', 'good', NULL, '2020-06-27 14:14:19', 111, NULL),
	(4, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '111', '1213', '2020-06-27 15:36:53', 111, NULL),
	(26, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', 'china', NULL, '2020-06-28 16:03:28', 11, NULL),
	(27, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', 'china', NULL, '2020-06-28 16:16:16', 11, NULL),
	(28, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', 'china', NULL, '2020-06-28 16:16:41', 111, NULL),
	(29, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '你好', NULL, '2020-07-25 15:58:43', 111, 'text'),
	(35, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '', 'http://www.linkcool.fun:8088/profile/upload/2020/08/16/12dfe94ed1ea33d8e3306957ee2d3a0d.jpg', '2020-08-16 12:21:10', 111, 'image'),
	(36, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '', 'http://www.linkcool.fun:8088/profile/upload/2020/08/16/1cc109e096fa2757aaf689552f4e443f.jpg', '2020-08-16 12:21:10', 111, 'image'),
	(37, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '', 'http://www.linkcool.fun:8088/profile/upload/2020/08/16/9692b30ddf6727a8a18857d8f87386f1.jpg', '2020-08-16 12:21:11', 111, 'image'),
	(38, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '', 'http://www.linkcool.fun:8088/profile/upload/2020/08/16/67a09079753ea7147fb1393463ed1293.jpg', '2020-08-16 12:21:11', 111, 'image'),
	(39, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', 'good', '', '2020-08-20 22:42:02', 111, 'text'),
	(333, 'oxAbk5JJCJq0Hy1THttJlRc1ysQU', '欢迎大家加入我们的队伍！', '', '2020-09-30 10:33:04', 475833917, 'text'),
	(336, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '我们需要根据人数准备租车车型，请大家赶快报名，报名方式可直接将姓名和手机发到聊天室^O^', '', '2020-09-30 10:56:08', 475833918, 'text'),
	(337, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '我们需要根据人数准备租车车型，请大家赶快报名，报名方式可直接将姓名和手机发到聊天室^O^', '', '2020-09-30 10:56:59', 475833918, 'text'),
	(338, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '我们需要根据人数准备租车车型，请大家赶快报名，报名方式可直接将姓名和手机发到聊天室^O^', '', '2020-09-30 10:57:06', 475833918, 'text'),
	(339, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '重要的事情说三遍😂 😂 😂 ', '', '2020-09-30 10:57:26', 475833918, 'text'),
	(340, 'oxAbk5P7pFuGbpoJXDK5p0BWGY6w', '王建国，15550844532', '', '2020-09-30 10:58:08', 475833918, 'text'),
	(343, 'oxAbk5OQpeOqkvwkVPh3nyKPLomc', '大家好', '', '2020-09-30 15:34:54', 475833918, 'text'),
	(344, 'oxAbk5OQpeOqkvwkVPh3nyKPLomc', '大家刚', '', '2020-09-30 15:53:57', 475833918, 'text'),
	(345, 'oxAbk5AeJp-xWmRlyxVKs3cVFsVM', '大家好', '', '2020-10-01 15:19:48', 475833918, 'text'),
	(346, 'oxAbk5AeJp-xWmRlyxVKs3cVFsVM', 'hello', '', '2020-10-01 15:20:25', 475833917, 'text'),
	(348, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '你好', '', '2020-10-01 15:23:44', 475833918, 'text'),
	(350, 'oxAbk5APG5mvGvRKGy0l8GHjxP30', '在', '', '2020-10-07 17:00:43', 475833925, 'text'),
	(351, 'oxAbk5APG5mvGvRKGy0l8GHjxP30', '', 'audio/2020/10/1602061251125131.mp3', '2020-10-07 17:00:52', 475833925, 'audio'),
	(352, 'oxAbk5JJCJq0Hy1THttJlRc1ysQU', '大家好', '', '2020-10-22 14:14:14', 475833918, 'text'),
	(354, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '，', '', '2020-10-28 16:38:25', 475833919, 'text'),
	(357, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '', 'images/2020/10/1604044063788115.jpg', '2020-10-30 15:47:45', 475833918, 'image'),
	(358, 'oxAbk5OQpeOqkvwkVPh3nyKPLomc', '', 'audio/2020/10/160404407909096.mp3', '2020-10-30 15:48:01', 475833918, 'audio'),
	(359, 'oxAbk5OQpeOqkvwkVPh3nyKPLomc', '[吃瓜]', '', '2020-10-30 15:48:47', 475833918, 'text'),
	(360, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '😂 😂 😂 ', '', '2020-10-30 15:49:06', 475833918, 'text'),
	(361, 'oxAbk5OQpeOqkvwkVPh3nyKPLomc', '下午好', '', '2020-10-30 15:49:33', 475833918, 'text'),
	(362, 'oxAbk5OQpeOqkvwkVPh3nyKPLomc', '', 'audio/2020/10/16040441794360.mp3', '2020-10-30 15:49:41', 475833918, 'audio'),
	(363, 'oxAbk5JJCJq0Hy1THttJlRc1ysQU', '', 'images/2020/11/1605511731612126.jpg', '2020-11-16 15:28:52', 475833923, 'image'),
	(365, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '🌝🌝', '', '2021-04-12 15:42:06', 475833919, 'text'),
	(366, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '你好', '', '2021-05-18 16:38:09', 475833919, 'text'),
	(367, 'oxAbk5DMg0FU1y918vndlGh63StU', '', 'audio/2021/5/162142648802649.mp3', '2021-05-19 20:14:49', 475833919, 'audio');
/*!40000 ALTER TABLE `wx_chat_news` ENABLE KEYS */;

-- 导出  表 ry-team.wx_chat_people 结构
CREATE TABLE IF NOT EXISTS `wx_chat_people` (
  `people_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '聊天室人员id',
  `people_openid` varchar(50) DEFAULT NULL COMMENT '聊天室人员唯一标识',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `people_room_id` bigint(20) DEFAULT NULL COMMENT '所属聊天室id',
  PRIMARY KEY (`people_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='聊天室人员信息';

-- 正在导出表  ry-team.wx_chat_people 的数据：~19 rows (大约)
/*!40000 ALTER TABLE `wx_chat_people` DISABLE KEYS */;
INSERT INTO `wx_chat_people` (`people_id`, `people_openid`, `create_time`, `people_room_id`) VALUES
	(184, 'oxAbk5I_yj12RWgij8r0TQsi04VU', '2020-09-30 10:43:25', 475833918),
	(185, 'oxAbk5P7pFuGbpoJXDK5p0BWGY6w', '2020-09-30 10:56:42', 475833918),
	(187, 'oxAbk5JJCJq0Hy1THttJlRc1ysQU', '2020-09-30 11:20:15', 475833919),
	(193, 'oxAbk5JJCJq0Hy1THttJlRc1ysQU', '2020-09-30 13:12:13', 475833923),
	(194, 'oxAbk5OQpeOqkvwkVPh3nyKPLomc', '2020-09-30 13:12:31', 475833924),
	(206, 'oxAbk5OQpeOqkvwkVPh3nyKPLomc', '2020-09-30 15:55:13', 475833923),
	(207, 'oxAbk5AeJp-xWmRlyxVKs3cVFsVM', '2020-10-01 15:19:37', 475833918),
	(209, 'oxAbk5AeJp-xWmRlyxVKs3cVFsVM', '2020-10-01 15:22:01', 475833917),
	(214, 'oxAbk5MtkBMqvmS7P6_yZgAkmPVA', '2020-10-02 13:46:43', 475833923),
	(218, 'oxAbk5APG5mvGvRKGy0l8GHjxP30', '2020-10-07 17:00:36', 475833925),
	(222, 'oxAbk5BS0BRuw7b1Tdx-jaIS6r3c', '2020-10-22 08:56:36', 475833920),
	(224, 'oxAbk5BS0BRuw7b1Tdx-jaIS6r3c', '2020-10-22 09:01:41', 475833918),
	(226, 'oxAbk5JJCJq0Hy1THttJlRc1ysQU', '2020-10-22 14:13:56', 475833918),
	(229, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '2020-10-28 16:37:44', 475833919),
	(236, 'oxAbk5OQpeOqkvwkVPh3nyKPLomc', '2020-10-30 15:47:13', 475833918),
	(239, 'oxAbk5JJCJq0Hy1THttJlRc1ysQU', '2021-01-20 21:36:02', 475833925),
	(243, 'oxAbk5GDwsS2a-O4V6VmHLEVLeYQ', '2021-05-18 16:37:39', 475833918),
	(244, 'oxAbk5DMg0FU1y918vndlGh63StU', '2021-05-19 14:05:12', 475833919),
	(245, 'oxAbk5DMg0FU1y918vndlGh63StU', '2021-05-20 12:05:16', 475833925);
/*!40000 ALTER TABLE `wx_chat_people` ENABLE KEYS */;

-- 导出  表 ry-team.wx_chat_room 结构
CREATE TABLE IF NOT EXISTS `wx_chat_room` (
  `room_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '聊天室id',
  `room_type_id` bigint(20) DEFAULT '1' COMMENT '聊天室类型id',
  `room_name` varchar(50) DEFAULT '' COMMENT '聊天室房间名',
  `room_num` varchar(11) DEFAULT '' COMMENT '聊天室房间号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `creator_openid` varchar(50) DEFAULT '' COMMENT '创建人唯一标识',
  `room_introduce` varchar(50) DEFAULT '',
  `end_time` datetime DEFAULT NULL COMMENT '更新时间',
  `room_site` varchar(300) DEFAULT NULL COMMENT '地理坐标',
  `room_position` varchar(300) DEFAULT NULL COMMENT '地理位置',
  PRIMARY KEY (`room_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='聊天室信息';

-- 正在导出表  ry-team.wx_chat_room 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `wx_chat_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `wx_chat_room` ENABLE KEYS */;

-- 导出  表 ry-team.wx_chat_sys 结构
CREATE TABLE IF NOT EXISTS `wx_chat_sys` (
  `sys_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '系统活动id',
  `sys_name` varchar(50) NOT NULL DEFAULT '' COMMENT '系统活动名',
  `sys_introduce` varchar(100) DEFAULT NULL COMMENT '系统活动介绍',
  `sys_image` varchar(100) DEFAULT NULL COMMENT '系统活动海报',
  `create_time` datetime DEFAULT NULL COMMENT '活动开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '活动结束时间',
  `sys_exist` int(1) DEFAULT '1' COMMENT '活动是否存在(0是，1否)',
  `sys_site` varchar(100) DEFAULT '' COMMENT '活动景区名',
  `sys_position` varchar(150) DEFAULT '' COMMENT '活动景区地理坐标',
  PRIMARY KEY (`sys_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COMMENT='系统发布活动表';

-- 正在导出表  ry-team.wx_chat_sys 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `wx_chat_sys` DISABLE KEYS */;
INSERT INTO `wx_chat_sys` (`sys_id`, `sys_name`, `sys_introduce`, `sys_image`, `create_time`, `end_time`, `sys_exist`, `sys_site`, `sys_position`) VALUES
	(100, '青岛啤酒节', '海鲜与啤酒--琴岛', '/posterUrl/item3.png', '2020-09-25 11:05:28', '2020-10-25 11:05:29', 0, '青岛', '{"latitude":36.056988799,"longitude":120.393574899}'),
	(101, '国庆出游去哪里', '天下第一家--孔府', '/posterUrl/item2.png', '2020-09-25 11:04:36', '2020-10-20 11:04:37', 0, '孔庙', '{"latitude":35.59708,"longitude": 116.99196}'),
	(102, '重阳节“登高”首选之地', '五岳独尊', '/posterUrl/item4.png', '2020-09-25 11:06:27', '2020-11-25 11:06:28', 1, '泰山', '{"latitude":36.266181799,"longitude": 117.098320899}'),
	(103, '重阳节与朋友出游古城', '齐国古城', '/posterUrl/item5.png', '2020-09-25 11:06:50', '2020-11-25 11:06:50', 1, '齐国古城', '{"latitude":36.803341,"longitude": 118.349083}'),
	(104, '重阳节“登高”', '云起太华山,云山互明灭', '/posterUrl/item1.png', '2020-09-24 19:43:19', '2020-11-20 19:43:21', 1, '华山', '{"latitude":36.728507899,"longitude": 117.07001545}'),
	(105, '故宫游玩', '感受祖国历史文化', '/posterUrl/item6.jpg', '2020-10-27 15:24:41', '2020-12-27 15:24:42', 1, '故宫博物馆', '{"latitude":39.91799,"longitude": 116.397027}'),
	(106, '蓬莱长岛', '地势风貌别具风格', '/posterUrl/item7.jpg', '2020-10-27 15:24:40', '2020-12-27 15:24:43', 1, '长岛', '{"latitude":37.983851,"longitude": 120.703045}');
/*!40000 ALTER TABLE `wx_chat_sys` ENABLE KEYS */;

-- 导出  表 ry-team.wx_chat_type 结构
CREATE TABLE IF NOT EXISTS `wx_chat_type` (
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '种类id',
  `type_name` char(10) DEFAULT NULL COMMENT '种类名',
  `type_modelName` char(10) DEFAULT NULL COMMENT '种类模块名',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='聊天室种类';

-- 正在导出表  ry-team.wx_chat_type 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `wx_chat_type` DISABLE KEYS */;
INSERT INTO `wx_chat_type` (`type_id`, `type_name`, `type_modelName`) VALUES
	(1, '出行', '自驾');
/*!40000 ALTER TABLE `wx_chat_type` ENABLE KEYS */;

-- 导出  表 ry-team.wx_chat_unread 结构
CREATE TABLE IF NOT EXISTS `wx_chat_unread` (
  `room_id` bigint(20) NOT NULL COMMENT '聊天室房间id',
  `user_openid` varchar(50) NOT NULL DEFAULT '' COMMENT '用户唯一标识',
  `unread_number` varchar(50) DEFAULT '' COMMENT '未读消息个数',
  PRIMARY KEY (`room_id`,`user_openid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='聊天室未读信息';

-- 正在导出表  ry-team.wx_chat_unread 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `wx_chat_unread` DISABLE KEYS */;
/*!40000 ALTER TABLE `wx_chat_unread` ENABLE KEYS */;

-- 导出  表 ry-team.wx_discover_care 结构
CREATE TABLE IF NOT EXISTS `wx_discover_care` (
  `care_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '关注id',
  `create_openid` varchar(50) DEFAULT NULL COMMENT '创建人',
  `care_openid` varchar(50) DEFAULT NULL COMMENT '关注人',
  PRIMARY KEY (`care_id`),
  KEY `care_openid` (`care_openid`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COMMENT='用户关注表';

-- 正在导出表  ry-team.wx_discover_care 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `wx_discover_care` DISABLE KEYS */;
INSERT INTO `wx_discover_care` (`care_id`, `create_openid`, `care_openid`) VALUES
	(66, 'oxAbk5JJCJq0Hy1THttJlRc1ysQU', 'oxAbk5P7pFuGbpoJXDK5p0BWGY6w'),
	(67, 'oxAbk5OQpeOqkvwkVPh3nyKPLomc', 'oxAbk5P7pFuGbpoJXDK5p0BWGY6w'),
	(68, 'oxAbk5BS0BRuw7b1Tdx-jaIS6r3c', 'oxAbk5OQpeOqkvwkVPh3nyKPLomc'),
	(70, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', 'oxAbk5BS0BRuw7b1Tdx-jaIS6r3c');
/*!40000 ALTER TABLE `wx_discover_care` ENABLE KEYS */;

-- 导出  表 ry-team.wx_discover_comment 结构
CREATE TABLE IF NOT EXISTS `wx_discover_comment` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `content_id` bigint(20) DEFAULT NULL COMMENT '动态id',
  `comment_user_openid` varchar(50) DEFAULT NULL COMMENT '评论人id',
  `comment_text` varchar(500) DEFAULT NULL COMMENT '评论文本内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `comment1` varchar(50) DEFAULT NULL,
  `comment2` varchar(50) DEFAULT NULL,
  `comment3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE,
  KEY `content_id` (`content_id`) USING BTREE,
  CONSTRAINT `FK1_comment_content` FOREIGN KEY (`content_id`) REFERENCES `wx_discover_content` (`content_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='动态评论表';

-- 正在导出表  ry-team.wx_discover_comment 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `wx_discover_comment` DISABLE KEYS */;
INSERT INTO `wx_discover_comment` (`comment_id`, `content_id`, `comment_user_openid`, `comment_text`, `create_time`, `comment1`, `comment2`, `comment3`) VALUES
	(13, 6, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '你好', '2020-09-02 16:19:04', NULL, NULL, NULL),
	(68, 91, 'oxAbk5JJCJq0Hy1THttJlRc1ysQU', '好美！', '2020-09-30 11:18:34', NULL, NULL, NULL),
	(70, 116, 'oxAbk5OgoCBQJhxtPG2va4stioAU', '666', '2020-10-28 09:53:27', NULL, NULL, NULL);
/*!40000 ALTER TABLE `wx_discover_comment` ENABLE KEYS */;

-- 导出  表 ry-team.wx_discover_content 结构
CREATE TABLE IF NOT EXISTS `wx_discover_content` (
  `content_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '动态内容的id',
  `content_user_openid` varchar(50) DEFAULT '' COMMENT '动态内容的发表人',
  `content_text` varchar(500) DEFAULT '' COMMENT '动态的文本内容',
  `content_images` varchar(2000) DEFAULT '' COMMENT '动态的图片地址',
  `content_video` varchar(200) DEFAULT '' COMMENT '动态的视频地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `content_label` varchar(20) DEFAULT '' COMMENT '动态标签',
  `content_type` char(15) DEFAULT 'text_image' COMMENT '内容类型text_image 文字图片，text_vedio文字视频',
  `content_city` varchar(50) DEFAULT '' COMMENT '所在城市',
  `content_position` varchar(200) DEFAULT '' COMMENT '地址位置',
  PRIMARY KEY (`content_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='发现区域的动态内容';

-- 正在导出表  ry-team.wx_discover_content 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `wx_discover_content` DISABLE KEYS */;
INSERT INTO `wx_discover_content` (`content_id`, `content_user_openid`, `content_text`, `content_images`, `content_video`, `create_time`, `content_label`, `content_type`, `content_city`, `content_position`) VALUES
	(2, '', '大家好', '["http://localhost:8088/profile/upload/2020/09/02/eb1f5872f83f9c6c7c2d2288f381868c.jpg","http://localhost:8088/profile/upload/2020/09/02/7fb8054a3554411b4a2bb959caf8dd34.jpg"]', '', '2020-09-02 11:48:10', '"游戏"', 'text_image', '', ''),
	(6, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '你们好，我是新人', '["http://localhost:8088/profile/upload/2020/09/02/eb1f5872f83f9c6c7c2d2288f381868c.jpg","http://localhost:8088/profile/upload/2020/09/02/7fb8054a3554411b4a2bb959caf8dd34.jpg"]', '', '2020-09-02 12:28:12', '游戏', 'text_image', '', '');
/*!40000 ALTER TABLE `wx_discover_content` ENABLE KEYS */;

-- 导出  表 ry-team.wx_discover_good 结构
CREATE TABLE IF NOT EXISTS `wx_discover_good` (
  `good_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '点赞id',
  `good_type_id` bigint(20) DEFAULT NULL COMMENT '评论点赞id或作品点赞id',
  `good_type` int(11) DEFAULT NULL COMMENT '点赞类型(1作品点赞，2评论点赞)',
  `good_user_openid` varchar(50) DEFAULT NULL COMMENT '点赞人id',
  `status` int(11) DEFAULT '1' COMMENT '点赞状态（1点赞，2取消点赞）',
  `good1` int(11) DEFAULT NULL,
  `good2` int(11) DEFAULT NULL,
  PRIMARY KEY (`good_id`) USING BTREE,
  KEY `good_type_id` (`good_type_id`),
  CONSTRAINT `FK1_content_good` FOREIGN KEY (`good_type_id`) REFERENCES `wx_discover_content` (`content_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='点赞表';

-- 正在导出表  ry-team.wx_discover_good 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `wx_discover_good` DISABLE KEYS */;
/*!40000 ALTER TABLE `wx_discover_good` ENABLE KEYS */;

-- 导出  表 ry-team.wx_discover_reply 结构
CREATE TABLE IF NOT EXISTS `wx_discover_reply` (
  `reply_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '回复评论id',
  `comment_id` bigint(20) NOT NULL COMMENT '评论id',
  `content_id` bigint(20) NOT NULL COMMENT '动态id',
  `reply_text` varchar(500) DEFAULT '' COMMENT '回复评论文本',
  `from_openid` varchar(50) DEFAULT '' COMMENT '回复人id',
  `to_openid` varchar(50) DEFAULT '' COMMENT '被回复人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `reply2` varchar(50) DEFAULT NULL,
  `reply3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`reply_id`) USING BTREE,
  KEY `comment_id` (`comment_id`) USING BTREE,
  CONSTRAINT `FK1_reply_comment` FOREIGN KEY (`comment_id`) REFERENCES `wx_discover_comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='评论回复表';

-- 正在导出表  ry-team.wx_discover_reply 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `wx_discover_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `wx_discover_reply` ENABLE KEYS */;

-- 导出  表 ry-team.wx_discover_statistics 结构
CREATE TABLE IF NOT EXISTS `wx_discover_statistics` (
  `statistics_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '统计id',
  `content_id` bigint(20) DEFAULT NULL COMMENT '动态id',
  `statistics_comment_num` int(11) DEFAULT '0' COMMENT '评论个数',
  `statistics_good_num` int(11) DEFAULT '0' COMMENT '点赞个数',
  `statistics_look_num` int(11) DEFAULT '1' COMMENT '浏览量',
  `statistics1` int(11) DEFAULT '0',
  `statistics2` int(11) DEFAULT '0',
  `statistics3` int(11) DEFAULT '0',
  PRIMARY KEY (`statistics_id`) USING BTREE,
  KEY `content_id` (`content_id`) USING BTREE,
  CONSTRAINT `FK1_statistics_content` FOREIGN KEY (`content_id`) REFERENCES `wx_discover_content` (`content_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='动态表的点赞，评论，浏览量数量统计';

-- 正在导出表  ry-team.wx_discover_statistics 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `wx_discover_statistics` DISABLE KEYS */;
INSERT INTO `wx_discover_statistics` (`statistics_id`, `content_id`, `statistics_comment_num`, `statistics_good_num`, `statistics_look_num`, `statistics1`, `statistics2`, `statistics3`) VALUES
	(2, 6, 1, 0, 25, 0, 0, 0),
	(83, 91, 1, 0, 8, 0, 0, 0),
	(84, 92, 0, 0, 2, 0, 0, 0),
	(88, 96, 0, 0, 7, 0, 0, 0),
	(89, 97, 0, 0, 13, 0, 0, 0),
	(108, 116, 1, 0, 34, 0, 0, 0);
/*!40000 ALTER TABLE `wx_discover_statistics` ENABLE KEYS */;

-- 导出  表 ry-team.wx_myhome_authentication 结构
CREATE TABLE IF NOT EXISTS `wx_myhome_authentication` (
  `authentication_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '认证id',
  `authentication_type` int(1) NOT NULL DEFAULT '0' COMMENT '认证类型（0身份证认证，1学生认证）',
  `authentication_user_openid` varchar(50) DEFAULT NULL COMMENT '用户唯一标识',
  `authentication_photo` varchar(200) DEFAULT NULL COMMENT '认证证件',
  `authentication_selfie` varchar(200) DEFAULT NULL COMMENT '自拍照',
  `authentication_pass` int(1) DEFAULT '2' COMMENT '审核是否通过（0审核通过，1审核未通过，2审核中）',
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COMMENT='用户身份认证';

-- 正在导出表  ry-team.wx_myhome_authentication 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `wx_myhome_authentication` DISABLE KEYS */;
INSERT INTO `wx_myhome_authentication` (`authentication_id`, `authentication_type`, `authentication_user_openid`, `authentication_photo`, `authentication_selfie`, `authentication_pass`) VALUES
	(14, 1, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '["IDCardImg/2020/9/160145591608192.jpg","IDCardImg/2020/9/1601455916206119.jpg"]', 'IDCardImg/2020/9/1601455916220135.jpg', 2),
	(15, 2, 'oxAbk5OQpeOqkvwkVPh3nyKPLomc', '["IDCardImg/2020/9/1601456134187101.jpg"]', 'IDCardImg/2020/9/160145613419399.jpg', 2);
/*!40000 ALTER TABLE `wx_myhome_authentication` ENABLE KEYS */;

-- 导出  表 ry-team.wx_myhome_feedback 结构
CREATE TABLE IF NOT EXISTS `wx_myhome_feedback` (
  `feedback_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '反馈id',
  `feedback_user_openid` varchar(50) NOT NULL COMMENT '用户标识',
  `feedback_text` varchar(200) NOT NULL COMMENT '反馈文本',
  `feedback_images` varchar(300) NOT NULL COMMENT '反馈图片',
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户反馈bug';

-- 正在导出表  ry-team.wx_myhome_feedback 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `wx_myhome_feedback` DISABLE KEYS */;
INSERT INTO `wx_myhome_feedback` (`feedback_id`, `feedback_user_openid`, `feedback_text`, `feedback_images`) VALUES
	(1, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '首页存在问题', '["/profile/upload/2020/09/09/5baf93f54dae631dcec273e57d7cda0f.jpg","/profile/upload/2020/09/09/7d06342a00ba91efa9c231aace871415.jpg"]'),
	(2, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '没有问题', '["/profile/upload/2020/09/09/dfe3beb5618c9c736a97272b8ae641ea.jpg","/profile/upload/2020/09/09/4dcb107022ae3e557e2f2b3a08510eae.jpg","/profile/upload/2020/09/09/f33024d2e5e3cdd3587178e038fcce3b.jpg"]');
/*!40000 ALTER TABLE `wx_myhome_feedback` ENABLE KEYS */;

-- 导出  表 ry-team.wx_myhome_sign 结构
CREATE TABLE IF NOT EXISTS `wx_myhome_sign` (
  `sign_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '签到id',
  `sign_openid` varchar(50) DEFAULT NULL COMMENT '签到人唯一标识',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `sign_day` char(2) DEFAULT NULL COMMENT '签到日号',
  `sign1` char(2) DEFAULT NULL,
  `sign2` char(2) DEFAULT NULL,
  `sign3` char(2) DEFAULT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COMMENT='签到表';

-- 正在导出表  ry-team.wx_myhome_sign 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `wx_myhome_sign` DISABLE KEYS */;
INSERT INTO `wx_myhome_sign` (`sign_id`, `sign_openid`, `create_date`, `sign_day`, `sign1`, `sign2`, `sign3`) VALUES
	(53, 'oxAbk5AeJp-xWmRlyxVKs3cVFsVM', '2020-10-01', '1', NULL, NULL, NULL),
	(54, 'oxAbk5BS0BRuw7b1Tdx-jaIS6r3c', '2020-10-22', '22', NULL, NULL, NULL),
	(55, 'oxAbk5OgoCBQJhxtPG2va4stioAU', '2020-10-28', '28', NULL, NULL, NULL),
	(56, 'oxAbk5JJCJq0Hy1THttJlRc1ysQU', '2020-10-29', '29', NULL, NULL, NULL),
	(57, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '2020-10-29', '29', NULL, NULL, NULL),
	(58, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '2020-10-30', '30', NULL, NULL, NULL),
	(60, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '2020-10-31', '31', NULL, NULL, NULL),
	(61, 'oxAbk5CeH5wLRRLPULfatdUbnv8g', '2021-01-20', '20', NULL, NULL, NULL),
	(62, 'oxAbk5OQpeOqkvwkVPh3nyKPLomc', '2021-06-16', '16', NULL, NULL, NULL);
/*!40000 ALTER TABLE `wx_myhome_sign` ENABLE KEYS */;

-- 导出  表 ry-team.wx_user 结构
CREATE TABLE IF NOT EXISTS `wx_user` (
  `wx_openid` varchar(50) NOT NULL DEFAULT '' COMMENT '微信用户标识',
  `wx_name` varchar(150) DEFAULT '' COMMENT '用户昵称',
  `wx_avatar` varchar(200) DEFAULT '' COMMENT '用户头像',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号',
  `wx_sex` int(11) DEFAULT '0' COMMENT '性别（0未知，1男，2女）',
  `status` char(10) DEFAULT 'on_line' COMMENT '在线状态on_line在线off_line离线',
  `wx_level` int(11) DEFAULT '3' COMMENT '用户权限等级（3正常，2禁用，1严重禁用）',
  `wx_idcard` int(11) DEFAULT '0' COMMENT '身份证认证(0无认证，1已认证)',
  `wx_stuCard` int(11) DEFAULT '0' COMMENT '学生认证(0无认证，1已认证)',
  `wx_vip` int(11) DEFAULT '0' COMMENT '用户vip特权（0无，1有）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`wx_openid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='微信用户';

-- 正在导出表  ry-team.wx_user 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `wx_user` DISABLE KEYS */;
INSERT INTO `wx_user` (`wx_openid`, `wx_name`, `wx_avatar`, `phonenumber`, `wx_sex`, `status`, `wx_level`, `wx_idcard`, `wx_stuCard`, `wx_vip`, `create_time`, `update_time`, `login_time`) VALUES
	('111', '🎃 艾斯🎈', '', '', 1, 'off_line', 1, 2, 0, 1, NULL, NULL, NULL),
	('1111222', '🎃 艾斯🎈', 'https://wx.qlogo.cn/mmopen/vi_32/0Dd1bmLHTynvHRruIHBOETqZulibpoc2DQU1Qkfff7TATicqEYHAkwMkKibfjTaqsDvyeRdjGqqXwesRJz5UPsia0g/132', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2020-08-10 17:09:43', NULL, NULL),
	('123', '🎃 艾斯🎈', NULL, '12345678', 1, 'on_line', 3, 0, 0, 0, NULL, NULL, NULL),
	('1234', '🎃 艾斯🎈', '', '12345678', 1, 'on_line', 3, 0, 0, 0, NULL, NULL, NULL),
	('12345', '🎃 艾斯🎈', '', '12345678', 1, 'off_line', 3, 0, 0, 1, NULL, '2020-05-07 16:23:27', '2020-04-29 21:02:25'),
	('123455', '🎃 艾斯🎈', '', '12345678', 2, 'on_line', 3, 0, 0, 0, NULL, NULL, NULL),
	('1234556', '🎃 艾斯🎈', '', '12345678', 2, 'off_line', 3, 1, 0, 0, '2020-05-07 16:12:07', '2020-05-07 16:28:19', '2020-04-29 21:02:25'),
	('12345567', '🎃 艾斯🎈', '', '12345678', 2, 'on_line', 3, 0, 0, 1, '2020-05-07 16:15:46', NULL, NULL),
	('oxAbk5CeH5wLRRLPULfatd', '🎃 艾斯🎈', '"https://thirdwx.qlogo.cn/mmopen/vi_32/0Dd1bmLHTynvHRruIHBOETqZulibpoc2DQU1Qkfff7TATicqEYHAkwMkKibfjTaqsDvyeRdjGqqXwesRJz5UPsia0g/132"', '18266029366', 2, 'off_line', 3, 1, 0, 0, NULL, NULL, NULL),
	('oxAbk5CeH5wLRRLPULfatdUbnv8g', '🎃 艾斯🎈', 'https://thirdwx.qlogo.cn/mmopen/vi_32/0Dd1bmLHTynvHRruIHBOETqZulibpoc2DQU1Qkfff7TATicqEYHAkwMkKibfjTaqsDvjBBTLfLRL49cvpNFtRMmBg/132', '', 1, 'on_line', 3, 0, 0, 0, '2020-04-29 21:02:08', '2021-11-20 15:08:32', '2020-04-29 21:02:25');
/*!40000 ALTER TABLE `wx_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
