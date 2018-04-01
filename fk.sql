set names utf8;
drop database if exists fk;
create database fk CHARSET=UTF8;
use fk;

#用户表fk_user
create table fk_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,#用户的ID，为用户的唯一标识，由系统自动生成
  	uname VARCHAR(32)NOT NULL,#登录名称
  	upwd VARCHAR(32)NOT NULL ,#登录密码
  	gender INT #性别  0-女  1-男	
);
INSERT INTO fk_user (uid,uname,upwd,gender) VALUES
(NULL,'15927043758',md5('123456'),'1'),
(NULL,'15927043757',md5('123456'),'1'),
(NULL,'15927043756',md5('123456'),'1'),
(NULL,'15927043755',md5('123456'),'0');

#用户地址表fk_address
#create table fk_address(
	#aid INT PRIMARY KEY AUTO_INCREMENT,
	#uid INT, #用户编号
	#receiver VARCHAR(16),#接收人姓名
	#province VARCHAR(16),#省
	#city VARCHAR(16),#市
	#county VARCHAR(16),#县
	#address VARCHAR(128),#详细地址
	#cellphone VARCHAR(16),#手机
	#postcode CHAR(6),#邮编
	#tag VARCHAR(16),#标签名
#);

#首页index.html
#轮播表
CREATE TABLE fk_lunbo(
  lunbo_id INT PRIMARY KEY AUTO_INCREMENT,
  lunbo_img VARCHAR(128),#图片路径
  lunbo_href VARCHAR(128),#图片链接
  lunbo_alt VARCHAR(128) #图片描述
); 
INSERT INTO fk_lunbo VALUES
(NULL, 'img/main/dysj.jpg', ' ', 'banner1'),
(NULL, 'img/main/dzsj.jpg', ' ', 'banner2'),
(NULL, 'img/main/sj0103.jpg', ' ', 'banner3'),
(NULL, 'img/main/sjwt.jpg', ' ', 'banner4'),
(NULL, 'img/main/sjys.jpg', ' ', 'banner5');

#秒杀表
CREATE TABLE fk_miaosha(
  miaosha_id int(11) PRIMARY KEY AUTO_INCREMENT,
  miaosha_avatar varchar(128),
  miaosha_title varchar(128),
  miaosha_yprice int(11),
  miaosha_tprice int(11),
  miaosha_bargin int(11),
  miaosha_href varchar(128)
);
INSERT INTO fk_miaosha VALUES
(NULL, './img/main/6375246-1j201709151927542693.jpg', '凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑色', 998, 578, 289, ' '),
(NULL, './img/main/6375077-1j201711031613492136.jpg', '凡客羽绒服 轻暖95绒 连帽 男款 丛林绿', 798, 378, 189, ' '),
(NULL, './img/main/6378478-1j201710271746044808.jpg', '凡客卫衣 暖绒连帽 熊本熊 S1 黑色', 298, 138, 69, ' '),
(NULL, './img/main/6375327-1j201710131712238133.jpg', '凡客衬衫 吉国武 免烫 温莎领 2.0 灰色细条纹', 348, 258, 129, ' '),
(NULL, './img/main/6375364-1j201611031558438688.jpg', '牛津纺 拼接 男款 藏青色 休闲裤', 298, 138, 69, ' ');

#T恤
CREATE TABLE fk_txu (
  Txu_id int(11) PRIMARY KEY AUTO_INCREMENT,
  Txu_avatar varchar(128),
  Txu_href varchar(128),
  Txu_alt varchar(128)
);
INSERT INTO fk_txu VALUES
(NULL, './img/main/syvt_07.jpg', ' ', 'T恤达利1'),
(NULL, './img/main/0112_03.jpg', ' ', 'T恤达利2'),
(NULL, './img/main/0112_13.jpg', ' ', 'T恤达利3');

#外套
CREATE TABLE fk_waitao (
 waitao_id int(11) PRIMARY KEY AUTO_INCREMENT,
  waitao_avatar varchar(128),
  waitao_href varchar(128),
  waitao_alt varchar(128)
);
INSERT INTO fk_waitao VALUES
(NULL, './img/main/wtys_05.jpg', ' ', '外套达利1'),
(NULL, './img/main/wt_13.jpg', ' ', '外套达利2'),
(NULL, './img/main/wtys_07.jpg', ' ', '外套达利3');

#新年上新
CREATE TABLE fk_newyear (
  newyear_id int(11) PRIMARY KEY AUTO_INCREMENT,
  newyear_avatar varchar(128) DEFAULT NULL,
  newyear_href varchar(128) DEFAULT NULL,
  newyear_alt varchar(128) DEFAULT NULL
);
INSERT INTO fk_newyear VALUES
(NULL, 'img/main/0109sy_12.jpg', ' ', '大衣外套专区'),
(NULL, 'img/main/0109sy_14.jpg', ' ', '羽绒服专区'),
(NULL, 'img/main/0109sy_08.jpg', ' ', '卫衣专区'),
(NULL, 'img/main/0109sy_10.jpg', ' ', '针织衫'),
(NULL, 'img/main/0109sy_22.jpg', ' ', '衬衫专区'),
(NULL, 'img/main/0109sy_24.jpg', ' ', 'T恤专区'),
(NULL, 'img/main/0109sy_26.jpg', ' ', '裤装专区'),
(NULL, 'img/main/0109sy_28.jpg', ' ', '鞋品专区'),
(NULL, 'img/main/0109sy_36.jpg', ' ', '内衣袜品配饰专区'),
(NULL, 'img/main/0109sy_38.jpg', ' ', '家居箱包专区'),
(NULL, 'img/main/sdwaitao_08.jpg', ' ', '宇航刺绣 厚棉 C9'),
(NULL, 'img/main/dywt_04.jpg', ' ', 'B10飞行夹克 拆卸毛领 厚棉'),
(NULL, 'img/main/wtxp_06.jpg', ' ', '棉夹克 意式立领 收纳帽'),
(NULL, 'img/main/wtg_16.jpg', ' ', 'peacoat海军款 毛呢大衣 C9'),
(NULL, 'img/main/wyg_06.jpg', ' ', '衣服'),
(NULL, 'img/main/wyg_12g.jpg', ' ', '衣服'),
(NULL, 'img/main/wyg_14.jpg', ' ', '衣服'),
(NULL, 'img/main/yrf.jpg', ' ', '衣服'),
(NULL, 'img/main/wtxp_02.jpg', ' ', '衣服'),
(NULL, 'img/main/weiyi_16.jpg', ' ', '衣服'),
(NULL, 'img/main/wyg_06.jpg', ' ', '衣服'),
(NULL, 'img/main/wy_02.jpg', ' ', '衣服'),
(NULL, 'img/main/yrf_06.jpg', ' ', '衣服'),
(NULL, 'img/main/yrf_08.jpg', ' ', '衣服'),
(NULL, 'img/main/yrf_10.jpg', ' ', '衣服'),
(NULL, 'img/main/yrfjj_02.jpg', ' ', '衣服'),
(NULL, 'img/main/wy_10.jpg', ' ', '衣服'),
(NULL, 'img/main/yrf_16.jpg', ' ', '衣服'),
(NULL, 'img/main/yurfu_12.jpg', ' ', '衣服'),
(NULL, 'img/main/yrfjj_02.jpg', ' ', '衣服'),
(NULL, 'img/main/sdwaitao_08.jpg', ' ', '宇航刺绣 厚棉 C9'),
(NULL, 'img/main/dywt_04.jpg', ' ', 'B10飞行夹克 拆卸毛领 厚棉'),
(NULL, 'img/main/yurfu_12.jpg', ' ', '棉夹克 意式立领 收纳帽'),
(NULL, 'img/main/wtg_16.jpg', ' ', 'peacoat海军款 毛呢大衣 C9'),
(NULL, 'img/main/zhishan.jpg', ' ', '针织衫'),
(NULL, 'img/main/zzs_16.jpg', ' ', '针织衫'),
(NULL, 'img/main/zzs_06.jpg', ' ', '针织衫'),
(NULL, 'img/main/zzs_08.jpg', ' ', '针织衫'),
(NULL, 'img/main/0110syjj_24.jpg', '', '衬衫'),
(NULL, 'img/main/csg_20.jpg', ' ', '衬衫'),
(NULL, 'img/main/0109sy_22.jpg', ' ', '衬衫'),
(NULL, 'img/main/mssdxzt_22.jpg', ' ', '衬衫'),
(NULL, 'img/main/cs_26.jpg', ' ', '衬衫'),
(NULL, 'img/main/csg_30.jpg', ' ', '衬衫'),
(NULL, 'img/main/csxg_32.jpg', ' ', '衬衫'),
(NULL, 'img/main/0110syjj_28.jpg', ' ', '衬衫'),
(NULL, 'img/main/msd_02.jpg', '', 'T恤'),
(NULL, 'img/main/mssdxzt_04.jpg', '', '水柔棉'),
(NULL, 'img/main/msd_06.jpg', ' ', 'T恤 水柔棉'),
(NULL, 'img/main/wtg_16.jpg', ' ', '水柔棉长袖'),
(NULL, 'img/main/vt_10.jpg', ' ', 'T恤 熊本熊T7'),
(NULL, 'img/main/txugai_12.jpg', ' ', '复刻'),
(NULL, 'img/main/vtg_14.jpg', ' ', '长袖T恤'),
(NULL, 'img/main/mssdxzt_16.jpg', ' ', '长袖圆领'),
(NULL, 'img/main/msd_50.jpg', ' ', '牛仔裤'),
(NULL, 'img/main/msd_52.jpg', ' ', '复古直筒'),
(NULL, 'img/main/msd_56.jpg', ' ', '轻弹水洗'),
(NULL, 'img/main/mssdxzt_54.jpg', ' ', '打底裤'),
(NULL, 'img/main/zzkxg_58.jpg', ' ', '牛仔裤'),
(NULL, 'img/main/mssdxzt_60.jpg', ' ', '轻弹水洗'),
(NULL, 'img/main/zzkxg_62.jpg', ' ', '针织裤 窄裤'),
(NULL, 'img/main/mssdxzt_64.jpg', ' ', '针织裤 窄脚'),
(NULL, 'img/main/xie_02.jpg', ' ', '帆布鞋'),
(NULL, 'img/main/xsy_04.jpg', ' ', '休闲鞋'),
(NULL, 'img/main/xie_06.jpg', ' ', '系带3'),
(NULL, 'img/main/xiegai_08.jpg', ' ', '帆布2'),
(NULL, 'img/main/sdwaitao_08.jpg', ' ', '运动鞋 复古跑 3'),
(NULL, 'img/main/xier_16.jpg', ' ', '运动鞋 复古跑 1'),
(NULL, 'img/main/xsy_14.jpg', ' ', '运动鞋 复古跑 4'),
(NULL, 'img/main/xsy_12.jpg', ' ', '运动鞋 复古跑 2'),
(NULL, 'img/main/xsy_10.jpg', ' ', '宇航刺绣 厚棉 C9'),
(NULL, 'img/main/dywt_04.jpg', ' ', 'B10飞行夹克 拆卸毛领 厚棉'),
(NULL, 'img/main/wtxp_06.jpg', ' ', '棉夹克 意式立领 收纳帽'),
(NULL, 'img/main/wtg_16.jpg', ' ', 'peacoat海军款 毛呢大衣 C9'),
(NULL, 'img/main/mssdxzt_66.jpg', ' ', '吊带衫 女款'),
(NULL, 'img/main/mssdxzt_68.jpg', ' ', '精梳棉'),
(NULL, 'img/main/mssdxzt_70.jpg', ' ', '卡通狗'),
(NULL, 'img/main/nywp_72.jpg', ' ', '中筒袜'),
(NULL, 'img/main/mssdxzt_73.jpg', ' ', '内裤'),
(NULL, 'img/main/mssdxzt_75.jpg', ' ', '不倒绒连裤袜'),
(NULL, 'img/main/mssdxzt_77.jpg', ' ', '羊毛加厚大披肩'),
(NULL, 'img/main/nywp_79.jpg', ' ', '秋冬保暖披肩'),
(NULL, 'img/main/mssdxzt_68.jpg', ' ', '法国亚麻四件套'),
(NULL, 'img/main/mssdxzt_36.jpg', ' ', '抗静电珊瑚绒毯 单人款'),
(NULL, 'img/main/mssdxzt_38.jpg', ' ', '羽绒枕'),
(NULL, 'img/main/jiaju4_40.jpg', ' ', '羽绒被'),
(NULL, 'img/main/mssdxzt_42.jpg', ' ', '全包长毛珊瑚绒款'),
(NULL, 'img/main/mssdxzt_44.jpg', ' ', '全包珊瑚绒款'),
(NULL, 'img/main/mssdxzt_46.jpg', ' ', '短钱包 头层牛皮'),
(NULL, 'img/main/bb_48.jpg', ' ', '简约ABS拉杆箱 24寸');


#外套页面waitao.html
#轮播表
CREATE TABLE fk_wt_lunbo(
  wt_lunbo_id INT PRIMARY KEY AUTO_INCREMENT,
  wt_lunbo_img VARCHAR(128),#图片路径
  wt_lunbo_href VARCHAR(128),#图片链接
  wt_lunbo_alt VARCHAR(128) #图片描述
);
INSERT INTO fk_wt_lunbo VALUES
(NULL, 'img/waitao/wttt1.jpg', ' ', 'banner1'),
(NULL, 'img/waitao/1200-576.jpg', ' ', 'banner2');

#p表
CREATE TABLE fk_wt_p(
    wt_p_id INT PRIMARY KEY AUTO_INCREMENT,
    wt_p_img VARCHAR(128),#图片路径
    wt_p_href VARCHAR(128),#图片链接
    wt_p_alt VARCHAR(128) #图片描述
);
INSERT INTO fk_wt_p VALUES
(NULL, 'img/waitao/1.jpg', '3_productlist.html?pic_id=1', '羽绒服 智能温控 鹅绒增强2.0'),
(NULL, 'img/waitao/333.jpg', ' ', '羽绒服 加厚鹅绒 棒球服'),
(NULL, 'img/waitao/3.jpg', ' ', 'B10飞行夹克 拆卸毛领 厚棉C9'),
(NULL, 'img/waitao/pc-380-708--.jpg', ' ', '机师夹克 中棉C9'),
(NULL, 'img/waitao/5.jpg', ' ', 'cpo毛呢夹克 宽松版c9'),
(NULL, 'img/waitao/6.jpg', ' ', '法兰绒 衬衫夹克 重磅c9'),
(NULL, 'img/waitao/7.jpg', ' ', 'MA1 飞行夹克 双面穿 薄棉'),
(NULL, 'img/waitao/1111.jpg', ' ', 'MA1飞行夹克 厚棉 刺绣 c9'),
(NULL, 'img/waitao/9.jpg', ' ', '卫衣 中控棉拉链开衫 男款');

#羽绒服表----超清
CREATE TABLE fk_chaoqing(
    cq_id INT PRIMARY KEY AUTO_INCREMENT,
    cq_img VARCHAR(128),#图片路径
    cq_bargin int,#特惠价格
    cq_href VARCHAR(128),#图片链接
    cq_title VARCHAR(128), #图片描述
    cq_price int #原价
);
INSERT INTO fk_chaoqing VALUES
(NULL,'img/waitao/6375246-1j201709151927542693.jpg',398,' ','凡客羽绒服 轻暖95绒 立领 男款 深藏蓝 ',798),
(NULL,'img/waitao/6375430-1j201710131712250946.jpg',398,' ','凡客羽绒服 轻暖95绒 立领 男款 丛林绿 ',798),
(NULL,'img/waitao/6375250-1j201710131712250946.jpg',398,' ','凡客羽绒服 轻暖95绒 连帽 男款 丛林绿 ',798),
(NULL,'img/waitao/6373572-1j201510131048139896.jpg',338,' ','凡客羽绒服 轻暖95绒 连帽 男款 湖蓝色 ',598);

#羽绒服表-----加厚
CREATE TABLE fk_jiahou(
    jh_id INT PRIMARY KEY AUTO_INCREMENT,
    jh_img VARCHAR(128),#图片路径
    jh_bargin int,#特惠价格
    jh_href VARCHAR(128),#图片链接
    jh_title VARCHAR(128), #图片描述
    jh_price int #原价
);
INSERT INTO fk_jiahou VALUES
(NULL,'img/waitao/6378504-1j201712191725245685.jpg',898,' ','凡客羽绒服 智能温控 鹅绒增强2.0版 男 ',1998),
(NULL,'img/waitao/6378503-1j201712191725245685.jpg',898,' ','凡客羽绒服 智能温控 鹅绒增强2.0版 男',1998),
(NULL,'img/waitao/6378502-1j201712191725245685.jpg',898,' ','凡客羽绒服 智能温控 鹅绒增强2.0版 男 ',1998),
(NULL,'img/waitao/6378501-1j201801031254368841.jpg',498,' ','凡客羽绒服 加厚鹅绒 棒球服 黑色/藏蓝色 ',998),
(NULL,'img/waitao/6378500-1j201801031254368841.jpg',498,' ','凡客羽绒服 加厚鹅绒 棒球服 酒红色/米白色 ',998),
(NULL,'img/waitao/6378499-1j201801031254367279.jpg',498,' ','凡客羽绒服 加厚鹅绒 棒球服 藏蓝色/米白色 ',998),
(NULL,'img/waitao/6375432-1j201710131712231727.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6375430-1j201710131712250946.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6375246-1j201709151927542693.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6375244-1j201710181702562128.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998);

#夹克
CREATE TABLE fk_jiake(
    jk_id INT PRIMARY KEY AUTO_INCREMENT,
    jk_img VARCHAR(128),#图片路径
    jk_bargin int,#特惠价格
    jk_href VARCHAR(128),#图片链接
    jk_title VARCHAR(128), #图片描述
    jk_price int #原价
);
INSERT INTO fk_jiake VALUES
(NULL,'img/waitao/6379613-1j201801091030506912.jpg',498,' ','夹克 字母刺绣 工装袋 黑色 ',698),
(NULL,'img/waitao/6379614-1j201801091031110679.jpg',498,' ','夹克 字母刺绣 工装袋 白色',698),
(NULL,'img/waitao/6379617-1j201801091033557048.jpg',598,' ','扇形夹克 拼接帽 白色 ',798),
(NULL,'img/waitao/6379618-1j201801091034160812.jpg',598,' ','连帽夹克 贴兜 黑色 ',698),
(NULL,'img/waitao/6379619-1j201801091035060849.jpg',498,' ','连帽夹克 贴兜 黑色 绿色 ',598),
(NULL,'img/waitao/6379621-1j201801091036107931.jpg',498,' ','夹克 撞色拼接帽 绿色 ',598),
(NULL,'img/waitao/6378000-1j201710121408227197.jpg',298,' ','B10飞行夹克 拆卸毛领 厚棉 C9 军绿色 ',498),
(NULL,'img/waitao/6378867-1j201711031614008077.jpg',398,' ','B10飞行夹克 拆卸毛领 厚棉 C9 迷彩 ',528),
(NULL,'img/waitao/6378866-1j201711031613586670.jpg',398,' ','棒球夹克 宇航刺绣 厚棉 C9 军绿色 ',528),
(NULL,'img/waitao/6378865-1j201711031614016983.jpg',398,' ','棒球夹克 宇航刺绣 厚棉 C9 黑色 ',528),
(NULL,'img/waitao/6378288-1j201711031613492136.jpg',438,' ','cpo毛呢夹克 宽松版 c9绿色',898),
(NULL,'img/waitao/6378001-1j201710121408227822.jpg',298,' ','B10飞行夹克 拆卸毛领 厚棉 C9 迷彩 ',498),
(NULL,'img/waitao/6377999-1j201710121408227822.jpg',298,' ','B10飞行夹克 拆卸毛领 厚棉 C9 黑色 ',498),
(NULL,'img/waitao/6378031-1j201710121408227822.jpg',358,' ','机师夹克 中棉 C9 男款 军绿色 ',598),
(NULL,'img/waitao/6378042-1j201710101924050446.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6378041-1j201710101924050134.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6378040-1j201710101924047165.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6378039-1j201710101924047165.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6378038-1j201710171656254735.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6377995-1j201709181639233235.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6377992-1j201710181702562128.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6377994-1j201709181639231203.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6377955-1j201709181637082123.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6377954-1j201709181637084154.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6377952-1j201709181637083060.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6377950-1j201709181637233065.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6377949-1j201709181637333223.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6377948-1j201709281515475807.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6377947-1j201709181637333848.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6374109-1j201709191136144818.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6375413-1j201709190939313222.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6375181-1j201709190939209314.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6375172-1j201709151925339255.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6375169-1j201709151925342692.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6374107-1j201709191136144818.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6374346-1j201709191136144818.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998);


#开衫卫衣
CREATE TABLE fk_kswy(
    kswy_id INT PRIMARY KEY AUTO_INCREMENT,
    kswy_img VARCHAR(128),#图片路径
    kswy_bargin int,#特惠价格
    kswy_href VARCHAR(128),#图片链接
    kswy_title VARCHAR(128), #图片描述
    kswy_price int #原价
);
INSERT INTO fk_kswy VALUES
(NULL,'img/waitao/6378978-1j201712201102291019.jpg',798,' ','凡客羽绒服 智能温控 鹅绒增强2.0版 男 ',1998),
(NULL,'img/waitao/6378977-1j201712201102289769.jpg',798,' ','凡客羽绒服 智能温控 鹅绒增强2.0版 男',1998),
(NULL,'img/waitao/6378481-1j201711141516155669.jpg',798,' ','凡客羽绒服 智能温控 鹅绒增强2.0版 男 ',1998),
(NULL,'img/waitao/6378478-1j201710271746044808.jpg',498,' ','凡客羽绒服 加厚鹅绒 棒球服 黑色/藏蓝色 ',998),
(NULL,'img/waitao/6378631-1j201801111410119579.jpg',498,' ','凡客羽绒服 加厚鹅绒 棒球服 酒红色/米白色 ',998),
(NULL,'img/waitao/6378647-1j201801111410119579.jpg',498,' ','凡客羽绒服 加厚鹅绒 棒球服 藏蓝色/米白色 ',998),
(NULL,'img/waitao/6378655-1j201801111410119579.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6378857-1j201801111410069109.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6378858-1j201801111410068952.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6378697-1j201801111410069109.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6378477-1j201710171547246728.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6378476-1j201710171547246572.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6378475-1j201710171547247353.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6378474-1j201710171547246572.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6378889-1j201710171547246728.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6378888-1j201710171547246572.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6378887-1j201710171547247353.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6378886-1j201710171547246572.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6378368-1j201801111409218163.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6378366-1j201801111409218163.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6378365-1j201801111409218163.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6378362-1j201801111409218163.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6378360-1j201801111409218163.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6378359-1j201801111409218163.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6377952-1j201709181637083060.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6378350-1j201801111409218163.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6378347-1j201801111409218163.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6378345-1j201801111409218163.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6378344-1j201801111409218163.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6378342-1j201801111409218163.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6378338-1j201801111409218163.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6378336-1j201801111409218163.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6378388-1j201801111409218163.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6378412-1j201801111409218163.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6378415-1j201801111409218163.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6378447-1j201801111410119579.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6378413-1j201801111409218163.jpg',798,' ','凡客羽绒服 智能温控 鹅绒增强2.0版 男 ',1998),
(NULL,'img/waitao/6378410-1j201801111409218163.jpg',798,' ','凡客羽绒服 智能温控 鹅绒增强2.0版 男',1998),
(NULL,'img/waitao/6378386-1j201801111409218163.jpg',798,' ','凡客羽绒服 智能温控 鹅绒增强2.0版 男 ',1998),
(NULL,'img/waitao/6378479-1j201709281544527436.jpg',498,' ','凡客羽绒服 加厚鹅绒 棒球服 黑色/藏蓝色 ',998),
(NULL,'img/waitao/6378394-1j201801111409218163.jpg',498,' ','凡客羽绒服 加厚鹅绒 棒球服 酒红色/米白色 ',998),
(NULL,'img/waitao/6378392-1j201801111409218163.jpg',498,' ','凡客羽绒服 加厚鹅绒 棒球服 藏蓝色/米白色 ',998),
(NULL,'img/waitao/6378403-1j201801111409218163.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6378401-1j201801111409218163.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6378357-1j201801111409218163.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6378354-1j201801111409218163.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6378356-1j201801111409218163.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6378353-1j201801111409218163.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6378339-1j201801111409218163.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6378341-1j201801111409218163.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6375710-1j201710171656098481.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6375709-1j201710171656210828.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6375711-1j201710171656099731.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6375420-1j201709190939310097.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6375415-1j201709190939316816.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6375345-1j201710171656098481.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6375344-1j201710181702562128.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6375418-1j201710171656098481.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6375417-1j201710171656098481.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6375414-1j201709190939314784.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6375413-1j201709190939313222.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6375340-1j201709190939310097.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6375183-1j201709190939316816.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6375182-1j201709190939204939.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6375181-1j201709190939209314.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6375338-1j201709190939314784.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6375337-1j201709190939313222.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/3089122-1j201409160855050908.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998),
(NULL,'img/waitao/6374106-1j201709191136144818.jpg',598,' ','凡客羽绒服 智能温控 连帽 男款 丛林绿 ',1298),
(NULL,'img/waitao/6374105-1j201709191136144818.jpg',798,' ','凡客羽绒服 智能温控 连帽 男款 黑色 ',1998),
(NULL,'img/waitao/6374107-1j201709191136144818.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 ',998),
(NULL,'img/waitao/6374346-1j201709191136144818.jpg',598,' ','凡客羽绒服 针织拼接袖 鹅绒 连帽 男款 黑 ',998);


#西服
CREATE TABLE fk_xifu(
    xifu_id INT PRIMARY KEY AUTO_INCREMENT,
    xifu_img VARCHAR(128),#图片路径
    xifu_bargin int,#特惠价格
    xifu_href VARCHAR(128),#图片链接
    xifu_title VARCHAR(128), #图片描述
    xifu_price int #原价
);
INSERT INTO fk_xifu VALUES
(NULL,'img/waitao/6375437-1j201709151926140190.jpg',398,' ','凡客羽绒服 轻暖95绒 立领 男款 深藏蓝 ',798),
(NULL,'img/waitao/6373826-1j201709151927141133.jpg',398,' ','凡客羽绒服 轻暖95绒 立领 男款 丛林绿 ',798),
(NULL,'img/waitao/6373824-1j201709151927089726.jpg',398,' ','凡客羽绒服 轻暖95绒 连帽 男款 丛林绿 ',798);

#羊毛大衣
CREATE TABLE fk_ymdy(
    ymdy_id INT PRIMARY KEY AUTO_INCREMENT,
    ymdy_img VARCHAR(128),#图片路径
    ymdy_bargin int,#特惠价格
    ymdy_href VARCHAR(128),#图片链接
    ymdy_title VARCHAR(128), #图片描述
    ymdy_price int #原价
);
INSERT INTO fk_ymdy VALUES
(NULL,'img/waitao/6378855-1j201711031614008077.jpg',398,' ','凡客羽绒服 轻暖95绒 立领 男款 深藏蓝 ',798),
(NULL,'img/waitao/6378285-1j201711031613492136.jpg',398,' ','凡客羽绒服 轻暖95绒 立领 男款 丛林绿 ',798),
(NULL,'img/waitao/6375452-1j201710130915286469.jpg',398,' ','凡客羽绒服 轻暖95绒 连帽 男款 丛林绿 ',798);


#皮肤衣
CREATE TABLE fk_pfy(
    pfy_id INT PRIMARY KEY AUTO_INCREMENT,
    pfy_img VARCHAR(128),#图片路径
    pfy_bargin int,#特惠价格
    pfy_href VARCHAR(128),#图片链接
    pfy_title VARCHAR(128), #图片描述
    pfy_price int #原价
);
INSERT INTO fk_pfy VALUES
(NULL,'img/waitao/6374174-1j201709190956343857.jpg',398,' ','凡客羽绒服 轻暖95绒 立领 男款 深藏蓝 ',798),
(NULL,'img/waitao/6373864-1j201709191136144818.jpg',398,' ','凡客羽绒服 轻暖95绒 立领 男款 深藏蓝 ',798),
(NULL,'img/waitao/6373862-1j201709191136144818.jpg',398,' ','凡客羽绒服 轻暖95绒 立领 男款 丛林绿 ',798),
(NULL,'img/waitao/6373861-1j201709191136144818.jpg',398,' ','凡客羽绒服 轻暖95绒 连帽 男款 丛林绿 ',798),
(NULL,'img/waitao/6373857-1j201709191136144818.jpg',398,' ','凡客羽绒服 轻暖95绒 立领 男款 深藏蓝 ',798),
(NULL,'img/waitao/6373863-1j201709191136144818.jpg',398,' ','凡客羽绒服 轻暖95绒 立领 男款 丛林绿 ',798),
(NULL,'img/waitao/6373860-1j201709191136144818.jpg',398,' ','凡客羽绒服 轻暖95绒 连帽 男款 丛林绿 ',798);



#产品详细表
CREATE TABLE fk_yr_details(
    yr_id INT PRIMARY KEY AUTO_INCREMENT,
    yr_img VARCHAR(128)#图片路径
);
INSERT INTO fk_yr_details VALUES
(NULL,'img/product/6378503_02.jpg'),
(NULL,'img/product/6378503_03.jpg'),
(NULL,'img/product/6378503_04.jpg'),
(NULL,'img/product/6378503_05.jpg'),
(NULL,'img/product/6378503_06.jpg'),
(NULL,'img/product/6378503_07.jpg'),
(NULL,'img/product/pc-wenkong.jpg'),
(NULL,'img/product/pc-ios.jpg'),
(NULL,'img/product/pc-and.jpg'),
(NULL,'img/product/6378503_10.jpg'),
(NULL,'img/product/6378503_11.jpg'),
(NULL,'img/product/6378504.jpg'),
(NULL,'img/product/6378503_13.jpg'),
(NULL,'img/product/6378503_14.jpg'),
(NULL,'img/product/6378503_15.jpg'),
(NULL,'img/product/6378503_16.jpg'),
(NULL,'img/product/6378503_17.jpg'),
(NULL,'img/product/6378503_18.jpg'),
(NULL,'img/product/6378503_19.jpg'),
(NULL,'img/product/6378503_21.jpg'),
(NULL,'img/product/6378503_22.jpg');


CREATE TABLE fk_spec(
    spec_id INT PRIMARY KEY AUTO_INCREMENT,
    spec_bargin DECIMAL(7,2),#特惠价
    spec_xsImg VARCHAR(128),#图片路径
    spec_sizeS VARCHAR(5),#s
    spec_sizeM VARCHAR(5),#M
    spec_sizel VARCHAR(5),#L
    spec_sizeXL VARCHAR(5),#XL
    spec_sizeXXL VARCHAR(5),#XXL
    spec_slected varchar(5)
);

INSERT INTO fk_spec VALUES
(NULL,898.00,'img/product/saml2.jpg','S','M','L','XL','XXL',"红色"),
(NULL,898.00,'img/product/small3.jpg','S','M','L','XL','XXL',"蓝色"),
(NULL,898.00,'img/product/sma1.jpg','S','M','L','XL','XXL',"黑色");

CREATE TABLE fk_pic(
    pic_id INT PRIMARY KEY AUTO_INCREMENT,
    fk_spec_id INT,
    foreign key(fk_spec_id) references fk_spec(spec_id),
    pic_sImg VARCHAR(128),#图片路径
    pic_mImg VARCHAR(128),#图片路径
    pic_bImg VARCHAR(128)#图片路径
);
INSERT INTO fk_pic VALUES
(null,'1',"img/product/11.jpg","img/product/1.jpg","img/product/1111.jpg"),
(null,'1',"img/product/22.jpg","img/product/222.jpg","img/product/3333.jpg"),
(null,'1',"img/product/33.jpg","img/product/333.jpg","img/product/2222.jpg"),
(null,'2',"img/product/n1.jpg","img/product/n11.jpg","img/product/n111.jpg"),
(null,'2',"img/product/n2.jpg","img/product/n22.jpg","img/product/n222.jpg"),
(null,'2',"img/product/n3.jpg","img/product/n33.jpg","img/product/n333.jpg"),
(null,'3',"img/product/h1.jpg","img/product/h11.jpg","img/product/h111.jpg"),
(null,'3',"img/product/h2.jpg","img/product/h22.jpg","img/product/h222.jpg"),
(null,'3',"img/product/h3.jpg","img/product/h33.jpg","img/product/h333.jpg"),
(null,'3',"img/product/h4.jpg","img/product/h44.jpg","img/product/h444.jpg"),
(null,'3',"img/product/h5.jpg","img/product/h55.jpg","img/product/h555.jpg"),
(null,'3',"img/product/h6.jpg","img/product/h66.jpg","img/product/h666.jpg");




CREATE TABLE fk_cart_item(
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_spec_id INT,
    foreign key(item_spec_id) references fk_spec(spec_id),
    item_user_id INT,
    foreign key(item_user_id) references fk_user(uid),
    count INT,
    is_checked INT,
    item_size varchar(21)
);
INSERT INTO fk_cart_item VALUES
(NULL,1,1,1,1,'M'),
(NULL,1,1,1,1,'L'),
(NULL,2,1,2,1,'L'),
(NULL,3,1,2,0,'L'),
(NULL,1,2,2,0,'M'),
(NULL,2,2,1,0,'L');


#推荐商品
CREATE TABLE fk_recom(
    recom_id INT PRIMARY KEY AUTO_INCREMENT,
    recom_img VARCHAR(128),
    recom_title VARCHAR(128),
    recom_price int
);
INSERT INTO fk_recom VALUES
(NULL,'img/product/6377992-1j201710181702562128.jpg','MA1飞行夹克 双面穿 薄棉 C9 军绿色',238),
(NULL,'img/product/6378339-1j201801111409218163.jpg','凡客卫衣 圆领 熊本熊 S2 浅花灰',198),
(NULL,'img/product/6373511-1j201709151927040194.jpg','凡客衬衫 牛津纺 男款 天蓝色',188),
(NULL,'img/product/6375871-1j201704241653590875.jpg','凡客运动鞋 复古跑 猪巴革 1 男款 灰绿色',428),
(NULL,'img/product/6364213-1j201602031645295558.jpg','凡客帆布鞋 女款 黑色',198);

#评论表
CREATE TABLE fk_speak(
    speak_id INT PRIMARY KEY AUTO_INCREMENT,
    recom_p VARCHAR(128),#评论的话
    recom_date VARCHAR(64),#评论的事件
    recom_color VARCHAR(32),#颜色
    recom_size VARCHAR(32),#尺码
    recom_tall VARCHAR(32),#身高
    recom_weight VARCHAR(32),#体重
    recom_good VARCHAR(32),#是否合适
    recom_huiyuan VARCHAR(32),#会员
    recom_user VARCHAR(32)#会员
);
INSERT INTO fk_speak VALUES
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球"),
(NULL,'保暖效果很好，加热也好使，全5星好评，不错不错不错','2018-03-10','海神蓝','L','0cm','0.0kg','<尺码合适 >','普通会员',"孤单北半球");



