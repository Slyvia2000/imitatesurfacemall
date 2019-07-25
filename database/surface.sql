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
    spec VARCHAR(64),           #规格/颜色

    size VARCHAR(32),           #尺寸
    disk_size VARCHAR(32),      #存储
    screen VARCHAR(64),         #显示器
    support VARCHAR(32),        #外部支持
    memory VARCHAR(32),         #内存容量
    video_card VARCHAR(32),     #显卡型号
    cpu VARCHAR(32),            #处理器
    extra VARCHAR(64),          #连接和拓展
    safety_pro VARCHAR(64),     #安全性
    video VARCHAR(32),          #摄像头、视频 和音频
    software  VARCHAR(64),      #软件
    wifi   VARCHAR(64),         #无线
    key_press VARCHAR(64),      #按键
    components VARCHAR(32),     #包装清单
    pro_service  VARCHAR(32),   #保修
    image1_s  VARCHAR(128),
    image2_s  VARCHAR(128),
    image3_s  VARCHAR(128),
    image4_s  VARCHAR(128),
    image5_s  VARCHAR(128),
    image1_m  VARCHAR(128),
    image2_m  VARCHAR(128),
    image3_m  VARCHAR(128),
    image4_m  VARCHAR(128),
    image5_m  VARCHAR(128)
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

-- 笔记本电脑
-- INSERT INTO surface_laptop VALUES
-- (NULL,),