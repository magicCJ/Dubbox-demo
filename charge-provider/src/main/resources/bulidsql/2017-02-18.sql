DROP TABLE IF EXISTS `charge_type`;
CREATE TABLE `charge_type` (
  `id` varchar(64) NOT NULL COMMENT 'id主键',
  `type_name` varchar(64) DEFAULT '' COMMENT '收费类型名称',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `crop_id` varchar(64) DEFAULT '' COMMENT '租户id',
  `app_id` varchar(64) DEFAULT '' COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收费类型表';


DROP TABLE IF EXISTS `system_charge_item`;
CREATE TABLE `system_charge_item` (
  `id` varchar(64) NOT NULL COMMENT 'id主键',
  `type_id` varchar(64) DEFAULT '' COMMENT '收费类型id',
  `type_name` varchar(64) DEFAULT '' COMMENT '收费类型名称',
  `item_name` varchar(64) DEFAULT '' COMMENT '收费项名称',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user_id` varchar(64) DEFAULT '' COMMENT '创建人id',
  `create_user` varchar(64) DEFAULT '' COMMENT '创建人',
  `crop_id` varchar(64) DEFAULT '' COMMENT '租户id',
  `app_id` varchar(64) DEFAULT '' COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统收费项表';


DROP TABLE IF EXISTS `house_config`;
CREATE TABLE `house_config` (
  `id` varchar(64) NOT NULL COMMENT 'id主键',
  `small_area` varchar(64) DEFAULT '' COMMENT '小区id',
  `house_id` varchar(64) DEFAULT '' COMMENT '房屋id',
  `house_name` varchar(64) DEFAULT '' COMMENT '房屋名称',
  `item_id` varchar(64) DEFAULT '' COMMENT '系统收费项目id',
  `item_name` varchar(64) DEFAULT '' COMMENT '系统收费项目名称',
  `charge_rule` varchar(300) DEFAULT '' COMMENT '计费规则',
  `effective_time` timestamp DEFAULT NULL COMMENT '生效时间(生效时间到了该配置才会生效)',
  `remark` varchar(300) DEFAULT '' COMMENT '备注',
  `status` varchar(64) DEFAULT '0' COMMENT '状态(0表示当前正在使用配置,1表示未生效配置,2表示废弃配置)',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `crop_id` varchar(64) DEFAULT '' COMMENT '租户id',
  `app_id` varchar(64) DEFAULT '' COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房屋配置表';


DROP TABLE IF EXISTS `fixed_config`;
CREATE TABLE `fixed_config` (
  `id` varchar(64) NOT NULL COMMENT 'id主键',
  `house_config_id` varchar(64) DEFAULT '' COMMENT '房屋配置id',
  `item_id` varchar(64) DEFAULT '' COMMENT '系统收费项目id',
  `item_name` varchar(64) DEFAULT '' COMMENT '系统收费项目名称',
  `price` DECIMAL(9,2) DEFAULT 0 COMMENT '单价',
  `effective_time` timestamp DEFAULT NULL COMMENT '生效时间(生效时间到了该配置才会生效)',
  `remark` varchar(300) DEFAULT '' COMMENT '备注',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user_id` varchar(64) DEFAULT '' COMMENT '创建人id',
  `create_user` varchar(64) DEFAULT '' COMMENT '创建人',
  `last_modify_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `last_modify_user_id` varchar(64) DEFAULT '' COMMENT '最后修改人id',
  `last_modify_user` varchar(64) DEFAULT '' COMMENT '最后修改人姓名',
  `crop_id` varchar(64) DEFAULT '' COMMENT '租户id',
  `app_id` varchar(64) DEFAULT '' COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='固定型收费项配置表';


DROP TABLE IF EXISTS `rent_config`;
CREATE TABLE `rent_config` (
  `id` varchar(64) NOT NULL COMMENT 'id主键',
  `house_config_id` varchar(64) DEFAULT '' COMMENT '房屋配置id',
  `item_id` varchar(64) DEFAULT '' COMMENT '系统收费项目id',
  `item_name` varchar(64) DEFAULT '' COMMENT '系统收费项目名称',
  `area_type_id` varchar(64) DEFAULT '' COMMENT '面积类型id',
  `area_type_name` varchar(64) DEFAULT '' COMMENT '面积类型名称',
  `price` DECIMAL(9,2) DEFAULT 0 COMMENT '单价',
  `effective_time` timestamp DEFAULT NULL COMMENT '生效时间(生效时间到了该配置才会生效)',
  `remark` varchar(300) DEFAULT '' COMMENT '备注',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user_id` varchar(64) DEFAULT '' COMMENT '创建人id',
  `create_user` varchar(64) DEFAULT '' COMMENT '创建人',
  `last_modify_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `last_modify_user_id` varchar(64) DEFAULT '' COMMENT '最后修改人id',
  `last_modify_user` varchar(64) DEFAULT '' COMMENT '最后修改人姓名',
  `crop_id` varchar(64) DEFAULT '' COMMENT '租户id',
  `app_id` varchar(64) DEFAULT '' COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='租费型收费项配置表';


DROP TABLE IF EXISTS `cost_config`;
CREATE TABLE `cost_config` (
  `id` varchar(64) NOT NULL COMMENT 'id主键',
  `house_config_id` varchar(64) DEFAULT '' COMMENT '房屋配置id',
  `item_id` varchar(64) DEFAULT '' COMMENT '系统收费项目id',
  `item_name` varchar(64) DEFAULT '' COMMENT '系统收费项目名称',
  `instrument_id` varchar(64) DEFAULT '' COMMENT '绑定仪表id',
  `instrument_name` varchar(64) DEFAULT '' COMMENT '绑定仪表名称',
  `more_num` DOUBLE DEFAULT 0 COMMENT '大于某个数量值',
  `less_num` DOUBLE DEFAULT 0 COMMENT '小于等于某个数量值',
  `amount` DOUBLE DEFAULT 0 COMMENT '数量',
  `price` DECIMAL(9,2) DEFAULT 0 COMMENT '单价',
  `effective_time` timestamp DEFAULT NULL COMMENT '生效时间(生效时间到了该配置才会生效)',
  `remark` varchar(300) DEFAULT '' COMMENT '备注',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user_id` varchar(64) DEFAULT '' COMMENT '创建人id',
  `create_user` varchar(64) DEFAULT '' COMMENT '创建人',
  `last_modify_time` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  `last_modify_user_id` varchar(64) DEFAULT '' COMMENT '最后修改人id',
  `last_modify_user` varchar(64) DEFAULT '' COMMENT '最后修改人姓名',
  `crop_id` varchar(64) DEFAULT '' COMMENT '租户id',
  `app_id` varchar(64) DEFAULT '' COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='耗费型收费项配置表';



DROP TABLE IF EXISTS `charge_calculate`;
CREATE TABLE `charge_calculate` (
  `id` varchar(64) NOT NULL COMMENT 'id主键',
  `small_area` varchar(64) DEFAULT '' COMMENT '小区id',
  `house_id` varchar(64) DEFAULT '' COMMENT '房屋id',
  `house_name` varchar(64) DEFAULT '' COMMENT '房屋名称',
  `house_config_id` varchar(64) DEFAULT '' COMMENT '房屋配置id',
  `item_id` varchar(64) DEFAULT '' COMMENT '系统收费项目id',
  `item_name` varchar(64) DEFAULT '' COMMENT '系统收费项目名称',
  `amount_num` DOUBLE DEFAULT 0 COMMENT '用量',
  `amount_money` DECIMAL(9,2) DEFAULT 0 COMMENT '金额',
  `arrears_desc` varchar(300) DEFAULT '' COMMENT '欠费描述',
  `create_charge_time` timestamp DEFAULT NULL COMMENT '开始计费时间',
  `end_charge_time` timestamp DEFAULT NULL COMMENT '结束计费时间',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `crop_id` varchar(64) DEFAULT '' COMMENT '租户id',
  `app_id` varchar(64) DEFAULT '' COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='计费表';


DROP TABLE IF EXISTS `payment_record`;
CREATE TABLE `payment_record` (
  `id` varchar(64) NOT NULL COMMENT 'id主键',
  `small_area` varchar(64) DEFAULT '' COMMENT '小区id',
  `house_id` varchar(64) DEFAULT '' COMMENT '房屋id',
  `house_name` varchar(64) DEFAULT '' COMMENT '房屋名称',
  `collector_id` varchar(64) DEFAULT '' COMMENT '收费员id',
  `collector_name` varchar(64) DEFAULT '' COMMENT '收费员姓名',
  `charge_money` DECIMAL(9,2) DEFAULT 0 COMMENT '收费金额',
  `charge_type` varchar(64) DEFAULT '' COMMENT '收费方式',
  `receipt_num` varchar(64) DEFAULT '' COMMENT '收据单号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user_id` varchar(64) DEFAULT '' COMMENT '创建人id',
  `create_user` varchar(64) DEFAULT '' COMMENT '创建人',
  `crop_id` varchar(64) DEFAULT '' COMMENT '租户id',
  `app_id` varchar(64) DEFAULT '' COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='缴费记录表';



DROP TABLE IF EXISTS `deposit_relation`;
CREATE TABLE `deposit_relation` (
  `id` varchar(64) NOT NULL COMMENT 'id主键',
  `payment_id` varchar(64) DEFAULT '' COMMENT '付款人或物的id',
  `payment_name` varchar(64) DEFAULT '' COMMENT '付款人或物的名字',
  `payment_type` varchar(10) DEFAULT '' COMMENT '付款类型(person表示人员,house表示房屋,area表示小区)',
  `payment_transaction` varchar(64) DEFAULT '' COMMENT '付款对应金融平台帐号',
  `receive_id` varchar(64) DEFAULT '' COMMENT '收款人或物的id',
  `receive_name` varchar(64) DEFAULT '' COMMENT '收款人或物的名字',
  `receive_type` varchar(10) DEFAULT '' COMMENT '收款类型(person表示人员,house表示房屋,area表示小区)',
  `receive_transaction` varchar(64) DEFAULT '' COMMENT '收款对应金融平台帐号',
  `money` DECIMAL(9,2) DEFAULT 0 COMMENT '金额',
  `receipt_code` varchar(64) DEFAULT '' COMMENT '收据码',
  `remark` varchar(300) DEFAULT '' COMMENT '描述备注',
  `status` char(1) DEFAULT '' COMMENT '状态(0表示交押金,1表示退还押金)',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `crop_id` varchar(64) DEFAULT '' COMMENT '租户id',
  `app_id` varchar(64) DEFAULT '' COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='押金关系表';


DROP TABLE IF EXISTS `prestore_relation`;
CREATE TABLE `prestore_relation` (
  `id` varchar(64) NOT NULL COMMENT 'id主键',
  `cost_type` varchar(64) DEFAULT '' COMMENT '费用类型',
  `transaction_no` varchar(64) DEFAULT '' COMMENT '对应金融平台帐号',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `crop_id` varchar(64) DEFAULT '' COMMENT '租户id',
  `app_id` varchar(64) DEFAULT '' COMMENT '应用id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='预存关系表';