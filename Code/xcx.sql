/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : xcx

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2019-06-15 14:01:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL COMMENT '分类id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `seotitle` varchar(255) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '摘要',
  `thumbnail` varchar(255) NOT NULL COMMENT '缩略图',
  `content` text NOT NULL COMMENT '内容',
  `t` int(10) unsigned NOT NULL COMMENT '时间',
  `n` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  PRIMARY KEY (`aid`),
  KEY `sid` (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('4', '36', '考研动态', '考研', '拔尖 考研', '教育部：将分三年全面实施“六卓越一拔尖”计划2.0', '/Public/attached/2019/05/19/5ce153c84022e.jpg', '<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	新华网天津4月29日电(陈梦谣)今日，教育部召开新闻发布会，教育部高等教育司司长吴岩结合“六卓越一拔尖”计划2.0介绍“双万计划”“新工科、新医科、新农科、新文科”建设思路和实施方案。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	卓越拔尖计划实施已整整十年，从2009年实施基础学科拔尖学生培养试验计划以来，教育部先后联合13个部门实施了一系列卓越人才教育培养计划，各地各高校积极行动、深入推进改革，取得了明显成效，培养了一大批卓越工程师、医生、法治人才、农林人才、教师、新闻传播人才和基础学科拔尖人才，为经济社会发展提供了重要的人才智力支撑。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	“如果说‘六卓越一拔尖’计划1.0更多具有‘试验田’的性质，计划2.0则是新时代高校全面落实‘两个根本’、实施综合改革的‘大田耕作’。”吴岩表示，2019年-2021年，教育部将分三年全面实施“六卓越一拔尖”计划2.0。这个计划可以概括为一个总体部署、三项核心任务、一次质量革命。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	一个总体部署是通过实施“六卓越一拔尖”计划2.0，全面推进新工科、新医科、新农科、新文科建设，提高高校服务经济社会发展能力。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	三项核心任务是面向所有高校、所有专业，全面实施一流专业建设“双万计划”、一流课程建设“双万计划”、建设基础学科拔尖学生培养一流基地，也就是建金专、建金课、建高地。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	一是实施一流本科专业建设“双万计划”，也就是金专建设计划。建设10000个左右国家级一流本科专业点和10000个左右省级一流本科专业点。二是实施一流课程建设“双万计划”，也就是金课建设计划。建设10000门左右国家级一流课程和10000门左右省级一流课程，包括具有高阶性、创新性、挑战度的线下、线上、线上线下混合式、虚拟仿真和社会实践各类型课程。三是建设260个左右基础学科拔尖学生培养一流基地，也就是高地建设计划。在数学、物理学、化学、生物科学、计算机科学、天文学、地理科学、大气科学、海洋科学、地球物理学、地质学、心理学、基础医学、哲学、经济学、中国语言文学、历史学等17个学科建设。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	一次质量革命是通过实施“六卓越一拔尖”计划2.0，在全国高校掀起一场“质量革命”，形成覆盖高等教育全领域的“质量中国”品牌，全面实现高等教育内涵式发展。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	高校参与“六卓越一拔尖”计划2.0，必须具备一些基本条件。吴岩介绍，这些基本条件包括四个方面内容：一是必须全面落实“以本为本、四个回归”;二是积极推进“新工科、新医科、新农科、新文科”建设;三是不断完善协同育人和实践教学机制;四是努力培育以人才培养为中心的质量文化。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	“我们的目标是，到2021年建设布点完成的时候，我国高等教育高质量人才培养的基础平台将完全形成，‘两个根本’将有效落实。我们的希望是，金专金课在高校随处可见，水专水课水师无处安身。”吴岩说。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	发布会上，天津大学和西北农林科技大学介绍了学校落实“六卓越一拔尖”计划2.0加快新工科建设有关思路和举措。天津大学党委书记李家俊说，九年来，天津大学共21个本科专业、6个研究生层次学科领域进入计划，参与学生13000余人。建立了“1234+X”卓越工程师教育培养新模式，该模式自嵌范式转型的内生动力，有力推动了新工科建设。西北农林科技大学校长吴普特说，学校瞄准未来农业发展需要，重新确立了一流农业大学的人才培养目标，建立了“通专结合、本研贯通、产教融合”的人才培养新体系，实现了单一的专业教育模式向通专结合的多元化教育模式转变。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	浙江省教育厅厅长陈根芳介绍了浙江省落实“六卓越一拔尖”计划2.0加快“新工科、新医科、新农科、新文科”建设的思路和举措。他表示，以创新手段深化培养模式改革，浙江省融汇新技术，推动互联网、虚拟现实、5G等现代技术在计划2.0教学和管理中的应用，建设20所省级“互联网+教学”示范性高校，实施“互联网+教学”省级教改案例、省级示范课和新形态教材“三千计划”。构建新体系，围绕卓越拔尖人才培养，构建从中职、高职、应用型本科到专业学位研究生的立交桥式人才培养体系，创造让每个学生都有出彩的机会。\r\n</p>', '1558270931', '0');
INSERT INTO `article` VALUES ('5', '36', '考研与就业', '考研与就业', '考研与就业', '据教育部数据统计，2019年考研报考人数达到290万人，增幅达21.8%。考研人数连年增加，屡创新高。在竞争压力不断增加的情况下，本科毕业生是选择考研还是选择就业，成为大家关注的热点问题。', '/Public/attached/2019/05/19/5ce154810bb7a.jpeg', '<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	<strong>考研扩招　人数攀升</strong>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	据《2019年全国研究生招生调查报告》显示，近年来高校毕业生数量逐年增加，在毕业生就业压力、非全日制纳入统考、研究生招生扩招等因素的刺激下，硕士研究生报名人数呈现快速上升趋势。同时，研究生招生人数也在逐年上升。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	“双一流”建设启动后，高校发展进入新的竞争阶段，著名大学在稳定甚至缩减本科培养规模的同时，均大幅扩大研究生教育。从2019年招生计划看，42所双一流大学建设高校中有28所高校大幅增加了招生计划。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	以复旦大学为例，复旦大学2017年计划招生人数增加1800人，达到5500人，其中招生计划中增加了非全日制学习方式。2018年计划招生人数与2017年基本持平。2019年计划招生人数又增加700人，达到6300人。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	<strong>梦想追求　已成执念</strong>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	在某考研机构举办的考研讲座上，记者见到了前来听讲座的西安电子科技大学大二学生李佳。“高考结束后填报了志愿，我没能如愿进入心仪的院校，我希望通过考研实现这个目标。”李佳向记者说。虽说很多学生在大三才会开始准备考研相关事项，但在考研难度日益增加的情况下，李佳从大二开始就早早准备考研了。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	赵毅是长安大学的一名学生，为了圆自己和家人的一个大学梦，他每天6时起床，学习到23时才上床休息。从初一起便对媒体产生了浓厚兴趣，视频制作一直都是他最大的爱好，从事传媒工作是他最大的梦想，可是，高考后他没能考取自己的目标学校。“圆自己的‘传媒梦’。”在谈到考研时，赵毅说，“我高三复读过一年，但还是没能考上心仪的中国传媒大学。4年来，我一直都没有放弃对这个梦想的执着追求。”赵毅在入学第一天起就定下了“保证专业学习，朝着梦想前进”的目标。学习期间，校外传媒广告公司成了他理论联系实际最好的“实践基地”。这个从前期策划、现场拍摄到后期制作的过程，让他结识了许多志同道合的好友，享受到了快乐，学习到了经验，提升了传媒工作的能力。去年12月他如愿以偿圆了自己的“传媒梦”。赵毅对记者说，追求梦想现在已经成为许多学生的一个执念。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	<strong>读书深造　不断学习</strong>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	考研的主力军多为应届本科毕业生。许多学生在大学生活中认为自己并未学习到太多与专业相关的知识，还不具备当前就业单位对毕业生所要求的工作能力，或是对已经找到的工作还有诸多不满，因此他们不愿急于就业，想通过考研的方式，在校园中继续提升自己的综合素质，延缓择业就业的时间。这也是较多大学生选择考研的一个原因。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	“研究生学历就是我们在求职时候的一块敲门砖。”在长安大学读研究生一年级的刘洋对记者说。两年前，刘洋本没有读研究生的打算，但大四求职时屡屡碰壁，他意识到了研究生学历的重要性，于是全力备考，在去年拿到了研究生录取通知书。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	但刘洋的研究生同学马倩倩则是一心想走科研路。马倩倩来自该校化学工程与技术专业，她在本科阶段就觉得自己的知识还不够全面，因此选择继续读研究生，进入更高层次的学术殿堂，也更希望通过硕士研究生阶段的学习，获得博士研究生的教育资格。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	根据中国教育在线网站调查显示，在选择研究生类别时，学生报考专业型硕士的意愿更高，达到56%。专业型硕士也成为研究生教育的主体。考生选择专业型硕士的原因，首先是可以获得更多专业技能，其次是由于难度低于学术型硕士，第三是因为学制时间短。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	周明是陕西师范大学的一名非全日制研究生，本已经工作的他，去年又选择重返校园读研。“我来读研究生的原因很简单，工作了几年想要升职，但学历不够用，所以考了非全日制的研究生，多拿个学历，为以后做准备。”周明对记者说。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	<strong>十字路口　何去何从</strong>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	眼下，有的学生认为提高自己的学历层次，就能提高就业竞争力，于是在大学期间把考研作为唯一目标而选择考研;有的学生其实并不想读研究生，但受到“总归要有研究生学历”的影响而盲目跟从，导致读研就冲着一纸文凭而去。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	西北大学研究生徐红晓对记者表示：“作为过来人，我还是建议大家不要先着急去盲目地选择考研或工作。要先找到适合自己的发展方向，结合行业状况、发展趋势以及就业形势进行综合分析，再确定是要考研还是工作。考研是否有利于就业，至今也没有一个明确的定论。不过有一点需要注意的是，不管是就业还是考研，都必须要摆正自己的心态，看清自己的位置。”考研这个过程十分枯燥，需要承受的压力也很大，考研与就业也并没有最佳选择，适合自己的就是最好的选择。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	“我原本也想通过考研来弥补自己本科学历的不足，但是考虑再三，还是选择了就业。”提起考研，就读于西安外国语大学的大四学生尹雨一下打开了话匣子，“大一进校我就想考研究生，也一直坚定信心，一定要考上。但是由于对各个行业并不了解，也不清楚自己到底想读什么专业的研究生，就一直没有定下来。”其实，像尹雨这样只是有着考研的想法，但具体实施起来又感觉无从下手的人很多。后来尹雨觉得古代文学这个专业不错，自己又有兴趣，在查阅了大量资料后，决定报考南京师范大学的古代文学专业。可这时，一年一度的“金九银十”企业招聘会走进了学校，尹雨本来只是抱着试试看的心态参加招聘会，居然幸运地拿到了美的集团的入职通知。在征求了众多亲戚、师长和朋友的意见，查询了相关资料后，她觉得这份工作确实很适合自己，对以后的发展也很有帮助，就放弃了继续考研的想法。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	<strong>今日评说</strong>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	<strong>从更广阔视野看考研</strong>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	喜顺\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	在民间关于最难的“六大考试”中，排名法考和高考之后的考研，尽管总人数远远低于中考和高考，影响力却在逐年递增。作为我国高等教育体系中一个极其重要的环节，每年全社会围绕考研的人数变化、题目难易、热门行业等话题，乃至猜题、培训、资料、复习等“考研生态链”，总会形成多波次关注的热点。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	根据教育部最新统计，2019年考研报考人数达290万人，比2018年激增52万人，增幅达21.8%，创历史新高。单从报名人数增长的幅度来看，这确实是一大新闻。然而，倘若以为这其中“虚火重”“泡沫多”，显然是没有从更广阔的视野来看待这一变化。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	理论上，影响我国研究生总人数变化的因素有人口基数、人均GDP以及高等院校数量等。一般认为，影响我国研究生总人数的最直接因素，是个人的高薪资待遇、高品质生活这些内在需求和整个社会高质量发展的外在要求，在更高学历方面构成叠加，进而在考研这个环节形成“风景线”。也就是说，在我国高等教育录取率和招生总人数保持稳定的前提下，考研大军总量仍将保持稳定增长趋势。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	一定意义上，我国作为世界贸易第一大国、制造业第一大国和人口第一大国，在消费电子产品、通信设备、高速列车、物联网、芯片、软件等方面具有全球领先的技术和实力，在电动车、风机、核能、太阳能光伏、节能产品等方面早已跻身大国之列，综合看，我们的研究生总人数不是多了，而是远远不够。以美国为例，自2000年以来，美国25岁及以上人口中，最高学位为硕士的人数翻了一番，达到2100万人。在美国成年人口中，13.1%的人拥有硕士学位、专业硕士学位或博士学位。我国的研究生总量占人口的比例大概在0.5%至0.55%之间。如果把考研置于经济社会发展和民族复兴大业的大视野下，全社会仍然需要为此付出巨大努力。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	至于说到该不该考研和考什么专业?是为了学术研究还是为了薪资待遇?是随波逐流还是坚守梦想?在我国的产业结构逐步向全球产业链的上游转移过程中，在知识成为社会治理以及文明进步的一个亮点之时，考研，无疑也是个体磨炼提升自己一个不错的选择。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	<strong>专家访谈</strong>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	<strong>应冷静看待考研</strong>\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	本报记者　喜顺　实习生　尹誉蓉　赵子祎\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	2019年全国硕士研究生招生考试的报考规模较上年增加52万人，增幅达21.8%。考研这一话题的热度也随之一升再升，不论是在校大学生，还是在职人员，越来越多的人加入考研大军。近日，记者就如何理性看待“考研热”，分别专访了西安外国语大学英文学院副院长芮小河和长安大学文学艺术与传播学院副院长杜波。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	芮小河认为，研究生教育是国家培育高层次人才，构建国家创新体系的重要途径。目前，世界各国对高层次人才的需求仍然很大，许多国家已经放宽研究生教育的准入条件，以此来吸引和培养更多高端人才。在我国，研究生报考人数逐年增加，既顺应了当前国际教育发展的趋势，也是我国科技创新可持续发展的需要。同时，近年来专业型硕士的报考人数逐年增多，体现出考生心态由单纯追求理论研究学习向注重应用实践能力的转变，促进了以职业应用为主要目标的研究生教育机制的建立与健全，也为各行各业的发展定向培养了高层次人才。专业型硕士的热度升高，也表明越来越多的考生明确了研究生教育的意义。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	芮小河说，大学毕业生考研大多是为了提升自身价值，想让日后的求职之路更加平坦广阔，但其中也不乏存在逃避就业压力、盲目跟风等消极原因。大学老师应该从自身的经历出发，积极引导学生树立正确的“考研观”，并根据学生的资历及个性特点，合理指引他们认识自身的优点劣势，规划出一条适合的发展之路。研究生教育的意义在于进一步提升学术和应用能力，而不是单纯为自己“镀金”。研究生学习阶段更加依靠自主学习，如果学生没有明确的学习目标，即便是获得了硕士学位，也无法提升自身竞争力，仍会遭遇就业难题。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	芮小河从高等教育角度谈了自己的看法，他说，考研热度的上升也对研究生教育提出了新的要求。我国目前仍然存在研究生教育资源缺乏、培养模式不完善、理论学习与实际应用脱节等问题，急需正视与解决。同时，如何增进中外学术文化交流、培育高质量的研究生、更好贴合科技创新与人才市场的需求、促进产学研更好地合作发展，都将是高校开展研究生教育首要思考的问题。考生应该冷静看待考研，结合自身的特点与需求，理智决定是否走上考研之路，选取合适的学位类型。高校也不能因为考研人数增多，盲目放宽准入条件或缩减招生规模，而应该反思教育活动开展中出现的种种问题，积极应对解决。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	杜波认为，大学生选择考研或者就业，抑或是选择未来从事哪个行业，其实是没有好坏之分的，最重要的是根据自己的情况来进行判断。正因为每个人的境遇不同，性格不同，兴趣爱好不同，每个人所走的道路才会各有差异。\r\n</p>\r\n<p style=\"text-indent:2em;font-size:16px;color:#333333;font-family:&quot;\">\r\n	杜波希望大学生如果在就业还是考研的问题上犹豫不决时，最好先问自己三个问题：第一，自己考研的目的是什么，是为了拿一个文凭还是真心觉得自己想要通过继续学习来弥补和提升自己的不足?第二，自己未来理想的工作是什么样的，是否需要通过读研究生来支撑才能得以实现?第三，自己是否喜欢读书、读文献，喜欢思考问题?当回答这三个问题之后，自然就会清楚自己的选择了。其实，选择就业或是考研都需要与自己未来的长期目标相匹配，而长期目标又最好和自己的性格爱好相吻合。\r\n</p>', '1558271107', '0');
INSERT INTO `article` VALUES ('6', '36', '拼多多已落伍', '拼多多已落伍', '拼多多已落伍', '社交电商，基于人与人之间社交关系链的货品买卖活动，留心观察不难发现，抖音、快手、小红书这类内容社交平台正在尝试“电商化”，而淘宝、京东这类电声平台也在不断尝试“社交化”……', '/Public/attached/2019/05/23/5ce696db7a217.PNG', '<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">在拼多多、云集相继上市之后，腾讯终于开始亲自入场“社交电商”。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">5月12日，微信新版更新“好物圈”功能，点击进入后，用户可以看到“朋友推荐”和“大家买的”商品，也可以主动向好友推荐商品，支持跳转购买链接。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">目前“好物圈”的入口依然比较深，位于发现页面“搜一搜”和“小程序”的二级页面，但一向克制的微信给大量用户发送了小红点提醒。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size:18px;color:#333333;font-weight:700;\">微信最早在去年9月试水社交电商功能，由小程序“购物单”一步步演化至今，完成度已足够高，正式和全量用户见面的日子应该不远了。</span></span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">在产品逻辑上，“好物圈”和之前主推的“看一看”几乎相同，后者主打通过社交关系分发微信公众号的内容。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">“朋友推荐”和“在看”是用户的主动分享；而“大家买过”则和“N人看过”一样，是基于用户的实际购买和浏览行为生成的推荐商品和内容。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">稍有不同的是，“好物圈”还支持用户自主创建圈组，圈组内发布的内容仅本圈可见，形态类似一个只允许分享商品链接的“闺蜜群”、“种草群”。目前“大家买过”栏目中推荐商品均跳转到小程序购买页，除了实体商品，还包括微信读书、电影票等虚拟商品。用户主动推荐的“好物”，需上传图片，可直接添加描述发布，或通过搜索添加小程序购买链接。</span>\r\n</p>\r\n<div class=\"img-container\" style=\"color:#000000;font-family:arial;font-size:12px;font-style:normal;font-weight:400;text-align:start;background-color:#FFFFFF;\">\r\n	<br />\r\n</div>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">微信回应媒体称，“好物圈”希望帮助用户快速找到好的物品，同时帮助优质服务更好浮现。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">虽然仍未正式上线，用户的发布体验也称不上流畅，但“好物圈”已释放出足够的信号：微信不再满足于“九宫格”直接导量的扶持方式，亲自入场“社交电商”。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	社交电商化与电商社交化\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">“社交电商”指的是基于人们的社交关系链卖货，广义上“微商”就是最早期的社交电商。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">几乎自微信诞生起，微商就不断出现在人们的朋友圈、群、附近的人里，利用高频曝光和信任卖货。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">除了相对职业化的微商，人们相互交流商品的购买和使用经验，本身就是天然存在的行为，只是微信的出现让这种行为更加便捷、丰富。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">通过提供定制化的发布工具和分发场景，“好物圈”把用户分享商品的行为产品化，期望能把人们散落在朋友圈、群组里的行为聚合到统一的场景里，从而在商业价值上有了更大的想象空间。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size:18px;color:#333333;font-weight:700;\">无独有偶，抖音、快手、小红书这样的内容社交平台也在尝试“电商化”，网红直播带货、好物种草、景点打卡这样的模式被越来越多的普通人接受。</span></span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">这些平台的电商化尝试不仅能够给用户提供边看边买的流畅体验，更能为平台带来可观的经济收益，“社交电商化”已势不可挡。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size:18px;color:#333333;font-weight:700;\">而另一方面，淘宝、京东这样的电商平台也在不断试水“社交化”。</span></span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">近期，淘宝规则官网公布多份文件，预示小规模内测中的“淘小铺”将很快上线。根据官方的介绍，淘小铺定位“人人可参与的社区化电商”，让普通消费者能成为淘小铺掌柜，分享自己的小铺宝贝就能赚钱。</span>\r\n</p>\r\n<div class=\"img-container\" style=\"color:#000000;font-family:arial;font-size:12px;font-style:normal;font-weight:400;text-align:start;background-color:#FFFFFF;\">\r\n	<br />\r\n</div>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">开通淘小铺的掌柜无需负责产品、物流等环节，只需专注引流、卖货，实现了门槛最低和效率最大化。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">京东的脚步也没有落下，近期，已经沉寂四年的“京东购物圈”低调复活，主打类似小红书的好物分享社区。进入小程序，首页呈现的是用户生产的笔记内容，图片上的物品带有链接直接跳转至京东商城购买页。</span>\r\n</p>\r\n<div class=\"img-container\" style=\"color:#000000;font-family:arial;font-size:12px;font-style:normal;font-weight:400;text-align:start;background-color:#FFFFFF;\">\r\n	<img class=\"large\" style=\"border:0px;width:537px;\" src=\"https://pics1.baidu.com/feed/e1fe9925bc315c60fb3e5b1c671f16174b5477c9.jpeg?token=12a2b8d1441ae1a0003512f668c8731d&amp;s=8C301C9942E056BED794A8CF0300F0A3\" />\r\n</div>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">用户也可直接在小程序内发表文章，可获得积分奖励，优质内容将被推荐上首页供网友浏览。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">据了解，“京东购物圈”小程序内的内容还出现在了微信购物入口的种草频道里，满足用户边看边买的需求。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	电商与社交的融合新趋势\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">社交产品“电商化”，电商产品“社交化”，两个领域的产品都在向对方身上汲取养分，形态上变得越来越接近。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">为什么会出现这样的趋势？</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">首先，电商发展十数年，从PC互联网到移动互联网，中国用户的线上购物习惯已经被充分教育，而商品的供给也由匮乏走到海量。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">传统意义上的电商产品，是基于目的性购物而生，包括淘宝、京东等产品，其设计的基本逻辑是“让用户以最快的速度发现自己想要的商品”，一切产品设计以精准和效率为优先。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">而事实上，随着手机成为人体的智能外设，用户开始将线下的“无目的性购物”迁移到互联网之中，因此，随后的电商产品设计开始逐渐满足用户的“逛街”需求，包括手机淘宝开启的千人千面推荐机制，引入网红直播、微淘等内容社区等等，都是试图满足用户的“不确定性需求”。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">但社交电商的出现，其实使得电商产品开始进入第三个阶段，即满足用户基于购买欲望之上的社交行为，并完成购买，其产品逻辑变成，“先满足交流欲、再满足购物欲，最后满足购物效率”。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">因此，电商产品的社交化是一个必然趋势。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">京东做出的选择，是与微信继续合作，最近京东零售集团轮值CEO徐雷高调宣布，京东将利用微信一级入口及微信生态的用户资源，打造一款新的社交电商产品。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\"><span class=\"bjh-strong\" style=\"font-size:18px;color:#333333;font-weight:700;\">可以预测，这款产品的形态应该不会是又一个拼多多，应该更像是“购物圈”的放大版，或者说，是微信体系的“小红书”。</span></span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">而对于阿里来说，其产品设计经过多轮嬗变，已经具备了自建社交体系的基础，也已经埋下了相当多的种子，比如微淘体系，就可以视为是商家版的淘宝微博，但微淘体系想要从“商家微博”转化为“普通用户的微博”，还需要更多产品上的探索。淘小铺或许是一个新的钥匙，通过分销体系和相应的激励措施，让普通人在淘宝上建立自己的社交圈。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">在现在的电商平台之中，京东已经提前出招，阿里也在不断给出新的破题思路，就连微信也在“好物圈”中保留了电商的火种。也就是说，电商平台搞社交圈，未来会成为一个新的趋势，谁成谁败，或许还关系着电商平台竞争的未来。</span>\r\n</p>\r\n<p style=\"font-size:16px;color:#333333;text-align:justify;font-family:arial;font-style:normal;font-weight:400;text-indent:0px;background-color:#FFFFFF;\">\r\n	<span class=\"bjh-p\">但让人好奇的是，在各电商平台都在社交转型，靠“社交电商”起家的拼多多却有些落伍。从产品上看，拼多多并没有任何社交属性的设计，既没有内容社区，用户除了拼单之外也没有任何可能的互动，几乎所有社交都要在微信上完成，而很明显，随着京东的高调入局，微信的一级入口未来将仍然属于京东，那么，没有社交功能的社交电商拼多多，会在今年的竞争之中走向何方？</span>\r\n</p>', '1558615802', '0');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('1', '超级管理员', '1', '1,2,58,65,59,60,61,62,3,56,4,6,5,7,8,9,10,51,52,53,57,11,54,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,29,30,31,32,33,34,36,37,38,39,40,41,42,43,44,45,46,47,63,48,49,50,55');
INSERT INTO `auth_group` VALUES ('2', '用户管理', '1', '1,13,14,15,16,17,18,19,20,21,22,23');
INSERT INTO `auth_group` VALUES ('9', '笔记审核', '1', '1,13,58');
INSERT INTO `auth_group` VALUES ('8', '文章编写', '1', '1,24,25,26,27,29,30,31,32,33,34,36');

-- ----------------------------
-- Table structure for auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_access`;
CREATE TABLE `auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_access
-- ----------------------------
INSERT INTO `auth_group_access` VALUES ('1', '1');
INSERT INTO `auth_group_access` VALUES ('13', '2');
INSERT INTO `auth_group_access` VALUES ('14', '9');
INSERT INTO `auth_group_access` VALUES ('15', '2');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `islink` tinyint(1) NOT NULL DEFAULT '1',
  `o` int(11) NOT NULL COMMENT '排序',
  `tips` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------
INSERT INTO `auth_rule` VALUES ('1', '0', 'Index/index', '控制台', 'menu-icon fa fa-tachometer', '1', '1', '', '1', '1', '友情提示：经常查看操作日志，发现异常以便及时追查原因。');
INSERT INTO `auth_rule` VALUES ('12', '2', 'Update/devlog', '开发日志', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '12', '');
INSERT INTO `auth_rule` VALUES ('13', '0', '', '用户及组', 'menu-icon fa fa-users', '1', '1', '', '1', '13', '');
INSERT INTO `auth_rule` VALUES ('14', '13', 'Member/index', '用户管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '14', '');
INSERT INTO `auth_rule` VALUES ('15', '13', 'Member/add', '新增用户', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '15', '');
INSERT INTO `auth_rule` VALUES ('16', '13', 'Member/edit', '编辑用户', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '16', '');
INSERT INTO `auth_rule` VALUES ('17', '13', 'Member/update', '保存用户', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '17', '');
INSERT INTO `auth_rule` VALUES ('18', '13', 'Member/del', '删除用户', '', '1', '1', '', '0', '18', '');
INSERT INTO `auth_rule` VALUES ('19', '13', 'Group/index', '用户组管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '19', '');
INSERT INTO `auth_rule` VALUES ('20', '13', 'Group/add', '新增用户组', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '20', '');
INSERT INTO `auth_rule` VALUES ('21', '13', 'Group/edit', '编辑用户组', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '21', '');
INSERT INTO `auth_rule` VALUES ('22', '13', 'Group/update', '保存用户组', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '22', '');
INSERT INTO `auth_rule` VALUES ('23', '13', 'Group/del', '删除用户组', '', '1', '1', '', '0', '23', '');
INSERT INTO `auth_rule` VALUES ('24', '0', '', '网站内容', 'menu-icon fa fa-desktop', '1', '1', '', '1', '24', '');
INSERT INTO `auth_rule` VALUES ('25', '24', 'Article/index', '新闻管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '25', '网站虽然重要，身体更重要，出去走走吧。');
INSERT INTO `auth_rule` VALUES ('26', '24', 'Article/add', '新增新闻', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '26', '');
INSERT INTO `auth_rule` VALUES ('27', '24', 'Article/edit', '编辑文章', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '27', '');
INSERT INTO `auth_rule` VALUES ('29', '24', 'Article/update', '保存文章', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '29', '');
INSERT INTO `auth_rule` VALUES ('30', '24', 'Article/del', '删除文章', '', '1', '1', '', '0', '30', '');
INSERT INTO `auth_rule` VALUES ('31', '24', 'Category/index', '分类管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '31', '');
INSERT INTO `auth_rule` VALUES ('32', '24', 'Category/add', '新增分类', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '32', '');
INSERT INTO `auth_rule` VALUES ('33', '24', 'Category/edit', '编辑分类', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '33', '');
INSERT INTO `auth_rule` VALUES ('34', '24', 'Category/update', '保存分类', 'menu-icon fa fa-caret-right', '1', '1', '', '0', '34', '');
INSERT INTO `auth_rule` VALUES ('36', '24', 'Category/del', '删除分类', '', '1', '1', '', '0', '36', '');
INSERT INTO `auth_rule` VALUES ('48', '0', 'Personal/index', '个人中心', 'menu-icon fa fa-user', '1', '1', '', '1', '48', '');
INSERT INTO `auth_rule` VALUES ('49', '48', 'Personal/profile', '个人资料', 'menu-icon fa fa-user', '1', '1', '', '1', '49', '');
INSERT INTO `auth_rule` VALUES ('50', '48', 'Logout/index', '退出', '', '1', '1', '', '1', '50', '');
INSERT INTO `auth_rule` VALUES ('56', '3', 'Setting/update', '设置保存', '', '1', '1', '', '0', '56', '');
INSERT INTO `auth_rule` VALUES ('57', '9', 'Database/del', '备份删除', '', '1', '1', '', '0', '57', '');
INSERT INTO `auth_rule` VALUES ('58', '13', 'Uarticle/index', '笔记管理', 'menu-icon fa fa-caret-right', '1', '1', '', '1', '25', '网站虽然重要，身体更重要，出去走走吧。');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL COMMENT '0正常，1单页，2外链',
  `pid` int(11) NOT NULL COMMENT '父ID',
  `name` varchar(100) NOT NULL COMMENT '分类名称',
  `dir` varchar(100) NOT NULL COMMENT '目录名称',
  `seotitle` varchar(200) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `cattemplate` varchar(100) NOT NULL,
  `contemplate` varchar(100) NOT NULL,
  `o` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `fsid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('36', '0', '0', '每日新闻', '', '', 'matlab1', 'matlab12', '', '', '', '', '0');

-- ----------------------------
-- Table structure for dirary
-- ----------------------------
DROP TABLE IF EXISTS `dirary`;
CREATE TABLE `dirary` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ctime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `pointnb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isopen` int(2) NOT NULL,
  `pdfurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contentjson` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dirary
-- ----------------------------
INSERT INTO `dirary` VALUES ('107', 'oUQgn0VX055-_zsneKsf2rttYsMM', '算法笔记一', '2019-05-19 22:50:17', '<h1 align=\"center\">算法笔记一</h1><p>1 : 图2-2是实现算法递归调用的栈使用情况示意图。其中TOP是指向栈顶的指针。由于递归算法结构清晰，可读性强，且容易用数学归纳法证明算法的正确性，因此它为设计算法、调试程序带来很大方便。然而，递归算法的运行效率较低，无论是耗费的计算时间还是占用的存储空间都比非递归算法要多。若在程序中消除算法的递归调用，则其运行时间可大为节省。因此，有时希望在递归算法中消除递归调用，使其转化为一个非递归算法，通常，消除递归采用一一个用户定义的栈来模拟系统的递归调用工作栈，从而又仅是机械地费拟还不能达到缩短计算时间和减小点对速归调用工作栈进行简化,尽量减少栈操作，锗空间的目的。</p><div align=\"center\"><img src=\"https://www.caption-he.com.cn/xcx/Uploads/2019-05-19/15582774165ce16d2901e0c.jpg\" border=\"0\" height=\"250\" width=\"250\" align=\"bottom\" /></div><p>2 : 根据分治法的分制原则，应把原问题分为多少个子问题才较适宜2每个子问题是否规模相同或怎样才为适当?这些问题很难子以肯定的回答但人们从大量实践中发现，在用分治法设计算法时，最好使子问题的规模大致相同，即将一个问题分成大小相等的k 个子问题的处理方法是行之有效的。许多问题可以取k = 2.这种使子问题规模大致相等的做法出自一种平衡(Cbalancing)子问题的思想，它几乎总是比子问题规模不等的做法要好。从分治法的一般设计模式可以看出，用它设计出的程序一- 般是递归算法。因此，分治法的计算效率通常可以用递归方程来进行分析.-个分治法将规模为n的问题分成k个规模为n/m的子问题去解。为方便起见，设分解阈值m0 = 1.且adhoc解规模为1的问题耗费1个单位时间。另外，再设将原问题分解为k个子问题及用merge将k个子问题的解合并为原问题的解需用f(n)个单位时间。如果用T(n)表示该分治法divide and conquer(P)解规模为|P|= n的向面所够的计算时间，则有</p><div align=\"center\"><img src=\"https://www.caption-he.com.cn/xcx/Uploads/2019-05-19/15582774165ce16d290f50c.jpg\" border=\"0\" height=\"250\" width=\"250\" align=\"bottom\" /></div><div align=\"right\"><img src=\"C:\\wamp\\www\\ThinkPHP\\Library\\Vendor\\tcpdf\\examples\\images\\tcpdf_logo3.jpg\" border=\"0\" height=\"86\" width=\"86\" align=\"center\" /></div>', '0', '1', 'https://www.caption-he.com.cn/xcx/pdfs/4a39e38857eab8d1c03dce89807648cb.pdf', '|图2-2是实现算法递归调用的栈使用情况示意图。其中TOP是指向栈顶的指针。由于递归算法结构清晰，可读性强，且容易用数学归纳法证明算法的正确性，因此它为设计算法、调试程序带来很大方便。然而，递归算法的运行效率较低，无论是耗费的计算时间还是占用的存储空间都比非递归算法要多。若在程序中消除算法的递归调用，则其运行时间可大为节省。因此，有时希望在递归算法中消除递归调用，使其转化为一个非递归算法，通常，消除递归采用一一个用户定义的栈来模拟系统的递归调用工作栈，从而又仅是机械地费拟还不能达到缩短计算时间和减小点对速归调用工作栈进行简化,尽量减少栈操作，锗空间的目的。|https://www.caption-he.com.cn/xcx/Uploads/2019-05-19/15582774165ce16d2901e0c.jpg|根据分治法的分制原则，应把原问题分为多少个子问题才较适宜2每个子问题是否规模相同或怎样才为适当?这些问题很难子以肯定的回答但人们从大量实践中发现，在用分治法设计算法时，最好使子问题的规模大致相同，即将一个问题分成大小相等的k 个子问题的处理方法是行之有效的。许多问题可以取k = 2.这种使子问题规模大致相等的做法出自一种平衡(Cbalancing)子问题的思想，它几乎总是比子问题规模不等的做法要好。从分治法的一般设计模式可以看出，用它设计出的程序一- 般是递归算法。因此，分治法的计算效率通常可以用递归方程来进行分析.-个分治法将规模为n的问题分成k个规模为n/m的子问题去解。为方便起见，设分解阈值m0 = 1.且adhoc解规模为1的问题耗费1个单位时间。另外，再设将原问题分解为k个子问题及用merge将k个子问题的解合并为原问题的解需用f(n)个单位时间。如果用T(n)表示该分治法divide and conquer(P)解规模为|P|= n的向面所够的计算时间，则有|https://www.caption-he.com.cn/xcx/Uploads/2019-05-19/15582774165ce16d290f50c.jpg');
INSERT INTO `dirary` VALUES ('108', 'oUQgn0VX055-_zsneKsf2rttYsMM', '算法笔记二', '2019-05-19 22:54:49', '<h1 align=\"center\">算法笔记二</h1><p>1 : 分治法不仅可以用来设计算法，而且在其他方面也有广泛应用。例如，可以用分治思想来设计电路、构造数学证明等。现举一例加以说明。没有n一2个运动员要进行网球循环赛。现要设计一个满足以下要求的比赛日程表，(1)每个选手必须与其他n- 1个选手各赛- -次;(2)每个选手天只能赛-次;(3)循环赛共进行n一 1天。按此要求可将比赛日程表设计成有n行和n一1列的表。在表中第i行和第j列处填入第i个选手在第天所遇到的选手。按分治策略，可以将所有选手对分为两半,n个选手的比赛日程表就可以通过为n/2个选手设计的比赛日程表来决定.递归地用这种一分为二的策略对选手进行分割，直到只剩下两个选手时，比赛日程表的制定就变得很简单了。这时只要让这两个选手进行比赛就可以了。图2 -12所列出的正方形表是8个选手的比赛日程表.其中左上角与左下角的两小块分别为选手1至选手4和选手5至选手8前3天的比赛日程据此,将左上角小块中的所有数字按其相对位置抄到右下角,将左下角小块中的所有数字按其相对位置抄到右上角,这样就分别安排好了选手至选手4和选手5至选手8在后4天的比赛日程。依此思想很容易将这个比赛日租表推广到具有任意多个选手的情形。</p><div align=\"center\"><img src=\"https://www.caption-he.com.cn/xcx/Uploads/2019-05-19/15582776885ce16e38c83b9.jpg\" border=\"0\" height=\"250\" width=\"250\" align=\"bottom\" /></div><div align=\"right\"><img src=\"C:\\wamp\\www\\ThinkPHP\\Library\\Vendor\\tcpdf\\examples\\images\\tcpdf_logo3.jpg\" border=\"0\" height=\"86\" width=\"86\" align=\"center\" /></div>', '0', '1', 'https://www.caption-he.com.cn/xcx/pdfs/e779d2ed098ab19c282713ef9c237122.pdf', '|分治法不仅可以用来设计算法，而且在其他方面也有广泛应用。例如，可以用分治思想来设计电路、构造数学证明等。现举一例加以说明。没有n一2个运动员要进行网球循环赛。现要设计一个满足以下要求的比赛日程表，(1)每个选手必须与其他n- 1个选手各赛- -次;(2)每个选手天只能赛-次;(3)循环赛共进行n一 1天。按此要求可将比赛日程表设计成有n行和n一1列的表。在表中第i行和第j列处填入第i个选手在第天所遇到的选手。按分治策略，可以将所有选手对分为两半,n个选手的比赛日程表就可以通过为n/2个选手设计的比赛日程表来决定.递归地用这种一分为二的策略对选手进行分割，直到只剩下两个选手时，比赛日程表的制定就变得很简单了。这时只要让这两个选手进行比赛就可以了。图2 -12所列出的正方形表是8个选手的比赛日程表.其中左上角与左下角的两小块分别为选手1至选手4和选手5至选手8前3天的比赛日程据此,将左上角小块中的所有数字按其相对位置抄到右下角,将左下角小块中的所有数字按其相对位置抄到右上角,这样就分别安排好了选手至选手4和选手5至选手8在后4天的比赛日程。依此思想很容易将这个比赛日租表推广到具有任意多个选手的情形。|https://www.caption-he.com.cn/xcx/Uploads/2019-05-19/15582776885ce16e38c83b9.jpg');
INSERT INTO `dirary` VALUES ('118', 'oUQgn0VX055-_zsneKsf2rttYsMM', '操作系统一', '2019-05-26 15:03:39', '<h1 align=\"center\">操作系统一</h1><p>1 : 文件(File) 是操作系统中的一个重要概念。文件是以计算机硬盘为载体存储在计算机上的信息集合，文件可以是文本文档、图片、程序，等等。在系统运行时，计算机以进程为基本单位进行资源的调度和分配:而在用户进行的输入、输出中，则以文件为基本单位。大多数应用程序的输入都是通过文件来实现的，其输出也都保存在文件中，以便信息的长期存储及将来的访问。当用户将文件用于应用程序的输入、输出时，还希望可以访问文件、修改文件和保存文件等，实现对文件的维护管理，这就需要系统提供一个文件管理系统，操作系统中的文件系统File System )就是用于实现用户的这些管理要求。</p><div align=\"center\"><img src=\"https://www.caption-he.com.cn/xcx/Uploads/2019-05-26/15588542185cea3a4a59f2e.jpg\" border=\"0\" height=\"250\" width=\"250\" align=\"bottom\" /></div><div align=\"right\"><img src=\"C:\\wamp\\www\\ThinkPHP\\Library\\Vendor\\tcpdf\\examples\\images\\tcpdf_logo3.jpg\" border=\"0\" height=\"86\" width=\"86\" align=\"center\" /></div>', '0', '1', 'https://www.caption-he.com.cn/xcx/pdfs/3159ee4fb4ab827eb69383768dda2ee1.pdf', '|文件(File) 是操作系统中的一个重要概念。文件是以计算机硬盘为载体存储在计算机上的信息集合，文件可以是文本文档、图片、程序，等等。在系统运行时，计算机以进程为基本单位进行资源的调度和分配:而在用户进行的输入、输出中，则以文件为基本单位。大多数应用程序的输入都是通过文件来实现的，其输出也都保存在文件中，以便信息的长期存储及将来的访问。当用户将文件用于应用程序的输入、输出时，还希望可以访问文件、修改文件和保存文件等，实现对文件的维护管理，这就需要系统提供一个文件管理系统，操作系统中的文件系统File System )就是用于实现用户的这些管理要求。|https://www.caption-he.com.cn/xcx/Uploads/2019-05-26/15588542185cea3a4a59f2e.jpg');
INSERT INTO `dirary` VALUES ('161', 'oUQgn0VX055-_zsneKsf2rttYsMM', '笔记', '2019-06-04 19:43:09', '<h1 align=\"center\">笔记</h1><p>1 : 目户输入账号密码，点击登录时。前瑞公把数据传输到后端，首先河是用户不存在则返回相应的信息，前瑞提示用户不存在，如果用户有如果密码不对则返回相应的信息。前端提示用户名或密码错误。当系统给将 获取到用户的身份信息，如果是管理员身份，前端页面果是经理，前端页面操作权限为经理，如果为员工，前端页面操作用户的信息存入Session中， 用作登录验证。</p><div align=\"center\"><img src=\"https://www.caption-he.com.cn/xcx/Uploads/2019-06-04/15596485715cf6593bde9d1.jpg\" border=\"0\" height=\"250\" width=\"250\" align=\"bottom\" /></div><div align=\"right\"><img src=\"C:\\wamp\\www\\ThinkPHP\\Library\\Vendor\\tcpdf\\examples\\images\\tcpdf_logo3.jpg\" border=\"0\" height=\"86\" width=\"86\" align=\"center\" /></div>', '0', '1', 'https://www.caption-he.com.cn/xcx/pdfs/38c1f229884b54101074b331b0fb1df9.pdf', '|目户输入账号密码，点击登录时。前瑞公把数据传输到后端，首先河是用户不存在则返回相应的信息，前瑞提示用户不存在，如果用户有如果密码不对则返回相应的信息。前端提示用户名或密码错误。当系统给将 获取到用户的身份信息，如果是管理员身份，前端页面果是经理，前端页面操作权限为经理，如果为员工，前端页面操作用户的信息存入Session中， 用作登录验证。|https://www.caption-he.com.cn/xcx/Uploads/2019-06-04/15596485715cf6593bde9d1.jpg');
INSERT INTO `dirary` VALUES ('162', 'oUQgn0VX055-_zsneKsf2rttYsMM', '笔记', '2019-06-04 19:43:09', '<h1 align=\"center\">笔记</h1><p>1 : 目户输入账号密码，点击登录时。前瑞公把数据传输到后端，首先河是用户不存在则返回相应的信息，前瑞提示用户不存在，如果用户有如果密码不对则返回相应的信息。前端提示用户名或密码错误。当系统给将 获取到用户的身份信息，如果是管理员身份，前端页面果是经理，前端页面操作权限为经理，如果为员工，前端页面操作用户的信息存入Session中， 用作登录验证。</p><div align=\"center\"><img src=\"https://www.caption-he.com.cn/xcx/Uploads/2019-06-04/15596485725cf6593d4b029.jpg\" border=\"0\" height=\"250\" width=\"250\" align=\"bottom\" /></div><div align=\"right\"><img src=\"C:\\wamp\\www\\ThinkPHP\\Library\\Vendor\\tcpdf\\examples\\images\\tcpdf_logo3.jpg\" border=\"0\" height=\"86\" width=\"86\" align=\"center\" /></div>', '0', '1', 'https://www.caption-he.com.cn/xcx/pdfs/28d0534ca3b01128de5a4573d92c0224.pdf', '|目户输入账号密码，点击登录时。前瑞公把数据传输到后端，首先河是用户不存在则返回相应的信息，前瑞提示用户不存在，如果用户有如果密码不对则返回相应的信息。前端提示用户名或密码错误。当系统给将 获取到用户的身份信息，如果是管理员身份，前端页面果是经理，前端页面操作权限为经理，如果为员工，前端页面操作用户的信息存入Session中， 用作登录验证。|https://www.caption-he.com.cn/xcx/Uploads/2019-06-04/15596485725cf6593d4b029.jpg');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `t` int(10) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `log` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', 'admin', '1556965623', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('2', 'admin', '1556965906', '122.206.190.96', '删除菜单ID：12');
INSERT INTO `log` VALUES ('3', 'admin', '1556966013', '122.206.190.96', '删除菜单ID：Array');
INSERT INTO `log` VALUES ('4', 'admin', '1556981296', '122.206.190.96', '登录失败。');
INSERT INTO `log` VALUES ('5', 'admin', '1556981332', '122.206.190.96', '登录失败。');
INSERT INTO `log` VALUES ('6', 'admin', '1556981344', '122.206.190.96', '登录失败。');
INSERT INTO `log` VALUES ('7', 'admin', '1556981405', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('8', 'admin', '1556981771', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('9', 'admin', '1556982603', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('10', 'admin', '1557131106', '182.114.142.231', '登录成功。');
INSERT INTO `log` VALUES ('11', 'admin', '1557131959', '182.114.142.231', '登录失败。');
INSERT INTO `log` VALUES ('12', 'admin', '1557131978', '182.114.142.231', '登录失败。');
INSERT INTO `log` VALUES ('13', 'admin', '1557132003', '182.114.142.231', '登录失败。');
INSERT INTO `log` VALUES ('14', 'admin', '1557132071', '182.114.142.231', '登录成功。');
INSERT INTO `log` VALUES ('15', 'admin', '1557132916', '182.114.142.231', '登录成功。');
INSERT INTO `log` VALUES ('16', 'admin', '1557137408', '182.114.142.231', '登录失败。');
INSERT INTO `log` VALUES ('17', 'admin', '1557137471', '182.114.142.231', '登录失败。');
INSERT INTO `log` VALUES ('18', 'admin', '1557137699', '182.114.142.231', '登录成功。');
INSERT INTO `log` VALUES ('19', 'admin', '1557563191', '115.61.83.62', '登录失败。');
INSERT INTO `log` VALUES ('20', 'admin', '1557563210', '115.61.83.62', '登录失败。');
INSERT INTO `log` VALUES ('21', 'admin', '1557563502', '115.61.83.62', '登录失败。');
INSERT INTO `log` VALUES ('22', 'admin', '1557563620', '115.61.83.62', '登录成功。');
INSERT INTO `log` VALUES ('23', 'admin', '1557646828', '182.116.168.118', '登录成功。');
INSERT INTO `log` VALUES ('24', 'admin', '1557714236', '182.116.168.118', '登录成功。');
INSERT INTO `log` VALUES ('25', 'admin', '1557714430', '182.116.168.118', '新增会员，会员UID：2');
INSERT INTO `log` VALUES ('26', 'admin', '1557715992', '182.116.168.118', '新增分类，ID：36，名称：每日新闻');
INSERT INTO `log` VALUES ('27', 'admin', '1557716280', '182.116.168.118', '登录成功。');
INSERT INTO `log` VALUES ('28', 'admin', '1557716343', '182.116.168.118', '新增会员，会员UID：3');
INSERT INTO `log` VALUES ('29', 'admin', '1557716420', '182.116.168.118', '新增用户组，ID：0，组名：文章编写');
INSERT INTO `log` VALUES ('30', 'admin', '1557716433', '182.116.168.118', '新增会员，会员UID：4');
INSERT INTO `log` VALUES ('31', '999', '1557716455', '182.116.168.118', '登录成功。');
INSERT INTO `log` VALUES ('32', 'admin', '1557716520', '182.116.168.118', '登录成功。');
INSERT INTO `log` VALUES ('33', '999', '1557716567', '182.116.168.118', '登录成功。');
INSERT INTO `log` VALUES ('34', 'admin', '1557716585', '182.116.168.118', '登录成功。');
INSERT INTO `log` VALUES ('35', 'admin', '1557716614', '182.116.168.118', '编辑用户组，ID：8，组名：文章编写');
INSERT INTO `log` VALUES ('36', '999', '1557716626', '182.116.168.118', '登录成功。');
INSERT INTO `log` VALUES ('37', '999', '1557716714', '182.116.168.118', '登录成功。');
INSERT INTO `log` VALUES ('38', 'admin', '1557723877', '182.116.168.118', '登录失败。');
INSERT INTO `log` VALUES ('39', 'admin', '1557723906', '182.116.168.118', '登录成功。');
INSERT INTO `log` VALUES ('40', 'admin', '1557723934', '182.116.168.118', '删除会员UID：Array');
INSERT INTO `log` VALUES ('41', 'admin', '1557723995', '182.116.168.118', '删除会员UID：Array');
INSERT INTO `log` VALUES ('42', 'admin', '1557724048', '182.116.168.118', '新增文章，AID：1');
INSERT INTO `log` VALUES ('43', 'admin', '1557724060', '182.116.168.118', '删除文章，AID：1');
INSERT INTO `log` VALUES ('44', 'admin', '1557724104', '182.116.168.118', '新增会员，会员UID：5');
INSERT INTO `log` VALUES ('45', 'admin', '1557724738', '182.116.168.118', '删除会员UID：Array');
INSERT INTO `log` VALUES ('46', 'admin', '1557725217', '182.116.168.118', '新增文章，AID：2');
INSERT INTO `log` VALUES ('47', 'admin', '1557725315', '182.116.168.118', '新增文章，AID：3');
INSERT INTO `log` VALUES ('48', 'admin', '1558186356', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('49', 'admin', '1558188054', '171.12.11.190', '登录成功。');
INSERT INTO `log` VALUES ('50', 'admin', '1558188129', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('51', 'admin', '1558188147', '122.206.190.96', '删除文章，AID：3');
INSERT INTO `log` VALUES ('52', 'admin', '1558245409', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('53', 'admin', '1558247023', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('54', 'admin', '1558249421', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('55', 'admin', '1558249823', '122.206.190.96', '删除笔记，AID：103');
INSERT INTO `log` VALUES ('56', 'admin', '1558250529', '122.206.190.96', '删除笔记，AID：102');
INSERT INTO `log` VALUES ('57', 'admin', '1558250749', '122.206.190.96', '新增会员，会员UID：6');
INSERT INTO `log` VALUES ('58', 'admin', '1558250757', '122.206.190.96', '新增会员，会员UID：7');
INSERT INTO `log` VALUES ('59', 'admin', '1558250765', '122.206.190.96', '删除会员UID：Array');
INSERT INTO `log` VALUES ('60', 'admin', '1558251349', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('61', 'admin', '1558255718', '219.155.76.248', '登录成功。');
INSERT INTO `log` VALUES ('62', 'admin', '1558255731', '219.155.76.248', '新增会员，会员UID：8');
INSERT INTO `log` VALUES ('63', 'admin', '1558255829', '219.155.76.248', '新增会员，会员UID：9');
INSERT INTO `log` VALUES ('64', 'admin', '1558256618', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('65', 'admin', '1558270656', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('66', 'admin', '1558270667', '122.206.190.96', '删除文章，AID：2');
INSERT INTO `log` VALUES ('67', 'admin', '1558270931', '122.206.190.96', '新增文章，AID：4');
INSERT INTO `log` VALUES ('68', 'admin', '1558271107', '122.206.190.96', '新增文章，AID：5');
INSERT INTO `log` VALUES ('69', 'admin', '1558278674', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('70', 'admin', '1558278728', '122.206.190.96', '编辑会员信息，会员UID：8');
INSERT INTO `log` VALUES ('71', 'admin', '1558278776', '122.206.190.96', '编辑会员信息，会员UID：8');
INSERT INTO `log` VALUES ('72', 'admin', '1558278826', '122.206.190.96', '编辑会员信息，会员UID：9');
INSERT INTO `log` VALUES ('73', 'admin', '1558451374', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('74', 'admin', '1558453530', '122.206.190.96', '删除笔记，AID：109');
INSERT INTO `log` VALUES ('75', 'admin', '1558498166', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('76', 'admin', '1558615602', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('77', 'admin', '1558615625', '122.206.190.96', '删除会员UID：Array');
INSERT INTO `log` VALUES ('78', 'admin', '1558615663', '122.206.190.96', '新增会员，会员UID：10');
INSERT INTO `log` VALUES ('79', 'test1', '1558615679', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('80', 'test1', '1558615802', '122.206.190.96', '新增文章，AID：6');
INSERT INTO `log` VALUES ('81', 'test1', '1558615912', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('82', 'admin', '1558616398', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('83', 'admin', '1558854376', '61.158.148.110', '登录成功。');
INSERT INTO `log` VALUES ('84', 'admin', '1558862236', '61.158.149.179', '登录成功。');
INSERT INTO `log` VALUES ('85', 'admin', '1558863510', '61.158.149.179', '登录成功。');
INSERT INTO `log` VALUES ('86', 'admin', '1558965881', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('87', 'test1', '1558965926', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('88', 'admin', '1559383084', '61.158.148.3', '登录成功。');
INSERT INTO `log` VALUES ('89', 'admin', '1559383116', '61.158.148.3', '删除笔记，AID：120');
INSERT INTO `log` VALUES ('90', 'admin', '1559383121', '61.158.148.3', '删除笔记，AID：119');
INSERT INTO `log` VALUES ('91', 'admin', '1559383175', '61.158.148.3', '新增会员，会员UID：11');
INSERT INTO `log` VALUES ('92', 'admin', '1559383197', '61.158.148.3', '编辑会员信息，会员UID：11');
INSERT INTO `log` VALUES ('93', 'admin', '1559384556', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('94', 'admin', '1559384572', '122.206.190.96', '编辑会员信息，会员UID：11');
INSERT INTO `log` VALUES ('95', 'admin', '1559384892', '122.206.190.96', '编辑会员信息，会员UID：11');
INSERT INTO `log` VALUES ('96', 'admin', '1559385292', '122.206.190.96', '编辑会员信息，会员UID：11');
INSERT INTO `log` VALUES ('97', 'admin', '1559385369', '122.206.190.96', '编辑会员信息，会员UID：11');
INSERT INTO `log` VALUES ('98', 'admin', '1559385443', '122.206.190.96', '删除会员UID：Array');
INSERT INTO `log` VALUES ('99', 'admin', '1559387007', '122.206.190.96', '新增文章，AID：7');
INSERT INTO `log` VALUES ('100', 'admin', '1559387059', '122.206.190.96', '编辑文章，AID：7');
INSERT INTO `log` VALUES ('101', 'admin', '1559387413', '122.206.190.96', '编辑文章，AID：7');
INSERT INTO `log` VALUES ('102', 'admin', '1559387422', '122.206.190.96', '删除文章，AID：7');
INSERT INTO `log` VALUES ('103', 'admin', '1559387464', '122.206.190.96', '修改个人资料');
INSERT INTO `log` VALUES ('104', 'admin', '1559387491', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('105', 'admin', '1559387825', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('106', 'test1', '1559387960', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('107', 'admin', '1559388146', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('108', 'admin', '1559388226', '122.206.190.96', '编辑会员信息，会员UID：10');
INSERT INTO `log` VALUES ('109', 'test1', '1559388284', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('110', 'admin', '1559388494', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('111', 'admin', '1559388539', '122.206.190.96', '编辑会员信息，会员UID：10');
INSERT INTO `log` VALUES ('112', 'admin', '1559388731', '122.206.190.96', '编辑会员信息，会员UID：10');
INSERT INTO `log` VALUES ('113', 'test1', '1559389626', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('114', 'admin', '1559389925', '122.206.190.96', '登录失败。');
INSERT INTO `log` VALUES ('115', 'admin', '1559389936', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('116', 'admin', '1559391713', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('117', 'admin', '1559391752', '122.206.190.96', '编辑用户组，ID：2，组名：管理员');
INSERT INTO `log` VALUES ('118', 'admin', '1559391800', '122.206.190.96', '新增会员，会员UID：12');
INSERT INTO `log` VALUES ('119', 'test4', '1559391830', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('120', 'admin', '1559391947', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('121', 'admin', '1559391966', '122.206.190.96', '删除会员UID：Array');
INSERT INTO `log` VALUES ('122', 'admin', '1559391988', '122.206.190.96', '删除用户组ID：3');
INSERT INTO `log` VALUES ('123', 'admin', '1559392018', '122.206.190.96', '编辑用户组，ID：2，组名：用户管理');
INSERT INTO `log` VALUES ('124', 'admin', '1559392037', '122.206.190.96', '新增用户组，ID：0，组名：笔记审核');
INSERT INTO `log` VALUES ('125', 'admin', '1559392063', '122.206.190.96', '新增会员，会员UID：13');
INSERT INTO `log` VALUES ('126', 'admin', '1559392084', '122.206.190.96', '新增会员，会员UID：14');
INSERT INTO `log` VALUES ('127', 'test1', '1559392111', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('128', 'test2', '1559392172', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('129', 'test1', '1559392272', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('130', 'test1', '1559394630', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('131', 'test1', '1559395071', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('132', 'test1', '1559395093', '122.206.190.96', '编辑会员信息，会员UID：13');
INSERT INTO `log` VALUES ('133', 'admin', '1559396124', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('134', 'admin', '1559396162', '122.206.190.96', '编辑用户组，ID：9，组名：笔记审核');
INSERT INTO `log` VALUES ('135', 'admin', '1559396235', '122.206.190.96', '编辑用户组，ID：8，组名：文章编写');
INSERT INTO `log` VALUES ('136', 'test1', '1559396560', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('137', 'test1', '1559396590', '122.206.190.96', '新增会员，会员UID：15');
INSERT INTO `log` VALUES ('138', 'test4', '1559396607', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('139', 'test4', '1559396644', '122.206.190.96', '编辑用户组，ID：2，组名：用户管理');
INSERT INTO `log` VALUES ('140', 'admin', '1559396998', '122.206.190.96', '登录成功。');
INSERT INTO `log` VALUES ('141', 'admin', '1559465393', '61.158.148.3', '登录成功。');
INSERT INTO `log` VALUES ('142', 'admin', '1559639554', '61.158.149.34', '登录成功。');
INSERT INTO `log` VALUES ('143', 'admin', '1559646343', '218.29.64.19', '登录成功。');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(225) NOT NULL,
  `head` varchar(255) NOT NULL COMMENT '头像',
  `sex` tinyint(1) NOT NULL COMMENT '0保密1男，2女',
  `birthday` int(10) NOT NULL COMMENT '生日',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `qq` varchar(20) NOT NULL COMMENT 'QQ',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `password` varchar(32) NOT NULL,
  `t` int(10) unsigned NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', 'admin', '/Public/qwadmin/images/admin.jpg', '1', '1420128000', '13800138000', '10373458', 'admin@xxx.com', 'e10adc3949ba59abbe56e057f20f883e', '1442505600');
INSERT INTO `member` VALUES ('15', 'test4', '/Public/attached/2019/06/01/5cf280ee01e5d.PNG', '0', '0', '', '', '', 'e10adc3949ba59abbe56e057f20f883e', '1559396590');
INSERT INTO `member` VALUES ('13', 'test1', '/Public/attached/2019/06/01/5cf26f3c95262.PNG', '1', '-28800', '', '', '', 'e10adc3949ba59abbe56e057f20f883e', '1559395093');
INSERT INTO `member` VALUES ('14', 'test2', '/Public/attached/2019/06/01/5cf26f533f538.PNG', '0', '0', '', '', '', 'e10adc3949ba59abbe56e057f20f883e', '1559392084');

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `k` varchar(100) NOT NULL COMMENT '变量',
  `v` varchar(255) NOT NULL COMMENT '值',
  `type` tinyint(1) NOT NULL COMMENT '0系统，1自定义',
  `name` varchar(255) NOT NULL COMMENT '说明',
  PRIMARY KEY (`k`),
  KEY `k` (`k`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('sitename', 'LRADMIN', '0', '');
INSERT INTO `setting` VALUES ('title', '云笔记后台管理', '0', '');
INSERT INTO `setting` VALUES ('keywords', '关键词', '0', '');
INSERT INTO `setting` VALUES ('description', '网站描述', '0', '');
INSERT INTO `setting` VALUES ('footer', '2019(c)Caption-he', '0', '');
INSERT INTO `setting` VALUES ('test', '测试', '1', '测试变量');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `nick` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `openid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('和同学Smile', 'oUQgn0VX055-_zsneKsf2rttYsMM', 'https://wx.qlogo.cn/mmopen/vi_32/ThcAOksIWA40mjIibiaibnl8ahibMSbWmicmOjmFU4haNXAqrTu5IibdcVVaUaymLTfdzVXV3SKx3VQNLBw4JJmr1Ihg/132', 'man');
INSERT INTO `userinfo` VALUES ('和谐', 'oUQgn0VYm2CFJJTZe6bAlYda0LCg', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq58MbMDFUo48XBcvZsHLiaxFDvYkFbWTXqJY1ar2G476UEv162A5cYQAombQWzpVB5QmVmYSflfeQ/132', 'none');
INSERT INTO `userinfo` VALUES ('杜得齐', 'oUQgn0Whos651Nw0jPIw6swieJtM', 'https://wx.qlogo.cn/mmhead/BRPvvA3e9qXst6u5pe5IA8evlsxw8Cwgg3ghSDaCyA8/132', 'none');
INSERT INTO `userinfo` VALUES ('和同学Smile', '', 'https://wx.qlogo.cn/mmopen/vi_32/ThcAOksIWA40mjIibiaibnl8ahibMSbWmicmOjmFU4haNXAqrTu5IibdcVVaUaymLTfdzVic4vnFhhq8CwLvbgO13t47A/132', 'man');
