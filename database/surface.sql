SET NAMES UTF8;
DROP DATABASE IF EXISTS surface;
CREATE DATABASE surface CHARSET=UTF8;
USE surface;


-- 创建表====>

-- 用户信息表
CREATE TABLE surface_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32),
    email VARCHAR(64),
    phone VARCHAR(64),

    avatar VARCHAR(128),
    user_name VARCHAR(32),
    gender INT
);


-- 数据导入====>

-- 用户信息
INSERT INTO surface_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');