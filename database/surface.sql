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

-- 笔记本电脑型号表
CREATE TABLE surface_laptop_family(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(32)
);
-- 笔记本电脑列表
CREATE TABLE surface_laptop(
    lid INT PRIMARY KEY AUTO_INCREMENT,
    family_id INT,              #所属型号编号
    title VARCHAR(128),         #主标题
    subtitle VARCHAR(128),      #副标题
    price DECIMAL(10,2),        #价格
    promise VARCHAR(64),        #服务承诺
    spec VARCHAR(64),           #规格/颜色

    Iname VARCHAR(32),          #商品名称
    os VARCHAR(32),             #操作系统
    memory VARCHAR(32),         #内存容量
    resolution VARCHAR(32),     #分辨率
    video_card VARCHAR(32),     #显卡型号
    cpu VARCHAR(32),            #处理器
    video_memory VARCHAR(32),   #显存容量
    category VARCHAR(32),       #所属分类
    disk VARCHAR(32),           #硬盘容量及类型
    details VARCHAR(1024),      #产品详细说明

    shelf_time BIGINT,          #上架时间
    sold_count INT,             #已售出的数量
    is_onsale BOOLEAN           #是否促销中
);



-- 数据导入====>

-- 用户信息
INSERT INTO surface_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');

-- 笔记本电脑型号
INSERT INTO surface_laptop_family VALUES
(NULL,'Surface Go'),
(NULL,'Surface Laptop'),
(NULL,'Surface Pro'),
(NULL,'Surface Book'),
(NULL,'Surface Studio');