
-- 建立資料庫
CREATE DATABASE `Robert`;
-- 建立客戶資料表
CREATE TABLE `Robert`.`clinetinfo` (
 `cid`  INT(11) NOT NULL AUTO_INCREMENT ,
 `cname` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL , 
 `cimg` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
 PRIMARY KEY (`cid`)
  ) ENGINE = InnoDB;

-- 建議產品資料表
CREATE TABLE `Robert`.`product` 
( `pid` INT(11) NOT NULL AUTO_INCREMENT , 
`pname` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL , 
`pprice` VARCHAR(10)CHARACTER SET utf8 COLLATE utf8_general_ci NULL , 
`pimg1` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL , 
`pimg2` VARCHAR(100)CHARACTER SET utf8 COLLATE utf8_general_ci NULL , 
`pimg3` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL , 
`pimg4` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL , 
`pimg5` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL , 
`pimg6` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
`pimg7` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
`pimg8` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
PRIMARY KEY (`pid`)) ENGINE = InnoDB;

-- 建立交易明細資料表
CREATE TABLE `Robert`.`detail`
 ( `did` INT(11) NOT NULL AUTO_INCREMENT , 
 `cid` INT(11) NULL , `pid` INT(11) NULL ,
 `gnum` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
 `gpice` VARCHAR(23) CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
PRIMARY KEY (`did`)) ENGINE = InnoDB;

-- 建議交易資料表
CREATE TABLE `Robert`.`transaction`
( `tid` INT(11) NOT NULL AUTO_INCREMENT , 
`did` INT(11) NULL , 
`ttime` DATE NOT NULL , 
PRIMARY KEY (`tid`)) ENGINE = InnoDB;	
