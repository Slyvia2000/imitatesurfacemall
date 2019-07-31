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
    price INT,                  #价格
    pro_desc VARCHAR(128),      #描述信息

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
(1,'Surface Go'),
(2,'Surface Laptop'),
(3,'Surface Pro'),
(4,'Surface Book'),
(5,'Surface Studio');

-- 笔记本电脑
-- lid  型号编号  标题  副标题  价格 描述信息 尺寸及重量  存储3  显示屏  外部显示支持  内存  显卡  处理器  连接和扩展  安全性  摄像头、视频 和音频  软件  无线  按键  包装清单  保修  图片地址
INSERT INTO surface_laptop VALUES
-- 微软 Surface Go 英特尔 4415Y/4GB/64GB/WiFi
(
    NULL,1,
    -- 标题
    '微软 Surface Go',
    -- 副标题
    '英特尔 4415Y/4GB/64GB/WiFi',
    -- 价格
    2908,
    -- 描述信息
    '机身仅重 522g 起，轻松放入包中;兼具笔记本电脑的性能，平板电脑的便携性;续航最长可达 9 小时1，适用于日常任务及娱乐;10 英寸 PixelSense 触摸显示屏;预装 S 模式的 Windows 10 家庭版2 与 Office 家庭和学生版 2019;带 LTE 增强版的机型可供选择;Surface Go 专业键盘盖及 Surface 触控笔另售;',
    -- 尺寸及重量
    '245mm x 175mm x 8.3mm;重量：WiFi 版机型：522g 起（不含键盘盖） 带 LTE 增强版机型：532g 起（不含键盘盖）',
    -- 存储3
    'eMMC 驱动器：64GB 固态硬盘（SSD）：128GB',
    -- 显示屏
    '屏幕：10 英寸 PixelSense 触摸显示屏；分辨率：1800 x 1200 （217 PPI）；屏幕比例：3:2；对比度：1500:1；触控：10 点触控；第三代康宁大猩猩玻璃',
    -- 外部显示支持
    '',
    -- 内存
    '4GB 或 8GB RAM',
    -- 显卡
    '英特尔 HD 显卡 615',
    -- 处理器
    '英特尔奔腾金牌处理器 4415Y',
    -- 连接和扩展
    '',
    -- 安全性
    '提升企业安全性的 TPM 2.0 芯片；通过 Windows Hello 面部识别登录实现企业级保护',
    -- 摄像头、视频 和音频
    'Windows Hello 面部识别摄像头（前置）;支持 1080p Skype 高清视频的 500 万像素前置摄像头;支持 1080p 高清视频的 800 万像素自动对焦后置摄像头;单麦克风;支持 Dolby Audio Premium 的 2W 立体声扬声器',
    -- 软件
    '处于 S 模式的 Windows 10 家庭版2;Office 家庭和学生版 2019',
    -- 无线
    'WiFi 版机型：Wi-Fi：IEEE 802.11 a/b/g/n/ac 兼容 蓝牙 4.1 无线技术;带 LTE 增强版机型：Wi-Fi：IEEE 802.11 a/b/g/n/ac 兼容 蓝牙 4.1 无线技术 LTE 增强版4',
    -- 按键
    '物理按钮：音量、电源',
    -- 包装清单
    '包装清单：Surface Go，电源，快速入门指南，安全和保修文件。',
    -- 保修
    '保修：自购买凭证（发票）标注时间起，Surface 主机 2 年有限硬件保修；Surface 配件 1 至 3 年保修，视配件品类而定。详情以所购产品包装盒内相关信息为准。',
    -- 图片
    'surface_go_1.png',
    'surface_go_2.png',
    'surface_go_3.png',
    'surface_go_4.png',
    'surface_go_5.png',
),
-- 微软 Surface Go 英特尔 4415Y/8GB/128GB/WiFi
(
    NULL,1,
    -- 标题
    '微软 Surface Go',
    -- 副标题
    '英特尔 4415Y/8GB/128GB/WiFi',
    -- 价格
    3888,
    -- 描述信息
    '机身仅重 522g 起，轻松放入包中;兼具笔记本电脑的性能，平板电脑的便携性;续航最长可达 9 小时1，适用于日常任务及娱乐;10 英寸 PixelSense 触摸显示屏;预装 S 模式的 Windows 10 家庭版2 与 Office 家庭和学生版 2019;带 LTE 增强版的机型可供选择;Surface Go 专业键盘盖及 Surface 触控笔另售;',
    -- 尺寸及重量
    '245mm x 175mm x 8.3mm;重量：WiFi 版机型：522g 起（不含键盘盖） 带 LTE 增强版机型：532g 起（不含键盘盖）',
    -- 存储3
    'eMMC 驱动器：64GB 固态硬盘（SSD）：128GB',
    -- 显示屏
    '屏幕：10 英寸 PixelSense 触摸显示屏；分辨率：1800 x 1200 （217 PPI）；屏幕比例：3:2；对比度：1500:1；触控：10 点触控；第三代康宁大猩猩玻璃',
    -- 外部显示支持
    '',
    -- 内存
    '4GB 或 8GB RAM',
    -- 显卡
    '英特尔 HD 显卡 615',
    -- 处理器
    '英特尔奔腾金牌处理器 4415Y',
    -- 连接和扩展
    '',
    -- 安全性
    '提升企业安全性的 TPM 2.0 芯片；通过 Windows Hello 面部识别登录实现企业级保护',
    -- 摄像头、视频 和音频
    'Windows Hello 面部识别摄像头（前置）;支持 1080p Skype 高清视频的 500 万像素前置摄像头;支持 1080p 高清视频的 800 万像素自动对焦后置摄像头;单麦克风;支持 Dolby Audio Premium 的 2W 立体声扬声器',
    -- 软件
    '处于 S 模式的 Windows 10 家庭版2;Office 家庭和学生版 2019',
    -- 无线
    'WiFi 版机型：Wi-Fi：IEEE 802.11 a/b/g/n/ac 兼容 蓝牙 4.1 无线技术;带 LTE 增强版机型：Wi-Fi：IEEE 802.11 a/b/g/n/ac 兼容 蓝牙 4.1 无线技术 LTE 增强版4',
    -- 按键
    '物理按钮：音量、电源',
    -- 包装清单
    '包装清单：Surface Go，电源，快速入门指南，安全和保修文件。',
    -- 保修
    '保修：自购买凭证（发票）标注时间起，Surface 主机 2 年有限硬件保修；Surface 配件 1 至 3 年保修，视配件品类而定。详情以所购产品包装盒内相关信息为准。',
    -- 图片
    'surface_go_1.png',
    'surface_go_2.png',
    'surface_go_3.png',
    'surface_go_4.png',
    'surface_go_5.png',
),
-- 微软 Surface Go 英特尔 4415Y/8GB/128GB/带 LTE 增强版
(
    NULL,1,
    -- 标题
    '微软 Surface Go',
    -- 副标题
    '英特尔 4415Y/8GB/128GB/带 LTE 增强版',
    -- 价格
    4858,
    -- 描述信息
    '机身仅重 522g 起，轻松放入包中;兼具笔记本电脑的性能，平板电脑的便携性;续航最长可达 9 小时1，适用于日常任务及娱乐;10 英寸 PixelSense 触摸显示屏;预装 S 模式的 Windows 10 家庭版2 与 Office 家庭和学生版 2019;带 LTE 增强版的机型可供选择;Surface Go 专业键盘盖及 Surface 触控笔另售;',
    -- 尺寸及重量
    '245mm x 175mm x 8.3mm;重量：WiFi 版机型：522g 起（不含键盘盖） 带 LTE 增强版机型：532g 起（不含键盘盖）',
    -- 存储3
    'eMMC 驱动器：64GB 固态硬盘（SSD）：128GB',
    -- 显示屏
    '屏幕：10 英寸 PixelSense 触摸显示屏；分辨率：1800 x 1200 （217 PPI）；屏幕比例：3:2；对比度：1500:1；触控：10 点触控；第三代康宁大猩猩玻璃',
    -- 外部显示支持
    '',
    -- 内存
    '4GB 或 8GB RAM',
    -- 显卡
    '英特尔 HD 显卡 615',
    -- 处理器
    '英特尔奔腾金牌处理器 4415Y',
    -- 连接和扩展
    '',
    -- 安全性
    '提升企业安全性的 TPM 2.0 芯片；通过 Windows Hello 面部识别登录实现企业级保护',
    -- 摄像头、视频 和音频
    'Windows Hello 面部识别摄像头（前置）;支持 1080p Skype 高清视频的 500 万像素前置摄像头;支持 1080p 高清视频的 800 万像素自动对焦后置摄像头;单麦克风;支持 Dolby Audio Premium 的 2W 立体声扬声器',
    -- 软件
    '处于 S 模式的 Windows 10 家庭版2;Office 家庭和学生版 2019',
    -- 无线
    'WiFi 版机型：Wi-Fi：IEEE 802.11 a/b/g/n/ac 兼容 蓝牙 4.1 无线技术;带 LTE 增强版机型：Wi-Fi：IEEE 802.11 a/b/g/n/ac 兼容 蓝牙 4.1 无线技术 LTE 增强版4',
    -- 按键
    '物理按钮：音量、电源',
    -- 包装清单
    '包装清单：Surface Go，电源，快速入门指南，安全和保修文件。',
    -- 保修
    '保修：自购买凭证（发票）标注时间起，Surface 主机 2 年有限硬件保修；Surface 配件 1 至 3 年保修，视配件品类而定。详情以所购产品包装盒内相关信息为准。',
    -- 图片
    'surface_go_1.png',
    'surface_go_2.png',
    'surface_go_3.png',
    'surface_go_4.png',
    'surface_go_5.png',
),
-- 微软 Surface Laptop 2 酷睿 i5/8GB/256GB/灰粉金
(
    NULL,2,
    -- 标题
    '微软 Surface Laptop 2',
    -- 副标题
    '酷睿 i5/8GB/256GB/灰粉金',
    -- 价格
    9728,
    -- ====>以下内容待导入 2019年7月31日18:26:07
    -- 描述信息
    '机身仅重 522g 起，轻松放入包中;兼具笔记本电脑的性能，平板电脑的便携性;续航最长可达 9 小时1，适用于日常任务及娱乐;10 英寸 PixelSense 触摸显示屏;预装 S 模式的 Windows 10 家庭版2 与 Office 家庭和学生版 2019;带 LTE 增强版的机型可供选择;Surface Go 专业键盘盖及 Surface 触控笔另售;',
    -- 尺寸及重量
    '245mm x 175mm x 8.3mm;重量：WiFi 版机型：522g 起（不含键盘盖） 带 LTE 增强版机型：532g 起（不含键盘盖）',
    -- 存储3
    'eMMC 驱动器：64GB 固态硬盘（SSD）：128GB',
    -- 显示屏
    '屏幕：10 英寸 PixelSense 触摸显示屏；分辨率：1800 x 1200 （217 PPI）；屏幕比例：3:2；对比度：1500:1；触控：10 点触控；第三代康宁大猩猩玻璃',
    -- 外部显示支持
    '',
    -- 内存
    '4GB 或 8GB RAM',
    -- 显卡
    '英特尔 HD 显卡 615',
    -- 处理器
    '英特尔奔腾金牌处理器 4415Y',
    -- 连接和扩展
    '',
    -- 安全性
    '提升企业安全性的 TPM 2.0 芯片；通过 Windows Hello 面部识别登录实现企业级保护',
    -- 摄像头、视频 和音频
    'Windows Hello 面部识别摄像头（前置）;支持 1080p Skype 高清视频的 500 万像素前置摄像头;支持 1080p 高清视频的 800 万像素自动对焦后置摄像头;单麦克风;支持 Dolby Audio Premium 的 2W 立体声扬声器',
    -- 软件
    '处于 S 模式的 Windows 10 家庭版2;Office 家庭和学生版 2019',
    -- 无线
    'WiFi 版机型：Wi-Fi：IEEE 802.11 a/b/g/n/ac 兼容 蓝牙 4.1 无线技术;带 LTE 增强版机型：Wi-Fi：IEEE 802.11 a/b/g/n/ac 兼容 蓝牙 4.1 无线技术 LTE 增强版4',
    -- 按键
    '物理按钮：音量、电源',
    -- 包装清单
    '包装清单：Surface Go，电源，快速入门指南，安全和保修文件。',
    -- 保修
    '保修：自购买凭证（发票）标注时间起，Surface 主机 2 年有限硬件保修；Surface 配件 1 至 3 年保修，视配件品类而定。详情以所购产品包装盒内相关信息为准。',
    -- 图片
    'surface_go_1.png',
    'surface_go_2.png',
    'surface_go_3.png',
    'surface_go_4.png',
    'surface_go_5.png',
),
(
    NULL,5,
    -- 标题
    '微软 Surface Studio 2',
    -- 副标题
    '酷睿 i7/16GB/1TB SSD/GTX 1060 6GB/亮铂金',
    -- 价格
    29108,
    -- 描述信息
    '英特尔酷睿 i7-7820HQ 处理器;性能卓越的 NVIDIA GeForce GTX 1060/1070 显卡;28 英寸可调节角度的 PixelSense 触控显示屏;零重力铰链，单手即可完成模式转换;内含 Surface 触控笔、Surface 键盘及鼠标;预装 Windows 10 家庭版，Office 家庭和学生版 2019;',
    -- 尺寸及重量
    '显示屏：637.35 mm x 438.90 mm x 12.50 mm;基座：250.00 mm x 220.00 mm x 32.20 mm;重量：最大 9.56 kg',
    -- 存储3
    '1TB 或 2TB 固态硬盘（SSD）',
    -- 显示屏
    '屏幕：28 英寸 PixelSense 显示屏;分辨率：4500 x 3000 (192 PPI) ;色彩设置： Adobe sRGB，DCI-P3 及 Vivid Color 色彩配置;出厂独立校色;屏幕比例：3:2;触控：10 点触控;支持 Surface 触控笔倾斜感知，Surface Dial1 屏上交互，具有零重力铰链',
    -- 外部显示支持
    '可支持两个 4K UHD (@30Hz) 或单个 4K UHD (@60Hz)',
    -- 内存
    '16GB 或 32GB（DDR4）',
    -- 显卡
    'NVIDIA GeForce GTX 1060 6GB GDDR5 显存;NVIDIA GeForce GTX 1070 8GB GDDR5 显存',
    -- 处理器
    '英特尔酷睿 i7-7820HQ 处理器',
    -- 连接和扩展
    '4 个 USB 3.0（一个高功率端口）;全尺寸 SD 读卡器（兼容 SDXC）;1 个 USB-C ;3.5 mm 耳机插孔;支持 Surface Dial1 屏上交互;1 个千兆位以太网端口',
    -- 安全性
    '可信赖平台模块（TPM）2.0 提供企业级安全性;通过 Windows Hello 面部识别登录实现企业级防护',
    -- 摄像头、视频 和音频
    'Windows Hello 面部识别摄像头（前置）;支持 1080p 高清视频的 500 万像素前置摄像头;双麦克风;支持 Dolby Audio Premium 的立体声 2.1 扬声器',
    -- 软件
    'Windows 10 家庭版;Office 家庭和学生版 2019',
    -- 无线
    'Wi-Fi：802.11ac Wi-Fi 无线网络，兼容 IEEE 802.11 a/b/g/n;蓝牙：蓝牙 4.0 无线技术;内置 Xbox 无线技术',
    -- 按键
    '实体按键：音量键和电源键',
    -- 包装清单
    'Surface Studio 2，Surface 触控笔，Surface 键盘，Surface 鼠标，带束线的电源线，快速入门指南，安全及担保指南',
    -- 保修
    '主机 2 年有限硬件保修',
    -- 图片
    'surface_studio2_1.png',
    'surface_studio2_2.png',
    'surface_studio2_3.png',
    'surface_studio2_4.png',
    'surface_studio2_5.png',
),
(
    NULL,5,
    -- 标题
    '微软 Surface Studio 2',
    -- 副标题
    '酷睿 i7/32GB/1TB SSD/GTX 1070 8GB/亮铂金',
    -- 价格
    34958,
    -- 描述信息
    '英特尔酷睿 i7-7820HQ 处理器;性能卓越的 NVIDIA GeForce GTX 1060/1070 显卡;28 英寸可调节角度的 PixelSense 触控显示屏;零重力铰链，单手即可完成模式转换;内含 Surface 触控笔、Surface 键盘及鼠标;预装 Windows 10 家庭版，Office 家庭和学生版 2019;',
    -- 尺寸及重量
    '显示屏：637.35 mm x 438.90 mm x 12.50 mm;基座：250.00 mm x 220.00 mm x 32.20 mm;重量：最大 9.56 kg',
    -- 存储3
    '1TB 或 2TB 固态硬盘（SSD）',
    -- 显示屏
    '屏幕：28 英寸 PixelSense 显示屏;分辨率：4500 x 3000 (192 PPI) ;色彩设置： Adobe sRGB，DCI-P3 及 Vivid Color 色彩配置;出厂独立校色;屏幕比例：3:2;触控：10 点触控;支持 Surface 触控笔倾斜感知，Surface Dial1 屏上交互，具有零重力铰链',
    -- 外部显示支持
    '可支持两个 4K UHD (@30Hz) 或单个 4K UHD (@60Hz)',
    -- 内存
    '16GB 或 32GB（DDR4）',
    -- 显卡
    'NVIDIA GeForce GTX 1060 6GB GDDR5 显存;NVIDIA GeForce GTX 1070 8GB GDDR5 显存',
    -- 处理器
    '英特尔酷睿 i7-7820HQ 处理器',
    -- 连接和扩展
    '4 个 USB 3.0（一个高功率端口）;全尺寸 SD 读卡器（兼容 SDXC）;1 个 USB-C ;3.5 mm 耳机插孔;支持 Surface Dial1 屏上交互;1 个千兆位以太网端口',
    -- 安全性
    '可信赖平台模块（TPM）2.0 提供企业级安全性;通过 Windows Hello 面部识别登录实现企业级防护',
    -- 摄像头、视频 和音频
    'Windows Hello 面部识别摄像头（前置）;支持 1080p 高清视频的 500 万像素前置摄像头;双麦克风;支持 Dolby Audio Premium 的立体声 2.1 扬声器',
    -- 软件
    'Windows 10 家庭版;Office 家庭和学生版 2019',
    -- 无线
    'Wi-Fi：802.11ac Wi-Fi 无线网络，兼容 IEEE 802.11 a/b/g/n;蓝牙：蓝牙 4.0 无线技术;内置 Xbox 无线技术',
    -- 按键
    '实体按键：音量键和电源键',
    -- 包装清单
    'Surface Studio 2，Surface 触控笔，Surface 键盘，Surface 鼠标，带束线的电源线，快速入门指南，安全及担保指南',
    -- 保修
    '主机 2 年有限硬件保修',
    -- 图片
    'surface_studio2_1.png',
    'surface_studio2_2.png',
    'surface_studio2_3.png',
    'surface_studio2_4.png',
    'surface_studio2_5.png',
),
(
    NULL,5,
    -- 标题
    '微软 Surface Studio 2',
    -- 副标题
    '酷睿 i7/32GB/2TB SSD/GTX 1070 8GB/亮铂金',
    -- 价格
    38858,
    -- 描述信息
    '英特尔酷睿 i7-7820HQ 处理器;性能卓越的 NVIDIA GeForce GTX 1060/1070 显卡;28 英寸可调节角度的 PixelSense 触控显示屏;零重力铰链，单手即可完成模式转换;内含 Surface 触控笔、Surface 键盘及鼠标;预装 Windows 10 家庭版，Office 家庭和学生版 2019;',
    -- 尺寸及重量
    '显示屏：637.35 mm x 438.90 mm x 12.50 mm;基座：250.00 mm x 220.00 mm x 32.20 mm;重量：最大 9.56 kg',
    -- 存储3
    '1TB 或 2TB 固态硬盘（SSD）',
    -- 显示屏
    '屏幕：28 英寸 PixelSense 显示屏;分辨率：4500 x 3000 (192 PPI) ;色彩设置： Adobe sRGB，DCI-P3 及 Vivid Color 色彩配置;出厂独立校色;屏幕比例：3:2;触控：10 点触控;支持 Surface 触控笔倾斜感知，Surface Dial1 屏上交互，具有零重力铰链',
    -- 外部显示支持
    '可支持两个 4K UHD (@30Hz) 或单个 4K UHD (@60Hz)',
    -- 内存
    '16GB 或 32GB（DDR4）',
    -- 显卡
    'NVIDIA GeForce GTX 1060 6GB GDDR5 显存;NVIDIA GeForce GTX 1070 8GB GDDR5 显存',
    -- 处理器
    '英特尔酷睿 i7-7820HQ 处理器',
    -- 连接和扩展
    '4 个 USB 3.0（一个高功率端口）;全尺寸 SD 读卡器（兼容 SDXC）;1 个 USB-C ;3.5 mm 耳机插孔;支持 Surface Dial1 屏上交互;1 个千兆位以太网端口',
    -- 安全性
    '可信赖平台模块（TPM）2.0 提供企业级安全性;通过 Windows Hello 面部识别登录实现企业级防护',
    -- 摄像头、视频 和音频
    'Windows Hello 面部识别摄像头（前置）;支持 1080p 高清视频的 500 万像素前置摄像头;双麦克风;支持 Dolby Audio Premium 的立体声 2.1 扬声器',
    -- 软件
    'Windows 10 家庭版;Office 家庭和学生版 2019',
    -- 无线
    'Wi-Fi：802.11ac Wi-Fi 无线网络，兼容 IEEE 802.11 a/b/g/n;蓝牙：蓝牙 4.0 无线技术;内置 Xbox 无线技术',
    -- 按键
    '实体按键：音量键和电源键',
    -- 包装清单
    'Surface Studio 2，Surface 触控笔，Surface 键盘，Surface 鼠标，带束线的电源线，快速入门指南，安全及担保指南',
    -- 保修
    '主机 2 年有限硬件保修',
    -- 图片
    'surface_studio2_1.png',
    'surface_studio2_2.png',
    'surface_studio2_3.png',
    'surface_studio2_4.png',
    'surface_studio2_5.png',
),
