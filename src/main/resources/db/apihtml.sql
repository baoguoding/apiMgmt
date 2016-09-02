/*
Navicat MySQL Data Transfer

Source Server         : 192.168.10.64
Source Server Version : 50632
Source Host           : 192.168.10.64:3306
Source Database       : apihtml

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2016-09-02 17:08:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for api
-- ----------------------------
DROP TABLE IF EXISTS `api`;
CREATE TABLE `api` (
  `api_id` varchar(50) COLLATE utf8_bin NOT NULL,
  `version` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type_desc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `request_sample` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `response_sample` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of api
-- ----------------------------
INSERT INTO `api` VALUES ('0dfa82c46f4911e6b385b8aeed28f992', '1.0', '获取待办事宜', '等待客户办理的事项', 'WF', '工作流', '/wfapi/awt', '{\"userId\":\"manager1\"}', 'response sample 1');
INSERT INTO `api` VALUES ('10ccdcfc2295426ea5d2092d33798399', '1.0', 'New&Edit API', '新增编辑API', 'API', 'API', 'http://192.168.10.15:8383/rs-apiMgmt/api/edit', '建议从Get One API去拿一个API，然后直接修改，这样比较快！', '');
INSERT INTO `api` VALUES ('11f2ce5b6f6711e6b385b8aeed28f992', '1.0', '获取事务操作菜单', '获取事务操作菜单', 'WF', '工作流', '/wfapi/options', '{\"userId\":\"manager1\",\"gnmkId\":\"M1\",\"wfInstNum\":1}', 'response sample 3');
INSERT INTO `api` VALUES ('1c6a8ff347c34234a762f9d399c15473', '1.0', 'Get API List', '获取API列表', 'API', 'API', 'http://192.168.10.15:8383/rs-apiMgmt/api/list', '不需要参数、直接执行', '');
INSERT INTO `api` VALUES ('344b32fb7da249cd9fcdc6b09e1643ce', '1.0', 'Delete API', '删除一个API', 'API', 'API', 'http://192.168.10.15:8383/rs-apiMgmt/api/delete', '{\"apiId\":\"adce43e597e842aabc9af1353fd348c9\"}', '');
INSERT INTO `api` VALUES ('687d273e6f4911e6b385b8aeed28f992', '1.0', '启动工作流', '从具体业务中触发一个工作流', 'WF', '工作流', '/wfapi/start', '{\"userId\":\"manager1\",\"gnmkId\":\"M1\"}', 'response sample 2');
INSERT INTO `api` VALUES ('697ddc3a4d584cbea4ccffa0af371044', '1.0', '获取下一步task列表', '获取下一步task列表', 'WF', '工作流', '/wfapi/tasks', '{\"gnmkId\":\"M1\",\"wfInstNum\":\"2\",\"optCode\":\"C\"}', 'response sample 1');
INSERT INTO `api` VALUES ('adce43e597e842aabc9af1353fd348b8', '1.0', 'Get One API', '获取一个API', 'API', 'API', 'http://192.168.10.15:8383/rs-apiMgmt/api/one', '{\"apiId\":\"adce43e597e842aabc9af1353fd348b8\"}', '');
INSERT INTO `api` VALUES ('be2793411aa9456897279c2d18ee6a5d', '1.0', '事务提交', '事务提交', 'WF', '工作流', '/wfapi/operate', '{\"gnmkId\":\"M1\",\"wfInstNum\":\"2\",\"nextTaskId\":\"7617f50371e542e69fd8e08b781e89c3\",\"nextUserIds\":\"manager2\",\"optCode\":\"C\",\"userId\":\"manager1\",\"comments\":\"测试事务提交\"}', 'response sample 1');
INSERT INTO `api` VALUES ('f0d2fd71bf9947e79c3352cb984e9fbc', '1.0', '获取历史记录', '获取历史记录', 'WF', '工作流', '/wfapi/history', '{\"gnmkId\":\"M1\",\"wfInstNum\":\"3\"}', 'response sample 1');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` varchar(50) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `depart` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('0001', '陈勇', '男', '总经理办公室', '总经理', '13962319018', 'yong.chen@roadshare.com');
INSERT INTO `contacts` VALUES ('0002', '沈建勋', '男', '总经理办公室', '技术总监', '13962351618', 'jianxun.shen@roadshare.com');
INSERT INTO `contacts` VALUES ('0004', '周毅', '男', '研发部门', '研发部经理', '13862300928', 'yi.zhou@roadshare.com');
INSERT INTO `contacts` VALUES ('0009', '曹柏剑', '男', '实施部门', '咨询顾问', '13915618106', 'bojian.cao@roadshare.com');
INSERT INTO `contacts` VALUES ('0010', '肖瓅', '男', '研发部门', '研发设计师', '13962489376', 'li.xiao@roadshare.com');
INSERT INTO `contacts` VALUES ('0015', '王佳', '男', '区域事业部', '研发设计师', '18015605860', 'jia.wang@roadshare.com');
INSERT INTO `contacts` VALUES ('0019', '江典宝', '男', '实施部门', '项目经理', '15995960939', 'dianbao.jiang@roadshare.com');
INSERT INTO `contacts` VALUES ('0020', '邓家桢', '男', '区域事业部', '实施顾问', '13776226562', 'jiazhen.deng@roadshare.com');
INSERT INTO `contacts` VALUES ('0023', '陆裕青', '男', '实施部门', '项目经理', '13506247924', 'yuqing.lu@roadshare.com');
INSERT INTO `contacts` VALUES ('0031', '李阳昂', '男', '研发部门', '研发设计师', '15151776956', 'yangang.li@roadshare.com');
INSERT INTO `contacts` VALUES ('0043', '马志娟', '女', '运营支持部', '运营支持部经理', '18951111937', 'zhijuan.ma@roadshare.com');
INSERT INTO `contacts` VALUES ('0044', '袁慕亚', '女', '区域事业部', '研发工程师', '18551143664', 'muya.yuan@roadshare.com');
INSERT INTO `contacts` VALUES ('0045', '周芳', '女', '财务部门', '主办会计', '13773080221', 'fang.zhou@roadshare.com');
INSERT INTO `contacts` VALUES ('0060', '赵君', '女', '人力资源部', '人事主管', '18963661698', 'jun.zhao@roadshare.com');
INSERT INTO `contacts` VALUES ('0064', '谢宝家', '男', '实施部门', '实施顾问', '18862494010', 'baojia.xie@roadshare.com');
INSERT INTO `contacts` VALUES ('0076', '胡海峰', '男', '区域事业部', '研发工程师', '18662326064', 'haifeng.hu@roadshare.com');
INSERT INTO `contacts` VALUES ('0084', '江发波', '男', '区域事业部', '区域总经理', '15062576260', 'fabo.jiang@roadshare.com');
INSERT INTO `contacts` VALUES ('0086', '严金华', '男', '实施部门', '实施部经理', '13862063433', 'jinhua.yan@roadshare.com');
INSERT INTO `contacts` VALUES ('0090', '朱世良', '女', '研发部门', '测试工程师', '13092621596', 'shiliang.zhu@roadshare.com');
INSERT INTO `contacts` VALUES ('0091', '丁有健', '男', '研发部门', '研发工程师', '15850816690', 'youjian.ding@roadshare.com');
INSERT INTO `contacts` VALUES ('0102', '沈秋燕', '女', '实施部门', '实施顾问', '13862304647', 'qiuyan.shen@roadshare.com');
INSERT INTO `contacts` VALUES ('0106', '顾敏君', '女', '财务部门', '会计出纳', '18651182005', 'minjun.gu@roadshare.com');
INSERT INTO `contacts` VALUES ('0111', '王海山', '男', '实施部门', '实施顾问', '18662662855', 'haishan.wang@roadshare.com');
INSERT INTO `contacts` VALUES ('0124', '杨敏恒', '男', '区域事业部', '实施顾问', '18620652325', 'minheng.yang@roadshare.com');
INSERT INTO `contacts` VALUES ('0125', '黄自鹏', '男', '区域事业部', '实施顾问', '18021262160', 'zipeng.huang@roadshare.com');
INSERT INTO `contacts` VALUES ('0136', '许海峰', '男', '实施部门', '咨询顾问', '18626236469', 'haifeng.xu@roadshare.com');
INSERT INTO `contacts` VALUES ('0138', '李文芹', '女', '研发部门', '测试工程师', '18912617006', 'wenqin.li@roadshare.com');
INSERT INTO `contacts` VALUES ('0141', '董志文', '男', '实施部门', '实施工程师', '15995972526', 'zhiwen.dong@roadshare.com');
INSERT INTO `contacts` VALUES ('0142', '王希超', '男', '研发部门', '研发工程师', '13584431438', 'xichao.wang@roadshare.com');
INSERT INTO `contacts` VALUES ('0145', '王琴', '女', '研发部门', '测试工程师', '15261802440', 'qin.wang@roadshare.com');
INSERT INTO `contacts` VALUES ('0148', '李乃光', '男', '研发部门', '研发工程师', '18662315910', 'naiguang.li@roadshare.com');
INSERT INTO `contacts` VALUES ('0151', '周倩', '女', '研发部门', '研发工程师', '18896550221', 'qian.zhou@roadshare.com');
INSERT INTO `contacts` VALUES ('0152', '孙赛楠', '女', '研发部门', '测试工程师', '18896550272', 'sainan.sun@roadshare.com');
INSERT INTO `contacts` VALUES ('0156', '汤锦萍', '女', '研发部门', '研发设计师', '18962568127', 'jinping.tang@roadshare.com');
INSERT INTO `contacts` VALUES ('0157', '谭添文', '女', '区域事业部', '实施工程师', '18912474571', 'tianwen.tan@roadshare.com');
INSERT INTO `contacts` VALUES ('0158', '曹菊星', '女', '研发部门', '研发工程师', '13862424639', 'juxing.cao@roadshare.com');
INSERT INTO `contacts` VALUES ('0164', '张维力', '女', '运营支持部', '企划专员', '15205183667', 'weili.zhang@roadshare.com');
INSERT INTO `contacts` VALUES ('0165', '喻献明', '女', '研发部门', '研发项目主管', '13512535059', 'xianming.yu@roadshare.com');
INSERT INTO `contacts` VALUES ('0167', '高三平', '女', '运营支持部', '市场推广', '15862505075', 'sanping.gao@roadshare.com');
INSERT INTO `contacts` VALUES ('0169', '陈明通', '男', '实施部门', '实施工程师', '18252714844', 'mingtong.chen@roadshare.com');
INSERT INTO `contacts` VALUES ('0171', '李利', '男', '研发部门', '研发工程师', '13862246102', 'li.li@roadshare.com');
INSERT INTO `contacts` VALUES ('0172', '朱鹏飞', '男', '实施部门', '实施顾问', '13915555297', 'pengfei.zhu@roadshare.com');
INSERT INTO `contacts` VALUES ('0173', '邵磊', '男', '区域事业部', '实施工程师', '15851872047', 'lei.shao@roadshare.com');
INSERT INTO `contacts` VALUES ('0176', '潘雅萍', '女', '研发部门', '研发工程师', '18652998576', 'yaping.pan@roadshare.com');
INSERT INTO `contacts` VALUES ('0178', '宫铭', '男', '实施部门', '实施工程师', '18261701004', 'ming.gong@roadshare.com');
INSERT INTO `contacts` VALUES ('0179', '徐蓓', '女', '研发部门', '测试工程师', '18151955760', 'bei.xu@roadshare.com');
INSERT INTO `contacts` VALUES ('0180', '张义', '男', '新产品孵化-平台开发', 'JAVA平台开发主管', '15862456107', 'yi.zhang@roadshare.com');
INSERT INTO `contacts` VALUES ('0181', '郑晓文', '男', '新产品孵化-云产品', '产品经理', '13951933536', 'xiaowen.zheng@roadshare.com');
INSERT INTO `contacts` VALUES ('0182', '邰储锦', '男', '区域事业部', '实施工程师', '15295013533', 'chujin.tai@roadshare.com');
INSERT INTO `contacts` VALUES ('0186', '洪圣文', '男', '新产品孵化-平台开发', 'Java开发工程师', '17715590403', 'shengwen.hong@roadshare.com');
INSERT INTO `contacts` VALUES ('0187', '张洋洋', '男', '研发部门', '研发工程师', '15961760662', 'yangyang.zhang@roadshare.com');
INSERT INTO `contacts` VALUES ('0188', '马佳依', '女', '区域事业部', '研发工程师', '18651182772', 'jiayi.ma@roadshare.com');
INSERT INTO `contacts` VALUES ('0189', '周冰', '男', '新产品孵化-平台开发', 'Java开发工程师', '18705595043', 'bing.zhou@roadshare.com  ');
INSERT INTO `contacts` VALUES ('0190', '田禾', '女', '人力资源部', '招聘专员', '15995479106', 'he.tian@roadshare.com');
INSERT INTO `contacts` VALUES ('0197', '宋劲柯', '男', '新产品孵化-云产品', '高级前端开发工程师', '17095070739', 'jinke.song@roadshare.com');
INSERT INTO `contacts` VALUES ('0199', '张建国', '男', '销售部', '销售总监', '13616204364', 'jianguo.zhang@roadshare.com');
INSERT INTO `contacts` VALUES ('0201', '申浩田', '男', '实施部', '实施工程师', '13809014161', 'haotian.shen@roadshare.com');
INSERT INTO `contacts` VALUES ('0203', '马军虎', '男', '区域事业部', '实施工程师', '15250005760', 'junhu.ma@roadshare.com');
INSERT INTO `contacts` VALUES ('0204', '马秋洋', '男', '实施部', '实施工程师', '13914026547', 'qiuyang.ma@roadshare.com');
INSERT INTO `contacts` VALUES ('0205', '徐璐', '男', '区域事业部', '实施工程师', '18260624011', 'lu.xu@roadshare.com');
INSERT INTO `contacts` VALUES ('0206', '张良', '男', '研发部门', '研发工程师', '18252682816', 'liang.zhang@roadshare.com');
INSERT INTO `contacts` VALUES ('0207', '费玉明', '男', '研发部门', '研发工程师', '18896584290', 'yuming.fei@roadshare.com');
INSERT INTO `contacts` VALUES ('0208', '李斌', '男', '研发部门', '研发工程师', '18051229827', 'bin.li@roadshare.com');
INSERT INTO `contacts` VALUES ('0210', '马家辉', '男', '新产品孵化-平台开发', 'Java工程师', '15262731851', 'jiahui.ma@roadshare.com');
INSERT INTO `contacts` VALUES ('0211', '郭俊', '男', '销售部', '销售代表', '15850010487', 'jun.guo@roadshare.com');
INSERT INTO `contacts` VALUES ('0214', '熊祥发', '男', '研发部门', '研发工程师', '18687038642', 'xiangfa.xiong@roadshare.com');
INSERT INTO `contacts` VALUES ('0215', '吴冰', '男', '区域事业部', '实施顾问', '13773634117', 'bing.wu@roadshare.com');
INSERT INTO `contacts` VALUES ('0216', '张亦弛', '男', '销售部', '销售代表', '18550099995', 'yichi.zhang@roadshare.com');
INSERT INTO `contacts` VALUES ('0217', '刘婷', '女', '运营支持部', '商务行政助理', '13914047216', 'ting.liu@roadshare.com');
INSERT INTO `contacts` VALUES ('0218', '赵建东', '男', '研发部门', '研发工程师', '18852991837', 'jiandong.zhao@roadshare.com');
INSERT INTO `contacts` VALUES ('0219', '丁保国', '男', '新产品孵化', '高级Java工程师', '13862268323', 'baoguo.ding@roadshare.com');
INSERT INTO `contacts` VALUES ('0220', '张琦', '男', '销售部', '销售代表', '13914044127', 'qi.zhang@roadshare.com');
INSERT INTO `contacts` VALUES ('0221', '杨烽烽', '男', '新产品孵化-平台开发', 'Java工程师', '15250467150', 'fengfeng.yang@roadshare.com');
INSERT INTO `contacts` VALUES ('0223', '武俊永', '男', '研发部门', '研发工程师', '15737954115', 'junyong.wu@roadshare.com');
INSERT INTO `contacts` VALUES ('0224', '杨海勇', '男', '研发部门', '研发工程师', '13207129031', 'haiyong.yang@roadshare.com');
INSERT INTO `contacts` VALUES ('0225', '俞晓斌', '男', '新产品孵化', '高级Java工程师', '13912607620', 'xiaobin.yu@roadshare.com');
INSERT INTO `contacts` VALUES ('0226', '龚袁端', '男', '销售部', '销售代表', '18262040325', 'yuanduan.gong@oadshare.com');
INSERT INTO `contacts` VALUES ('0228', '提传', '男', '新产品孵化-平台开发', '移动应用开发工程师', '18463239749', 'chuan.ti@roadshare.com');
INSERT INTO `contacts` VALUES ('0229', '李啸海', '男', '实施部', '技术工程师', '17768038804', 'xiaohai.li@roadshare.com');
INSERT INTO `contacts` VALUES ('0230', '刘玉鹏', '男', '实施部', '实施工程师', '13162010721', 'yupeng.liu@roadshare.com');
INSERT INTO `contacts` VALUES ('139', '熊宇', '男', '实施部门', '实施工程师', '18397943226', 'yu.xiong@roadshare.com');
INSERT INTO `contacts` VALUES ('ZHANGL', '张力', '男', '总经理办公室', '董事长', '13862340566', 'li.zhang@roadshare.com');

-- ----------------------------
-- Table structure for param
-- ----------------------------
DROP TABLE IF EXISTS `param`;
CREATE TABLE `param` (
  `param_id` varchar(50) COLLATE utf8_bin NOT NULL,
  `api_id` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of param
-- ----------------------------
INSERT INTO `param` VALUES ('010d326d3652461ba10063c500a4569e', 'f0d2fd71bf9947e79c3352cb984e9fbc', 'optCode', '操作类型，C:提交，RJ：退回，。。');
INSERT INTO `param` VALUES ('01f1dc4fc43c4c2aa39d9a7d6f16326a', 'be2793411aa9456897279c2d18ee6a5d', 'return_msg', '返回描述');
INSERT INTO `param` VALUES ('0746574dbd424107bccf04dd11fafd86', 'f0d2fd71bf9947e79c3352cb984e9fbc', 'taskOwner', '待处理人');
INSERT INTO `param` VALUES ('078d4560beb04ebdb9f617d70deac141', 'f0d2fd71bf9947e79c3352cb984e9fbc', 'taskDescp', '事务描述');
INSERT INTO `param` VALUES ('0bdf96df931d43d1858be179f7744459', '11f2ce5b6f6711e6b385b8aeed28f992', 'return_code', '0:成功<br/>1：失败');
INSERT INTO `param` VALUES ('0d038e0b29844ba4bdf10e434797b030', '11f2ce5b6f6711e6b385b8aeed28f992', 'wfInstNum', '工作流实例序列号');
INSERT INTO `param` VALUES ('27895c41f1c34fec87c49ecaae4618bb', 'be2793411aa9456897279c2d18ee6a5d', 'comments', '处理意见');
INSERT INTO `param` VALUES ('2cc26503e54f456296739c0e5e6b9de0', '0dfa82c46f4911e6b385b8aeed28f992', 'txOwner', '待处理人');
INSERT INTO `param` VALUES ('3536e136850a46938a23446e4843a481', '687d273e6f4911e6b385b8aeed28f992', 'userId', '用户Id');
INSERT INTO `param` VALUES ('3555c2966d3f4bc296dc4f815e689a58', 'f0d2fd71bf9947e79c3352cb984e9fbc', 'taskRend', '任务实际完成时间');
INSERT INTO `param` VALUES ('36fa91c8617d41f7a8c4048f7f5f10aa', '697ddc3a4d584cbea4ccffa0af371044', 'gnmkId', '功能模块Id');
INSERT INTO `param` VALUES ('3b04953e6bf5436c89b6b798a5e17547', '0dfa82c46f4911e6b385b8aeed28f992', 'txProcesser', '已处理人');
INSERT INTO `param` VALUES ('3b6d01fee60947c0938dc438ef89c58c', '0dfa82c46f4911e6b385b8aeed28f992', 'wfId', '工作流ID');
INSERT INTO `param` VALUES ('3c67f4640c5d45c287ca6f509962f3e1', 'f0d2fd71bf9947e79c3352cb984e9fbc', 'taskBegin', '任务开始时间');
INSERT INTO `param` VALUES ('3d0c2affd921468289643822c608fed8', 'be2793411aa9456897279c2d18ee6a5d', 'nextTaskId', '下一个事务节点Id');
INSERT INTO `param` VALUES ('45f2b40519974e8bb3b8e5afdaca0fac', '11f2ce5b6f6711e6b385b8aeed28f992', 'disflag', 'true：表示无法点击<br/>false：可以点击');
INSERT INTO `param` VALUES ('50f40b14c8a94a2d95b4acd2af7344fa', 'f0d2fd71bf9947e79c3352cb984e9fbc', 'comments', '签署意见');
INSERT INTO `param` VALUES ('562c8b5c62ab4756817e4e3a65cc55c2', 'be2793411aa9456897279c2d18ee6a5d', 'nextUserIds', '下一个处理人，用逗号隔开');
INSERT INTO `param` VALUES ('5667e1a753e3429a8c03b501f2cecf1d', '0dfa82c46f4911e6b385b8aeed28f992', 'instNum', '实例号');
INSERT INTO `param` VALUES ('5fee6204329e462aaac6270dcb4ecd96', '11f2ce5b6f6711e6b385b8aeed28f992', 'value', 'C: Commit,提交<br/>RJ：Reject，退回<br/>V：Veto，否决<br/>F: Forward,转交<br/>RC：Recall，撤回<br/>LMD：Let Me Do,我来处理<br/>DP：Dispatch,流程调度<br/>TK：Track，流程跟踪');
INSERT INTO `param` VALUES ('688e77fe46ce45a8a1f7e7ee98bce099', '0dfa82c46f4911e6b385b8aeed28f992', 'txName', '状态名称');
INSERT INTO `param` VALUES ('6d5cf1d847e2464c974e14c8bfe598f2', '697ddc3a4d584cbea4ccffa0af371044', 'wfInstNum', '工作流实例号');
INSERT INTO `param` VALUES ('6f2580f9fff440959cd0efa8991c1734', '0dfa82c46f4911e6b385b8aeed28f992', 'title', '主题');
INSERT INTO `param` VALUES ('76718950435c45378a5aa19d173b359e', 'f0d2fd71bf9947e79c3352cb984e9fbc', 'wfInstNum', '工作流实例号');
INSERT INTO `param` VALUES ('76ffb63b40b04513be548b8e322ad119', '0dfa82c46f4911e6b385b8aeed28f992', 'preOperator', '上一步处理人');
INSERT INTO `param` VALUES ('7da3515c3ebe4c51be1ecff48bbbce07', '0dfa82c46f4911e6b385b8aeed28f992', 'awtBegin', '事务收到时间');
INSERT INTO `param` VALUES ('85af3d32386b4206a7fe7f211d121640', 'f0d2fd71bf9947e79c3352cb984e9fbc', 'taskEnd', '任务要求完成时间');
INSERT INTO `param` VALUES ('85d1333a81824f96bf3ee15d56a26edf', 'be2793411aa9456897279c2d18ee6a5d', 'gnmkId', '功能模块Id');
INSERT INTO `param` VALUES ('8b686c986ca345f7ba6a36fa75a0c574', 'be2793411aa9456897279c2d18ee6a5d', 'wfInstNum', '工作流实例号');
INSERT INTO `param` VALUES ('8c64240d4a4245d6b8f2fe4887de69f8', 'be2793411aa9456897279c2d18ee6a5d', 'optCode', '操作类型Code');
INSERT INTO `param` VALUES ('a0141f4005ec46d6b98dc946621ad414', '0dfa82c46f4911e6b385b8aeed28f992', 'userId', '用户Id');
INSERT INTO `param` VALUES ('ad2670a28e614feaa1b6bc776f694279', '11f2ce5b6f6711e6b385b8aeed28f992', 'userId', '用户Id');
INSERT INTO `param` VALUES ('b78793803b93494996d6a8189909c6b8', 'be2793411aa9456897279c2d18ee6a5d', 'userId', '当前操作人Id');
INSERT INTO `param` VALUES ('c2291d72765b43af96aa31e8e9027607', '0dfa82c46f4911e6b385b8aeed28f992', 'txCreater', '创建人');
INSERT INTO `param` VALUES ('c73582fbe6e24aa28b2c91a3ff1de3ee', 'f0d2fd71bf9947e79c3352cb984e9fbc', 'gnmkId', '功能模块Id');
INSERT INTO `param` VALUES ('d11b5e10f83a4a56a4d1e27b92669e12', '11f2ce5b6f6711e6b385b8aeed28f992', 'gnmkId', '功能模块Id');
INSERT INTO `param` VALUES ('d1c6d1d73f78467785cbe6461d856fd0', 'f0d2fd71bf9947e79c3352cb984e9fbc', 'optUser', '处理人');
INSERT INTO `param` VALUES ('d39342070c6e456d944b64a22f6b4f7a', '687d273e6f4911e6b385b8aeed28f992', 'return_code', '0:成功<br/>其他都是失败');
INSERT INTO `param` VALUES ('e17573b111ea40eb8811874c1d541009', 'be2793411aa9456897279c2d18ee6a5d', 'return_code', '返回状态码<br/>0:success<br/>1:invalid parameter<br/>2:no record found<br/>3:server error');
INSERT INTO `param` VALUES ('e7adc78a901b46af8ac873d0bf600d8a', '0dfa82c46f4911e6b385b8aeed28f992', 'awtEnd', '要求完成时间<br/>(时间格式为13位的时间戳：1472633533000)');
INSERT INTO `param` VALUES ('ed3f34f2c63447ef95498d02dcffb0f5', '687d273e6f4911e6b385b8aeed28f992', 'gnmkId', '功能模块Id');
INSERT INTO `param` VALUES ('ef04f2701825492badba1ee41f3401fc', '687d273e6f4911e6b385b8aeed28f992', 'return_msg', '返回信息描述');
INSERT INTO `param` VALUES ('fe7e4950d8bf432b9a31b3e30983a6de', '697ddc3a4d584cbea4ccffa0af371044', 'optCode', '操作类型，C:提交，RJ：退回，。。');
INSERT INTO `param` VALUES ('fee7364299fc484797b491e30132956a', '687d273e6f4911e6b385b8aeed28f992', 'wf_inst_num', '成功启动工作流，返回一个实例号');

-- ----------------------------
-- Procedure structure for SP_GETJSON
-- ----------------------------
DROP PROCEDURE IF EXISTS `SP_GETJSON`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `SP_GETJSON`()
BEGIN
DECLARE v_json TEXT DEFAULT "";
DECLARE v_param TEXT DEFAULT "";
DECLARE v_api_id VARCHAR(50) DEFAULT "";
DECLARE v_name VARCHAR(500) DEFAULT "";
DECLARE v_version VARCHAR(500) DEFAULT "";
DECLARE v_desc VARCHAR(500) DEFAULT "";
DECLARE v_type VARCHAR(500) DEFAULT "";
DECLARE v_type_desc VARCHAR(500) DEFAULT "";
DECLARE v_path VARCHAR(500) DEFAULT "";
DECLARE v_request_sample VARCHAR(500) DEFAULT "";
DECLARE v_response_sample VARCHAR(500) DEFAULT "";
DECLARE v_finished INTEGER DEFAULT 0;
DECLARE name_cursor CURSOR FOR 
SELECT api_id, name, version, description, type, type_desc, path, request_sample, response_sample from api;

DECLARE CONTINUE HANDLER 
	FOR NOT FOUND SET v_finished = 1;

set v_json = CONCAT(v_json,"{\"apiList\": [");

open name_cursor;

get_name: LOOP
	FETCH name_cursor into v_api_id,v_name,v_version,v_desc,v_type,v_type_desc,v_path,v_request_sample,v_response_sample;
	if v_finished = 1 THEN
	LEAVE get_name;
	END IF;

	set v_json = CONCAT(v_json,
			'{"version":"',IFNULL(v_version,""),'"',',',
			'"name":"',IFNULL(v_name,""),'"',
			',"desc":"',IFNULL(v_desc,""),'"',
			',"type":"',IFNULL(v_type,""),'"',
			',"typeDesc":"',IFNULL(v_type_desc,""),'"',
			',"path":"',IFNULL(v_path,""),'"');

	set v_json = CONCAT(v_json,
			',"requestSample":"',IFNULL(v_request_sample,""),'"',
			',"responseSample":"',IFNULL(v_response_sample,""),'"');

	SELECT
		CONCAT(',"paramList":[',
		GROUP_CONCAT(
			CONCAT('{"name":"',IFNULL(p.name,""),'"'),',',
			CONCAT('"desc":"',IFNULL(p.description,"")),'"}')
		,']')
	into v_param FROM param p where p.api_id = v_api_id ORDER BY p.name;

	set v_json = CONCAT(v_json, IFNULL(v_param,""));
	set v_json = CONCAT(v_json,"},");


END LOOP get_name;

CLOSE name_cursor;

set v_json = CONCAT(v_json,"]}");

select v_json;

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for F_GETCONTACTS
-- ----------------------------
DROP FUNCTION IF EXISTS `F_GETCONTACTS`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `F_GETCONTACTS`() RETURNS text CHARSET utf8 COLLATE utf8_bin
BEGIN
  DECLARE jsonStr TEXT DEFAULT "";
	SELECT
		CONCAT('{"contacts":[',
		GROUP_CONCAT(
			CONCAT('{"id":"',id,'"'),',',
			CONCAT('"name":"',name,'"'),
			CONCAT(',"gender":"',gender),'"',
			##CONCAT(',"photoUrl":"',IFNULL(photo_url,"")),'"',
			CONCAT(',"depart":"',depart),'"',
			CONCAT(',"position":"',position),'"',
			CONCAT(',"mobile":"',mobile),'"',
			##CONCAT(',"email":"',email),'"',
			CONCAT(',"email":"',IFNULL(email,"")),'"}')
	,']}')
	INTO jsonStr FROM contacts;
  RETURN jsonStr;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for F_GETJSON
-- ----------------------------
DROP FUNCTION IF EXISTS `F_GETJSON`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `F_GETJSON`() RETURNS text CHARSET utf8 COLLATE utf8_bin
BEGIN
  DECLARE jsonStr TEXT DEFAULT "";
	SELECT
		CONCAT('{"apiList":[',
		GROUP_CONCAT(
			CONCAT('{"version":"',version,'"'),',',
			CONCAT('"name":"',name,'"'),
			CONCAT(',"desc":"',description),'"',
			CONCAT(',"type":"',type),'"',
			CONCAT(',"typeDesc":"',type_desc),'"',
			CONCAT(',"path":"',path),'"',
			CONCAT(',"requestSample":"',request_sample),'"',
			CONCAT(',"responseSample":"',response_sample),'"}')
	,']}')
	INTO jsonStr FROM api;
  RETURN jsonStr;
END
;;
DELIMITER ;
