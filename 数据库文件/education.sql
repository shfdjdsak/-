/*
Navicat MySQL Data Transfer

Source Server         : liuxue2
Source Server Version : 80033
Source Host           : localhost:3306
Source Database       : education

Target Server Type    : MYSQL
Target Server Version : 80033
File Encoding         : 65001

Date: 2023-07-12 18:08:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adminName` varchar(255) DEFAULT NULL,
  `adminPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '刘学', '123');

-- ----------------------------
-- Table structure for ammucation
-- ----------------------------
DROP TABLE IF EXISTS `ammucation`;
CREATE TABLE `ammucation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `troduction` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `poll` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of ammucation
-- ----------------------------
INSERT INTO `ammucation` VALUES ('1', '长沙市阳光幼儿园---刘晨', '251');
INSERT INTO `ammucation` VALUES ('2', '长沙市智慧幼儿园--刘学', '547');
INSERT INTO `ammucation` VALUES ('3', '邵阳市新华小学--乔子嫣', '656');
INSERT INTO `ammucation` VALUES ('4', '邵东水井头幼儿园--姜品', '352');
INSERT INTO `ammucation` VALUES ('5', '衡阳市智进幼儿园--李晶', '423');
INSERT INTO `ammucation` VALUES ('6', '邵阳市日出幼儿园--罗美华', '326');
INSERT INTO `ammucation` VALUES ('7', '长沙市东方幼儿园--敬明', '655');
INSERT INTO `ammucation` VALUES ('8', '浏阳市日出幼儿园--谭扬眉', '854');
INSERT INTO `ammucation` VALUES ('9', '长沙望城第一幼儿园--肖雪', '643');

-- ----------------------------
-- Table structure for application
-- ----------------------------
DROP TABLE IF EXISTS `application`;
CREATE TABLE `application` (
  `id` int NOT NULL AUTO_INCREMENT,
  `garden` varchar(255) DEFAULT NULL,
  `garden_troduction` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `job_troduction` varchar(255) DEFAULT NULL,
  `salsry` int DEFAULT NULL,
  `meeting` varchar(255) DEFAULT NULL,
  `job_hot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of application
-- ----------------------------
INSERT INTO `application` VALUES ('1', '邵东晨光幼儿园', '地理位置优越，教学资源雄厚', '副园长', '要求：本科本专业。职责：照顾幼儿', '8800', '1', '1');
INSERT INTO `application` VALUES ('2', '邵东晨光幼儿园', '地理位置优越，教学资源雄厚', '幼师', '要求：本科本专业。职责：照顾儿童，教授知识', '4800', '1', '1');
INSERT INTO `application` VALUES ('3', '邵东晨光幼儿园', '地理位置优越，教学资源雄厚', '出纳', '要求：本科本专业。职责：照顾儿童，教授知识', '3500', '1', '1');
INSERT INTO `application` VALUES ('4', '邵东晨光幼儿园', '地理位置优越，教学资源雄厚', '清洁员', '要求：专科及以上学历。职责：清洁卫生', '3000', '1', '1');
INSERT INTO `application` VALUES ('5', '邵东晨光幼儿园', '地理位置优越，教学资源雄厚', '保管员', '要求：专科及以上学历。职责：保管好儿童物品', '3000', '1', '1');
INSERT INTO `application` VALUES ('6', '长沙新华幼儿园', '长沙市知名幼儿园，广受好评', '幼师', '要求：本科及以上学历。职责：照顾儿童，教授知识', '4800', '1', '1');
INSERT INTO `application` VALUES ('7', '长沙新华幼儿园', '长沙市知名幼儿园，广受好评', '保育员', '要求：本科本专业。职责：做好保育工作', '3300', '1', '1');
INSERT INTO `application` VALUES ('8', '长沙新华幼儿园', '长沙市知名幼儿园，广受好评', '出纳', '要求：本科及以上。职责：管理好财务', '3800', '1', '1');
INSERT INTO `application` VALUES ('9', '长沙新华幼儿园', '长沙市知名幼儿园，广受好评', '食堂人员', '要求：专科及以上学历。职责：守护食品安全', '3200', '1', '1');
INSERT INTO `application` VALUES ('10', '长沙新华幼儿园', '长沙市知名幼儿园，广受好评', '采购员', '要求：无。职责：负责食品采购', '3800', '1', '1');
INSERT INTO `application` VALUES ('11', '长沙硕果幼儿园', '地理位置优越，教资雄厚', '幼师', '要求：本科本专业。职责：照顾儿童，教授知识', '4800', '1', '1');
INSERT INTO `application` VALUES ('12', '长沙硕果幼儿园', '地理位置优越，教资雄厚', '保健医生', '要求：本科及以上学历。职责：做好幼儿保健工作', '3800', '1', '1');
INSERT INTO `application` VALUES ('13', '长沙硕果幼儿园', '地理位置优越，教资雄厚', '出纳', '要求：本科及以上。职责：管理好财务', '4000', '1', '1');
INSERT INTO `application` VALUES ('14', '长沙硕果幼儿园', '地理位置优越，教资雄厚', '采购人员', '要求：无。职责：负责食品采购', '4000', '1', '1');
INSERT INTO `application` VALUES ('15', '长沙硕果幼儿园', '地理位置优越，教资雄厚', '班长', '要求：本科及以上学历。职责：做好管理好班级工作', '4200', '1', '1');
INSERT INTO `application` VALUES ('16', '邵阳优乐幼儿园', '邵阳获奖幼儿园，广受好评', '幼师', '要求：本科本专业。职责：照顾儿童，教授知识', '4800', '1', '1');
INSERT INTO `application` VALUES ('17', '邵阳优乐幼儿园', '邵阳获奖幼儿园，广受好评', '副园长', '要求：研究生以上学历。职责：管理好整个园区', '6200', '1', '1');
INSERT INTO `application` VALUES ('18', '邵阳优乐幼儿园', '邵阳获奖幼儿园，广受好评', '保育员', '要求：本科本专业。职责：做好保育工作', '4000', '1', '1');
INSERT INTO `application` VALUES ('19', '邵阳优乐幼儿园', '邵阳获奖幼儿园，广受好评', '清洁员', '要求：专科及以上学历。职责：清洁卫生', '3800', '1', '1');
INSERT INTO `application` VALUES ('20', '邵阳优乐幼儿园', '邵阳获奖幼儿园，广受好评', '保健医生', '要求：本科及以上学历。职责：做好幼儿保健工作', '4200', '1', '1');
INSERT INTO `application` VALUES ('21', '邵东百慧幼儿园', '师资雄厚，交通便利', '幼师', '要求：本科本专业。职责：照顾儿童，教授知识', '4800', '1', '1');
INSERT INTO `application` VALUES ('22', '邵东百慧幼儿园', '师资雄厚，交通便利', '教师', '要求：本科本专业。职责：照顾儿童，教授知识', '3800', '1', '1');
INSERT INTO `application` VALUES ('23', '邵东百慧幼儿园', '师资雄厚，交通便利', '出纳', '要求：本科及以上。职责：管理好财务', '4000', '1', '1');
INSERT INTO `application` VALUES ('24', '邵东百慧幼儿园', '师资雄厚，交通便利', '食堂人员', '要求：专科及以上学历。职责：守护食品安全', '3800', '1', '1');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '刘学', '幼儿应该注意些什么？3', '说得对');
INSERT INTO `comment` VALUES ('2', '刘学', '孩子的起跑线在哪？1', '说得对');
INSERT INTO `comment` VALUES ('3', '刘学', '孩子的起跑线在哪？1', '说得对');
INSERT INTO `comment` VALUES ('4', '刘学', '孩子的起跑线在哪？1', '说得对');
INSERT INTO `comment` VALUES ('5', '刘学', 'Hello BABY幼儿园', '说得对');
INSERT INTO `comment` VALUES ('6', '刘学', '孩子的起跑线在哪？1', '说得对');
INSERT INTO `comment` VALUES ('7', '刘学', '孩子的起跑线在哪？1', '说得对');
INSERT INTO `comment` VALUES ('8', '刘学', '孩子的起跑线在哪？1', '说得对');
INSERT INTO `comment` VALUES ('9', '刘学', '孩子的起跑线在哪？2', '说的不对');
INSERT INTO `comment` VALUES ('10', '乔子嫣', '孩子的起跑线在哪？1', '挺好的');
INSERT INTO `comment` VALUES ('11', '乔子嫣', '孩子的起跑线在哪？1', '不错的');
INSERT INTO `comment` VALUES ('12', '乔子嫣', '孩子的起跑线在哪？4', '还好');
INSERT INTO `comment` VALUES ('13', '乔子嫣', '孩子的起跑线在哪？4', '不错');
INSERT INTO `comment` VALUES ('14', '乔子嫣', '孩子的起跑线在哪？1', '20234月8号');
INSERT INTO `comment` VALUES ('15', '乔子嫣', '幼儿应该注意些什么？9', '挺好的');
INSERT INTO `comment` VALUES ('16', '乔子嫣', '幼儿应该注意些什么？9', '挺好的');
INSERT INTO `comment` VALUES ('17', '乔子嫣', '幼儿应该注意些什么？15', '还好');
INSERT INTO `comment` VALUES ('18', '乔子嫣', '幼儿应该注意些什么？15', '还好');
INSERT INTO `comment` VALUES ('19', '乔子嫣', '幼儿应该注意些什么？15', '还好');
INSERT INTO `comment` VALUES ('20', '乔子嫣', '幼儿应该注意些什么？11', '还行');
INSERT INTO `comment` VALUES ('21', '乔子嫣', '欢迎集美大学诚毅学院', '还行');
INSERT INTO `comment` VALUES ('22', '乔子嫣', '【幼儿园--传染病防控】流程图', '欧克');
INSERT INTO `comment` VALUES ('23', '乔子嫣', '幼儿应该注意些什么？11', '不错');
INSERT INTO `comment` VALUES ('24', '乔子嫣', '孩子的起跑线在哪？8', '还行');
INSERT INTO `comment` VALUES ('25', '刘学', '孩子的起跑线在哪？1', '还可以');
INSERT INTO `comment` VALUES ('26', '刘学', '孩子的起跑线在哪？4', '11');
INSERT INTO `comment` VALUES ('27', '刘学', '孩子的起跑线在哪？1', '还好');
INSERT INTO `comment` VALUES ('28', '刘学', '孩子的起跑线在哪？1', '棒');
INSERT INTO `comment` VALUES ('29', '刘学', '幼儿安全', '一定要多多注意');
INSERT INTO `comment` VALUES ('30', '赵六', '家长如何照顾孩子', '我赞同');
INSERT INTO `comment` VALUES ('31', '赵六', '孩子的起跑线在哪', '我十分赞同');
INSERT INTO `comment` VALUES ('32', '赵六', '欢迎集美大学诚毅学院', '点赞');
INSERT INTO `comment` VALUES ('33', '小二', '如何教育幼儿', '我赞同');
INSERT INTO `comment` VALUES ('34', '小二', '幼儿如何吃', '对的');
INSERT INTO `comment` VALUES ('35', '刘学', '幼儿如何吃', '我赞同');
INSERT INTO `comment` VALUES ('36', '刘学', '幼儿应该注意些什么', '不错');
INSERT INTO `comment` VALUES ('37', '张三1', '孩子的起跑线在哪', '同意');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `troduction` varchar(255) DEFAULT NULL,
  `typeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '飞鹤奶粉', '105.00', '飞鹤婴幼儿奶粉,细腻好吸收', 'drink');
INSERT INTO `goods` VALUES ('2', '伊利奶粉', '89.00', '伊利好奶粉，天然无添加', 'drink');
INSERT INTO `goods` VALUES ('3', '蒙牛奶粉', '96.00', '蒙牛有机纯牛奶值得购买', 'drink');
INSERT INTO `goods` VALUES ('4', '特仑苏', '66.00', '蒙古特仑苏，营养丰富', 'drink');
INSERT INTO `goods` VALUES ('5', '澳大利亚进口奶粉', '144.00', '澳大利亚进口奶粉，假一赔十', 'drink');
INSERT INTO `goods` VALUES ('6', '美国进口奶粉', '122.00', '美国进口，营养加倍', 'drink');
INSERT INTO `goods` VALUES ('7', '特步婴儿帽', '22.00', '特步黄色耐穿，不易脏', 'clothers');
INSERT INTO `goods` VALUES ('8', '特步鞋', '88.00', '特步衣物定制搭配', 'clothers');
INSERT INTO `goods` VALUES ('9', '回力上衣', '44.00', '回力知名纯棉，值得一买', 'clothers');
INSERT INTO `goods` VALUES ('10', '安踏棉袜', '12.00', '安踏帽纯棉舒适，快来买哦', 'clothers');
INSERT INTO `goods` VALUES ('11', '安踏棉裤', '67.00', '特步幼儿鞋舒适耐穿', 'clothers');
INSERT INTO `goods` VALUES ('12', '回力凉鞋', '44.00', '回力凉鞋柔软舒适，踩屎感', 'clothers');
INSERT INTO `goods` VALUES ('13', '超兽武装玩具', '34.00', '多人玩具，三人一起哦', 'toy');
INSERT INTO `goods` VALUES ('14', '电击小子玩具', '23.00', '块垒拼接积木，拼接开启智慧', 'toy');
INSERT INTO `goods` VALUES ('15', '植物大战僵尸卡牌', '12.00', '头脑趣味，积木创造', 'toy');
INSERT INTO `goods` VALUES ('16', '仙剑奇侠玩具', '22.00', '变声玩具，有趣声乐', 'toy');
INSERT INTO `goods` VALUES ('17', '布娃娃', '32.00', '音效变声棒，模仿起来吧', 'toy');
INSERT INTO `goods` VALUES ('18', '奶瓶玩具', '23.00', '室内球类亲子运动，亲子好装备', 'toy');

-- ----------------------------
-- Table structure for img
-- ----------------------------
DROP TABLE IF EXISTS `img`;
CREATE TABLE `img` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `tid` int NOT NULL,
  `troduction` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of img
-- ----------------------------
INSERT INTO `img` VALUES ('1', '幼儿夏季饮食“五要”', '夏日炎炎，孩子特贪凉，爱吃冰西瓜，冰淇淋等管不住自己', '1', '夏季天气炎热，孩子的食欲变差，进餐量减少，从食物中摄取的钙质也相应减少，加上出汗多，钙丢失得也多。家长们可以给孩子适量补充些含钙量高的食物。关于睡前是否给孩子吃东西、吃多少，不少家长的态度是，孩子想吃就给、吃多少都可以，相关研究表明：要想孩子长得好，睡前饮食需好好管理，尤其要避免含糖量高或油炸类食品。');
INSERT INTO `img` VALUES ('2', '高智商孩子的“五个怪癖”', '大家好，我是布谷妈妈，对于父母来说，孩子几乎成为了我们最牵挂的人..........', '1', '这些食品会产生过多热量，增大肥胖和产生龋齿的风险，应尽量避免过多食用。 尽量鼓励孩子多喝白开水，不要等到口渴时才喝，同时还需注意，补水宜少量多次，因为一次性大量进水会淡化胃酸，不利于消化食物和杀菌。');
INSERT INTO `img` VALUES ('3', '冬季孩子需要注意的点', '冬季提前做好保暖措施，准备好厚棉被等', '1', '冬季应该注意保暖，不要着凉受寒，及时增加衣物，多给孩子喝一些热水，多吃一些新鲜果蔬菜，补充体内的微量元素，平时多去户外晒晒太阳，可以增强免疫力，预防感冒。');
INSERT INTO `img` VALUES ('4', '春季怎么照顾好孩子', '对于花粉过敏的孩子要尤其注意要远离花粉。', '1', '饮食要做到营养均衡，选择多样化的食物，做到科学合理的搭配，保证孩子获得足够的蛋白质、钙和维生素。粗粮、杂粮富含维生素、矿物质等营养物质，应适当提高粗粮、杂粮在饮食中的比例。对于花粉过敏的孩子要避免花粉的摄入。');
INSERT INTO `img` VALUES ('5', '长沙晨光幼儿园', '位于湖南省长沙市望城区丁字湾街道', '2', '长沙晨光幼儿园是由政府支持下建立起来的');
INSERT INTO `img` VALUES ('6', '邵东新华幼儿园', '位于湖南省邵阳市邵东县', '2', '邵东新华幼儿园是由政府支持下建立起来的');
INSERT INTO `img` VALUES ('7', '刘学---邵东新华幼儿园', '溺爱孩子是一种不好的教育方式', '3', '毕业于中南林业科技大学涉外学院师范专业');
INSERT INTO `img` VALUES ('8', '李金---长沙晨光幼儿园', '你爱孩子，孩子也爱你', '3', '毕业于邵阳学院师范专业');
INSERT INTO `img` VALUES ('9', '乔子嫣---新华幼儿园', '做孩子的翅膀', '3', '毕业于中南大学师范专业');
INSERT INTO `img` VALUES ('10', '姜子涵---牛马司幼儿园', '成绩不代表一切', '3', '毕业于中南林业科技大学师范专业');
INSERT INTO `img` VALUES ('11', '敬明---邵东第一幼儿园', '努力学习，天天向上', '3', '毕业于湖南女子学院师范专业');
INSERT INTO `img` VALUES ('12', '罗美华---邵阳市区幼儿园', '加油学习', '3', '毕业于湖南涉外学院师范专业');

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tid` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES ('1', '1', '孩子的起跑线在哪', '小习惯成就大未来。一切教育都归结为养成儿童的良好习惯，往往自己的幸福都归于自己的习惯。 好的习惯是人们走向成功的钥匙，而坏的习惯是通向失败的大门，你的习惯决定着你的未来。习惯是一种顽强的巨大的力量，它可以主宰人生。\r\n\r\n教养最先来自家庭，学校起到的只是深化巩固的作用。家庭教育主要是育德的，就是教孩子学会做人。父母一定要身体力行，为孩子做表率，使孩子言行一致，表里如一。成人比成才更重要，教养比文凭更重要。\r\n\r\n事业红红火火，孩子一塌糊涂。孩子养成不良习惯贻害无穷。\r\n\r\n——教育新态度', '2023-4-4');
INSERT INTO `information` VALUES ('2', '1', '幼儿应该注意些什么', '首先一定要保持良好的温度，室内温度可以控制在25℃到28℃左右，最好不要太热，以免对孩子的身体产生影响。\r\n如果温度下降或者温度升高，一定要做好孩子的衣服增减工作，避免感冒着凉等症状出现。', '2023-4-4');
INSERT INTO `information` VALUES ('3', '1', '如何教育幼儿', '有人说，教育需要从小做起，每个孩子都会在年龄幼小时，接受一波又一波的教育，而处于幼儿的孩子，我们又怎么去鼓励，怎么去鼓励孩子。以下是小编为您整理如何教育幼儿的相关内容。\r\n首先，处于幼儿教育的孩子多为调皮，在这个年纪的孩子多为让家长一阵的头疼，现在的孩子可不是我们那个时代的孩子，随便打骂一顿即可，而现在的孩子多为爱玩，爱逛，却不爱学习，那么，我们也可以从语言鼓励上入手。\r\n在孩子喜欢玩闹时，我们可以表现为不夸奖，在孩子做了一件对的事情时，我们表扬孩子，从语言上表演孩子或者用物质来鼓励孩子。', '2023-4-4');
INSERT INTO `information` VALUES ('4', '1', '幼儿如何吃', '1.满6月龄（180天）起添加辅食，不要太早，也不能太晚。过去有建议从4个月起添加辅食，目前认为这是不恰当的。有特殊需要时须在医生的指导下提前或推迟辅食添加时间\r\n\r\n　　2.辅食从富含铁的泥糊状食物（如加铁米粉、肉泥）开始。最开始的辅食选强化铁的婴儿米粉，用母乳、配方奶或水冲调成稍稀的泥糊。每次只引入一种新的食物（适应2、3天），逐步添加达到食物多样，并且从泥糊状食物逐渐过渡到半固体或固体食物，如烂面、肉末、碎菜、水果粒等。', '2023-4-4');
INSERT INTO `information` VALUES ('5', '1', '幼儿喝水注意事项', '1、喝水的时间：通常吃饭前半个小时内不能给宝宝喝水，由于胃液的浓度会被水稀释，不助于消化，也容易让宝宝产生饱腹感，影响食欲。并且宝宝睡觉前两个小时内也不能喝水，会增加小便次数，影响宝宝睡眠。\r\n\r\n2、喝水的温度：一般新生婴幼儿都喝白开水，水温应当达到100℃沸点，这样可以杀死水中大部分细菌微生物，但水沸腾后不宜长时间加热，长时间加热沸水会产生某些有害性物质，危害宝宝健康。除此之外，沸水应当冷却到20~25℃。', '2023-4-4');
INSERT INTO `information` VALUES ('6', '1', '幼儿吃饭注意什么', '一、餐前：幼儿就餐前要注意餐前卫生，养生良好的生活习惯，家长在餐前便后及时给幼儿洗手，在家里给幼儿创造一个安静、舒适、愉悦的就餐环境。\r\n\r\n 二、餐时：就餐时不放电视，不看手机，不要惹幼儿说话和笑，以免在说话和笑的过程中把食物呛到气管，引起幼儿窒息。\r\n\r\n 三、餐后：要引导幼儿刷牙或漱口，及时清理口腔残存的食物残渣，防止蛀牙的生成。此外，餐后还要避免幼儿剧烈活动，如追跑、打闹嬉戏等，以免造成孩子胃肠功能紊乱而呕吐、腹痛等不适。', '2023-4-4');
INSERT INTO `information` VALUES ('7', '1', '幼儿安全', '一、吃，幼儿吃东西的时候不能过快、过急，尤其是不能吃带核的食物和圆形的水果等，如葡萄或者是樱桃等，有可能造成孩子的窒息，所以吃上要注意孩子的安全；\r\n\r\n二、喝，宝宝幼儿期对于食物和饮料的辨别能力比较差，喝饮料的时候可能会喝错，所以家长要注意孩子喝的问题，不要把一些危险的东西装在饮料瓶里，会造成宝宝误喝；\r\n\r\n三、玩，宝宝的玩具要安全，小于三岁的孩子不能玩小于口腔的玩具，否则孩子把玩具放入口中，会造成异物吸入引起窒息，会导致孩子的生命危险，所以不能玩太小的玩具；', '2023-4-4');
INSERT INTO `information` VALUES ('8', '1', '幼儿玩耍', '玩耍是幼儿的心理特征，玩耍是幼儿的工作，玩耍是幼儿的生命。所以从某种意义上说，玩耍伴随着孩子的童年生活，玩耍的过程就是孩子进展的过程。那么，幼儿园与老师应当为孩子创设怎样的条件与机会，赐予孩子自主玩耍的空间与时间，使孩子度过一个欢快而有意义的童年', '2023-4-4');
INSERT INTO `information` VALUES ('9', '1', '幼儿饮食', ' 3-6岁幼儿处于生长发育的关键时期，其生长发育的特点是新陈代谢旺盛，身高增长速度大于体重增长的速度，神经系统发育迅速，脑的重量已接近成人，对蛋白质、钙的需求较高。随着幼儿年龄的增长，运动量不断增加，热量的消耗亦增加。因此提供合理膳食是保证幼儿健康成长的基础。小树苗的茁壮成长离不开阳光和雨露，孩子们的生长发育也离不开合理充足的营养。掌握规律、合理的进餐本领必不可少。', '2023-4-4');
INSERT INTO `information` VALUES ('10', '1', '幼儿生活', '能够自己整理衣物、玩具、书本等个人用品，具有一定的生活自理能力，在正常饮食的情况下注意食用健康、绿色蔬菜，每餐用量应当恰当，不要过少或者过多，并且尽量少吃油炸食品和冷饮、碳酸饮料，教育幼儿养成良好的饮食习惯。', '2023-4-4');
INSERT INTO `information` VALUES ('11', '1', '幼儿运动', '能够自己整理衣物、玩具、书本等个人用品，具有一定的生活自理能力，在正常饮食的情况下注意食用健康、绿色蔬菜，每餐用量应当恰当，不要过少或者过多，并且尽量少吃油炸食品和冷饮、碳酸饮料，教育幼儿养成良好的饮食习惯。', '2023-4-4');
INSERT INTO `information` VALUES ('12', '1', '家长如何照顾孩子', '1.多陪伴\r\n\r\n平时就必须多陪伴孩子，哪怕是平时多没空的家长，每天都要抽空出来陪伴孩子，这样才有利于孩子的健康成长 。\r\n\r\n2.多了解\r\n\r\n应该多了解孩子，不要因为彼此之间的不了解而导致生活中产生很多矛盾或误会。\r\n\r\n3.多包容\r\n\r\n要多包容孩子，孩子都会犯错的，但家长必须学会包容孩子的小错误，知错能改比起犯错批判的教育效果要好得多。', '2023-4-4');
INSERT INTO `information` VALUES ('13', '1', '工作如何兼顾孩子', '作为家长谁不希望能够常常陪伴孩子，见证孩子的成长足迹。然而，作为上班族家长，面对着早出晚归的工作，我们该如何兼顾孩子呢？其实，我们可以合理利用自己在家里的时间，坚持多多与孩子相处，不要错过孩子的成长点滴。', '2023-4-4');
INSERT INTO `information` VALUES ('14', '1', '宝宝上幼儿园注意点', '1、帮孩子养成良好的生活习惯\r\n\r\n误区：前一晚由着孩子的性子，玩到很晚，以至于早晨不能按时起床，不能及时去幼儿园或者迟到。\r\n\r\n建议：父母在孩子刚入园的时候，就要帮助孩子养成良好的生活习惯。如，让孩子养成早睡早起的习惯，以免因睡眠不足引起情绪烦躁，不愿意上幼儿园；养成准时的习惯，不迟到，对宝宝行为和健康的培养都有好处。\r\n\r\n2、注意穿衣适当，所带物品齐全\r\n\r\n误区：早晨起床手忙脚乱，给孩子着装不适，必备物品丢三落四。\r\n\r\n建议：前一天晚上将孩子上幼儿园要带的东西整理好。', '2023-4-4');
INSERT INTO `information` VALUES ('15', '1', '宝宝放学注意点', '离园环节 是 幼儿园一日活动中最难处理的环节 ，不少幼儿园教师都戏称该环节是 “打仗”的环节 。 “离园安全五部曲” ，分享给各位园长老师。\r\n\r\n面对托、小班幼儿离园环节存在的情绪问题，教师要积极引导幼儿离园时保持稳定愉悦的情绪状态，乐意参与离园活动，体验与教师、同伴相处的快乐。\r\n\r\n离园环节在一天学习、生活结束后，一直到家长来接的这段时间，这段时间由于孩子们在等待家长来接，心情焦急、兴奋，如果组织不好，孩子们便会乱跑、班级会极为混乱。', '2023-4-4');
INSERT INTO `information` VALUES ('16', '2', '欢迎集美大学诚毅学院', '集美大学诚毅学院是经中华人民共和国教育部批准，由集美大学与福建集美大学教育发展基金会联合举办的民办全日制普通本科独立学院，是教育部在线教育研究中心“2018年智慧教学试点项目”院校。', '2023-4-4');
INSERT INTO `information` VALUES ('17', '2', '【六一特别活动】“童心童话”', '一年一度的儿童节，是我们小朋友最期待的节日。 这次的“六一”是我们在幼儿园度过的第一个儿童节，我们要以最特别的方式庆祝我们的节日，快来看看我们的奇思妙想吧！', '2023-4-4');
INSERT INTO `information` VALUES ('18', '2', '买邻妈妈托育势如破竹·', '国家通过开展一系列托育利好政策，实施积极生育支持措施，有效破解育龄妇女“入职难”、双职工家庭“育儿难”，减轻城乡居民生育、养育、 教育负担。幼有所托、幼有所育、幼有善育的婴幼儿养育模式正日趋完善。', '2023-4-4');
INSERT INTO `information` VALUES ('19', '2', '新版学龄儿童膳食指南来了', '我国每五个6-17岁的儿童，就有一个可能超重或肥胖。学龄儿童正处于生长发育阶段，全面、充足的营养是其正常生长发育，乃至一生健康的物质保障。各年龄段学龄儿童膳食宝塔来啦！', '2023-4-4');
INSERT INTO `information` VALUES ('20', '2', '国家卫生健康委人口家庭司在京召开', '会议指出，以习近平同志为核心的党中央高度重视人口工作，党的十九大以来，明确优化生育政策、促进人口长期均衡发展的新时代人口工作目标任务，健全和落实人口工作领导机制，出台积极生育支持措施，人民群众满意度获得感不断增强。会议要求，各地要全面贯彻落实党的二十大和《中共中央 国务院关于优化生育政策促进人口长期均衡发展的决定》精神，加强学习、深入调研、主动协调、狠抓落实、防范风险，加快建立完善生育支持政策体系，大力推进普惠托育服务发展。', '2023-4-4');
INSERT INTO `information` VALUES ('21', '3', '【灵犀发现】天津融果课堂儿童亲子教育', '《灵犀心理课》面向中小学生、家长老师，以提高中小学生心理素质、促进其身心健康和谐发展为主要内容，栏目自2021年9月初开播，目前已经播至17期，栏目总', '2023-4-4');
INSERT INTO `information` VALUES ('22', '3', '【灵犀发现】探知园|众建筑', '探知园拥有连续的景观，降低建筑整体高度以贴近自然，使学生在校内每一处都可以亲近自然。弯曲的人行道蜿蜒于起伏的屋顶山丘上，同时连接多个庭院，学生和教师可以接触更广泛多样的学习空间。每楼层的教室也与绿化空间相邻，这使得教师可以很方便地利用室外空间进行教学。', '2023-4-4');
INSERT INTO `information` VALUES ('23', '3', '【灵犀发现】宛如甜甜脆皮奶油', '学习中心包含了学习区、活动区和管理区。教学区域由学习区和活动区共同构成，空间的划分非常灵活，可按照活动内容与使用目的进行调整，而非基于年龄阶段分隔成固定的区块。', '2023-4-4');
INSERT INTO `information` VALUES ('24', '3', '如何打造契合孩子需求的游戏？', '我们的策略是，最大程度放手，最小程度介入。\r\n时间灵活弹性。充足的游戏时间能保证游戏更深入。经过多次研讨，我们重新规划一日生活时间，调整三餐两点为三餐一点，优化过渡环节，合并晨间接待和早操，为幼儿游戏腾出更多时间，每天保证1.5小时的游戏时间', '2023-4-4');
INSERT INTO `information` VALUES ('25', '3', 'Hello BABY幼儿园', '绥化市安达市汗牛路与牛街交叉路口东南侧(万达购物中心东侧约100米)(万达购物中心东)(邮编:151400)', '2023-4-4');
INSERT INTO `information` VALUES ('26', '3', 'Hello BABY幼儿园', '绥化市安达市汗牛路与牛街交叉路口东南侧(万达购物中心东侧约100米)(万达购物中心东)(邮编:151400)', '2023-4-4');
INSERT INTO `information` VALUES ('27', '4', '幼儿园小班语言游戏---季节问答', '作为一名教师，就不得不需要编写教案，通过教案准备可以更好地根据具体情况对教学进程做适当的必要的调整。写教案需要注意哪些格式呢？以下是小编整理的幼儿园小班语言活动教案，仅供参考，希望能够帮助到大家。', '2023-4-4');
INSERT INTO `information` VALUES ('28', '4', '幼儿教育游戏推荐之《夺宝小猴》', '大班幼儿的活动能力逐渐增强，喜欢玩有竞争的游戏，且已有合作意识。基于这一特点，我通过创设情景“帮助国王夺取宝藏”来引起幼儿参与活动的兴趣。并在愉悦的游戏活动中发展幼儿跑、躲闪、投掷等运动能力。\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2023-4-4');
INSERT INTO `information` VALUES ('29', '4', '绘本故事《最好的面包店》', '一天，“刁嘴”美食家小白兔出门寻找美味的食物，一家从未见过的流动面包店吸引了她，可是，这家店的店主居然是一头狼！这让小白兔害怕极了！小朋友们，你们觉得小白兔和狼先生之间会发生什么呢？让我们一起进入绘本故事《最好的面包店》看一看吧！', '2023-4-4');
INSERT INTO `information` VALUES ('30', '4', '绘本故事《问问船先生》', '我是中（2）班的阮绍航，今年6岁了。刚入园的我爱哭闹，感谢老师们的悉心教导。现在的我慢慢长大变得懂事有礼貌了，也有了很多的兴趣爱好。平时喜欢画画，看绘本和弹琴。今天给大家分享一本特别有意思的绘本，希望大家能跟我一样喜欢这本绘本。', '2023-4-4');
INSERT INTO `information` VALUES ('31', '5', '【幼儿--发烧处置】流程', '首先，当老师发现孩子出现发烧情况的时候，要及时用体温测量仪给宝宝测体温（通常测的是耳温、额温和腋温），当孩子出现耳温、额温在38℃及以上或是腋温在37.2℃及以上等情况均可能是孩子出现了发热现象。', '2023-4-4');
INSERT INTO `information` VALUES ('32', '5', '【幼儿园--传染病防控】流程', '建立幼儿园传染病应急机制就是为了能做到一旦发生传染病能及时掌握，采取措施有效防治，做好四早：早发现、早报告、早隔离、早治疗，快速遏制疾病的传播和蔓延。成立幼儿园传染病控制应急小组，分指挥部、流行病调查组、消毒组和后勤保障组，在流行病发生时期，各组能迅速各行其职，控制和扑灭疫情', '2023-4-4');
INSERT INTO `information` VALUES ('33', '5', '【幼儿园卫生保健】流程', '1、早上幼儿来园：晨检（检查幼儿健康状况，用药情况）\r\n2、做自己的记录工作\r\n3、检查、监督厨房工作（肉、菜卫生，工作人员操作规范及流程）\r\n4、中午给需要吃药的幼儿喂药。\r\n5、午睡：检查幼儿午睡情况\r\n6、下午做自己的记录工作', '2023-4-4');
INSERT INTO `information` VALUES ('34', '5', '幼儿园--防疫计划（二）', '为了加强幼儿园新冠肺炎疫情防控工作，保证我园教育教学工作正常有序开展，根据平阳县新冠肺炎防控工作方案要求，指导各班教师对幼儿在家期间的生活学习活动做好联系和指导工作。我园将强化家园共育理念，坚持以游戏为基本活动，指导家长开展丰富适宜的亲子活动，促进幼儿身心发展。以《指南》精神和幼儿园自然特色为依据，设计一套能引导家长在家中合理陪伴安排幼儿一日生活作息，帮助幼儿提高生活自理能力养成良好习惯，在家中体验自然生长种植快乐的，寓教于乐为一体的活动方案。', '2023-4-4');
INSERT INTO `information` VALUES ('35', '5', '新学期幼师教学方案优质范例（4）', '中国幼教网做为博鳌国际青少年创新大会组委会支持单位，根据党的二十大报告中指出的关于“加快建设人才强国，坚持为党育人，为国育才”的精神，共同为培养德智体美劳全面发展的社会主义建设者和接班人贡献力量为了保障事情或工作顺利、圆满进行，我们需要事先制定方案，方案是在案前得出的方法计划。那么你有了解过方案吗?以下是我精心整理的幼儿园班级教学方案设计，仅供参考，希望能够帮助到大家。', '2023-4-4');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sumPrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `account` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of shopcar
-- ----------------------------
INSERT INTO `shopcar` VALUES ('18', '伊利奶粉', '89.00', '1');
INSERT INTO `shopcar` VALUES ('26', '飞鹤奶粉', '105.00', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '王五', '$2a$10$B4oO3iVsct7E6fEp5uiEhuUbO49TD6LKEPNkH6DZfAKoePonv2rGq');
INSERT INTO `user` VALUES ('3', '刘学', '$2a$10$d4VpU3im2zAfhP0DRg1DEuXr6W.6yg7mzPz9LcMzHPkCUy90C.Tuq');
INSERT INTO `user` VALUES ('4', '张三', '$2a$10$/GBBIGJX7Nyel2zHVcEQhexachUOqo28ZAgpZnAmFuN8S3qqALGwK');
INSERT INTO `user` VALUES ('5', '李四', '$2a$10$f6upLblqhUHzOUCnQfYcIe2zzL7OkkITVC2CTM19suLungo0nJVX2');
INSERT INTO `user` VALUES ('6', '乔子嫣', '$2a$10$TgAyN.7fCsPx90lSaA551O1y8yljJE6cGncriyblEXFp/45UYJAjm');
INSERT INTO `user` VALUES ('7', '乔子嫣2号', '$2a$10$mUNlbPni5cEy168RWt6MhO/FVtBMP8aMbTacfq0mhZvnqILY7NxLC');
INSERT INTO `user` VALUES ('8', '赵六', '$2a$10$.t8z37xvwicNSlgDcu98i.D7.gTNhzWcOrmGOutywXbScyZF6cEVq');
INSERT INTO `user` VALUES ('9', '小二', '$2a$10$1fdehkRQ.26f7p67vBbQPumU2e3AAvNjNHh2rHxShRV5U/yqxDM06');
INSERT INTO `user` VALUES ('10', '张三1', '$2a$10$VtXvCpYxPKvmGeVGB2LJ7OVMXizbIUYkVcCLV4QfWuFzG/hHWA.Ly');

-- ----------------------------
-- Table structure for usercollection
-- ----------------------------
DROP TABLE IF EXISTS `usercollection`;
CREATE TABLE `usercollection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of usercollection
-- ----------------------------
INSERT INTO `usercollection` VALUES ('44', '赵六', '家长如何照顾孩子');
INSERT INTO `usercollection` VALUES ('45', '赵六', '孩子的起跑线在哪');
INSERT INTO `usercollection` VALUES ('47', '刘学', '宝宝上幼儿园注意点');
INSERT INTO `usercollection` VALUES ('48', '刘学', '【幼儿--发烧处置】流程');
INSERT INTO `usercollection` VALUES ('49', '刘学', '新学期幼师教学方案优质范例（4）');
INSERT INTO `usercollection` VALUES ('54', '张三1', '孩子的起跑线在哪');

-- ----------------------------
-- Table structure for user_application
-- ----------------------------
DROP TABLE IF EXISTS `user_application`;
CREATE TABLE `user_application` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `graduation` varchar(255) DEFAULT NULL,
  `expreance` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `application_garden` varchar(255) DEFAULT NULL,
  `application_job` varchar(255) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of user_application
-- ----------------------------
INSERT INTO `user_application` VALUES ('1', '刘学', '男', '23', '本科', '大学', '厉害', '橙光幼儿园', '幼师', '等待审核');
INSERT INTO `user_application` VALUES ('2', '乔子嫣', '女', '22', '本科', '2年', '还好', '幼儿园', '幼教', '等待审核');
INSERT INTO `user_application` VALUES ('9', '张三', '男', '22', '高中', '1年', '还好', '邵东晨光幼儿园', '出纳', '等待审阅...');
INSERT INTO `user_application` VALUES ('10', '小二', '男', '22', '本科', '2年', '还不错', '长沙新华幼儿园', '保育员', '等待审阅...');
INSERT INTO `user_application` VALUES ('11', '李四', '男', '22', '大专', '无', '不错呦', '长沙新华幼儿园', '食堂人员', '等待审阅...');
