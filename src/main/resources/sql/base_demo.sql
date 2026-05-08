-- 诗词分类数据初始化
INSERT INTO poetry_category (id, name, code, description, sort_order) VALUES
(1, '唐诗', 'tangshi', '唐诗是中国古典诗歌的黄金时代，代表了唐代诗歌的最高成就', 1),
(2, '宋词', 'songci', '宋词是宋代文学的代表形式，分为婉约派和豪放派', 2),
(3, '诗经', 'shijing', '诗经是中国最早的诗歌总集，收录305篇诗歌', 3),
(4, '楚辞', 'chuci', '楚辞是战国时期屈原等人创作的诗歌总集', 4),
(5, '元曲', 'yuanqu', '元曲是元代戏曲和散曲的统称', 5),
(6, '论语', 'lunyu', '论语是儒家经典，记录孔子及其弟子言行', 6),
(7, '四书五经', 'sishuwujing', '四书五经是儒家的经典著作', 7),
(8, '千家诗', 'qianjiashi', '千家诗是古代儿童启蒙读物', 8),
(9, '纳兰性德', 'nalansingde', '纳兰性德的词作', 9),
(10, '曹操诗集', 'caocaoshiji', '曹操的诗歌作品', 10),
(11, '幽梦影', 'youmengying', '幽梦影文学作品', 11),
(12, '蒙学', 'mengxue', '蒙学经典著作', 12),
(13, '五代的词', 'wudai', '五代时期的词作', 13);


-- 千家诗 数据，共 226 条

INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '春眠', '（唐）孟浩然', '春眠不觉晓，处处闻啼鸟。
夜来风雨声，花落知多少。', '', '[]', '840dab13-772e-4416-8bdb-58a7ddbfd69f', '唐宋', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '访袁拾遗不遇', '（唐）孟浩然', '洛阳访才子，江岭作流人。
闻说梅花早，何如此地春。', '', '[]', 'fede9bb1-9dbb-41e1-950e-51f03223278f', '唐宋', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '送郭司仓', '（唐）王昌龄', '映门淮水绿，留骑主人心。
明月随良掾，春潮夜夜深。', '', '[]', '38765015-c95c-4ec5-98aa-dad565a8d4ac', '唐宋', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '洛阳道', '（唐）储光羲', '大道直如发，春来佳气多。
五陵贵公子，双双呜玉珂。', '', '[]', '7746a582-db34-48ba-8f81-22094887bb3a', '唐宋', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '独坐敬亭山', '（唐）李白', '众鸟高飞尽，孤云独去闲。
相看两不厌，只有敬亭山。', '', '[]', 'ad70410b-217a-4e8d-a262-3c35eea3a1c0', '唐宋', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '登鹳雀楼', '（唐）王之涣', '白日依山尽，黄河入海流。
欲穷千里目，更上一层楼。', '', '[]', '258d2e48-e5d8-4b9a-b22f-152c452b8165', '唐宋', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '观永乐公主入番', '（唐）孙逖', '边地莺花少，年来未觉新。
美人天上落，龙塞始应春。', '', '[]', '02863b90-c756-418f-b3ed-c48276cf6cd0', '唐宋', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '伊州歌', '（唐）金昌绪', '打起黄莺儿，莫教枝上啼。
啼时惊妾梦，不得到辽西。', '', '[]', '3af8bcc4-1fb6-4f74-84eb-4aec7a453da1', '唐宋', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '左掖梨花', '（唐）丘为', '冷艳全欺雪，余香乍入衣。
春风且莫定，吹向玉阶飞。', '', '[]', '629b7a8f-7448-4ef8-8269-dd728c83bdde', '唐宋', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '思君恩', '（唐）令狐楚', '小苑莺歌歇，长门蝶舞多。
眼看春又去，翠辇不曾过。', '', '[]', 'b503323d-f3c9-4f40-a691-69310b8e3c2a', '唐宋', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '题袁氏别业', '（唐）贺知章', '主人不相识，偶坐为林泉。
莫谩愁沽酒，囊中自有钱。', '', '[]', 'd9a3d0b3-b272-4947-aa92-fddb578fddda', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '夜送赵纵', '（唐）杨炯', '赵氏连城璧，由来天下传。
送君还旧府，明月满前川。', '', '[]', '59086954-2b30-469e-95a1-fe31ed824683', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '竹里馆', '（唐）王维', '独坐幽篁里，弹琴复长啸。
深林人不知，明月来相照。', '', '[]', '41dd6d4a-d53b-410e-82d7-c7173e29b0bb', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '送朱大入秦', '（唐）王维', '避人五陵去，宝剑值千金。
分手脱相赠，平生一片心。', '', '[]', 'b1603c14-203d-4854-9e46-f3ce83d88004', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '长干行', '（唐）崔颢', '君家在何处？妾住在横塘。
停船暂借问，或恐是同乡。', '', '[]', 'f3b9b892-5231-4579-bf0d-faffc7760486', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '咏史', '（唐）高适', '尚有绨袍赠，应怜范叔寒。
不知天下士，犹作布衣看。', '', '[]', '997b49fd-e7c9-4d0a-abcc-2f67e5ea718f', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '罢相作', '（唐）李适之', '避贤初罢相，乐圣且衔杯。
为问门前客，今朝几个来。', '', '[]', 'a5622266-da25-4def-9193-d4107fc5eb83', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '逢侠者', '（唐）钱起', '燕赵悲歌士，相逢剧孟家。
寸心言不尽，前路日将斜。', '', '[]', '9160391f-1a5d-443d-9a63-ae7c6d3b5600', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '江行望匡庐', '（唐）钱起', '咫尺愁风雨，匡庐不可登。
只疑云雾窟，犹有六朝僧。', '', '[]', '41f83ac7-40a2-4436-a5cc-46d669fc9994', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '答李浣', '（唐）韦应物', '林中观易罢，溪上对鸥闲。
楚俗饶词客，何人最往还。', '', '[]', 'a8afa8ae-441a-4c92-8bc5-33d988442a20', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋风引', '（唐）刘禹锡', '何处秋风至，萧萧送雁群。
朝来入庭树，孤客最先闻。', '', '[]', '903aff36-ad45-45c5-9762-66cd9173b0b6', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋夜寄丘员外', '（唐）韦应物', '怀君属秋夜，散步咏凉天。
山空松子落，幽人应未眠。', '', '[]', 'e1021216-4b67-4982-9eca-9e3f23d92d6a', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋日', '（唐）耿𣲗', '返照入闾巷，忧来谁共语。
古道少人行，秋风动禾黍。', '', '[]', '69074980-8243-4157-a5f2-800325d23a4c', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋日湖上', '（唐）薛莹', '落日五湖游，烟波处处愁。
浮沉千古事，谁与问东流。', '', '[]', '33655dd4-ddb9-42e3-b3ae-04ea621aedfe', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '宫中题', '（唐）李昂', '辇路生秋草，上林花满枝。
凭高何限意，无复侍臣知。', '', '[]', '080d4928-96dd-477d-9919-55ec581e9343', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '汾上惊秋', '（唐）苏颋', '北风吹白云，万里渡河汾。
心绪逢摇落，秋声不可闻。', '', '[]', '8fb73c3c-449e-4887-8c09-1d5ac1a08991', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '寻隐者不遇', '（唐）贾岛', '松下问童子，言师采药去。
只在此山中，云深不知处。', '', '[]', '35d23db6-fd66-4cea-bd96-56afba82207b', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '蜀道后期', '（唐）张说', '客心争日月，来往预期程。
秋风不相待，先至洛阳城。', '', '[]', '92c24ed1-11f8-4f89-a13e-c39abf59017a', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '静夜思', '（唐）李白', '床前明月光，疑是地上霜。
举头望明月，低头思故乡。', '', '[]', 'f15e3352-378b-4107-9691-4ef4ca983e25', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋浦歌', '（唐）李白', '白发三千丈，离愁似个长。
不知明镜里，何处得秋霜。', '', '[]', '6c0fec62-f239-4335-bf0d-35fb82662a37', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '赠乔侍郎', '（唐）陈子昂', '汉廷荣巧宦，云阁薄边功。
可怜骢马使，白首为谁雄。', '', '[]', 'fd0679f2-e326-4981-a321-2c2dddda2192', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '答五陵太守', '（唐）王昌龄', '仗剑行千里，微躯敢一言。
曾为大梁客，不负信陵恩。', '', '[]', '23986b6b-2420-402f-9e45-3888d2185b82', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '行军九日思长安故园', '（唐）岑参', '强欲登高去，无人送酒来。
遥怜故园菊，应傍战场开。', '', '[]', '11f06937-1a3b-4ec4-ba85-dcfb1e8af08f', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '婕妤怨', '（唐）皇甫冉', '花枝出建章，凤管发昭阳。
借问承恩者，双蛾几许长？', '', '[]', '97f37827-83a4-431a-ada9-257a3f8d8c29', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '题竹林寺', '（唐）朱放', '岁月人间促，烟霞此地多。
殷勤竹林寺，更得几回过？', '', '[]', '693e9bde-67b2-4d7a-8ebf-74ddbcd85fe2', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '过三闾庙', '（唐）戴叔伦', '沅湘流不尽，屈子怨何深！
日暮秋风起，萧萧枫树林。', '', '[]', 'f518bfaf-e6ff-4eeb-8e70-8a9fb0ab3614', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '易水送别', '（唐）骆宾王', '此地别燕丹，壮士发冲冠。
昔时人已没，今日水犹寒。', '', '[]', 'd835e030-6c79-4868-932e-19372a2cd937', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '别卢秦卿', '（唐）司空曙', '知有前期在，难分此夜中。
无将故人酒，不及石尤风。', '', '[]', 'd04e2b3c-02fc-4494-8c3e-308d469c8538', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '答人', '（唐）太上隐者', '偶来松树下，高枕石头眠。
山中无历日，寒尽不知年。', '', '[]', '24db213b-713f-4ae9-9b96-cc8af679eb15', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '幸蜀回至剑门', '（唐）李隆基', '剑阁横云峻，銮舆出狩回。
翠屏千仞合，丹嶂五丁开。
灌木萦旗转，仙云拂马来。
乘时方在德，嗟尔勒铭才。', '', '[]', 'b82a1044-133d-4acc-a72c-6df7c082bb42', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '和晋陵陆承相', '（唐）杜审言', '独有宦游人，偏惊物候新。
云霞出海曙，梅柳渡江春。
淑气催黄鸟，晴光转绿苹。
忽闻歌古调，归思欲沾巾。', '', '[]', 'eca027af-9a5a-4377-a39d-c168bbbb587b', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '蓬莱三殿侍宴奉敕咏终南山', '（唐）杜审言', '北斗挂城边，南山倚殿前。
云标金阙回，树杪玉堂悬。
半岭通佳气，中峰绕瑞烟。
小臣持献寿，长此戴尧天。', '', '[]', '471cae43-ac1d-4fe1-bf40-4accbe5bcc72', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '春夜别友人', '（唐）陈子昂', '银烛吐青烟，金尊对绮筵。
离堂思琴瑟，别路绕山川。
明月悬高树，长河没晓天。
悠悠洛阳道，此会在何年。', '', '[]', '45ea82b4-1dd4-49ab-94e2-bb936e0caeb2', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '长宁公主东庄侍宴', '（唐）李峤', '别业临青甸，鸣銮降紫霄。
长筵鹓鹭集，仙管凤凰调。
树接南山近，烟含北渚遥。
承恩咸已醉，恋赏未还镳。', '', '[]', '90f5b309-0075-4d45-abb2-e0debf22e2f6', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '恩赐丽正殿书院赐宴应制得林字', '（唐）张说', '东壁图书府，西园翰墨林。
诵诗闻国政，讲易见天心。
位窃和羹重，恩叨醉酒深。
载歌春兴曲，情竭为知音。', '', '[]', '7c00f560-d1a0-4d18-8f08-87acbc82eb16', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '送友人', '（唐）李白', '青山横北郭，白水绕东城。
此地一为别，孤篷万里征。
浮云游子意，落日故人情。
挥手自兹去，萧萧斑马鸣。', '', '[]', '8654eef1-f637-444c-a15f-8903fc818666', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '送友人入蜀', '（唐）李白', '见说蚕丛路，崎岖不易行。
山从人面起，云傍马头生。
芳树笼秦栈，春流绕蜀城。
升沈应已定，不必问君平。', '', '[]', 'ec9b8f10-e097-446b-bed4-4242df4e6fcf', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '次北固山下', '（唐）王湾', '客路青山外，行舟绿水前。
潮平两岸阔，风正一帆悬。
海日生残夜，江春入旧年。
乡书何处达，归雁洛阳边。', '', '[]', '342d88ac-bdaf-4953-a98f-01ca60125240', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '苏氏别业', '（唐）祖咏', '别业居幽处，到来生隐心。
南山当户牖，澧水映园林。
竹覆经冬雪，庭昏未夕阴。
寥寥人境外，闲坐听春禽。', '', '[]', 'd57b6129-ea0d-4308-8d1c-685725844a0f', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '春宿左省', '（唐）杜甫', '花隐掖垣暮，啾啾栖鸟过。
星临万户动，月傍九霄多。
不寝听金钥，因风想玉坷。
明朝有封事，数问夜如何？', '', '[]', '75211a8c-305c-4266-88ab-fe271bab431f', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '题玄武禅师屋壁', '（唐）杜甫', '何年顾虎头，满壁画沧州。
赤日石林气，青天江海流。
锡飞常近鹤，杯渡不惊鸥。
似得庐山路，真随惠远游。', '', '[]', '7686e789-b9a3-48d3-a4cc-64605ee0996b', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '终南山', '（唐）王维', '太乙近天都，连山到海隅。
白云回望合，青霭入看无。
分野中峰变，阴晴众壑殊。
欲投何处宿，隔水问樵夫。', '', '[]', '2d066f49-a173-4d76-8628-22fde5f229ca', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '登总持阁', '（唐）岑参', '高阁逼诸天，登临近日边。
晴开万井树，愁看五陵烟。
槛外低秦岭，窗中小渭川。
早知清净理，常愿奉金仙。', '', '[]', 'aacee5b3-9b16-4308-bda5-67016a2263d6', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '寄左省杜拾遗', '（唐）岑参', '联步趋丹陛，分曹限紫薇。
晓随天仗入，暮惹御香归。
白发悲花落，青云羡鸟飞。
圣朝无阙事，自觉谏书稀。', '', '[]', '102cc1a4-2e13-43ee-b928-1e89b539ea93', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '登兖州城楼', '（唐）杜甫', '东郡趋庭日，南楼纵目初。
浮云连海岱，平野入青徐。
孤嶂秦碑在，荒城鲁殿余。
从来多古意，临眺独踌躇。', '', '[]', '256f15a0-d369-45f0-9303-5a8e80ca0cea', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '杜少府之任蜀州', '（唐）王勃', '城阙辅三秦，风烟望五津。
与君离别意，同是宦游人。
海内存知己，天涯若比邻。
无为在歧路，儿女共沾巾。', '', '[]', 'b72e5edf-333c-4b73-b674-03cf036bf417', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '送崔融', '（唐）杜审言', '君王行出将，书记远从征。
祖帐连河阙，军麾动洛城。
旌旗朝朔气，笳吹夜边声。
坐觉烟尘少，秋风古北平。', '', '[]', 'ad4e9313-3d50-4168-96a4-b2d436818532', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '扈从登封途中作', '（唐）宋之问', '帐殿郁崔嵬，仙游实壮哉！
晓云连幕卷，夜火杂星回。
谷暗千旗出，山鸣万乘来。
扈从良可赋，终乏掞天才。', '', '[]', 'b99939f8-cd83-46bc-9620-0a23af627083', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '题义公禅房', '（唐）孟浩然', '义公习禅寂，结宇依空林。
户外一峰秀，阶前众壑深。
夕阳连雨足，空翠落庭阴。
看取莲花净，方知不染心。', '', '[]', '5fc24884-d846-4c4d-aeb3-688af863df80', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '醉后赠张九旭', '（唐）高适', '世上漫相识，此翁殊不然。
兴来书自圣，醉后语尤颠。
白发老闲事，青云在目前。
床头一壶酒，能更几回眠。', '', '[]', '81a9fbd7-2825-41ac-8f14-d3dd57ebb3a0', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '玉台观', '（唐）高适', '浩劫因王造，平台访古游。
彩云萧史驻，文字鲁恭留。
宫阙通群帝，乾坤到十洲。
人传有笙鹤，时过北山头。', '', '[]', 'd75b4f27-da13-40bc-9017-987d0c4ead38', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '观李固请司马弟山水图', '（唐）杜甫', '方丈浑连水，天台总映云。
人间长见画，老去限空闻。
范蠡舟偏小，王乔鹤不群。
此生随万物，何处出尘氛。', '', '[]', 'f2fd24d3-527b-4163-8d02-60f4f864871d', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '旅夜书怀', '（唐）杜甫', '细草微风岸，危樯独夜舟。
星垂平野阔，月涌大江流。
名岂文章著，官因老病休。
飘飘何所似，天地一沙鸥。', '', '[]', 'd42ae6e5-53aa-455c-85a6-65ed4f35d13f', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '登岳阳楼', '（唐）杜甫', '昔闻洞庭水，今上岳阳楼。
吴楚东南坼，乾坤日月浮。
亲朋无一字，老病有孤舟。
戎马关山北，凭轩涕泗流。', '', '[]', 'fa9573b2-0250-4ca3-a325-f95ee00f3d1c', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '江南旅情', '（唐）祖咏', '楚山不可极，归路但萧条。
海色晴看雨，江声夜听潮。
剑留南斗近，书寄北风遥。
为报空潭橘，无媒寄洛桥。', '', '[]', '967b0433-05d3-492b-836c-a898e44e2b02', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '宿龙兴寺', '（唐）綦毋潜', '香刹夜忘归，松清古殿扉。
灯明方丈室，珠系比丘衣。
白日传心净，青莲喻法微。
天花落不尽，处处鸟衔飞。', '', '[]', '62f28232-f93f-45fc-99dd-5166071cb542', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '破山寺后禅院', '（唐）常建', '清晨入古寺，初日照高林。
曲径通幽处，禅房花木深。
山光悦鸟性，潭影空人心。
万籁此俱寂，惟闻钟磬音。', '', '[]', '1fe04ab7-d506-4f23-9d06-6df687708fbf', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '题松汀驿', '（唐）张佑', '山色远含空，苍茫泽国东。
海明先见日，江白迥闻风。
鸟道高原去，人烟小径通。
那知旧遗逸，不在五湖中。', '', '[]', '41d19564-86b0-4d44-a64a-e646ef995a64', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '圣果寺', '（唐）释处默', '路自中峰上，盘回出薜萝。
到江吴地尽，隔岸越山多。
古木丛青蔼，遥天浸白波。
下方城郭近，钟磬杂笙歌。', '', '[]', 'cf41e832-28e9-4ec4-b955-afcea064cc4e', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '野望', '（唐）王绩', '东皋薄暮望，徙倚欲何依。
树树皆秋色，山山惟落晖。
牧人驱犊返，猎马带禽归。
相顾无相识，长歌怀采薇。', '', '[]', '749107e8-fe83-476a-ac64-ba02abbcdebb', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '送著作佐郎崔融等从梁王东征', '（唐）陈子昂', '金天方肃杀，白露始专征。
王师非乐战，之子慎佳兵。
海气侵南部，边风扫北平。
莫卖卢龙塞，归邀麟阁名。', '', '[]', '6cea0ca9-d547-4b14-80be-db09e42c10d2', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '携妓纳凉晚际遇雨其一', '（唐）杜甫', '落日放船好，轻风生浪迟。
竹深留客处，荷净纳凉时。
公子调冰水，佳人雪藕丝。
片云头上黑，应是雨催诗。', '', '[]', '8883b0db-33de-4a1b-b741-145ecf01be23', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '携妓纳凉晚际遇雨其二', '（唐）杜甫', '雨来沾席上，风急打船头。
越女红裙湿，燕姬翠黛愁。
缆侵堤柳系，幔卷浪花浮。
归路翻萧飒，陂塘五月秋。', '', '[]', '4ab45945-b64f-4892-92e2-d922313371de', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '宿云门寺阁', '（唐）孙逖', '香阁东山下，烟花象外幽。
悬灯千嶂夕，卷幔五湖秋。
画壁余鸿雁，纱窗宿斗牛。
更疑天路近，梦与白云游。', '', '[]', '90c7c236-03da-47e9-ba07-631c5804eed6', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋登宣城谢眺北楼', '（唐）李白', '江城如画里，山晚望晴空。
两水夹明镜，双桥落彩虹。
人烟寒橘柚，秋色老梧桐。
谁念北楼上，临风怀谢公。', '', '[]', '0069d121-d5b6-4e7c-bee7-c6b049154df9', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '临洞庭', '（唐）孟浩然', '八月湖水平，涵虚混太清。
气蒸云梦泽，波撼岳阳城。
欲济无舟楫，端居耻圣明。
坐观垂钓者，徒有羡鱼情。', '', '[]', 'c0920e43-35cd-42bb-a13f-eae7b040eb54', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '过香积寺', '（唐）王维', '不知香积寺，数里入云峰。
古木无人径，深山何处钟。
泉声咽危石，日色冷青松。
薄暮空潭曲，安禅制毒龙。', '', '[]', '563ecf21-d02c-4905-a64a-5a90f8878289', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '送郑侍御谪闽中', '（唐）高适', '谪去君无恨，闽中我旧过。
大都秋雁少，只是夜猿多。
东路云山合，南天瘴疠和。
自当逢雨露，行矣顺风波。', '', '[]', 'f0263054-bdd5-4127-ab73-d2dc25e53442', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秦州杂诗', '（唐）杜甫', '凤林戈未息，鱼海路常难。
候火云峰峻，悬军幕井干。
风连西极动，月过北庭寒。
故老思飞将，何时议筑坛。', '', '[]', '2c221d29-f44f-4fa4-b43c-c2d1ff1537dd', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '禹庙', '（唐）杜甫', '禹庙空山里，秋风落日斜。
荒庭垂橘柚，古屋画龙蛇。
云气生虚壁，江深走白沙。
早知乘四载，疏凿控三巴。', '', '[]', 'ed77a566-4edf-4386-887a-fd2cc9480e2c', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '望秦川', '（唐）李颀', '秦川朝望迥，日出正东峰。
远近山河净，逶迤城阙重。
秋声万户竹，寒色五陵松。
有客归欤叹，凄其霜露浓。', '', '[]', 'c8f339f9-1ddd-4b27-a6b7-ae0a426e7bfc', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '同王征君洞庭有怀', '（唐）张谓', '八月洞庭秋，潇湘水北流。
还家万里梦，为客五更愁。
不用开书帙，偏宜上酒楼。
故人京洛满，何日复同游。', '', '[]', '9aaab205-99fd-47a8-ab7e-44ff923e6b5a', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '渡扬子江', '（唐）丁仙芝', '桂楫中流望，空波两岸明。
林开扬子驿，山出润州城。
海尽边阴静，江寒朔吹生。
更闻枫叶下，淅沥度秋声。', '', '[]', 'c29b4ed8-cc97-4467-aa4e-80404fec8b3c', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '幽州夜歌', '（唐）张说', '凉风吹夜雨，萧瑟动寒林。
正有高堂宴，能忘迟暮心。
军中宜剑舞，塞上重笳音。
不作边城将，谁知恩遇深。', '', '[]', '59e596be-b01e-4673-906c-3baf13af45d6', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '春日偶成', '（宋）程颢', '云淡风轻近午天，傍花随柳过前川。
时人不识余心乐，将谓偷闲学少年。', '', '[]', '0ab04e16-7b08-4cd0-9e01-a7f54ace32eb', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '春日', '（宋）朱熹', '胜日寻芳泗水滨，无边光景一时新。
等闲识得东风面，万紫千红总是春。', '', '[]', '542c47be-5a8e-4a9f-a60b-0b58b6372c81', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '春宵', '（宋）苏轼', '春宵一刻值千金，花有清香月有阴。
歌管楼台声细细，秋千院落夜沈沈。', '', '[]', 'ab6cef35-a254-45ae-8c1e-64535ee985ba', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '城东早春', '（唐）杨巨源', '诗家清景在新春，绿柳才黄半未匀。
若待上林花似锦，出门俱是看花人。', '', '[]', '08825ad5-f1e7-47aa-998c-63c1bc517990', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '春夜', '（宋）王安石', '金炉香烬漏声残，剪剪轻风阵阵寒。
春色恼人眠不得，月移花影上栏杆。', '', '[]', '058f9921-5161-4b47-9c95-5ef725736e08', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '初春小雨', '（宋）韩愈', '天街小雨润如酥，草色遥看近却无。
最是一年春好处，绝胜烟柳满皇都。', '', '[]', 'ed3b806b-f398-44ae-8884-be825f94a0e6', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '元日', '（宋）王安石', '爆竹声中一岁除，春风送暖入屠苏。
千门万户曈曈日，总把新桃换旧符。', '', '[]', '50bfa312-1f1c-4d7e-b4bc-30a55589801f', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '上元侍宴', '（宋）苏轼', '淡月疏星绕建章，仙风吹下御炉香。
侍臣鹄立通明殿，一朵红云捧玉皇。', '', '[]', '1c669cb9-46eb-45ff-9472-abc195ad8a56', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '立春偶成', '（宋）张栻', '律回岁晚冰霜少，春到人间草木知。
便觉眼前生意满，东风吹水绿参差。', '', '[]', '044bda37-d8b8-4f47-8add-ccb0196207d9', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '打球图', '（宋）晁无咎', '阊阖千门万户开，三郎沈醉打球回。
九龄已老韩休死，无复明朝谏疏来。', '', '[]', 'e2d277ef-1e8f-46b3-9ced-ed61ac08271a', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '宫词其一', '（宋）林洪', '金殿当头紫阁重，仙人掌上玉芙蓉。
太平天子朝元日，五色云车驾六龙。', '', '[]', '0b77e88e-9c01-477e-9732-09afba01a7bc', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '宫词其二', '（宋）林洪', '殿上衮衣明日月，砚中旗影动龙蛇。
纵横礼乐三千字，独对丹墀日未斜。', '', '[]', '248579cc-dc8e-433c-bc97-ce20dfef1022', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '咏华清宫', '（唐）王建', '行尽江南数十程，晓风残月入华清。
朝元阁上西风急，都入长杨作雨声。', '', '[]', '9007f4e9-7ff6-470f-886a-25c39312fa58', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '清平调词', '（唐）李白', '云想衣裳花想容，春风拂槛露华浓。
若非群玉山头见，会向瑶台月下逢。', '', '[]', '1175ebbc-bd05-44ef-a3c9-a1d5795707b8', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '题邸间壁', '（宋）郑会', '酴醿香梦怯春寒，翠掩重门燕子闲。
敲断玉钗红烛冷，计程应说到常山。', '', '[]', '9106cdfb-4913-4458-a393-7579211c083b', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '绝句', '（唐）杜甫', '两个黄鹂鸣翠柳，一行白鹭上青天。
窗含西岭千秋雪，门泊东吴万里船。', '', '[]', '1f1a487d-8179-45c9-bc32-6c4326cb235b', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '海棠', '（宋）苏轼', '东风袅袅泛崇光，香雾空蒙月转廊。
只恐夜深花睡去，故烧高烛照红妆。', '', '[]', 'd4564b54-166b-4e5a-8bd7-e06f521f8295', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '清明', '（宋）王禹偁', '无花无酒过清明，兴味萧然似野僧。
昨日邻家乞新火，晓窗分与读书灯。', '', '[]', '4e721adb-d034-4dc3-baf4-2f04ec78e8b2', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '清明', '（唐）杜牧', '清明时节雨纷纷，路上行人欲断魂。
借问酒家何处有，牧童遥指杏花村。', '', '[]', '2518487f-bce1-401b-818c-e9411d8a3248', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '社日', '（唐）张演', '鹅湖山下稻粱肥，豚栅鸡栖对掩扉。
桑柘影斜春社散，家家扶得醉人归。', '', '[]', 'd90eec7d-1929-4dc3-aad3-ff4617d3bfa1', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '寒食', '（唐）韩翃', '春城无处不飞花，寒食东风御柳斜。
日暮汉宫传蜡烛，轻烟散入五侯家。', '', '[]', '8a1a1241-d04d-4654-9930-3b2af89b7992', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '江南春', '（唐）杜牧', '千里莺啼绿映红，水村山郭酒旗风。
南朝四百八十寺，多少楼台烟雨中。', '', '[]', '5949fb1c-6829-4676-98f1-3a587f32e4d8', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '上高侍郎', '（唐）高蟾', '天上碧桃和露种，日边红杏倚云栽。
芙蓉生在秋江上，不向东风怨未开。', '', '[]', 'b7bca6c4-c6a2-443f-bd33-52b600829202', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '绝句', '（宋）僧志安', '古木阴中系短篷，杖藜扶我过桥东。
沾衣欲湿杏花雨，吹面不寒杨柳风。', '', '[]', 'c843c975-bbbf-4088-b917-9abaa51eb6bb', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '游小园不值', '（宋）叶绍翁', '应嫌屐齿印苍苔，十扣柴扉九不开。
春色满园关不住，一枝红杏出墙来。', '', '[]', '3ea61d6f-e683-43e7-ae4c-ddf770a7af43', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '客中行', '（唐）李白', '兰陵美酒郁金香，玉碗盛来琥珀光。
但使主人能醉客，不知何处是他乡。', '', '[]', 'b43b81a9-2707-4ed0-a3ea-06000f17f174', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '题屏', '（宋）刘季孙', '呢喃燕子语梁间，底事来惊梦里闲。
说与旁人浑不解，杖藜携酒看芝山。', '', '[]', '9754a208-2907-468d-a232-cd0e7fb3a3cc', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '绝句漫兴', '（唐）杜甫', '肠断春江欲尽头，杖藜徐步立芳洲。
颠狂柳絮随风舞，轻薄桃花逐水流。', '', '[]', 'd7313525-29b8-4948-a59c-e40a2c8ed9c1', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '庆全庵桃花', '（宋）谢枋得', '寻得桃源好避秦，桃红又是一年春。
花飞莫遣随流水，怕有渔郎来问津。', '', '[]', 'f1ec318d-ae04-4e18-afc4-21cb3a0e2f45', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '玄都观桃花', '（唐）刘禹锡', '紫陌红尘拂面来，无人不道看花回。
玄都观里桃千树，尽是刘郎去后栽。', '', '[]', '2a5532a2-4a15-4029-ad5a-10bb3387a36c', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '再游玄都观', '（唐）刘禹锡', '百亩庭中半是苔，桃花净尽菜花开。
种桃道士归何处，前度刘郎今又来。', '', '[]', 'a8b4fa5e-f56e-44d8-8649-d170361b4c85', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '滁州西涧', '（唐）韦应物', '独怜幽草涧边生，上有黄鹂深树鸣。
春潮带雨晚来急，野渡无人舟自横。', '', '[]', '167d1b55-8b6a-4a2f-834e-e0aa4c8ce3b9', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '花影', '（宋）苏轼', '重重叠叠上瑶台，几度呼童扫不开。
刚被太阳收拾去，却教明月送将来。', '', '[]', '7a13c5f7-025b-4787-bb7b-c167fcdeb167', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '北山', '（宋）王安石', '北山输绿涨横陂，直堑回塘滟滟时。
细数落花因坐久，缓寻芳草得归迟。', '', '[]', '6560c3b7-5b41-456f-84f4-bade5298e011', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '湖上', '（宋）徐元杰', '花开红树乱莺啼，草长平湖白鹭飞。
风日晴和人意好，夕阳箫鼓几船归。', '', '[]', 'e0a61932-e6df-412d-abcc-0cae437448ea', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '漫兴', '（唐）杜甫', '糁径杨花铺白毡，点溪荷叶叠青钱。
笋根稚子无人见，沙上凫雏傍母眠。', '', '[]', '3037b0c6-5cde-4671-a947-969084389b7d', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '春晴', '（宋）王驾', '雨前初见花间蕊，雨后全无叶底花。
蜂蝶纷纷过墙去，却疑春色在邻家。', '', '[]', '74fcf81f-265b-4bbd-a47f-816e1fba5537', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '春暮', '（宋）曹豳', '门外无人问落花，绿阴冉冉遍天涯。
林莺啼到无声处，青草池塘独听蛙。', '', '[]', '3085014f-3fdc-408c-9cd0-6936925f4fb3', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '落花', '（宋）朱淑贞', '连理枝头花正开，妒花风雨便相催。
愿教青帝常为主，莫遣纷纷点翠苔。', '', '[]', 'f40d3bfc-5aca-46aa-99c6-b156cdd72918', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '春暮游小园', '（宋）王淇', '一从梅粉褪残妆，涂抹新红上海棠。
开到荼蘼花事了，丝丝夭棘出莓墙。', '', '[]', '5fa6abb8-23ab-4966-a87d-99c16e728ff1', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '莺梭', '（宋）刘克庄', '掷柳迁乔太有情，交交时作弄机声。
洛阳三月花如锦，多少工夫织得成。', '', '[]', 'e60c9b52-d065-4194-9c61-2271469741c4', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '暮春即事', '（宋）叶采', '双双瓦雀行书案，点点杨花入砚池。
闲坐小窗读周易，不知春去几多时。', '', '[]', '8a6a647f-aba3-4c8e-8f94-12f640943d64', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '登山', '（唐）李涉', '终日昏昏醉梦间，忽闻春尽强登山。
因过竹院逢僧话，又得浮生半日闲。', '', '[]', '9eb694ab-2e19-46c3-a4a3-ad009633a12f', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '蚕妇吟', '（唐）谢枋得', '子规啼彻四更时，起视蚕稠怕叶稀。
不信楼头杨柳月，玉人歌舞未曾归。', '', '[]', '79829253-6352-4491-a4d3-044cb6f62daa', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '晚春', '（唐）韩愈', '草木知春不久归，百般红紫斗芳菲。
杨花榆荚无才思，惟解漫天作雪飞。', '', '[]', 'eb5c1ea6-5985-440d-8e16-19cd4ae18199', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '伤春', '（宋）杨万里', '准拟今春乐事浓，依然枉却一东风。
年年不带看花眼，不是愁中即病中。', '', '[]', '4f50853d-7a4e-493d-b97a-9fab3b562062', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '送春', '（宋）王令', '三月残花落更开，小檐日日燕飞来。
子规夜半犹啼血，不信东风唤不回。', '', '[]', 'ee2c4c4c-1b6f-4c58-afca-3765cb67389d', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '三月晦日送春', '（唐）贾岛', '三月正当三十日，风光别我苦吟身。
共君今夜不须睡，未到晓钟犹是春。', '', '[]', '8e29a537-d8e8-4688-a90c-ab4abbb652b9', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '客中初夏', '（宋）司马光', '四月清和雨乍晴，南山当户转分明。
更无柳絮因风起，惟有葵花向日倾。', '', '[]', 'ed49ff30-62fe-400d-b238-6045ec0b3976', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '有约', '（宋）司马光', '黄梅时节家家雨，青草池塘处处蛙。
有约不来过夜半，闲敲棋子落灯花。', '', '[]', 'f045abe1-d69e-4a28-a565-64232e735311', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '初夏睡起', '（宋）杨万里', '梅子流酸溅齿牙，芭蕉分绿上窗纱。
日长睡起无情思，闲看儿童捉柳花。', '', '[]', '9b3032d3-f97c-4415-9d8b-8416e5457d01', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '三衢道中', '（宋）曾几', '梅子黄时日日晴，小溪泛尽却山行。
绿阴不减来时路，添得黄鹂四五声。', '', '[]', '909111fe-76dc-411a-a790-453ad4b4ae54', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '即景', '（宋）朱淑贞', '竹摇清影罩幽窗，两两时禽噪夕阳。
谢却海棠飞尽絮，困人天气日初长。', '', '[]', '4112fe13-53d7-4bba-932e-da8dbd8dd065', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '夏日', '（宋）戴敏', '乳鸭池塘水浅深，熟梅天气半晴阴。
东园载酒西园醉，摘尽枇杷一树金。', '', '[]', '6a0a351a-2b60-4968-a59b-418a1361927e', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '晚楼闲坐', '（宋）王安石', '四顾山光接水光，凭栏十里芰荷香。
清风明月无人管，并作南来一味凉。', '', '[]', '337d6d96-dc0c-419c-87e4-6c541ea1886f', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '山居夏日', '（唐）高骈', '绿树阴浓夏日长，楼台倒影入池塘。
水晶帘动微风起，满架蔷薇一院香。', '', '[]', 'd8fc2dde-f3c5-46ed-a537-e0f6ce899b2a', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '田家', '（宋）范成大', '昼出耘田夜绩麻，村庄儿女各当家。
童孙未解供耕织，也傍桑阴学种瓜。', '', '[]', 'ca765967-6f26-4589-a2d2-a6741552acee', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '村居即事', '（宋）范成大', '绿遍山原白满川，子规声里雨如烟。
乡村四月闲人少，才了蚕桑又插田。', '', '[]', '9730e544-f688-48fd-93a9-1a3edb81e01b', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '题榴花', '（宋）朱熹', '五月榴花照眼明，枝间时见子初成。
可怜此地无车马，颠倒苍苔落绛英。', '', '[]', '57931b88-cb97-4eb3-be74-a9b2ecf1609c', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '村晚', '（宋）雷震', '草满池塘水满陂，山衔落日浸寒漪。
牧童归去横牛背，短笛无腔信口吹。', '', '[]', '2b90918f-51fc-4806-b7b6-f586b5d3cd14', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '茅檐', '（宋）王安石', '茅檐常扫净无苔，花木成蹊手自栽。
一水护田将绿绕，两山排闼送青来。', '', '[]', '6ffe6b5f-6be7-4845-836b-ebfc80bdb7a5', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '乌衣巷', '（唐）刘禹锡', '朱雀桥边野草花，乌衣巷口夕阳斜。
旧时王谢堂前燕，飞入寻常百姓家。', '', '[]', '5c3d8062-850f-4cf2-8717-183eed4e9822', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '送元二使安西', '（唐）王维', '渭城朝雨浥轻尘，客舍青青柳色新。
劝君更尽一杯酒，西出阳关无故人。', '', '[]', 'a61fcad1-e29c-4eed-ad57-4d437827bb3b', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '与史朗中饮听黄鹤楼上吹笛', '（唐）李白', '一为迁客去长沙，西望长安不见家。
黄鹤楼中吹玉笛，江城五月落梅花。', '', '[]', '9a90ae03-73a6-4db4-853a-5b4818b467f4', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '题淮南寺', '（宋）程颢', '南去北来休便休，白苹吹尽楚江秋。
道人不是悲秋客，一任晚山相对愁。', '', '[]', '32c8933f-7be2-4a2d-8463-69468d358022', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋月', '（宋）程颢', '清溪流过碧山头，空水澄鲜一色秋。
隔断红尘三十里，白云红叶两悠悠。', '', '[]', 'a6bdd912-6e37-4c6d-8713-0668a6f44529', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '七夕', '（宋）杨朴', '未会牵牛意若何，须邀织女弄金梭。
年年乞与人间巧，不道人间巧已多。', '', '[]', '7b22f297-104b-4527-9135-acb71b558cc6', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '立秋', '（宋）刘翰', '乳鸦啼散玉屏空，一枕新凉一扇风。
睡起秋声无觅处，满阶梧叶月明中。', '', '[]', '96294ba6-c0fa-4b31-a310-d34b3946549e', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋夕', '（唐）杜牧', '银烛秋光冷画屏，轻罗小扇扑流萤。
天街夜色凉如水，卧看牵牛织女星。', '', '[]', '067560f4-3d9f-4680-aae1-b9e5de5545b5', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '中秋月', '（唐）杜牧', '暮云收尽溢清寒，银汉无声转玉盘。
此生此夜不长好，明月明年何处看？', '', '[]', 'c61a8799-c54f-4bb4-abb3-210c90186362', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '江楼有感', '（唐）赵嘏', '独上江楼思渺然，月光如水水如天。
同来玩月人何在，风景依稀似去年。', '', '[]', 'ac544463-583d-4d80-bc0e-bcb836dfe3ec', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '题临安邸', '（宋）林升', '山外青山楼外楼，西湖歌舞几时休。
暖风薰得游人醉，直把杭州作汴州。', '', '[]', '7b4f6d47-645b-484f-8652-74780b73e7ea', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '西湖', '（宋）苏轼', '毕竟西湖六月中，风光不与四时同。
接天莲叶无穷碧，映日荷花别样红。', '', '[]', '85f52c49-a52e-4255-a282-5e3196f4bedf', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '饮湖上初晴后雨', '（宋）苏轼', '水光潋滟晴方好，山色空蒙雨亦奇。
欲把西湖比西子，淡妆浓抹总相宜。', '', '[]', '2bddb93f-29b8-46e9-8f6d-94f0352e9194', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '入直召对选德殿赐茶而退', '（宋）周必大', '绿槐夹道集昏鸦，敕使传宣坐赐茶。
归到玉堂清不寐，月钩初上紫薇花。', '', '[]', 'bbe6deae-f293-4bf5-b64a-00962f963712', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '夏日登车盖亭', '（宋）蔡确', '纸屏石枕竹方床，手倦抛书午梦长。
睡起莞然成独笑，数声渔笛在沧浪。', '', '[]', '4b99f735-8a6f-4809-92a9-f988ab1dd26c', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '真玉堂作', '（宋）洪咨夔', '禁门深锁寂无哗，浓墨淋漓两相麻。
唱彻五更天未晓，一墀月浸紫薇花。', '', '[]', '86903709-0951-45b7-8650-22d3890b917f', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '竹楼', '（唐）李嘉佑', '傲吏身闲笑五侯，西江取竹起高楼。
南风不用蒲葵扇，纱帽闲眠对水鸥。', '', '[]', 'c19e3b96-872d-483b-be69-23cca1df4d12', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '直中书省', '（唐）白居易', '丝纶阁下文章静，钟鼓楼中刻漏长。
独坐黄昏谁是伴，紫薇花对紫薇郎。', '', '[]', '1eedf376-481d-42ac-9bda-852d1a679c96', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '观书有感（其一）', '（宋）朱熹', '半亩方塘一鉴开，天光云影共徘徊。
问渠那得清如许，为有源头活水来。', '', '[]', '4906f982-6036-483a-9f06-f5089764c6da', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '泛舟', '（宋）朱熹', '昨夜江边春水生，艨艟巨舰一毛轻。
向来枉费推移力，此日中流自在行。', '', '[]', '970f2cc7-b800-4a6e-8cb5-03dbd1a165aa', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '冷泉亭', '（宋）林稹', '一泓清可沁诗脾，冷暖年来只自知。
流出西湖载歌舞，回头不似在山时。', '', '[]', '7bf31a1a-0305-4328-bd94-20169686383f', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '冬景', '（宋）苏轼', '荷尽已无擎雨盖，菊残犹有傲霜枝。
一年好景君须记，最是橙黄橘绿时。', '', '[]', 'd6bbb6a9-e18b-45a5-9dae-167f1c52512d', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '枫桥夜泊', '（唐）张继', '月落乌啼霜满天，江枫渔火对愁眠。
姑苏城外寒山寺，夜半钟声到客船。', '', '[]', '25873cdd-e4c9-4e44-9a1c-b4ee96823f48', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '寒夜', '（宋）杜小山', '寒夜客来茶当酒，竹炉汤沸火初红。
寻常一样窗前月，才有梅花便不同。', '', '[]', '1ca42afa-39db-4838-9415-6110891afd83', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '霜月', '（唐）李商隐', '初闻征雁已无蝉，百尺楼台水接天。
青女素娥俱耐冷，月中霜里斗婵娟。', '', '[]', '6c5d0fd4-476b-4051-94b0-45579af6f712', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '梅', '（宋）王淇', '不受尘埃半点侵，竹篱茅舍自甘心。
只因误识林和靖，惹得诗人说到今。', '', '[]', '0e7889e0-f05a-4473-974f-e5bf7bc9f8e1', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '早春', '（宋）白玉蟾', '南枝才放两三花，雪里吟香弄粉些。
淡淡著烟浓著月，深深笼水浅笼沙。', '', '[]', '4dcbfd48-49de-448e-a3ba-017f28ec85f0', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '雪梅其一', '（宋）卢梅坡', '梅雪争春未肯降，骚人阁笔费评章。
梅须逊雪三分白，雪却输梅一段香。', '', '[]', '88c16912-97ea-48b5-ab44-0b0cad4535a8', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '雪梅其二', '（宋）卢梅坡', '有梅无雪不精神，有雪无诗俗了人。
日暮诗成天又雪，与梅井作十分春。', '', '[]', '597b5090-207a-4a1a-968c-efff72d874be', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '答钟弱翁', '（宋）牧童', '草铺横野六七里，笛弄晚风三四声。
归来饱饭黄昏后，不脱蓑衣卧月明。', '', '[]', '80fd0ff0-d85a-4487-8f06-d87447d4a3b1', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秦淮夜泊', '（唐）杜牧', '烟笼寒水月笼沙，夜泊秦淮近酒家。
商女不知亡国恨，隔江犹唱后庭花。', '', '[]', '367c7d7c-029a-4afd-9a10-b9b538ac6da3', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '归雁', '（唐）钱起', '潇湘何事等闲回，水碧沙明两岸苔。
二十五弦弹夜月，不胜清怨却飞来。', '', '[]', 'e0643457-121f-4f38-9e78-2e8e821af05e', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '题壁', '无名氏', '一团茅草乱蓬蓬，蓦地烧天蓦地空。
争似满炉煨榾柮，漫腾腾地暖烘烘。', '', '[]', '7de08afb-3917-4794-938d-109b8afa8220', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '早朝大明宫', '（唐）贾至', '银烛朝天紫陌长，禁城春色晓苍苍。
千条弱柳垂青锁，百啭流莺绕建章。
剑佩声随玉墀步，衣冠身惹御炉香。
共沐恩波凤池上，朝朝染翰侍君王。', '', '[]', 'd437cbe8-9686-4cbc-8c96-9d3c15870311', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '和贾舍人早朝', '（唐）杜甫', '五夜漏声催晓箭，九重春色醉仙桃。
旌旗日暖龙蛇动，宫殿风微燕雀高。
朝罢香烟携满袖，诗成珠玉在挥毫。
欲知世掌丝纶美，池上于今有凤毛。', '', '[]', '67a1d7a5-b662-496d-bd33-9efb1295d1b7', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '和贾舍人早朝', '（唐）王维', '绛帻鸡人报晓筹，尚衣方进翠云裘。
九天阊阖开宫殿，万国衣冠拜冕旒。
日色才临仙掌动，香烟欲傍衮龙浮。
朝罢须裁五色诏，佩声归到凤池头。', '', '[]', '3d3a704e-0537-4259-9671-f9cf0f8a8bcc', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '和贾舍人早朝', '（唐）岑参', '鸡鸣紫陌曙光寒，莺啭皇州春色阑。
金阙晓钟开万户，玉阶仙仗拥千官。
花迎剑佩星初落，柳拂旌旗露未干。
独有凤凰池上客，阳春一曲和皆难。', '', '[]', '460bc1a2-df1d-452f-9b30-ec5e66582fa3', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '上元应制', '（宋）蔡襄', '高列千峰宝炬森，端门方喜翠华临。
宸游不为三元夜，乐事还同万众心。
天上清光留此夕，人间和气阁春阴。
要知尽庆华封祝，四十余年惠爱深。', '', '[]', '141fae8a-7802-48cf-87ee-ab3e70018280', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '上元应制', '（宋）王淇', '雪消华月满仙台，万烛当楼宝扇开。
双凤云中扶辇下，六鳌海上驾山来。
镐京春酒沾周宴，汾水秋风陋汉才。
一曲升平人尽乐，君王又进紫霞杯。', '', '[]', '2b99fa38-cc61-4fca-8d0a-79a135c35827', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '侍宴', '（唐）沈佺期', '皇家贵主好神仙，别业初开云汉边。
山出尽如鸣凤岭，池成不让饮龙川。
妆楼翠幌教春住，舞阁金铺借日悬。
敬从乘舆来此地，称觞献寿乐钧天。', '', '[]', '741e3756-be34-4266-b9d4-7600325d9306', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '答丁元珍', '（宋）欧阳修', '春风疑不到天涯，二月山城未见花。
残雪压枝犹有橘，冻雷惊笋欲抽芽。
夜闻啼雁生乡思，病入新年感物华。
曾是洛阳花下客，野芳虽晚不须嗟。', '', '[]', '60dde848-a4b9-4f2d-a3ef-15d48aa43758', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '插花吟', '（宋）邵雍', '头上花枝照酒卮，酒卮中有好花枝。
身经两世太平日，眼见四朝全盛时。
况复筋骸粗康健，那堪时节正芳菲。
酒涵花影红光溜，争忍花前不醉归。', '', '[]', '8dd30a96-e212-4e6b-9241-ad1bcfb52738', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '寓意', '（宋）晏殊', '油壁香车不再逢，峡云无迹任西东。
梨花院落溶溶月，柳絮池塘淡淡风。
几日寂寥伤酒后，一番萧瑟禁烟中。
鱼书欲寄何由达，水远山长处处同。', '', '[]', '721edb03-a72c-4a31-8241-3219b13c1fa3', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '寒食书事', '（宋）赵鼎', '寂寂柴门村落里，也教插柳纪年华。
禁烟不到粤人国，上冢亦携庞老家。
汉寝唐陵无麦饭，山溪野径有梨花。
一樽竟藉青苔卧，莫管城头奏暮笳。', '', '[]', '1b2ce9ac-d134-4242-ba74-c0a2b09469cd', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '清明', '（宋）黄庭坚', '佳节清明桃李笑，野田荒冢只生愁。
雷惊天地龙蛇蛰，雨足郊原草木柔。
人乞祭余骄妾妇，士甘焚死不公侯。
贤愚千载知谁是，满眼蓬蒿共一丘。', '', '[]', '4db84793-eb8e-4c07-88f1-b767f7f8b331', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '清明', '（宋）高菊卿', '南北山头多墓田，清明祭扫各纷然。
纸灰飞作白蝴蝶，泪血染成红杜鹃。
日落狐狸眠冢上，夜归儿女笑灯前。
人生有酒须当醉，一滴何曾到九泉。', '', '[]', '79455434-d417-400b-a1c9-b1c153082cc4', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '郊行即事', '（宋）程颢', '芳原绿野恣行时，春入遥山碧四围。
兴逐乱红穿柳巷，困临流水坐苔矶。
莫辞盏酒十分劝，只恐风花一片飞。
况是清明好天气，不妨游衍莫忘归。', '', '[]', '3555ff28-b6c7-43f9-a4ff-07358ba4803d', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋千', '（宋）僧惠洪', '画架双裁翠络偏，佳人春戏小楼前。
飘扬血色裙拖地，断送玉容人上天。
花皮润沾红杏雨，彩绳斜挂绿杨烟。
下来闲处从容立，疑是蟾宫谪神仙。', '', '[]', '3c82c9a0-e863-4d7b-9c84-0abce2bc980e', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '曲江对酒其一', '（唐）杜甫', '一片花飞减却春，风飘万点正愁人。
且看欲尽花经眼，莫厌伤多酒入唇。
江上小堂巢翡翠，苑边高冢卧麒麟。
细推物理须行乐，何用浮名绊此身。', '', '[]', '616a483a-893d-437f-8a3c-fd49d6401c03', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '曲江对酒其二', '（唐）杜甫', '朝回日日典春衣，每日江头尽醉归。
酒债寻常行处有，人生七十古来稀。
穿花蛱蝶深深见，点水蜻蜓款款飞。
传与风光共流转，暂时相赏莫相违。', '', '[]', '2b728a73-f2ab-4c53-9d49-c8c87fabf993', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '黄鹤楼', '（唐）崔颢', '昔人已乘黄鹤去，此地空余黄鹤楼。
黄鹤一去不复返，白云千载空悠悠。
晴川历历汉阳树，芳草萋萋鹦鹉州。
日暮乡关何处是，烟波江上使人愁。', '', '[]', 'd3ad747b-6d25-459c-ba6c-c90796c46567', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '旅怀', '（唐）崔涂', '水流花谢两无情，送尽东风过楚城。
蝴蝶梦中家万里，杜鹃枝上月三更。
故园书动经年绝，华发春催两鬓生。
自是不归归便得，五湖烟景有谁争。', '', '[]', 'd3fe0283-a24f-426c-915c-3b0efd56b603', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '答李儋', '（唐）韦应物', '去年花里逢君别，今日花开又一年。
世事茫茫难自料，春愁黯黯独成眠。
身多疾病思田里，邑有流亡愧俸钱。
闻道欲来相问讯，西楼望月几回圆。', '', '[]', '5a113b12-987e-42c4-a87b-4dc01fa2f886', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '江村', '（唐）杜甫', '清江一曲抱村流，长夏江村事事幽。
自去自来梁上燕，相亲相近水中鸥。
老妻画纸为棋局，稚子敲针作钓钩。
多病所须惟药物，微躯此外更何求。', '', '[]', '4fb50941-04d4-425d-9d6e-e5931e53a5c4', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '夏日', '（宋）张文潜', '长夏江村风日清，檐牙燕雀已生成。
蝶衣晒粉花枝午，蛛网添丝屋角晴。
落落疏廉邀月影，嘈嘈虚枕纳溪声。
久斑两鬓如霜雪，直欲樵渔过此生。', '', '[]', '2f0542c7-2b60-471b-a161-2bf548c452ec', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '积雨辋川庄作', '（唐）王维', '积雨空林烟火迟，蒸藜炊黍饷东菑。
漠漠水田飞白鹭，阴阴夏木啭黄鹂。
山中习静合朝槿，松下清斋折露葵。
野老与人争席罢，海鸥何事更相疑。', '', '[]', '0264c759-4fed-4995-b640-7c75430bfd6b', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '新竹', '（宋）陆游', '插棘编篱谨护持，养成寒碧映涟漪。
清风掠地秋先到，赤日行天午不知。
解箨时闻声簌簌，放梢初见影离离。
归闲我欲频来此，枕簟仍教到处随。', '', '[]', '399a9935-df48-4501-a50e-13283989f8c4', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '偶成', '（宋）程颢', '闲来无事不从容，睡觉东窗日已红。
万物静观皆自得，四时佳兴与人同。
道通天地有形外，思入风云变态中。
富贵不淫贫贱乐，男儿到此是豪雄。', '', '[]', 'fa924133-500d-4379-b8e0-bbfc544865a8', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '表兄话旧', '（唐）窦叔向', '夜合花开香满庭，夜深微雨醉初醒。
远书珍重何由达，旧事凄凉不可听。
去日儿童皆长大，昔年亲友半凋零。
明朝又是孤舟别，愁见河桥酒幔青。', '', '[]', 'bfbafcb8-3992-4706-9cd3-8717e63eeb3e', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '游月陂', '（宋）程颢', '月坡堤上四徘徊，北有中天百尺台。
万物已随秋气改，一樽聊为晚凉开。
水心云影闲相照，林下泉声静自来。
世事无端何足计，但逢佳节约重陪。', '', '[]', 'e54f7678-64ac-406b-bfee-1a3c330d2c82', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋兴八首 其一', '（唐）杜甫', '千家山郭静朝晖，日日江楼坐翠微。
信宿渔人还泛泛，清秋燕子故飞飞。
匡衡抗疏功名薄，刘向传经心事违。
同学少年多不贱，五陵裘马自轻肥。', '', '[]', '9f39e121-e1f0-4429-ba55-4d583c600fb0', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋兴八首 其二', '（唐）杜甫', '蓬莱宫阙对南山，承露金茎霄汉间。
西望瑶池降王母，东来紫气满函关。
云移雉尾开宫扇，日绕龙鳞识圣颜。
一卧沧江惊岁晚，几回青琐点朝班。', '', '[]', 'cdd4e15c-11e7-457e-9d78-b1539a7b2b95', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋兴八首 其三', '（唐）杜甫', '玉露凋伤枫树林，巫山巫峡气萧森。
江间波浪兼天涌，塞上风云接地阴。
丛菊两开他日泪，孤舟一系故园心。
寒衣处处催刀尺，白帝城高急暮砧。', '', '[]', 'cf78fe8c-75b3-4636-ae36-b9314264f978', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋兴八首 其四', '（唐）杜甫', '昆明池水汉时功，武帝旌旗在眼中。
织女机丝虚夜月，石鲸鳞甲动秋风。
波飘菰米沉云黑，露冷莲房坠粉红。
关塞极天惟鸟道，江湖满地一渔翁。', '', '[]', '082ade8e-7586-42fb-b9ee-3b86171cab7c', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '月夜舟中', '（宋）戴复古', '满船明月浸虚空，绿水无痕夜气冲。
诗思浮沈樯影里，梦魂摇拽橹声中。
星辰冷落碧潭水，鸿雁悲鸣红蓼风。
数点渔灯依古岸，断桥垂露滴梧桐。', '', '[]', 'd62273cc-ee20-48af-a964-73c543d9547d', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '长安秋望', '（唐）赵嘏', '云物凄凉拂署流，汉家宫阙动高秋。
残星几点雁横塞，长笛一声人倚楼。
紫艳半开篱菊静，红衣落尽渚莲愁。
鲈鱼正美不归去，空戴南冠学楚囚。', '', '[]', 'a6bd9dd9-8f0f-4378-aea1-ee876767be1c', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '新秋', '（唐）杜甫', '火云犹未敛奇峰，欹枕初惊一叶风。
几处园林萧瑟里，谁家砧杵寂寥中。
蝉声断续悲残月，萤焰高低照暮空。
赋就金门期再献，夜深搔首叹飞蓬。', '', '[]', 'b62967ef-6842-42df-9044-abc539447b12', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '中秋', '（宋）李朴', '皓魄当空宝镜升，云间仙籁寂无声。
平分秋色一轮满，长伴云衢千里明。
狡兔空从弦外落，妖蟆休向眼前生。
灵槎拟约同携手，更待银河澈底清。', '', '[]', 'c5b996a1-c578-4e90-ac13-6a33a0e924cb', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '九日蓝耕会饮', '（唐）杜甫', '老去悲秋强自宽，兴来今日尽君欢。
羞将短发还吹帽，笑倩旁人为正冠。
蓝水远从千涧落，玉山高并两峰寒。
明年此会知谁健，醉把茱萸仔细看。', '', '[]', 'af4c714b-4e04-43fe-a706-d368c0010563', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '秋思', '（宋）陆游', '利欲驱人万火牛，江湖浪迹一沙鸥。
日长似岁闲方觉，事大如天醉亦休。
砧杵敲残深巷月，梧桐摇落故园秋。
欲舒老眼无高处，安得元龙百尺楼。', '', '[]', '1ec32eb8-a647-4946-987a-62fcc323cb8f', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '与朱山人', '（唐）杜甫', '锦里先生乌角巾，园收芋栗未全贫。
惯看宾客儿童喜，得食阶除鸟雀驯。
秋水才深四五尺，野航恰受两三人。
白沙翠竹江村暮，相送柴门月色新。', '', '[]', 'cf2f9316-a592-48b3-8a89-dc152ff70d60', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '闻笛', '（唐）赵嘏', '谁家吹笛画楼中，断续声随断续风。
响遏行云横碧落，清和冷月到帘栊。
兴来三弄有桓子，赋就一篇怀马融。
曲罢不知人在否，余音嘹亮尚飘空。', '', '[]', 'b6a960de-b2c0-4889-9712-338429970c0d', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '冬景', '（宋）刘克庄', '晴窗早觉爱朝曦，竹外秋声渐作威。
命仆安排新暖阁，呼童熨贴旧寒衣。
叶浮嫩绿酒初熟，橙切香黄蟹正肥。
蓉菊满园皆可羡，赏心从此莫相违。', '', '[]', '592773b1-ae58-4d66-9edb-25abb10776c9', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '冬至', '（唐）杜甫', '天时人事日相催，冬至阳生春又来。
刺绣五纹添弱线，吹葭六管动飞灰。
岸容待腊将舒柳，山意冲寒欲放梅。
云物不殊乡国异，教儿且覆掌中杯。', '', '[]', '35a452ba-6a80-49b0-bcd9-d94d7a1b8d42', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '梅花', '（宋）林逋', '众芳摇落独鲜妍，占断风情向小园。
疏影横斜水清浅，暗香浮动月黄昏。
霜禽欲下先偷眼，粉蝶如知合断魂。
幸有微吟可相狎，不须檀板共金樽。', '', '[]', '88afba08-fc27-4974-90a0-4c499bb17bb6', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '左迁至蓝关示侄孙湘', '（唐）韩愈', '一封朝奏九重天，夕贬潮阳路八千。
本为圣朝除弊政，敢将衰朽惜残年。
云横秦岭家何在，雪拥蓝关马不前。
知汝远来应有意，好收吾骨瘴江边。', '', '[]', '7fb79a14-2e2b-41d4-b13c-3e28312fd6b7', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '干戈', '（宋）王中', '干戈未定欲何之，一事无成两鬓丝。
踪迹大纲王粲传，情怀小样杜陵诗。
鹡鸰音断人千里，乌鹊巢寒月一枝。
安得中山千日酒，酩然直到太平时。', '', '[]', 'c8ef6af6-e1a1-472d-a985-39dd39349dec', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '归隐', '（宋）陈抟', '十年踪迹走红尘，回首青山入梦频。
紫绶纵荣争及睡，朱门虽富不如贫。
愁闻剑戟扶危主，闷听笙歌聒醉人。
携取旧书归旧隐，野花啼鸟一般春。', '', '[]', '5dfb90bd-90a2-4589-b461-bc02eb180a0c', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '山中寡妇', '（唐）杜荀鹤', '夫因兵乱守蓬茅，麻苎裙衫鬓发焦。
桑柘废来犹纳税，田园荒尽尚征苗。
时挑野菜和根煮，旋砍生柴带叶烧。
任是深山最深处，也应无计避征徭。', '', '[]', 'a6bbd44c-da50-48ca-98c0-16f1f755b5f2', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '送天师', '（明）朱权', '霜落芝城柳影疏，殷勤送客出鄱湖。
黄金甲锁雷霆印，红锦韬缠日月符。
天上晓行骑只鹤，人间夜宿解双凫。
匆匆归到神仙府，为问蟠桃熟也无。', '', '[]', 'abd3ba9f-ab44-404c-b067-5197eceef7d5', '唐宋', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (8, '送毛伯温', '（明）明世宗', '大将南征胆气豪，腰横秋水雁翎刀。
风吹鼍鼓山河动，电闪旌旗日月高。
天上麒麟原有种，穴中蝼蚁岂能逃。
太平待诏归来日，朕与先生解战袍。', '', '[]', 'cad7f2c0-9ff8-4327-8d40-b0c03eb5bce7', '唐宋', 0);


-- 曹操诗集 数据，共 26 条

INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '度关山', '', '天地间，人为贵。
立君牧民，为之轨则。
车辙马迹，经纬四极。
黜陟幽明，黎庶繁息。
于铄贤圣，总统邦域。
封建五爵，井田刑狱。
有燔丹书，无普赦赎。
皋陶甫侯，何有失职？
嗟哉后世，改制易律。
劳民为君，役赋其力。
舜漆食器，畔者十国，
不及唐尧，采椽不斫。
世叹伯夷，欲以厉俗。
侈恶之大，俭为共德。
许由推让，岂有讼曲？
兼爱尚同，疏者为戚。', '', '[]', '04fe11ae-882d-4397-990b-f4fa1315c85d', '三国', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '短歌行 其一', '', '对酒当歌，人生几何！譬如朝露，去日苦多。
慨当以慷，忧思难忘。何以解忧？唯有杜康。
青青子衿，悠悠我心。但为君故，沉吟至今。
呦呦鹿鸣，食野之苹。我有嘉宾，鼓瑟吹笙。
明明如月，何时可掇？忧从中来，不可断绝。(明明 一作：佼佼)
越陌度阡，枉用相存。契阔谈䜩，心念旧恩。(谈䜩 一作：谈宴)
月明星稀，乌鹊南飞。绕树三匝，何枝可依？
山不厌高，海不厌深。周公吐哺，天下归心。(海 一作：水)', '', '[]', 'c2a4e41a-1d78-4590-a69a-350752af99d0', '三国', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '短歌行 其二', '', '周西伯昌，怀此圣德。
三分天下，而有其二。
修奉贡献，臣节不隆。
崇侯谗之，是以拘系。
后见赦原，赐之斧钺，得使征伐。
为仲尼所称，达及德行，
犹奉事殷，论叙其美。
齐桓之功，为霸之首。
九合诸侯，一匡天下。
一匡天下，不以兵车。
正而不谲，其德传称。
孔子所叹，并称夷吾，民受其恩。
赐与庙胙，命无下拜。
小白不敢尔，天威在颜咫尺。
晋文亦霸，躬奉天王。
受赐圭瓒，秬鬯彤弓，
卢弓矢千，虎贲三百人。
威服诸侯，师之所尊。
八方闻之，名亚齐桓。
河阳之会，诈称周王，是其名纷葩。', '', '[]', '2c92859d-e7c7-42d5-8335-bfe703a1d60d', '三国', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '对酒', '', '对酒歌，太平时，吏不呼门。
王者贤且明，宰相股肱皆忠良。
咸礼让，民无所争讼。
三年耕有九年储，仓谷满盈。
斑白不负载。
雨泽如此，百谷用成。
却走马，以粪其土田。
爵公侯伯子男，咸爱其民，以黜陟幽明。
子养有若父与兄。
犯礼法，轻重随其刑。
路无拾遗之私。
囹圄空虚，冬节不断。
人耄耋，皆得以寿终。
恩德广及草木昆虫。', '', '[]', '23e00a65-72ae-4974-9782-e94a8b737180', '三国', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '观沧海', '', '东临碣石，以观沧海。
水何澹澹，山岛竦峙。
树木丛生，百草丰茂。
秋风萧瑟，洪波涌起。
日月之行，若出其中；
星汉灿烂，若出其里。
幸甚至哉，歌以咏志。', '', '[]', '986dea97-36bb-44e4-92a0-5339749fb185', '三国', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '龟虽寿', '', '神龟虽寿，犹有竟时。
腾蛇乘雾，终为土灰。(腾 一作：螣)
老骥伏枥，志在千里。
烈士暮年，壮心不已。
盈缩之期，不但在天；
养怡之福，可得永年。
幸甚至哉，歌以咏志。', '', '[]', '94a0ab9f-c47a-4113-bb40-7a9967d55a34', '三国', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '蒿里行', '', '关东有义士，兴兵讨群凶。
初期会盟津，乃心在咸阳。
军合力不齐，踌躇而雁行。
势利使人争，嗣还自相戕。
淮南弟称号，刻玺于北方。
铠甲生虮虱，万姓以死亡。
白骨露于野，千里无鸡鸣。
生民百遗一，念之断人肠。', '', '[]', '62651ea0-f8e8-4e75-867b-bb20eb79a5b2', '三国', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '精列', '', '厥初生，
造划之陶物，莫不有终期。
莫不有终期。
圣贤不能免，何为怀此忧？
愿螭龙之驾，思想昆仑居。
思想昆仑居。
见期于迂怪，志意在蓬莱。
志意在蓬莱。
周礼圣徂落，会稽以坟丘。
会稽以坟丘。
陶陶谁能度？君子以弗忧。
年之暮奈何，时过时来微。', '', '[]', 'd168a29a-2be7-4cdc-b679-14af2fe06279', '三国', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '苦寒行', '', '北上太行山，艰哉何巍巍！
羊肠坂诘屈，车轮为之摧。
树木何萧瑟！北风声正悲。
熊罴对我蹲，虎豹夹路啼。
溪谷少人民，雪落何霏霏！
延颈长叹息，远行多所怀。
我心何怫郁？思欲一东归。
水深桥梁绝，中路正徘徊。
迷惑失故路，薄暮无宿栖。
行行日已远，人马同时饥。
担囊行取薪，斧冰持作糜。
悲彼东山诗，悠悠使我哀。', '', '[]', '21a72ad4-e7c3-4d90-a8f1-733a884ebaff', '三国', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '气出唱 其一', '', '华阴山，自以为大。
高百丈，浮云为之盖。
仙人欲来，出随风，列之雨。
吹我洞箫，鼓瑟琴，何訚訚！
酒与歌戏，今日相乐诚为乐。
玉女起，起舞移数时。
鼓吹一何嘈嘈。
从西北来时，仙道多驾烟，
乘云驾龙，郁何务务。
遨游八极，乃到昆仑之山，
西王母侧，神仙金止玉亭。
来者为谁？赤松王乔，乃德旋之门。
乐共饮食到黄昏。
多驾合坐，万岁长，宜子孙。', '', '[]', 'e371a02f-26b8-4c9f-8018-49b4956634ae', '三国', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '气出唱 其二', '', '驾六龙，乘风而行。
行四海，路下之八邦。
历登高山临溪谷，乘云而行。
行四海外，东到泰山。
仙人玉女，下来翱游。
骖驾六龙饮玉浆。
河水尽，不东流。
解愁腹，饮玉浆。
奉持行，东到蓬莱山，上至天之门。
玉阙下，引见得入，
赤松相对，四面顾望，视正焜煌。
开玉心正兴，其气百道至。
传告无穷闭其口，但当爱气寿万年。
东到海，与天连。
神仙之道，出窈入冥，常当专之。
心恬澹，无所愒。
欲闭门坐自守，天与期气。
愿得神之人，乘驾云车，
骖驾白鹿，上到天之门，来赐神之药。
跪受之，敬神齐。
当如此，道自来。', '', '[]', '0f9b7432-1b41-4a30-9020-1da421bf427f', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '气出唱 其三', '', '游君山，甚为真。
崔嵬砟硌，尔自为神。
乃到王母台，金阶玉为堂，芝草生殿旁。
东西厢，客满堂。
主人当行觞，坐者长寿遽何央。
长乐甫始宜孙子。
常愿主人增年，与天相守。', '', '[]', '66087057-c995-412f-83ce-af0c6ad96a27', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '却东西门行', '', '鸿雁出塞北，乃在无人乡。
举翅万馀里，行止自成行。
冬节食南稻，春日复北翔。
田中有转蓬，随风远飘扬。
长与故根绝，万岁不相当。
奈何此征夫，安得驱四方！
戎马不解鞍，铠甲不离傍。
冉冉老将至，何时返故乡？
神龙藏深泉，猛兽步高冈。
狐死归首丘，故乡安可忘！', '', '[]', 'a2aa6771-3df5-45b5-8eac-c93a26b48fdf', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '塘上行', '', '蒲生我池中，其叶何离离。
傍能行仁义，莫若妾自知。
众口铄黄金，使君生别离。
念君去我时，独愁常苦悲。
想见君颜色，感结伤心脾。
念君常苦悲，夜夜不能寐。
莫以豪贤故，弃捐素所爱？
莫以鱼肉贱，弃捐葱与薤？
莫以麻枲贱，弃捐菅与蒯？
出亦复何苦，入亦复何愁。
边地多悲风，树木何修修！
从君致独乐，延年寿千秋。', '', '[]', '2710b23b-8baf-4fc7-a658-49064de885fd', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '薤露行', '', '惟汉廿二世，所任诚不良。
沐猴而冠带，知小而谋疆。
犹豫不敢断，因狩执君王。
白虹为贯日，己亦先受殃。
贼臣持国柄，杀主灭宇京。
荡覆帝基业，宗庙以燔丧。
播越西迁移，号泣而且行。
瞻彼洛城郭，微子为哀伤。', '', '[]', 'db6c8d60-4676-4de8-87c5-cdd83f1d249d', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '陌上桑', '', '驾虹霓，乘赤云，登彼九疑历玉门。
济天汉，至昆仑，见西王母谒东君。
交赤松，及羡门，受要秘道爱精神。
食芝英，饮醴泉，柱杖桂枝佩秋兰。
绝人事，游浑元，若疾风游欻翩翩。
景未移，行数千，寿如南山不忘愆。', '', '[]', 'a99a4474-2eb3-44f8-bb01-3855714e4f2f', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '秋胡行 其一', '', '晨上散关山，此道当何难！
晨上散关山，此道当何难！
牛顿不起，车堕谷间。
坐磐石之上，弹五弦之琴。
作为清角韵，意中迷烦。
歌以言志，晨上散关山。
有何三老公，卒来在我旁？
有何三老公，卒来在我旁？
负揜被裘，似非恒人。
谓卿云何困苦以自怨，徨徨所欲，来到此间？
歌以言志，有何三老公？
我居昆仑山，所谓者真人。
我居昆仑山，所谓者真人。
道深有可得。
名山历观，遨游八极，枕石漱流饮泉。
沈吟不决，遂上升天。
歌以言志，我居昆仑山。
去去不可追，长恨相牵攀。
去去不可追，长恨相牵攀。
夜夜安得寐，惆怅以自怜。
正而不谲，辞赋依因。
经传所过，西来所传。
歌以言志，去去不可追。', '', '[]', '289b6e93-d806-48e2-b8a8-5d322918658c', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '秋胡行 其二', '', '愿登泰华山，神人共远游。
愿登泰华山，神人共远游。
经历昆仑山，到蓬莱。
飘遥八极，与神人俱。
思得神药，万岁为期。
歌以言志，愿登泰华山。
天地何长久！人道居之短。
天地何长久！人道居之短。
世言伯阳，殊不知老；
赤松王乔，亦云得道。
得之未闻，庶以寿考。
歌以言志，天地何长久！
明明日月光，何所不光昭！
明明日月光，何所不光昭！
二仪合圣化，贵者独人不？
万国率土，莫非王臣。
仁义为名，礼乐为荣。
歌以言志，明明日月关。
四时更逝去，昼夜以成岁。
四时更逝去，昼夜以成岁。
大人先天而天弗违。
不戚年往，忧世不治。
存亡有命，虑之为蚩。
歌以言志，四时更逝去。
戚戚欲何念！欢笑意所之。
戚戚欲何念！欢笑意所之。
壮盛智愚，殊不再来。
爱时进趣，将以惠谁？
泛泛放逸，亦同何为！
歌以言志，戚戚欲何念！', '', '[]', '2c2897b0-5ea0-4406-b2cb-5d1ec9268d5a', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '善哉行 其一', '', '古公亶甫，积德垂仁。
思弘一道，哲王于豳。
太伯仲雍，王德之仁。
行施百世，断发文身。
伯夷叔齐，古之遗贤。
让国不用，饿殂首山。
智哉山甫，相彼宣王。
何用杜伯，累我圣贤。
齐桓之霸，赖得仲父。
后任竖刁，虫流出户。
晏子平仲，积德兼仁。
与世沈德，未必思命。
仲尼之世，主国为君。
随制饮酒，扬波使官。', '', '[]', 'c4c50484-68b3-42af-8b4c-ef8a8b0cf078', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '善哉行 其二', '', '自惜身薄祜，夙贱罹孤苦。
既无三徙教，不闻过庭语。
其穷如抽裂，自以思所怙。
虽怀一介志，是时其能与！
守穷者贫贱，惋叹泪如雨。
泣涕于悲夫，乞活安能睹？
我愿于天穷，琅邪倾侧左。
虽欲竭忠诚，欣公归其楚。
快人由为叹，抱情不得叙。
显行天教人，谁知莫不绪。
我愿何时随？此叹亦难处。
今我将何照于光曜？释衔不如雨。', '', '[]', '8de1dedf-f533-445b-99d9-75e5b67e5428', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '善哉行 其三', '', '朝日乐相乐，酣饮不知醉。
悲弦激新声，长笛吹清气。
弦歌感人肠，四坐皆欢悦。
寥寥高堂上，凉风入我室。
持满如不盈，有德者能卒。
君子多苦心，所愁不但一。
慊慊下白屋，吐握不可失。
众宾饱满归，主人苦不悉。
比翼翔云汉，罗者安所羁？
冲静得自然，荣华何足为！', '', '[]', '0f8771fa-1dac-4267-8f30-a05e4b7757bf', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '步出夏门行 艳', '', '云行雨步，超越九江之皋。
临观异同，心意怀?豫，不知当复何从？
经过至我碣石，心惆怅我东海。', '', '[]', '1c7e52bd-8c43-4096-b014-615dc1b4e3c5', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '步出夏门行 冬十月', '', '孟冬十月，北风徘徊，
天气肃清，繁霜霏霏。
鹍鸡晨鸣，鸿雁南飞，
鸷鸟潜藏，熊罴窟栖。
钱镈停置，农收积场。
逆旅整设，以通贾商。
幸甚至哉！歌以咏志。', '', '[]', 'd1841308-2b81-4572-8799-35c367a66a73', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '步出夏门行 土不同', '', '乡土不同，河朔隆冬。
流澌浮漂，舟船行难。
锥不入地，蘴藾深奥。
水竭不流，冰坚可蹈。
士隐者贫，勇侠轻非。
心常叹怨，戚戚多悲。
幸甚至哉！歌以咏志。', '', '[]', '25f4bdb9-27ed-49f9-8222-4d3e3508cf6c', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '谣俗词', '', '瓮中无斗储，发箧无尺缯。
友来从我贷，不知所以应。', '', '[]', '0bc01342-a0b5-4316-b8b2-c6ff37269ece', '三国', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (10, '董逃歌词', '', '德行不亏缺，变故自难常。
郑康成行酒，伏地气绝；
郭景图命尽于园桑。', '', '[]', '8fc96cac-e94b-499b-9f93-cd50db7f0e61', '三国', 0);


-- 五代的词 数据，共 542 条

INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其一', '温庭筠', '小山重叠金明灭，鬓云欲度香腮雪。
懒起画蛾眉，弄妆梳洗迟。
照花前后镜，花面交 相映。
新帖绣罗襦，双双金鹧鸪。', '', '[]', 'a8571168-6c90-4ac3-bc90-ec52350b4eac', '五代', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其二', '温庭筠', '水晶帘里玻璃枕，暖香惹梦鸳鸯锦。
江上柳如烟，雁飞残月天。
藕丝秋色浅，人胜参差剪。
双鬓隔香红，玉钗头上风。', '', '[]', 'cb9486c5-ba49-47a0-bdab-132a30d9e37d', '五代', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其三', '温庭筠', '蕊黄无限当山额，宿妆隐笑纱窗隔。
相见牡丹时，暂来还别离。
翠钗金作股，钗上蝶双舞。
心事竟谁知，月明花满枝。', '', '[]', 'ce01d3b7-faf8-4b9f-a7d6-d4f6b776e73a', '五代', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其四', '温庭筠', '翠翘金缕双㶉𫛶，水纹细起春池碧。
池上海棠梨，雨晴红满枝。
绣衫遮笑靥，烟草粘飞蝶。
青琐对芳菲，玉关音信稀。', '', '[]', '61ee4085-dcd3-4609-a6a7-1e89e2c76afb', '五代', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其五', '温庭筠', '杏花含露团 香雪，绿杨陌上多离别。
灯在月胧明，觉来闻晓莺。
玉钩褰翠幕，妆浅旧眉薄。
春梦正关情，镜中蝉鬓轻。 ', '', '[]', '97a33214-0d7c-4c6d-9937-6327ddd629e9', '五代', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其六', '温庭筠', '玉楼明月长相忆，柳丝袅娜春无力。
门外草萋萋，送君闻马嘶。
画罗金翡翠，香烛消成泪。
花落子规啼，绿窗残梦迷。', '', '[]', '0ada395d-2f87-4c2e-b3ec-4e89fac43889', '五代', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其七', '温庭筠', '凤凰相对盘金缕，牡丹一夜经微雨。
明镜照新妆，鬓轻双脸长。
画楼相望久，栏外垂丝柳。
音信不归来，社前双燕回。', '', '[]', 'eca39a64-429d-424e-b06d-60d30ef6b78a', '五代', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其八', '温庭筠', '牡丹花谢莺声歇，绿杨满院中庭月。
相忆梦难成，背窗灯半明。
翠钿金压脸，寂寞香闺掩。
人远泪阑干，燕飞春又残。', '', '[]', '78820676-4b86-4615-a279-477cf8425d6f', '五代', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其九', '温庭筠', '满宫明月梨花白，故人万里关山隔。
金雁一双飞，泪痕沾绣衣。
小园芳草绿，家住越溪曲。
杨柳色依依，燕归君不归。', '', '[]', 'c9cfa629-179e-4653-8360-6f6b23a645fb', '五代', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其十', '温庭筠', '宝函钿雀金㶉𫛶，沉香阁上吴山碧。
杨柳又如丝，驿桥春雨时。
画楼音信断，芳草江南岸。
鸾镜与花枝，此情谁得知。', '', '[]', 'd85b7fde-9e34-4feb-a67a-5f8cbbe30a8e', '五代', 1);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其十一', '温庭筠', '南园满地堆轻絮，愁闻一霎清明雨。
雨后却斜阳，杏花零落香。
无言匀睡脸，枕上屏山掩。
时节欲黄昏，无聊独倚门。', '', '[]', 'ef184473-c7ae-47ca-ad03-8af9368d4684', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其十二', '温庭筠', '夜来皓月才当午，重帘悄悄无人语。
深处麝烟长，卧时留薄妆。
当年还自惜，往事那堪忆。
花落月明残，锦衾知晓寒。', '', '[]', '8bb26e0e-db44-4546-8f24-cc952fa18041', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其十三', '温庭筠', '雨暗夜合玲珑日，万枝香袅红丝拂。
闲梦忆金堂，满庭萱草长。
绣帘垂簏簌，眉黛远山绿。
春水渡溪桥，凭栏魂欲消。', '', '[]', 'b955bc61-8fd4-488d-ab0f-4defe30f8856', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮 其十四', '温庭筠', '竹风轻动庭除冷，珠帘月上玲珑影。
山枕隐秾妆，绿檀金凤凰。
两蛾愁黛浅，故国吴宫远。
春恨正关情，画楼残点声。', '', '[]', '40df68bb-9b2e-4f4a-8217-1d05f6eef699', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子 其一', '温庭筠', '柳丝长，春雨细，花外漏声迢递。
惊塞雁，起城乌，画屏金鹧鸪。
香雾薄，透帘幕，惆怅谢家池阁。
红烛背，绣帘垂，梦长君不知。', '', '[]', 'ac37bd73-f864-4569-8a93-a647bbb5285d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子 其二', '温庭筠', '星斗稀，钟鼓歇，帘外晓莺残月。
兰露重，柳风斜，满庭堆落花。
虚阁上，倚栏望，还似去年惆怅。
春欲暮，思无穷，旧欢如梦中。', '', '[]', '46ab7c19-6e95-4453-93f0-b61374fba0f3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子 其三', '温庭筠', '金雀钗，红粉面，花里暂时相见。
如我意，感君怜，此情须问天。
香作穗，蜡成泪，还似两人心意。
山枕腻，锦衾寒，觉来更漏残。', '', '[]', '9e44a600-f851-4b8a-ab56-5a77256a3609', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子 其四', '温庭筠', '相见稀，相忆久，眉浅淡烟如柳。
垂翠幕，结同心，待郎熏绣衾。
城上月，白如雪，蝉鬓美人愁绝。
宫树暗，鹊桥横，玉签初报明。', '', '[]', 'ebbbf5f1-eb51-4d4f-b18c-30e1e442c752', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子 其五', '温庭筠', '背江楼，临海月，城上角声呜咽。
堤柳动，岛烟昏，两行征雁分。
京口路，归帆渡，正是芳菲欲度。
银烛尽，玉绳低，一声村落鸡。', '', '[]', 'b018867d-9dbf-49cd-8cdf-a57f0675ea46', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子 其六', '温庭筠', '玉炉香，红蜡泪，偏照画堂秋思。
眉黛薄，鬓云残，夜长衾枕寒。
梧桐树，三更雨，不道离情正苦。
一叶叶，一声声，空阶滴到明。', '', '[]', '7e76230f-175a-4e0a-8e5a-c59bc1edd67a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '归国遥·香玉', '温庭筠', '香玉，翠凤宝钗垂簏簌，胜金粟，越罗春水绿。
画堂照帘残烛，梦余更漏促。
谢娘无限心曲，晓屏山断续。', '', '[]', '56ee751e-b5e0-486e-a074-12fa0d86cdfe', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '归国遥·双脸', '温庭筠', '双脸，小凤战蓖金飐艳。舞衣无力风敛，藕丝秋色染。
锦帐绣帷斜掩，露珠清晓簟。
粉心黄蕊花靥，黛眉山两点。', '', '[]', 'c8da8437-22ef-4ca4-81d6-f53c40e9ae17', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·花映柳条', '温庭筠', '花映柳条，闲向绿萍池上。
凭栏干，窥细浪，雨萧萧。
近来音信两疏索，洞房空寂寞。
掩银屏，垂翠箔，度春宵。', '', '[]', '6eb76e04-5f4a-41a8-a03b-af5b2f2f49a6', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·日映纱窗', '温庭筠', '日映纱窗，金鸭小屏山碧。
故乡春，烟霭隔，背兰釭。
宿妆惆怅倚高阁，千里云影薄。
草初齐，花又落，燕双双。', '', '[]', '27a9a6fa-5d19-42ee-ab76-7f6981a65f84', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·楚女不归', '温庭筠', '楚女不归，楼枕小河春水。
月孤明，风又起，杏花稀。
玉钗斜簪云鬟髻，裙上金缕凤。
八行书，千里梦，雁南归。', '', '[]', '635972e2-374d-4e32-9916-23776766ba86', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·罗带惹香', '温庭筠', '罗带惹香，犹系别时红豆。
泪痕新，金缕旧，断离肠。
一双娇燕语雕梁，还是去年时节。
绿阴浓，芳草歇，柳花狂。', '', '[]', 'db7d1b85-404d-45de-8008-021e86389841', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '定西番·汉使昔年离别', '温庭筠', '汉使昔年离别。
攀弱柳，折寒梅，上高台。
千里玉关春雪，雁来人不来。
羌笛一声愁绝，月徘徊。', '', '[]', '83389bb3-396d-4f3a-a73e-1fc2a1363b61', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '定西番·海燕欲飞调羽', '温庭筠', '海燕欲飞调羽。萱草绿，杏花红，隔帘栊。
双鬓翠霞金缕，一枝春艳浓。
楼上月明三五，琐窗中。', '', '[]', '6bf9694d-8fd4-4f28-9cae-d234d6f542c4', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '定西番·细雨晓莺春晚', '温庭筠', '细雨晓莺春晚。
人似玉，柳如眉，正相思。
罗幕翠帘初卷，镜中花一枝。
肠断塞门消息，雁来稀。', '', '[]', 'dfcb88ee-f6e6-4aae-821f-e9646debc464', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·宜春苑外最长条', '温庭筠', '宜春苑外最长条，闲袅春风伴舞腰。
正是玉人肠绝处，一渠春水赤栏桥。', '', '[]', 'c2fb1745-4641-4775-8c26-77d28507ab36', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·南内墙东御路傍', '温庭筠', '南内墙东御路傍，须知春色柳丝黄。
杏花未肯无情思，何事行人最断肠。', '', '[]', '98221715-00ce-4b78-8c05-8a2754ff67d7', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·苏小门前柳万条', '温庭筠', '苏小门前柳万条，毵毵金线拂平桥。
黄莺不语东风起，深闭朱门伴舞腰。', '', '[]', '9657f8b7-860c-4834-95f7-4ca33c2112df', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·金缕毵毵碧瓦沟', '温庭筠', '金缕毵毵碧瓦沟，六宫眉黛惹香愁。
晚来更带龙池雨，半拂栏干半入楼。', '', '[]', '5c516804-7f60-457a-b649-64c4d35c6055', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·馆娃宫外邺城西', '温庭筠', '馆娃宫外邺城西，远映征帆近拂提。
系得王孙归意切，不关芳草绿萋萋。', '', '[]', '4d82f011-b11a-4a0a-b304-8fc2e20fe5af', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·两两黄鹂色似金', '温庭筠', '两两黄鹂色似金，袅枝啼露动芳音。
春来幸自长如线，可惜牵缠荡子心。', '', '[]', 'd67d9315-1949-4d50-ad5d-732e04ad65b5', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·御柳如丝映九重', '温庭筠', '御柳如丝映九重，凤凰窗映绣芙蓉。
景阳楼畔千条路，一面新妆等晓风。', '', '[]', '285fd09f-14f4-4fbe-bb71-3eff8f8c69db', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·织锦机边莺语频', '温庭筠', '织锦机边莺语频，停梭垂泪忆征人。
塞门三月犹萧索，纵有垂杨未觉春。', '', '[]', 'd7ff4c3a-c305-4b96-b197-d8e7b13c7677', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南歌子·手里金鹦鹉', '温庭筠', '手里金鹦鹉，胸前绣凤凰。
偷眼暗形相，不如从嫁与，作鸳鸯。', '', '[]', '0ad6e4f4-e05d-4a40-9d87-f547e5c2bbd2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南歌子·似带如丝柳', '温庭筠', '似带如丝柳，团酥握雪花。
帘卷玉钩斜，九衢尘欲暮，逐香车。', '', '[]', 'ec349209-a80a-45ec-96f7-05b4e1c401af', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南歌子·鬓堕低梳髻', '温庭筠', '鬓堕低梳髻，连娟细扫眉。
终日两相思，为君憔悴尽，百花时。', '', '[]', '79fdc4a3-dc11-43ab-b230-d6ac12e6ce72', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南歌子·脸上金霞细', '温庭筠', '脸上金霞细，眉间翠钿深。
倚枕覆鸳衾，隔帘莺百啭，感君心。', '', '[]', '6fd11e06-09e4-43b9-a458-6cae6ea0d537', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南歌子·扑蕊添黄子', '温庭筠', '扑蕊添黄子，呵花满翠鬟。
鸳枕映屏山，明月三五夜，对芳颜。', '', '[]', '0b3ad146-2037-4bb0-a70e-4b59b88a4c77', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南歌子·转盼如波眼', '温庭筠', '转盼如波眼，娉婷似柳腰。
花里暗相招，忆君肠欲断，恨春宵。', '', '[]', '3e64991c-99ee-4e68-8367-a3a6e4a08770', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南歌子·懒拂鸳鸯枕', '温庭筠', '懒拂鸳鸯枕，休缝翡翠裙。
罗帐罢炉熏，近来心更切，为思君。', '', '[]', '300f4958-36f9-4ed8-a88e-4184a60660d3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河渎神·河上望丛柯', '温庭筠', '河上望丛柯，庙前春雨来时。
楚山无限鸟飞迟，兰棹空伤别离。
何处杜鹃啼不歇，艳红开尽如血。
蝉鬓美人愁绝，百花芳草佳节。', '', '[]', 'a8804326-1d76-4146-a88b-371e7fab3547', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河渎神·孤庙对寒潮', '温庭筠', '孤庙对寒潮，西陵风雨萧萧。
谢娘惆怅倚兰桡，泪流玉箸千条。
暮天愁听思归乐，早梅香满山郭。
回首两情萧索，离魂何处飘泊。', '', '[]', 'b7f6e1ac-ade8-4b44-8f1b-5571a053624d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河渎神·铜鼓赛神来', '温庭筠', '铜鼓赛神来，满庭幡盖徘徊。
水村江浦过风雷，楚山如画烟开。
离别橹声空萧索，玉容惆怅妆薄。
青麦燕飞落落，卷帘愁对珠阁。', '', '[]', '387bd113-1364-4433-b1e8-8adc72cc9b74', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·含娇含笑', '温庭筠', '含娇含笑，宿翠残红窈窕。
鬓如蝉，寒玉簪秋水，轻纱卷碧烟。
雪胸鸾镜里，琪树凤楼前。
寄语青娥伴，早求仙。', '', '[]', 'e5ceb5be-fe35-4ca1-b4c8-1f53965a4626', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·霞帔云发', '温庭筠', '霞帔云发，钿镜仙容似雪。
画愁眉，遮语回轻扇，含羞下绣帷。
玉楼相望久，花洞恨来迟。
早晚乘鸾去，莫相遗。', '', '[]', '96fc46e1-55b0-49c1-8e87-67007d898237', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '玉蝴蝶·霞帔云发', '温庭筠', '秋风凄切伤离，行客未归时。
塞外草先衰江，南雁到迟。
芙蓉凋嫩脸，杨柳堕新眉。
摇落使人悲，断肠谁得知。', '', '[]', '99d4aeee-97ec-4de7-b302-16457bdcd742', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '清平乐·上阳春晚', '温庭筠', '上阳春晚，宫女愁蛾浅。
新岁清平思同辇，争那长安路远。
凤帐鸳被徒熏，寂寞花锁千门。
竞把黄金买赋，为妾将上明君。', '', '[]', 'c045d87b-7e90-470d-a4a2-7ddbed5bd842', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '清平乐·洛阳愁绝', '温庭筠', '洛阳愁绝，杨柳花飘雪。
终日行人恣攀折，桥下流水呜咽。
上马争劝离觞，南浦莺声断肠。
愁杀平原年少，回首挥泪千行。', '', '[]', '62854d5f-a702-442e-b9ad-63773125a120', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '遐方怨·凭绣槛', '温庭筠', '凭绣槛，解罗帷。
未得君书，肠断，潇湘春雁飞。
不知征马几时归，海棠花谢也，雨霏霏。', '', '[]', 'd7a395b5-6a9c-4543-a2d7-03e72531aef5', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '遐方怨·花半坼', '温庭筠', '花半坼，雨初晴。
未卷珠帘，梦残，惆怅闻晓莺。
宿妆眉浅粉山横，约鬟鸾镜里，绣罗轻。', '', '[]', 'bac98b94-52c7-4917-a680-ca2d07b60d7e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '诉衷情·莺语花舞春昼午', '温庭筠', '莺语花舞春昼午，雨霏微。
金带枕，宫锦，凤凰帷。
柳弱蝶交飞，依依。
辽阳音信稀，梦中归。', '', '[]', '33d597d3-6da5-4ae1-a4d8-80559dcb6bb0', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '思帝乡·花花', '温庭筠', '花花，满枝红似霞。
罗袖画帘肠断，卓香车。
回面共人闲语，战篦金凤斜。
惟有阮郎春尽，不归家。', '', '[]', '55dd0595-f35c-4cda-84f2-e93ca62a9d7d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '梦江南·千万恨', '温庭筠', '千万恨，恨极在天涯。
山月不知心里事，水风空落眼前花，摇曳碧云斜。', '', '[]', 'de400a2e-67b5-43d3-a480-e262a1583036', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '梦江南·梳洗罢', '温庭筠', '梳洗罢，独倚望江楼。
过尽千帆皆不是，斜晖脉脉水悠悠，肠断白苹洲。', '', '[]', 'dfd9f31a-62d2-4dba-b199-5fc400d85a91', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·江畔', '温庭筠', '江畔，相唤。
晓妆鲜，仙景个女采莲。
请君莫向那岸边，少年，好花新满船。
红袖摇曳逐风暖，垂玉腕，肠向柳丝断。
浦南归，浦北归，莫知，晚来人已稀。', '', '[]', 'b0b69f1e-fd15-41a4-ab6d-0d44bbdd725a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·湖上', '温庭筠', '湖上，闲望。
雨萧萧，烟浦花桥路遥。
谢娘翠蛾愁不消，终朝，梦魂迷晚潮。
荡子天涯归棹远，春已晚，莺语空肠断。
若耶溪，溪水西，柳堤，不闻郎马嘶。', '', '[]', '593fdaa8-044c-402f-862b-fe6f4d383f9d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·同伴', '温庭筠', '同伴，相唤。
杏花稀，梦里每愁依违。
仙客一去燕已飞，不归，泪痕空满衣。
天际云鸟引晴远，春已晚，烟霭渡南苑。
雪梅香，柳带长，小娘，转令人意伤。', '', '[]', 'b766904f-b274-4743-ad7c-58cf053a5a27', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '番女怨·万枝香雪开已遍', '温庭筠', '万枝香雪开已遍，细雨双燕。
钿蝉筝，金雀扇，画梁相见。
雁门消息不归来，又飞回。', '', '[]', 'd4f3f49c-4bb1-4462-8765-485d39b9d3b1', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '番女怨·碛南沙上惊雁起', '温庭筠', '碛南沙上惊雁起，飞雪千里。
玉连环，金镞箭，年年征战。
画楼离恨锦屏空，杏花红。', '', '[]', '44f8a2e1-4e62-473c-96b0-2484c821480c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·一点露珠凝冷', '温庭筠', '一点露珠凝冷，波影。满池塘。
绿茎红艳两相乱，肠断。水风凉。', '', '[]', '9abcc18b-4fe1-4cf6-a031-0049b0ca06cc', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·镜水夜来秋月', '温庭筠', '镜水夜来秋月，如雪。采莲时。
小娘红粉对寒浪，惆怅。正思惟。', '', '[]', '455f9bd2-1cc9-49e8-91c1-70aa0c07c1bd', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·楚女欲归南浦', '温庭筠', '楚女欲归南浦，朝雨。湿愁红。
小船摇漾入花里，波起。隔西风。', '', '[]', 'a8b70e46-fc1f-463d-ae5e-b3bf385d3fb9', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '天仙子·晴野鹭鸶飞一只', '皇甫松', '晴野鹭鸶飞一只，水荭花发秋江碧。
刘郎此日别天仙，登绮席，泪珠滴，十二晚峰高历历。', '', '[]', '181c9366-0c8f-47f2-aab1-aeabef5ebda7', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '天仙子·踯躅花开红照水', '皇甫松', '踯躅花开红照水，鹧鸪飞绕青山觜。
行人经岁始归来，千万里，错相倚，懊恼天仙应有以。', '', '[]', '45398cfc-6e5e-47d2-ab70-e4171e66a97f', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浪淘沙·滩头细草接疏林', '皇甫松', '滩头细草接疏林，浪恶罾船半欲沉。
宿鹭眠鸥飞旧浦，去年沙嘴是江心。', '', '[]', '238092a0-b206-4b6e-9a44-9c0fdd96dc1d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浪淘沙·蛮歌豆蔻北人愁', '皇甫松', '蛮歌豆蔻北人愁，蒲雨杉风野艇秋。
浪起䴔䴖眠不得，寒沙细细入江流。', '', '[]', '612e65b7-4635-4ada-a549-c9a5a96c1e97', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·春入行宫映翠微', '皇甫松', '春入行宫映翠微，玄宗侍女舞烟丝。
如今柳向空城绿，玉笛何人更把吹。', '', '[]', 'e22a2eea-0d28-418a-b6a2-3c4ace0529fb', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·烂漫春归水国时', '皇甫松', '烂漫春归水国时，吴王宫殿柳丝垂。
黄莺长叫空闺畔，西子无因更得知。', '', '[]', 'fb223ff3-b698-43d7-a948-e42e447a5b28', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '摘得新·酌一卮', '皇甫松', '酌一卮，须教玉笛吹。
锦筵红蜡烛，莫来迟。
繁红一夜经风雨，是空枝。', '', '[]', '140d2a47-9755-4ae7-a26f-daf509ed4c77', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '摘得新·摘得新', '皇甫松', '摘得新，枝枝叶叶春。
管弦兼美酒，最关人。
平生都得几十度，展香茵。', '', '[]', '85a38c68-b52c-40dc-b051-941cc1112f77', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '梦江南·兰烬落', '皇甫松', '兰烬落，屏上暗红蕉。
闲梦江南梅熟日，夜船吹笛雨萧萧，人语驿边桥。', '', '[]', '2446ac2e-0ee3-464f-afee-c61f9cfd418e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '梦江南·楼上寝', '皇甫松', '楼上寝，残月下帘旌。
梦见秣陵惆怅事，桃花柳絮满江城，双髻坐吹笙。', '', '[]', '1d94067d-03a2-430c-b2a8-f7f1b32a7b68', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '采莲子·菡萏香莲十顷陂', '皇甫松', '菡萏香莲十顷陂（举棹），小姑贪戏采莲迟（年少）。
晚来弄水船头湿（举棹），更脱红裙裹鸭儿（年少）。', '', '[]', '48d6be41-9a12-4832-83e0-9d90061231be', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '采莲子·船动湖光滟滟秋', '皇甫松', '船动湖光滟滟秋（举棹），贪看年少信船流（年少）。
无端隔水抛莲子（举棹），遥被人知半日羞（年少）。', '', '[]', '89779a56-4011-411d-a113-822e932e25ba', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·清晓妆成寒食天', '韦庄', '清晓妆成寒食天，柳球斜袅间花钿，卷帘直出画堂前。
指点牡丹初绽朵，日高犹自凭朱栏，含颦不语恨春残。', '', '[]', '9546f5e4-e94b-4de0-8b9e-789bf48fb33e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·欲上秋千四体慵', '韦庄', '欲上秋千四体慵，拟教人送又心忪。画堂帘幕月明风。
此夜有情谁不极，隔墙梨雪又玲珑，玉容憔悴惹微红。', '', '[]', 'b2d95dfb-2fda-41b2-8b5e-a9487c60a516', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·惆怅梦余山月斜', '韦庄', '惆怅梦余山月斜，孤灯照壁背窗纱，小楼高阁谢娘家。
暗想玉容何所似，一枝春雪冻梅花，满身香雾簇朝霞。', '', '[]', '8f370131-e217-48e0-b2dd-dc4b737fef4e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·绿树藏莺莺玉啼', '韦庄', '绿树藏莺莺玉啼，柳丝斜拂白铜堤，弄珠江上草萋萋。
日暮饮归何处客，绣鞍骢马一声嘶，满身兰麝醉如泥。', '', '[]', '53bd90df-df57-4491-85ef-d800ab97b27c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·夜夜相思更漏残', '韦庄', '夜夜相思更漏残，伤心明月凭栏干，想君思我锦衾寒。
咫尺画堂深似海，忆来唯把旧书看，几时携手入长安。', '', '[]', '57c3915f-8b97-4f92-8c33-c3f431bfd706', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·红楼别夜堪惆怅', '韦庄', '红楼别夜堪惆怅，香灯半卷流苏帐。
残月出门时，美人和泪辞。
琵琶金翠羽，弦上黄莺语。
劝我早归家，绿窗人似花。', '', '[]', '41e25dde-88fe-4931-be6f-8cd74c001fb3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·人人尽说江南好', '韦庄', '人人尽说江南好，游人只合江南老。
春水碧于天，画船听雨眠。
垆边人似月，皓腕凝双雪。
未老莫还乡，还乡须断肠。', '', '[]', '13e7b2ca-d82a-4b68-9e84-f0384432dc4d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·如今却忆江南乐', '韦庄', '如今却忆江南乐，当时年少春衫薄。
骑马倚斜桥，满楼红袖招。
翠屏金屈曲，醉入花丛宿。
此度见花枝，白头誓不归。', '', '[]', '688cec68-54ab-471e-81bb-e98e8e724089', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·劝君今夜须沉醉', '韦庄', '劝君今夜须沉醉，樽前莫话明朝事。
珍重主人心，酒深情亦深。
须愁春漏短，莫诉金杯满。
遇酒且呵呵，人生能几何。', '', '[]', '66508474-d45b-4efa-98b9-7e9840382a4e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·洛阳城里春光好', '韦庄', '洛阳城里春光好，洛阳才子他乡老。
柳暗魏王堤，此时心转迷。
桃花春水绿，水上鸳鸯浴。
凝恨对残晖，忆君君不知。', '', '[]', '0a58ae12-9da2-490f-aa83-953a42b58907', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '归国遥·春欲暮', '韦庄', '春欲暮，满地落花红带雨。
惆怅玉笼鹦鹉，单栖无伴侣。
南望去程何许，问花花不语。
早晚得同归去，恨无双翠羽。', '', '[]', '4f83b615-53d9-401a-b1ba-826b4b10c6c3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '归国遥·金翡翠', '韦庄', '金翡翠，为我南飞传我意。
罨画桥边春水，几年花下醉。
别后只知相愧，泪珠难远寄。
罗幕绣帷鸳被，旧欢如梦里。', '', '[]', '485c2e78-576e-4204-96db-eeeac0933c99', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '归国遥·春欲晚', '韦庄', '春欲晚，戏蝶游蜂花烂漫。
日落谢家池馆，柳丝金缕断。
睡觉绿鬟风乱，画屏云雨散。
闲倚博山长叹，泪流沾皓腕。', '', '[]', '143dfaf0-90e6-4ff1-9267-78cf097b4cd0', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '应天长·绿槐阴里黄莺语', '韦庄', '绿槐阴里黄莺语，深院无人春昼午。
画帘垂，金凤舞，寂寞绣屏香一炷。
碧天云，无定处，空有梦魂来去。
夜夜绿窗风雨，断肠君信否。', '', '[]', '2e6b15ab-6d14-4b11-8121-279e9d2cd82e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '应天长·别来半岁音书绝', '韦庄', '别来半岁音书绝，一寸离肠千万结。
难相见，易相别，又是玉楼花似雪。
暗相思，无处说，惆怅夜来烟月。
想得此时情切，泪沾红袖黦。', '', '[]', '0598de8d-decc-4a59-b905-99a39b0eabec', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·绝代佳人难得', '韦庄', '绝代佳人难得，倾国，花下见无期。
一双愁黛远山眉，不忍更思惟。
闲掩翠屏金凤，残梦，罗幕画堂空。
碧天无路信难通，惆怅旧房栊。', '', '[]', 'ac781a7f-b872-4723-8ca2-1cf4cf5b6675', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·记得那年花下', '韦庄', '记得那年花下，深夜，初识谢娘时。
水堂西面画帘垂，携手暗相期。
惆怅晓莺残月，相别，从此隔音尘。
如今俱是异乡人，相见更无因。', '', '[]', '29356870-807b-4fab-ad74-b454d463b79e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '清平乐·春愁南陌', '韦庄', '春愁南陌，故国音书隔。
细雨霏霏梨花白，燕拂画帘金额。
尽日相望王孙，尘满衣上泪痕。
谁向桥边吹笛，驻马西望销魂。', '', '[]', '1e5cf554-6174-4841-a046-bdc4a02998c8', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '清平乐·野花芳草', '韦庄', '野花芳草，寂寞关山道。
柳吐金丝莺语早，惆怅香闺暗老。
罗带悔结同心，独凭朱栏思深。
梦觉半床斜月，小窗风触鸣琴。', '', '[]', 'cc3a3a33-8934-42ff-ac02-6199ee58ab2c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '清平乐·何处游女', '韦庄', '何处游女，蜀国多云雨。
云解有情花解语，窣地绣罗金缕。
妆成不整金钿，含羞待月秋千。
住在绿槐阴里，门临春水桥边。', '', '[]', '73473abf-7f78-493a-8f19-3c9277b3543f', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '清平乐·莺啼残月', '韦庄', '莺啼残月，绣阁香灯灭。
门外马嘶郎欲别，正是落花时节。
妆成不画蛾眉，含愁独倚金扉。
云路香尘莫扫，扫即郎去归迟。', '', '[]', '254a1c03-1272-4f3a-b925-148fcfe254d7', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '望远行·欲别无言倚画屏', '韦庄', '欲别无言倚画屏，含恨暗伤情。
谢家庭树锦鸡鸣，残月落边城。
人欲别，马频嘶，绿槐千里长堤。
出门芳草路萋萋，云雨别来易东西。
不忍别君后，却入旧香闺。', '', '[]', '6ba967a9-08d1-4580-8af8-0f66a1d2dea6', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '谒金门·春漏促', '韦庄', '春漏促，金烬暗挑残烛。
一夜帘前风撼竹，梦魂相断续。
有个娇娆如玉，夜夜绣屏孤宿。
宋袍琵琶寻旧曲，远山眉黛绿。', '', '[]', '68e52cb3-f90e-439c-a52d-fd518b3117aa', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '谒金门·空相忆', '韦庄', '空相忆，无计得传消息。
天上嫦娥人不识，寄书何处觅。
新睡觉来无力，不忍把伊书迹。
满院落花春寂寂，断肠芳草碧。', '', '[]', '6e5dd7b1-a739-4edb-880d-5d6b697dc6e5', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '江城子·恩重娇多情易伤', '韦庄', '恩重娇多情易伤，漏更长，解鸳鸯。
朱唇未动，先觉口脂香。
缓揭绣衾抽皓腕，移凤枕，枕潘郎。', '', '[]', 'c705c342-457e-4c7a-8824-73716ab90f74', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '江城子·髻鬟狼藉黛眉长', '韦庄', '髻鬟狼藉黛眉长，出兰房，别檀郎。
角声呜咽，星斗渐微茫。
露冷月残人未起，留不住，泪千行。', '', '[]', '13f7f3a7-2371-4d86-9828-423d69aeb51b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·何处', '韦庄', '何处，烟雨，隋堤春暮。
柳色葱笼，画桡金缕，翠旗高飐香风，水光融。
青娥殿脚春妆媚，轻云里，绰约司花妓。
江都宫阙，清淮月映迷楼，古今愁。', '', '[]', 'd33057d2-c3c6-4cfc-b3c7-682f1e92042a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·春晚', '韦庄', '春晚，风暖，锦城花满。
狂杀游人，玉鞭金勒，寻胜驰骤轻尘，惜良晨。
翠娥争劝临邛酒，纤纤手，拂面垂丝柳。
归时烟里，钟鼓正是黄昏，暗销魂。', '', '[]', 'e6b8bb93-03fe-428b-bcf6-238e502d8517', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·锦浦', '韦庄', '锦浦，春女，绣衣金缕。
雾薄云轻，花深柳暗，时节正是清明，雨初晴。
玉鞭魂断烟霞路，莺莺语，一望巫山雨。
香尘隐映，遥见翠槛红楼，黛眉愁。', '', '[]', '1c187b41-e07c-4f2a-92b0-b2ceb4fae024', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '天仙子·怅望前回梦里期', '韦庄', '怅望前回梦里期，看花不语苦寻思。
露桃花里小腰肢，眉眼细，鬓云垂，唯有多情宋玉知。', '', '[]', '545696fd-225b-4439-b391-53f1c9e294dc', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '天仙子·深夜归来长酩酊', '韦庄', '深夜归来长酩酊，扶入流苏犹未醒。
醺醺酒气麝兰和，惊睡觉，笑呵呵，长道人生能几何。', '', '[]', 'ee516c2c-6bb7-43c5-99da-2a20e4a1b50d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '天仙子·蟾彩霜华夜不分', '韦庄', '蟾彩霜华夜不分，天外鸿声枕上闻，绣衾香冷懒重熏。
人寂寂，叶纷纷，才睡依前梦见君。', '', '[]', '62ed89f4-f803-4738-8b55-3c0dac52d21b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '天仙子·梦觉云屏依旧空', '韦庄', '梦觉云屏依旧空，杜鹃声咽隔帘栊，玉郎薄幸去无踪。
一日日，恨重重，泪界莲腮两线红。', '', '[]', 'b43768e8-5e9e-4b94-b6fc-854b015ad15d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '天仙子·金似衣裳玉似身', '韦庄', '金似衣裳玉似身，眼如秋水鬓如云，霞裙月帔一群群。
来洞口，望烟分，刘阮不归春日曛。', '', '[]', '9d6eec2a-4ffc-46b0-81c6-d2bba6332d02', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '喜迁莺·人汹汹', '韦庄', '人汹汹，鼓冬冬，襟袖五更风。
大罗天上月朦胧，骑马上虚空。
香满衣，云满路，鸾凤绕身飞舞。
霓旌绛节一群群，引见玉华君。', '', '[]', 'a9998152-a9d8-487b-8fd9-97665ccf9044', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '喜迁莺·街鼓动', '韦庄', '街鼓动，禁城开，天上探人回，凤衔金榜出云来，平地一声雷。
莺已迁，龙已化，一夜满城车马。家家楼上簇神仙，争看鹤冲天。', '', '[]', 'b0e814b6-5a75-4bbb-9c85-f1d494794772', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '思帝乡·云髻坠', '韦庄', '云髻坠，凤钗垂。
髻坠钗垂无力，枕函欹。
翡翠屏深月落，漏依依。
说尽人间天上，两心知。', '', '[]', '1ba2dc61-d509-42c5-9ee6-6d9ca29f58d2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '思帝乡·春日游', '韦庄', '春日游，杏花吹满头。
陌上谁家年少，足风流。
妾拟将身嫁与，一生休。
纵被无情弃，不能羞！', '', '[]', '88e317f0-781e-488c-a51b-980fccd0e83d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '诉衷情·烛尽香残帘半卷', '韦庄', '烛尽香残帘半卷，梦初惊。
花欲谢，深夜，月胧明。
何处按歌声，轻轻。
舞衣尘暗生，负春情。', '', '[]', '91abd625-f643-4833-8576-8d43a65ec350', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '诉衷情·碧沼红芳烟雨静', '韦庄', '碧沼红芳烟雨静，倚兰桡。
垂玉珮，交带，袅纤腰。
鸳梦隔星桥，迢迢。
越罗香暗销，坠花翘。', '', '[]', '068a7724-bb0d-43d9-8bdf-e820fc6bf9f1', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '上行杯·芳草灞陵春岸', '韦庄', '芳草灞陵春岸，柳烟深，满楼弦管，一曲离声肠寸断。
今日送君千万，红楼玉盘金镂盏，须劝珍重意，莫辞满。', '', '[]', 'ebb2c206-2730-4298-8135-22cda84497e8', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '上行杯·白马玉鞭金辔', '韦庄', '白马玉鞭金辔，少年郎，离别容易，迢递去程千万里。
惆怅异乡云水，满酌一杯劝和泪，须愧珍重意，莫辞醉。', '', '[]', 'a0e72b19-c4e9-4d3b-a3cf-537e58ecb564', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·四月十七', '韦庄', '四月十七，正是去年今日。
别君时，忍泪佯低面，含羞半敛眉。
不知魂已断，空有梦相随。
除却天边月，没人知。', '', '[]', '84315c35-f0e3-43d4-8fa4-f49543cb6c3e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·昨夜夜半', '韦庄', '昨夜夜半，枕上分明梦见：语多时，依旧桃花面，频低柳叶眉。
半羞还半喜，欲去又依依。觉来知是梦，不胜悲。', '', '[]', '3d7c032d-1592-4601-a3c9-5cbd56d78ca2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子·钟鼓寒', '韦庄', '钟鼓寒，楼阁暝，月照古桐金井。
深院闭，小庭空，落花香露红。
烟柳重，春雾薄，灯背水窗高阁。
闲倚户，暗沾衣，待郎郎不归。', '', '[]', '38d84145-0639-4c92-b04b-3953dad729e0', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·月落星沉', '韦庄', '月落星沉，楼上美人春睡。
绿云倾，金枕腻，画屏深。
子规啼破相思梦，曙色东方才动。
柳烟轻，花露重，思难任。', '', '[]', '7e10f41e-bd12-4612-8fb5-be8822656d82', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '木兰花·独上小楼春欲暮', '韦庄', '独上小楼春欲暮，愁望玉关芳草路。
消息断，不逢人，欲敛细眉归绣户。
坐看落花空叹息，罗袂湿斑红泪滴。
千山万水不曾行，魂梦欲教何处觅。', '', '[]', 'd4971d2e-1f5d-4c3e-bd5e-e1b029cf0634', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '小重山·一闭昭阳春又春', '韦庄', '一闭昭阳春又春，夜寒宫漏永，梦君恩。
昏思陈事暗消魂，罗衣湿，红袂有啼痕。
歌吹隔重阍，绕庭芳草绿，倚长门。
万般惆怅向谁论？凝情立，宫殿欲黄昏。', '', '[]', '48a1efdb-d6c7-4d50-b7d9-cd1eac622479', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·红蓼渡头秋正雨', '薛昭蕴', '红蓼渡头秋正雨，印沙鸥迹自成行，整鬟飘袖野风香。
不语含颦深浦里，几回愁煞棹船郎，燕归帆尽水茫茫。', '', '[]', '3fda1f2f-8db3-4230-9ffe-38591d0f359c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·钿匣菱花锦带垂', '薛昭蕴', '钿匣菱花锦带垂，静临栏槛卸头时，约鬟低珥算归期。
茂苑草青湘渚阔，梦余空有漏依依，二年终日损芳菲。', '', '[]', 'bffa60b1-4e86-40d3-a8d0-bc99f32aece2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·粉上依稀有泪痕', '薛昭蕴', '粉上依稀有泪痕，郡庭花落欲黄昏，远情深恨与谁论。
记得去年寒食日，延秋门外卓金轮，日斜人散暗消魂。', '', '[]', 'a18d62c2-3e4b-46ed-91cc-ab96a6ae33a3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·握手河桥柳似金', '薛昭蕴', '握手河桥柳似金，蜂须轻惹百花心，蕙风兰思寄清琴。
意满便同春水满，情深还似酒杯深，楚烟湘月两沉沉。', '', '[]', 'fb73b9aa-8a4c-412f-b3dd-33d3ec08ab4a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·帘下三间出寺墙', '薛昭蕴', '帘下三间出寺墙，满街垂杨绿阴长，嫩红轻翠间浓妆。
瞥地见时犹可可，却来闲处暗思量，如今情事隔仙乡。', '', '[]', '041f71ef-8623-445b-94a9-4faa046bb17b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·江馆清秋缆客船', '薛昭蕴', '江馆清秋缆客船，故人相送夜开筵，麝烟兰焰簇花钿。
正是断魂迷楚雨，不堪离恨咽湘弦，月高霜白水连天。', '', '[]', '8ea628a6-747e-4f3b-87e8-24c501ec129c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·倾国倾城恨有余', '薛昭蕴', '倾国倾城恨有余，几多红泪泣姑苏，倚风凝睇雪肌肤。
吴主山河空落日，越王宫殿半平芜，藕花菱蔓满重湖。', '', '[]', '22832927-6ac1-4181-a66c-5cb66dd08fb5', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·越女淘金春水上', '薛昭蕴', '越女淘金春水上，步摇云鬓珮鸣珰，渚风江草又清香。
不为远山凝翠黛，只应含恨向斜阳，碧桃花谢忆刘郎。', '', '[]', '3ffb4e4a-5d6b-4400-8bad-c4beca271519', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '喜迁莺·残蟾落', '薛昭蕴', '残蟾落，晓钟鸣，羽化觉身轻。
乍无春睡有余酲，杏苑雪初晴。
紫陌长，襟袖冷，不是人间风景。
回看尘土似前生，休羡谷中莺。', '', '[]', '2a044398-ddd4-4c7a-987f-0f67e9e9144b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '喜迁莺·金门晓', '薛昭蕴', '金门晓，玉京春，骏马骤轻尘。
桦烟深处白衫新，认得化龙身。
九陌喧，千户启，满袖桂香风细。
杏园欢宴曲江滨，自此占芳辰。', '', '[]', 'ddae2a1b-39d4-45bd-b28a-54762e388bc0', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '喜迁莺·清明节', '薛昭蕴', '清明节，雨晴天，得意正当年。
马骄泥软绵连干，香袖半笼鞭。
花色融，人竞赏，尽是绣鞍朱鞅。
日斜无计更留连，归路草和烟。', '', '[]', 'dc15c6a6-8098-411b-b39b-43f10e6f1bcc', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '小重山·春到长门春草青', '薛昭蕴', '春到长门春草青，玉阶华露滴，月胧明。
东风吹断紫箫声，宫漏促，帘外晓啼莺。
愁极梦难成，红妆流宿泪，不胜情。
手挼裙带绕阶行，思君切，罗幌暗尘生。', '', '[]', '5c1be05b-e22b-4abe-8535-d64a4b684e08', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '小重山·秋到长门秋草黄', '薛昭蕴', '秋到长门秋草黄，画梁双燕去，出宫墙。
玉箫无复理霓裳，金蝉坠，鸾镜掩休妆。
忆昔在昭阳，舞衣红绶带，绣鸳鸯。
至今犹惹御炉香，魂梦断，愁听漏更长。', '', '[]', '8318640b-d546-429c-9629-b7a8385d6880', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '离别难·宝马晓鞲雕鞍', '薛昭蕴', '宝马晓鞲雕鞍，罗帷乍别情难。
那堪春景媚，送君千万里。
半妆珠翠落，露华寒。
红蜡烛，青丝曲，偏能钩引泪阑干。
良夜促，香尘绿，魂欲迷，檀眉半敛愁低。
未别心先咽，欲语情难说。
出芳草，路东西。
摇袖立，春风急，樱花杨柳雨凄凄。', '', '[]', 'c888df88-60d8-4673-829f-755a6cc5c587', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '相见欢·罗襦绣袂香红', '薛昭蕴', '罗襦绣袂香红，画堂中。
细草平沙番马，小屏风。
卷罗幕，凭妆阁，思无穷。
暮雨轻烟魂断，隔帘栊。', '', '[]', 'e3b3d5fc-1ec3-4b8d-96a9-dd1fe753a599', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '醉公子·慢绾青丝发', '薛昭蕴', '慢绾青丝发，光砑吴绫袜。
床上小熏笼，韶州新退红。
叵耐无端处，捻得从头污。
恼得眼慵开，问人闲事来。', '', '[]', '1cfb3ab8-f99a-4f9f-972a-05e41ad81936', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·求仙去也', '薛昭蕴', '求仙去也，翠钿金篦尽舍，入崖峦。
雾卷黄罗帔，云雕白玉冠。
野烟溪洞冷，林月石桥寒。
静夜松风下，礼天坛。', '', '[]', 'a7075201-53d7-43c6-a2eb-f60f0fcda381', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·云罗雾縠', '薛昭蕴', '云罗雾縠，新授明威法箓，降真函。
髻绾青丝发，冠抽碧玉簪。
往来云过五，去往岛经三。
正遇刘郎使，启瑶缄。', '', '[]', '481339ff-0abe-4383-ab89-4771faf47da0', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '谒金门·春满院', '薛昭蕴', '春满院，叠损罗衣金线。
睡觉水晶帘未卷，檐前双语燕。
斜掩金铺一扇，满地落花千片。
早是相思肠欲断，忍教频梦见。', '', '[]', '282d51b1-7ea2-4429-bd6d-9e2262922279', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳枝·解冻风来末上青', '牛峤', '解冻风来末上青，解垂罗袖拜卿。
无端袅娜临官路，舞送行人过一生。', '', '[]', '9b267890-57fd-4917-a63c-29da5f883972', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳枝·吴王宫里色偏深', '牛峤', '吴王宫里色偏深，一簇纤条万缕金。
不愤钱塘苏小小，引郎松下结同心。', '', '[]', 'e04c0eef-890b-475f-89b5-e3e6839d3247', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳枝·桥北桥南千万条', '牛峤', '桥北桥南千万条，恨伊张绪不相饶。
金羁白马临风望，认得杨家静婉腰。', '', '[]', '20f84046-bc8b-4b54-aeea-c2b7211813f3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳枝·狂雪随风扑马飞', '牛峤', '狂雪随风扑马飞，惹烟无力被春欺。
莫教移入灵和殿，宫女三千又妒伊。', '', '[]', '7e423ce5-28b0-4b8e-8e0d-be4116b6f4f4', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳枝·袅翠笼烟拂暖波', '牛峤', '袅翠笼烟拂暖波，舞裙新染麹尘罗。
章华台畔隋堤上，傍得春风尔许多。', '', '[]', '01ca571e-3ae1-474f-83e7-efe14c67bdad', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·绿云高髻', '牛峤', '绿云高髻，点翠匀红时世。月如眉。
浅笑含双靥，低声唱小词。
眼看唯恐化，魂荡欲相随。
玉趾回娇步，约佳期。', '', '[]', 'd07ad323-26da-42dd-8739-8df834127f8e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·锦江烟水', '牛峤', '锦江烟水，卓女烧春浓美。小檀霞。
绣带芙蓉帐，金钗芍药花。
额黄侵腻发，臂钏透红纱。
柳暗莺啼处，认郎家。', '', '[]', '37ad4368-b3a8-4640-a513-f66b189868c0', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·星冠霞帔', '牛峤', '星冠霞帔，住在蕊珠宫里。佩玎珰。
明翠摇蝉翼，纤B*理宿妆。
醮坛春草绿，药院杏花香。
青鸟传心事，寄刘郎。', '', '[]', '6f1afa2b-dae4-4ebf-9b3b-cd6a953e624c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·双飞双舞', '牛峤', '双飞双舞，春昼后园莺语。卷罗帷。
锦字书封了，银河雁过迟。
鸳鸯排宝帐，豆蔻绣连枝。
不语匀珠泪，落花时。', '', '[]', 'a9535071-9887-4959-a7ec-3c8ab4f28548', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '梦江南·含泥燕', '牛峤', '含泥燕，飞到画堂前。
占得杏梁安稳处，休轻唯有主人怜，堪羡好因缘。', '', '[]', '7480eed1-3e53-4487-bb44-50803ce751b9', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '梦江南·红绣被', '牛峤', '红绣被，两两间鸳鸯。
不是鸟中偏爱尔，为缘交颈睡南塘，全胜薄情郎。', '', '[]', 'c06fc640-6b3a-44ba-8497-933776b39743', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '感恩多·两条红粉泪', '牛峤', '两条红粉泪，多少香闺意。
强攀桃李枝，敛愁眉。
陌上莺啼蝶舞，柳花飞。
柳花飞，愿得郎心，忆家还早归。', '', '[]', 'd8b5b205-199d-45e4-94b1-017c3919a850', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '感恩多·自从南浦别', '牛峤', '自从南浦别，愁见丁香结。
近来情转深，忆鸳衾。
几度将书托烟雁，泪盈襟。
泪盈襟，礼月求天，愿君知我心。', '', '[]', '056a61d5-b833-4083-938f-3b2b341e9d07', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '应天长·玉楼春望晴烟灭', '牛峤', '玉楼春望晴烟灭，舞衫斜卷金条脱。
黄鹂娇啭声初歇，杏花飘尽龙山雪。
凤钗低赴节，筵上王孙愁绝。
鸳鸯对含罗结，两情深夜月。', '', '[]', '5fba1522-8310-4b5e-bf70-166cf0039f62', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '应天长·双眉淡薄藏心事', '牛峤', '双眉淡薄藏心事，清夜背灯娇又醉。
玉钗横，山枕腻，宝帐鸳鸯春睡美。
别经时，无限意，虚道相思憔悴。
莫信彩笺书里，赚人肠断字。', '', '[]', '4839feec-e2b5-4e3f-b405-3f429b3af9ad', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子·星渐稀', '牛峤', '星渐稀，漏频转，何处轮台声怨。
香阁掩，杏花红，月明杨柳风。
挑锦字，记情事，惟愿两心相似。
收泪语，背灯眠，玉钗横枕边。', '', '[]', '88fa58c6-09e5-4732-85f9-b603b30055f3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子·春夜阑', '牛峤', '春夜阑，更漏促，金烬暗挑残烛。
惊梦断，锦屏深，两乡明月心。
闺草碧，望归客，还是不知消息。
辜负我，悔怜君，靠天天不闻。', '', '[]', 'e681931d-cb6b-46bb-8415-cf24ac16faea', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子·南浦情', '牛峤', '南浦情，红粉泪，怎奈两人深意。
低翠黛，卷征衣，马嘶霜叶飞。
招手别，寸肠结，还是去年时节。
书托雁，梦归家，觉来江月斜。', '', '[]', 'd045f113-76ae-4b10-98ac-c4fab744a4b9', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '望江怨·东风急', '牛峤', '东风急，惜别花时手频执。
罗帷愁独入，马嘶残雨春芜湿。
倚门立，寄语薄情郎，粉香和泪泣。', '', '[]', 'c4199b1b-f46f-45b7-8e43-a8b023081e2f', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·舞裙香暖金泥凤', '牛峤', '舞裙香暖金泥凤，画梁语燕惊残梦。
门外柳花飞，玉郎犹未归。
愁匀红粉泪，眉剪春山翠。
何处是辽阳，锦屏春昼长。', '', '[]', '55ce5bc1-6069-4041-81cb-ace65af746a7', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·柳花飞处莺声急', '牛峤', '柳花飞处莺声急，暗街春色香车立。
金凤小帘开，脸波和恨来。
今宵求梦想，难到青楼上。
赢得一场愁，鸳衾谁并头。', '', '[]', 'a827da79-dcc3-40c2-a4b9-6b7b56bd7a26', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·玉钗风动春幡急', '牛峤', '玉钗风动春幡急，交枝红杏笼烟泣。
楼上望卿卿，窗寒新雨晴。
熏炉蒙翠被，绣帐鸳鸯睡。
何处有相知，羡他初画眉。', '', '[]', '729c2f83-4358-4a53-8812-a17f6369a26e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·画屏重叠巫阳翠', '牛峤', '画屏重叠巫阳翠，楚神尚有行云意。
朝暮几般心，向他情漫深。
风流今古隔，虚作瞿塘客。
山月照山花，梦回灯影斜。', '', '[]', 'c6012cdc-812f-4a29-b6b2-78236d96a0aa', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·风帘燕舞莺啼柳', '牛峤', '风帘燕舞莺啼柳，妆台约鬓低纤手。
钗重髻盘珊，一枝红牡丹。
门前行乐客，白马嘶春色。
故故坠金鞭，回头应眼穿。', '', '[]', '09ab984f-bfc3-40c5-995a-1b6f59b64625', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·绿云鬓上飞金雀', '牛峤', '绿云鬓上飞金雀，愁眉敛翠春烟薄。
香阁掩芙蓉，画屏山几重。
窗寒天欲曙，犹结同心苣。
啼粉污罗衣，问郎何日归。', '', '[]', '04b4d65a-d3de-409b-8944-d30defdcf669', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·玉楼冰簟鸳鸯锦', '牛峤', '玉楼冰簟鸳鸯锦，粉融香汗流山枕。
帘外辘轳声，敛眉含笑惊。
柳阴烟漠漠，低鬓蝉钗落。
须作一生拌，尽君今日欢。', '', '[]', '68d8940c-14b9-47eb-a0c2-ed3807dda3e8', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·记得去年', '牛峤', '记得去年，烟暖杏园。
花正发，雪飘香，江草绿，柳丝长。
钿车纤手卷帘望，眉学春山样。
凤钗低袅翠鬟上，落梅妆。', '', '[]', 'efee03e1-f105-4326-bf52-e4bfb5445296', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '定西番·紫塞月明千里', '牛峤', '紫塞月明千里，金甲冷，戍楼寒，梦长安。
乡思望中天阔，漏残星亦残。
画角数声呜咽，雪漫漫。', '', '[]', '6c944c0b-6716-43aa-b08d-2d92b958df6f', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '玉楼春·春入横塘摇浅浪', '牛峤', '春入横塘摇浅浪，花落小园空惆怅。
此情谁信为狂夫，恨翠愁红流枕上。
小玉窗前嗔燕语，红泪滴窗金线缕。
雁归不见报郎归，织成锦字封过与。', '', '[]', '957ec977-635e-45d6-95d2-14f8cb17e067', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '西溪子·捍拨双盘金凤', '牛峤', '捍拨双盘金凤，蝉鬓玉钗摇动。
画堂前，人不语，弦解语。
弹到《昭君怨》处，翠蛾愁，不抬头。', '', '[]', 'ea38ce87-542f-435f-b116-55dd4d536b34', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '江城子·䴔䴖飞起郡城东', '牛峤', '䴔䴖飞起郡城东，碧江空，半滩风。
越王宫殿，苹叶藕花中。
帘卷水楼鱼浪起，千片雪，雨蒙蒙。', '', '[]', 'be85c8d3-5ba3-42e6-b010-70cf75dfe932', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '江城子·极浦烟消水鸟飞', '牛峤', '极浦烟消水鸟飞，离筵分首时，送金卮。
渡口杨花，狂雪任风吹。
日暮天空波浪急，芳草岸，雨如丝。', '', '[]', 'c7e30212-b857-4549-91c3-df707dc62f0a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·钿毂香车过柳堤', '张泌', '钿毂香车过柳堤，桦烟分处马频嘶，为他沉醉不成泥。
花满驿亭香露细，杜鹃声断玉蟾低，含情无语倚楼西。', '', '[]', 'edf431d9-fa38-4e92-9638-7ffbe36abdf3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·马上凝情忆旧游', '张泌', '马上凝情忆旧游，照花淹竹小溪流，钿筝罗幕玉搔头。
早是出门长带月，可堪分袂又经秋，晚风斜日不胜愁。', '', '[]', '858b82a6-3219-41bb-a87c-c826c016a852', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·独立寒阶望月华', '张泌', '独立寒阶望月华，露浓香泛小庭花，绣屏愁背一灯斜。
云雨自从分散后，人间无路到仙家，但凭魂梦访天涯。', '', '[]', 'ec36f5f7-1f2e-4ad3-aab2-3cd9142e5625', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·依约残眉理旧黄', '张泌', '依约残眉理旧黄，翠鬟抛掷一簪长，暖风晴日罢朝妆。
闲折海棠看又捻，玉纤无力惹余香，此情谁会倚斜阳。', '', '[]', '837f3da6-1638-4b00-a4d6-cd9b0bcd9472', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·翡翠屏开绣幄红', '张泌', '翡翠屏开绣幄红，谢娥无力晓妆慵，锦帷鸳被宿香浓。
微雨小庭春寂寞，燕飞莺语隔帘栊，杏花凝恨倚东风。', '', '[]', '4af0efd1-8d64-4fac-b945-b94535ec7980', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·枕障熏炉隔绣帷', '张泌', '枕障熏炉隔绣帷，二年终日两相思，杏花明月始应知。
天上人间何处去，旧欢新梦觉来时，黄昏微雨画帘垂。', '', '[]', '338daa0c-61b7-42c0-a6ac-d0e23eaafb83', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·花月香寒悄夜尘', '张泌', '花月香寒悄夜尘，绮筵幽会暗伤神，婵娟依约画屏人。
人不见时还暂语，令才抛后爱微颦，越罗巴锦不胜春。', '', '[]', '03c77986-9c8c-429d-9046-8f85076bb635', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·偏戴花冠白玉簪', '张泌', '偏戴花冠白玉簪，睡容新起意沉吟，翠钿金缕镇眉心。
小槛日斜风悄悄，隔帘零落杏花阴，断香轻碧锁愁深。', '', '[]', '7eeaf5d5-0e08-4c24-a59d-ec57c59240f5', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·晚逐香车入凤城', '张泌', '晚逐香车入凤城，东风斜揭绣帘轻，慢回娇眼笑盈盈。
消息未通何计是，便须佯醉且随行，依稀闻道太狂生。', '', '[]', '35bc041e-2f5a-4776-8f93-a9b7d1f602fc', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·小市东门欲雪天', '张泌', '小市东门欲雪天，众中依约见神仙，蕊黄香画贴金蝉。
饮散黄昏人草草，醉容无语立门前，马嘶尘烘一街烟。', '', '[]', 'edcd8914-6156-453b-88e0-a301ff1b5a3a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·烟收湘渚秋江静', '张泌', '烟收湘渚秋江静，蕉花露泣愁红。
五云双鹤去无踪，几回魂断，凝望向长空。
翠竹暗留珠泪怨，闲调宝瑟波中，花鬟月鬓绿云重。
古祠深殿，香冷雨和风。', '', '[]', 'b203021b-589d-4c45-8c70-425f27fab2d3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·露花烟草', '张泌', '露花烟草，寂寞五云三岛，春正深。
貌减潜消玉，香残尚惹襟。
竹疏虚槛静，松密醮坛阴。
何事刘郎去，信沉沉。', '', '[]', '8443a097-cbe1-4942-81c2-645a58ae8f07', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·渺莽云水', '张泌', '渺莽云水，惆怅暮帆，去程迢递。
夕阳芳草，千里万里，雁声无限起。
梦魂悄断烟波里，心如醉。
相见何处是，锦屏香冷无睡，被头多少泪。', '', '[]', 'c4578483-bbba-4d49-953e-47bfebbd59aa', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·红杏', '张泌', '红杏，交枝相映，密密蒙蒙。
一庭浓艳倚东风，香融，透帘栊。
斜阳似共春光语，蝶争舞，更引流莺妒。
魂销千片玉樽前，神仙，瑶池醉暮天。', '', '[]', '3d235f31-4754-4bce-8ac5-79ab25a9fb5d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·春雨打窗', '张泌', '春雨打窗，惊梦觉来天气晓。
画堂深，红焰小，背兰釭。
酒香喷鼻懒开缸，惆怅更无人共醉。
旧巢中，新燕子，语双双。', '', '[]', '4cb42cf8-d17a-4ded-bcf9-af22cc1484e4', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·紫陌青门', '张泌', '紫陌青门，三十六宫春色。
御沟辇路暗相通，杏园风。
咸阳沽酒宝钗空，笑指未央归去。
插花走马落残红，月明中。', '', '[]', '238b8d78-93d5-4ff1-96a6-f4d44af1d5c8', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '生查子·相见稀', '张泌', '相见稀，喜相见，相见还相远。
檀画荔枝红，金蔓晴蜓软。
鱼雁疏，芳信断，花落庭阴晚。
可怜玉肌肤，消瘦成慵懒。', '', '[]', 'a36bde26-7b36-44b3-87b0-41531897903d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '思越人·燕双飞', '张泌', '燕双飞，莺百啭，越波堤下长桥。
斗钿花筐金匣，恰舞衣罗薄纤腰。
东风淡荡慵无力，黛眉愁聚春碧。
满地落花无消息，月明肠断空忆。', '', '[]', 'fa784461-9e3f-4572-ac7f-2954a7c238d1', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '满宫花·花正芳', '张泌', '花正芳，楼似绮，寂寞上阳宫里。
钿笼金销睡鸳鸯，帘冷露华珠翠。
娇艳轻盈香雪腻，细雨黄莺双起。
东风惆怅欲清明，公子桥边沉醉。', '', '[]', 'dba09eaf-6f5d-4032-8c39-d2962dc2850d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳枝·腻粉琼妆透碧纱', '张泌', '腻粉琼妆透碧纱，雪休夸。
金凤搔头堕鬓斜，发交加。
倚着云屏新睡觉，思梦笑。
红腮隐出枕函花，有些些。', '', '[]', '0927c433-51a1-4633-844a-9071fa4d2760', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南歌子·柳色遮楼暗', '张泌', '柳色遮楼暗，桐花落砌香。
画堂开处远风凉，高卷水晶帘额，衬斜阳。', '', '[]', '8a46fd22-8dda-4b92-89cc-059f5e1dc2cb', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南歌子·岸柳拖烟绿', '张泌', '岸柳拖烟绿，庭花照日红。
数声蜀魄入帘栊，惊断碧窗残梦，画屏空。', '', '[]', '5f75451a-0e89-417e-9bf4-12992f5c072b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南歌子·锦荐红㶉𫛶', '张泌', '锦荐红㶉𫛶，罗衣绣凤凰。
绮疏飘雪北风狂，帘幕尽垂无事，郁金香。', '', '[]', '9e9dbcc1-f6e8-4c6a-ac93-3e6502ac868e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '江城子·碧栏干外小中庭', '张泌', '碧栏干外小中庭，雨初晴，晓莺声。
飞絮落花，时节近清明。
睡起卷帘无一事，匀面了，没心情。', '', '[]', 'daeba504-756f-43d5-a641-d7014f9d5a2d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '江城子·浣花溪上见卿卿', '张泌', '浣花溪上见卿卿，脸波明，黛眉轻。
绿云高绾，金族小蜻蜓。
好是问他来得么？和笑道：莫多情。', '', '[]', '609b3a73-df2c-42f9-bf3e-ec2fc020fc18', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河渎神·古树噪寒鸦', '张泌', '古树噪寒鸦，满庭枫叶芦花。
昼灯当午隔轻纱，画阁珠帘影斜。
门外往来祈赛客，翩翩帆落天涯。
回首隔江烟火，渡头三两人家。', '', '[]', '27b68e82-b248-48ab-bc1d-1911f7f75db4', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '蝴蝶儿·蝴蝶儿', '张泌', '蝴蝶儿，晚春时，阿娇初着淡黄衣，倚窗学画伊。
还似花间见，双双对对飞。
无端和泪拭胭脂，惹教双翅垂。', '', '[]', '31c008fb-3818-4250-aeac-f0391f60cca2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·鸳鸯对浴银塘暖', '毛文锡', '鸳鸯对浴银塘暖，水面蒲稍短。
垂杨低拂曲尘波，蛛丝结网露珠多，滴圆荷。
遥思桃叶吴江碧，便是天河隔。
锦鳞红鬣影沉沉，相思空有梦相寻，意难任。', '', '[]', '99a42add-74f0-47e6-bb18-88b4dbb8860a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·宝檀金缕鸳鸯枕', '毛文锡', '宝檀金缕鸳鸯枕，绶带盘宫锦。
夕阳低映小窗明，南园绿树语莺莺，梦难成。
玉炉香暖频添炷，满地飘轻絮。
珠帘不卷度沉烟，庭前间立画秋千，艳阳天。', '', '[]', 'e19aef55-c984-4cf6-a7a2-b20b54896447', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·绿树春深', '毛文锡', '绿树春深，燕语莺啼声断续。
蕙风飘荡入芳丛，惹残红。
柳丝无力袅烟空，金盏不辞须满酌。
海棠花下思朦胧，醉香风。', '', '[]', 'fde34fc2-fc01-47a3-b2db-d05a705d8999', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '喜迁莺·芳春景', '毛文锡', '芳春景，暖晴烟，乔木见莺迁。
传枝偎叶语关关，飞过绮丛间。
锦翼鲜，金毳软，百啭千娇相唤。
碧纱窗晓怕闻声，惊破鸳鸯暖。', '', '[]', 'a7839bb2-ff15-48df-abf9-296d5cad7757', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '赞成功·海棠未坼', '毛文锡', '海棠未坼，万点深红，香包缄结一熏熏。
似含羞态，邀勒春风。
蜂来蝶去，任绕芳丛。
昨夜微雨，飘酒庭中。
忽闻声滴井边桐，美人惊起，坐听晨钟。
快教折取，戴玉璁。', '', '[]', 'c9445ada-5af4-4393-83b1-81543b25cc7d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '西溪子·昨日西溪游赏', '毛文锡', '昨日西溪游赏，芳树奇花千样，锁春光。
金樽满，听弦管，娇妓舞衫香暖。
不觉到斜晖，马驮归。
中兴乐
豆蔻花繁烟艳深，丁香软结同心。
翠鬟女，相与共淘金。
红蕉叶里猩猩语，鸳鸯浦，镜中鸾舞。
丝雨隔，荔枝阴。', '', '[]', '844e2e88-78f6-4c33-ad72-733b420f64b8', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子·春夜阑', '毛文锡', '春夜阑，春恨切，花外子规啼月。
人不见，梦难见，红纱一点灯。
偏怨别，是芳节，庭中丁香千结。
宵雾散，晓霞晖，梁同双燕飞。', '', '[]', '7bb28043-b7fd-4fa4-aacb-e797e57a615a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '接贤宾·香鞯镂襜五花骢', '毛文锡', '香鞯镂襜五花骢，值春景初融。
流珠喷沫躞蹀，汗血流红。
少年公子能乘驭，金镳玉辔珑璁。
为惜珊瑚鞭不下，骄生百步千踪。
信穿花，从拂柳，向九陌追风。', '', '[]', 'dce19062-4672-4ae3-87ed-70b29937577b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '赞浦子·锦帐添香睡', '毛文锡', '锦帐添香睡，金炉换夕照。
懒结芙蓉带，慵拖翡翠裙。
正是桃夭柳媚，那堪暮雨朝云。
宋玉高唐意，裁琼欲赠君。', '', '[]', '037f34df-38a7-45ba-bcc0-8be650601345', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '甘州遍·春光好', '毛文锡', '春光好，公子爱闲游，足风流。
金鞍白马，雕弓宝剑，红缨锦襜出长揪。
花蔽膝，玉衔头。
寻芳逐胜欢宴，丝竹不曾休。
美人唱，揭调是《甘州》。醉红楼。
尧年舜日，乐圣永无忧。', '', '[]', 'ef464d89-52d2-475b-a43c-9f490224a120', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '甘州遍·秋风紧', '毛文锡', '秋风紧，平碛雁行低，阵云齐。
萧萧飒飒，边声四起，愁闻戍角与征鼙。
青冢北，黑山西。
沙飞聚散无定，往往路人迷。
铁衣冷，战马血沾蹄，破番奚。
凤凰诏下，步步蹑丹梯。', '', '[]', 'ddf9cdd1-0893-4afe-bb63-eada31416926', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '纱窗恨·新春燕子还来至', '毛文锡', '新春燕子还来至，一双飞。
垒巢泥湿时时坠，涴人衣。
后园里看百花发，香风拂，绣户金扉。
月照纱窗，恨依依。', '', '[]', 'ad31a955-727b-4417-8113-07e401d6e32c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '纱窗恨·双双蝶翅涂铅粉', '毛文锡', '双双蝶翅涂铅粉，咂花心。
绮窗绣户飞来稳，画堂阴。
二三月爱随飘絮，伴落花，来拂衣襟。
更剪轻罗片，傅黄金。', '', '[]', '2e1679ab-6bbc-49c6-87a1-984bf534b294', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳含烟·隋堤柳', '毛文锡', '隋堤柳，汴河旁。
夹岸绿阴千里，龙舟凤舸木兰香，锦帆张。
因梦江南春景好，一路流苏羽葆。
笙歌未尽起横流，锁春愁。', '', '[]', '58131ddc-ab02-4cdc-9138-b3e12bac157a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳含烟·河桥柳', '毛文锡', '河桥柳，占芳春。
映水含烟拂路，几回攀折赠行人，暗伤神。
乐府吹为横笛曲，能使离肠断续。
不如移植在金门，近天恩。', '', '[]', '5fe70e88-4874-4915-83d9-734a885c6368', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳含烟·章台柳', '毛文锡', '章台柳，近垂旒。
低拂往来冠盖，鞭胧春色满皇州，瑞烟浮。
直与路边江畔别，免被离人攀折。
最怜京兆画蛾眉，叶纤时。', '', '[]', '7e5adb14-c25f-4296-8749-757ee647193d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳含烟·御沟柳', '毛文锡', '御沟柳，占春多。
半出宫墙婀娜，有时倒影蘸轻罗，曲尘波。
昨日金銮巡上苑，风亚舞腰纤软。
栽培得她近皇宫，瑞烟浓。', '', '[]', '65576a10-855d-43da-bffc-8f45aebb7929', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '醉花间·休相问', '毛文锡', '休相问，怕相问，相问还添恨。
春水满塘生，㶉𫛶正相趁。
咋夜雨霏霏，临明寒一阵。
偏忆戍楼人，久绝边庭信。', '', '[]', '78e9d83d-c324-46a7-a780-761f862dd2d9', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '醉花间·深相忆', '毛文锡', '深相忆，莫相忆，相忆情难极。
银汉是红墙，一带遥相隔。
金盘珠露滴，两岸榆花白。
风摇玉佩清，今夕为何夕。', '', '[]', '4f28e384-9ad9-46be-8e77-42de56293843', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣沙溪·春水轻波浸绿苔', '毛文锡', '春水轻波浸绿苔，楷杷洲上紫檀开。
晴天眠沙㶉𫛶稳，暖相偎。
罗袜生尘游女过，有人逢着弄珠回。
兰麝飘香初解佩，忘归来。', '', '[]', '0ab9c114-c5ff-405f-874e-b9b8f880c898', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·七夕年年信不违', '毛文锡', '七夕年年信不违，银河清浅白云微，蟾光鹊影伯劳飞。
每恨蟪蛄怜婺女，几回娇妒下鸳机，今宵嘉会两依依。', '', '[]', '48eb34cc-4853-4bfc-867d-6ebae0db2204', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '月宫春·水晶宫里桂花开', '毛文锡', '水晶宫里桂花开，神仙探几回。
红芳金蕊绣重台，低倾玛瑙杯。
玉兔银蟾争夺护，嫦娥姹女戏相偎。
遥听钧天九奏，玉皇亲看来。', '', '[]', '710bc5ef-2453-47f0-9259-eddf13f8e40f', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '恋情深·滴滴铜壶塞漏咽', '毛文锡', '滴滴铜壶塞漏咽，醉红楼月。
宴余香殿会鸳衾，荡春心。
真珠帘下晓光侵，莺语隔琼林。
宝帐欲开慵起，恋情深。', '', '[]', 'e83530c5-1393-4279-8ac1-34d91531923e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '恋情深·玉殿春浓花烂熳', '毛文锡', '玉殿春浓花烂熳，族神仙伴。
罗裙窣地缕黄金，奏清音。
酒阑歌罢两沉沉，一笑动君心。
永作鸳鸯伴，恋情深。', '', '[]', '50f87125-7c50-4ae1-bf99-3f530cb49c56', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '诉衷情·桃花流水漾纵横', '毛文锡', '桃花流水漾纵横，春昼彩霞明。
刘郎去，阮郎行，惆怅恨难平。
愁坐对云屏，算归程。
何时携手洞边迎，诉衷情。', '', '[]', '838bd5d1-783e-4de9-b146-bad3d1ee5dc7', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '诉衷情·鸳鸯交颈绣衣轻', '毛文锡', '鸳鸯交颈绣衣轻，碧沼藕花馨。
偎藻荇，映兰汀，和雨浴浮萍。
思妇对心惊，想边庭。何时解佩掩云屏，诉衷情。', '', '[]', '3e1bad25-d381-4aab-8d2a-ddff7c73762d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '应天长·平江波暖鸳鸯语', '毛文锡', '平江波暖鸳鸯语，两两镏般归极浦。
芦州一夜风和雨，飞起浅沙翘雪鹭。
渔灯明远渚，兰棹今宵何处。
罗袂从风轻举，愁杀采莲女。', '', '[]', 'edf149db-3942-4b9a-86e8-d241b4bb95e1', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河满子·红粉楼前月照', '毛文锡', '红粉楼前月照，碧纱窗外莺啼。
梦断辽阳音信，那堪独守空闺。
恨对百花时节，王孙绿草萋萋。', '', '[]', '7eba531c-dd7a-49c4-8c50-f17be03ca5ab', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·暮蝉声尽落斜阳', '毛文锡', '暮蝉声尽落斜阳，银蟾影挂潇湘。
黄陵庙侧水茫茫。楚山红树，烟雨隔高唐。
岸泊渔灯风飐碎，白苹远散浓香。
灵娥鼓瑟韵清商，朱弦凄切，云散碧云长。', '', '[]', 'ea8de2fd-8946-40da-968a-446ba5635908', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·峭碧参差十二峰', '牛希济', '峭碧参差十二峰，冷烟寒树重重。
瑶姬宫殿是仙踪，金炉珠帐，香霭昼偏浓。
一自楚王惊梦断，人间无路相逢。
至今云雨带愁容，月斜江上，征棹动晨钟。', '', '[]', '3496adc9-a82c-4fa1-bfca-a30b52f66cb7', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·谢家仙观寄云岑', '牛希济', '谢家仙观寄云岑，岩萝拂地成阴。
洞房不闭白云深，当时丹灶，一粒化黄金。
石壁霞衣犹半挂，松风长似鸣琴。
时间唳鹤起前林，十洲高会，何处许相寻？', '', '[]', '5f554339-0879-49da-9b00-21f20cd51fa3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·渭阙宫城秦树凋', '牛希济', '渭阙宫城秦树凋，玉楼独上无聊。
含情不语自吹箫，调情和恨，天路逐风飘。
何事乘龙入忽降，似知深意相招。
三清携手路非遥，世间屏障，彩笔画娇娆。', '', '[]', '68edae61-72a1-4daf-89d0-c882f809ea37', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·江绕黄陵春庙闲', '牛希济', '江绕黄陵春庙闲，娇莺独语关关。
满庭重叠绿苔斑，阴云无事，四散自归山。
箫鼓声稀香烬冷，月娥敛尽弯环。
风流皆道胜人间，须知狂客，拼死为红颜。', '', '[]', 'f8d316c3-5189-4ebf-a0cf-e2432e158037', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·素洛春光潋滟平', '牛希济', '素洛春光潋滟平，千重媚脸初生。
凌波罗袜势轻轻，烟笼日照，珠翠半分明。
风引宝衣疑欲舞，鸾回凤翥堪惊。
也知心许无恐成，陈王辞赋，千载有声名。', '', '[]', 'a64ebdf2-2492-4699-84bb-145e7695f59e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·柳带摇风汉水滨', '牛希济', '柳带摇风汉水滨，平芜两岸争匀。
鸳鸯对浴浪痕新。弄珠游女，微笑自含春。
轻步暗移蝉鬓动，罗裙风惹轻尘。
水晶宫殿岂无因？空劳牵手，解佩赠情人。', '', '[]', 'bbb9bebe-dd13-494b-ab8d-5d0e220ecc6b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·洞庭波浪飐晴天', '牛希济', '洞庭波浪飐晴天，君山一点凝烟。
此中真境属神仙，玉楼珠殿，相映月轮边。
万里平湖秋色冷，星辰垂影参然。
桔林霜重更红鲜，罗浮山下，有路暗相连。', '', '[]', 'a9021573-e589-453d-8257-89e20126e0f2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·枕转簟凉', '牛希济', '枕转簟凉，清晓远钟残梦。
月光斜、帘影动，旧炉香。
梦中说尽相思事，纤手匀双泪。
去年春，今日意，断离肠。', '', '[]', 'd4c942bf-73f7-43a4-b19c-30d4537a8925', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '生查子·春山烟欲收', '牛希济', '春山烟欲收，天淡稀星小。
残月脸边明，别泪临清晓。
语已多，情未了，回首犹重道：
记得绿罗裙，处处怜芳草。', '', '[]', '869bab85-eef9-491f-807b-3e2a1f240e37', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '中兴乐·池塘暖碧浸晴晖', '牛希济', '池塘暖碧浸晴晖，蒙蒙柳絮轻飞。
红蕊凋来，解梦还稀。
春云空有雁归，珠帘垂。
东风寂寞，恨郎抛掷，泪湿罗衣。', '', '[]', 'd2acd117-c2e9-4041-94b1-d220b07bf333', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '谒金门·秋已暮', '牛希济', '秋已暮，重叠关山岐路。
嘶马摇鞭何处去，晓禽霜满树。
梦断禁城神鼓，泪滴枕檀无数。
一点凝红和薄雾，翠蛾愁不语。', '', '[]', '8590e699-f03a-4aca-bd34-8edf210d58ee', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·落絮残莺半日天', '欧阳炯', '落絮残莺半日天，玉柔花醉只思眠，惹窗映竹满炉烟。
独掩画屏愁不语，斜掩瑶枕髻鬟偏，此时心在阿谁边。', '', '[]', '593dc36a-ab6f-46d5-ae19-f72a4f7771b8', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·天碧罗衣拂地垂', '欧阳炯', '天碧罗衣拂地垂，美人初着更相宜，宛风如舞透香肌。
独坐含颦吹风竹，园中缓步折花枝，有情无力泥人时。', '', '[]', '6a620a12-2745-4db7-98d1-2d2fc7bb1a73', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·相见休言有泪珠', '欧阳炯', '相见休言有泪珠，酒阑重得叙欢娱，凤屏鸳枕宿金铺。
兰麝细香闻喘息，绮罗纤缕见肌肤，此时还恨薄情无。', '', '[]', '1c22cc69-44f0-47ba-9725-20c53895cf27', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '三字令·春欲尽', '欧阳炯', '春欲尽，日迟迟，牡丹时。
罗幌卷，翠帘垂。
彩笺书，红粉泪，两心知。
人不在，燕空归，负佳期。
香烬落，枕函欹。
月分明，花淡薄，惹相思。', '', '[]', '85dd189c-3987-4ec5-a969-c9f188dfb813', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·嫩草如烟', '欧阳炯', '嫩草如烟，石榴花发海南天。
日暮江亭春影绿，鸳鸯浴。
水远山长看不足。', '', '[]', 'b2c96f55-a197-4087-8cc5-35d7e2f09b46', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·画舸停桡', '欧阳炯', '画舸停桡，槿花篱外竹横桥。
水上游人沙上女，回顾，笑指芭蕉林里住。', '', '[]', 'da4a7783-9db2-4917-a179-f5263de836da', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·岸远沙平', '欧阳炯', '岸远沙平，日斜归路晚霞明。
孔雀自怜金翠尾，临水，认得行人惊不起。', '', '[]', '334bc3c8-dc21-4109-8910-580a1579c01a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·洞口谁家', '欧阳炯', '洞口谁家，木兰船系木兰花。
红袖女郎相引去，游南浦，笑倚春风相对语。', '', '[]', 'f26929c9-a016-41cc-918c-5c54ead6c472', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·二八花钿', '欧阳炯', '二八花钿，胸前如雪脸如莲。
耳坠金环穿瑟瑟，霞衣窄，笑倚江头招远客。', '', '[]', '17f861fe-9c01-4f54-87b2-afed8fee0fb5', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·路入南中', '欧阳炯', '路入南中，桃榔叶暗蓼花红。
两岸人家微雨后，收红豆，树底纤纤抬素手。', '', '[]', '683c4466-dae4-4357-b96b-85f392f51692', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·袖敛鲛绡', '欧阳炯', '袖敛鲛绡，采香深洞笑相邀。
藤杖枝头芦酒滴，铺葵席，豆蔻花间趖晚日。', '', '[]', '04055fe0-f79a-40db-b483-d54a096ae409', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·翡翠䴔䴖', '欧阳炯', '翡翠䴔䴖，白萍香里小沙汀。
岛上阴阴秋雨色，芦花扑，数只渔船何处宿。', '', '[]', '68def9f1-1762-4473-b69e-dedf0ea7fd77', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '献衷心·见好花颜色', '欧阳炯', '见好花颜色，争笑东风。
双脸上，晚妆同。
闭小楼深阁，春景重重。
三五夜，偏有恨，月明中。
情未已，信曾通，满衣犹自染檀红。
恨不如双燕，飞舞帘栊。
春欲暮，残絮尽，柳条空。', '', '[]', '86b3e318-ffe9-4e14-8156-b44e6423c374', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '贺明朝·忆昔花间初识面', '欧阳炯', '忆昔花间初识面，红袖半遮妆脸。
轻转石榴裙带，故将纤纤玉指，愉捻双凤金线。
碧梧桐锁深深院，谁料得，两情何日教缱绻。
羡春来双燕，飞到玉楼，朝暮相见。', '', '[]', '1329af4a-d564-4d1c-b58b-e24aad503543', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '贺明朝·忆昔花间相见后', '欧阳炯', '忆昔花间相见后，只凭纤手，暗抛红豆。
人前不解，巧传心事。
别来依旧，辜负春昼。
碧罗衣上蹙金绣，睹对对鸳鸯，空裛泪痕透。
想韶颜非久，终是为伊，只恁偷瘦。', '', '[]', 'd5814ec7-b12a-46b2-b495-da0ca210f21e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '江城子·晚日金陵岸草平', '欧阳炯', '晚日金陵岸草平，落霞明，水无情，六代繁华，暗逐逝波声。
空有姑苏台上月，如西子镜照江城。', '', '[]', '889e4de8-3f87-4874-a045-a07b18d3be89', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '凤楼春·凤髻绿云丛', '欧阳炯', '凤髻绿云丛，深掩房栊。
锦书通，梦中相见觉来慵，匀面泪脸珠融。
因想玉郎何处去，对淑景谁同。
小楼中，春思无穷。
倚栏颙望，暗牵愁绪，柳花飞起东风。
斜日照帘，罗幌香冷粉屏空。
海棠零落，莺语残红。', '', '[]', '0269b6b5-eb10-44a6-b96c-6ea60791eb85', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '小重山·春入神京万木芳', '和凝', '春入神京万木芳，禁林莺语滑，蝶飞狂。
晓花擎露妨啼妆，红日水，风和百花香。
烟锁柳丝长，御沟澄碧水，转池塘。
时时微雨洗劫风光，天衢远，到处引笙簧。', '', '[]', '5946257f-3d52-4df7-b9b3-d14990d217c4', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '小重山·正是神京烂熳时', '和凝', '正是神京烂熳时，群仙初折得，郄诜枝。
乌犀白纻最相宜，精神出，御陌袖鞭垂。
柳色展愁眉，管弦分响亮，探花期。
光阴占断曲江池，新榜上，名姓彻丹墀。', '', '[]', '69970a33-dd0f-4d38-9286-b5d1664a5af2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·海棠香老春江晚', '和凝', '海棠香老春江晚，小楼雾縠涳蒙。
翠鬟初出绣帘中，麝烟鸾鬟苹风。
碾玉钗摇㶉𫛶战，雪肌云鬓将融。
含情遥指碧波东，越王台殿蓼花红。', '', '[]', 'e3ed201b-253f-409c-b3af-3d5d09b25a89', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·披袍窣地红宫锦', '和凝', '披袍窣地红宫锦，莺语时啭轻音。
碧罗冠子稳犀簪，凤凰双飐步摇金。
肌骨细匀红玉软，脸波微送春心。
娇羞不肯入鸳衾，兰膏光里两情深。', '', '[]', '51751d6d-64a8-414b-bf5f-1c8d08eb48aa', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·越梅半坼轻寒里', '和凝', '越梅半坼轻寒里，冰清淡薄笼蓝水。
暖觉杏梢红，游丝狂惹风。
闲阶莎径碧，远梦犹堪惜。
离恨又迎春，相思难重陈。', '', '[]', '44be83d4-6882-42f2-aec8-34c9e59748cf', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '山花子·莺锦蝉縠馥麝脐', '和凝', '莺锦蝉縠馥麝脐，轻裾花早晓烟迷。
㶉𫛶战金红掌坠，翠云低。
星靥笑偎霞脸畔，蹙金开襜衬银泥。
春思半和芳草嫩，碧萋萋。', '', '[]', '2428667a-77f2-4a78-8d95-fb16bdc0d638', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '山花子·银字笙寒调正长', '和凝', '银字笙寒调正长，水纹簟冷画屏凉。
玉腕重金扼臂，淡梳妆。
几度试香纤手暖，一回尝酒绛唇光。
佯弄红丝蝇拂子，打檀郎。', '', '[]', '359409da-0c2c-40ff-ad66-11e12895bc41', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河满子·正是破瓜年几', '和凝', '正是破瓜年几，含情惯得人饶。
桃李精神鹦鹉舌，可堪虚度良宵。
却爱蓝罗裙子，羡他长束纤腰。', '', '[]', '70a9bcef-835c-42e7-9be7-a9bcf4185739', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河满子·写得鱼笺无限', '和凝', '写得鱼笺无限，其如花锁春晖。
目断巫山云雨，空教残梦依依。
却爱熏香小鸭，羡他长在屏帷。', '', '[]', '0523cd3d-7a62-4ed1-ba29-3f1ca0c11afd', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '薄命女·天欲晓', '和凝', '天欲晓，宫漏穿花声缭绕。
窗里星光少，冷霞寒侵帐额，残月光沉树杪。
梦断锦帷空悄悄，强起愁眉小。', '', '[]', '01238532-281d-429b-bbc2-d8b3a2367a86', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '望梅花·春草全无消息', '和凝', '春草全无消息，腊雪犹余踪迹。
越岭寒枝香自坼，冷艳奇芳堪惜。
何事寿阳无处觅，吹入谁家横笛。', '', '[]', '2c6c92e7-8dec-49fe-8062-cd64680c6e37', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '天仙子·柳色披衫金缕凤', '和凝', '柳色披衫金缕凤，纤手轻拈红豆弄，翠蛾双敛正含情。
桃花洞，瑶台梦，一片春愁谁与共。', '', '[]', '9d29a8b5-8be9-4bfb-851e-6b200f247516', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '天仙子·洞口春红飞蔌蔌', '和凝', '洞口春红飞蔌蔌，仙子含愁眉黛绿。
阮郎何事不归来，懒烧金，慵篆玉。
流水桃花空断续。', '', '[]', '77f719fc-3b62-4078-a5ad-4dfe8d7cda02', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '春光好·纱窗暖', '和凝', '纱窗暖，画屏间，亸云鬟。
睡起四肢无力，半春闲。
玉指剪裁罗胜，金盘点缀酥山。
窥宋深心无限事，小眉弯。', '', '[]', '0bcde706-d96a-4529-8e82-b1c2897c8e10', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '春光好·苹叶软', '和凝', '苹叶软，杏花明，画船轻。
双浴鸳鸯出绿汀，棹歌声。
春水无风无浪，春天半雨半晴。
红粉相随南浦晚，几含情。', '', '[]', '71c209dd-a760-4d96-8cab-0d7cca9beeaf', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '采桑子·蝤蛴领上诃梨子', '和凝', '蝤蛴领上诃梨子，绣带双垂，椒户闲时，竞学樗蒲赌荔枝。
丛头鞋子红编细，裙窣金丝。
无事颦眉，春思翻教阿母疑。', '', '[]', '652b734a-9965-4f8f-881e-4b5f142d884c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳枝·软碧瑶烟似送人', '和凝', '软碧瑶烟似送人，映花时把翠蛾颦。
青青自是风流主，慢飐金丝待洛神。', '', '[]', 'b184c1c9-4398-48b1-accf-9acd5f86d713', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳枝·瑟瑟罗裙金缕腰', '和凝', '瑟瑟罗裙金缕腰，黛眉偎破未重描。
醉来咬损新花子，拽住仙郎尽放娇。', '', '[]', 'be96a519-e5ab-4986-92bb-c8bb646fbc4d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳枝·雀桥初就咽银河', '和凝', '雀桥初就咽银河，今夜仙郎自姓和。
不是昔年攀桂树，岂能月里索嫦娥。', '', '[]', 'bd9e936b-f12e-457e-9b69-bc4ff7a3f4bd', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '渔父·白芷汀寒立鹭鸶', '和凝', '白芷汀寒立鹭鸶，苹风轻剪浪花时。
烟幂幂，日迟迟。
香引芙蓉惹钓丝。', '', '[]', '5d37883f-a20a-437f-b025-5ac8a48f3a78', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·晓莺啼破相思梦', '顾敻', '晓莺啼破相思梦，帘看金泥凤。
宿妆犹在酒初醒，翠翘慵整倚云屏，转娉婷。
香檀细画侵桃脸，罗袂轻轻敛。
佳期堪恨再难寻，绿芜满院柳成阴，负春心。', '', '[]', '5c94758c-5d3a-4c38-afee-9f8a5b7f691d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·触帘风送景阳钟', '顾敻', '触帘风送景阳钟，鸳被绣花重。
晓帷初卷冷烟浓，翠匀粉黛好仪容，思娇慵。
起来无语理朝妆，宝匣镜凝光。
绿荷相倚满池塘，露清枕簟藕花香，恨悠扬。', '', '[]', '0237704e-7768-402c-8729-0d109914f3fa', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·翠屏闲掩垂珠箔', '顾敻', '翠屏闲掩垂珠箔，丝雨笼池阁。
露沾红藕咽清香，谢娘娇极不成狂，罢朝妆。
小金㶉𫛶沉烟细，腻枕堆云髻。
浅眉微敛注檀轻，旧欢时有梦魂惊，悔多情。', '', '[]', 'a55f5352-f5a1-4e5a-b086-64fe33e21419', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·碧梧桐映纱窗晚', '顾敻', '碧梧桐映纱窗晚，花谢莺声懒。
小屏屈曲掩青山，翠帷香粉玉炉寒，两蛾攒。
颠狂少年轻离别，辜负春时节。
画罗红袂有啼痕，魂消无语倚闺门，欲黄昏。', '', '[]', 'b5dd4203-ac34-4605-ac00-8112c26067b6', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·深闺春色劳思想', '顾敻', '深闺春色劳思想，恨共春芜长。
黄鹂娇啭泥芳妍，杏枝如画倚轻烟，琐窗前。
凭栏愁立双蛾细，柳影斜摇砌。
玉郎还是不还家，教人魂梦逐杨花，绕天涯。', '', '[]', 'acdd147c-9917-436e-8d31-af7f933be2c9', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·少年艳质胜琼英', '顾敻', '少年艳质胜琼英，早晚别三清。
莲冠稳簪钿篦横，飘飘罗袖碧云轻，画难成。
迟迟少转腰身袅，翠靥眉心小。
醮坛风急杏花香。
此时恨不驾鸾凤，访刘郎。', '', '[]', '883ed299-a075-40fb-a931-c5b00623c227', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·燕飏', '顾敻', '燕飏，晴景。
小窗屏暖，鸳鸯交颈。
菱花掩却翠鬓欹，慵整。海棠帘外影。
绣帷香断金㶉𫛶，无消息，心事空相忆。
倚东风，春正浓。
愁红，泪痕衣上重。', '', '[]', 'ed801e2d-b76f-40ad-a0a9-5036834e7ed6', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·曲槛', '顾敻', '曲槛，春晚。
波光渺渺，不知何处。
岸花汀草共依依，雨微，鹧鸪相逐飞。
天涯离恨江声咽，啼猿切，此意向谁说。
倚兰桡，独无聊。
魂消，小炉香欲焦。', '', '[]', '86d71e75-7f48-4c21-b768-9c7d55c00add', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '甘州子·一炉龙麝锦帷旁', '顾敻', '一炉龙麝锦帷旁，屏掩映，烛荧煌。
禁楼刁斗喜初长，罗荐绣鸳鸯。
山枕上，私语口脂香。', '', '[]', '3e6ea3d9-df7c-4054-b99b-159906f396ad', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '甘州子·每逢清夜与良晨', '顾敻', '每逢清夜与良晨，多怅望，足伤神。
云迷水隔意中人，寂寞绣罗茵。
山枕上，几点泪痕新。', '', '[]', 'e503583b-2dfc-4e65-8be7-3b9779cd3259', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '甘州子·曾如刘阮访仙踪', '顾敻', '曾如刘阮访仙踪，深洞客，此时逢。
绮筵散后绣衾同，款曲见韶容。
山枕上，长是怯晨钟。', '', '[]', 'a94939ad-26b3-467f-8a79-edac62f1d90b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '甘州子·露桃花里小楼深', '顾敻', '露桃花里小楼深，持玉盏，听瑶琴。
醉归青琐入鸳衾，月色照衣襟。
山枕上，翠钿镇眉心。', '', '[]', 'fc474322-02ed-4e0d-93b1-834ec531afd6', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '甘州子·红炉深夜醉调笙', '顾敻', '红炉深夜醉调笙，敲拍处，玉纤轻。
小屏古画岸低平，烟月满闲庭。
山枕上，灯背脸波横。', '', '[]', '49f75ea8-42ee-4333-a3bd-cbaae577adc3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '玉楼春·月照玉楼春漏促', '顾敻', '月照玉楼春漏促，飒飒风摇庭砌竹。
梦惊鸳被觉来时，何处管弦声断续。
惆怅少年游冶去，枕上两蛾攒细绿。
晓莺帘外语花枝，背帐犹残红蜡烛。', '', '[]', 'a9da9457-ec17-4479-bca9-94e70dd2c5ac', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '玉楼春·柳映玉楼春日晚', '顾敻', '柳映玉楼春日晚，雨细风轻烟草软。
画堂鹦鹉语雕笼，金粉小屏犹半掩。
香灭绣帷人寂寂，倚槛无言愁思远。
恨郎何处纵疏狂，长使含啼眉不展。', '', '[]', '9c91d7c0-90d7-4551-bd86-351e944fffb4', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '玉楼春·月皎露华窗影细', '顾敻', '月皎露华窗影细，风送菊香沾绣袂。
博山炉冷水沉微，惆怅金闺终日闭。
懒展罗衾垂玉箸，羞对菱花簪宝髻。
良宵好事枉教休，无计那他狂耍婿。', '', '[]', 'b56f5b6d-b6ad-47f3-b099-1e6eee7f6dae', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '玉楼春·拂水双飞来去燕', '顾敻', '拂水双飞来去燕，曲槛小屏山六扇。
春愁凝思结眉心，绿绮懒调红锦荐。
话别情多声欲战，玉箸痕留红粉面。
镇长独立到黄昏，却怕良宵频梦见。', '', '[]', '5caf7719-6af4-46cd-8cb3-040f29b977ff', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·春色迷人恨正赊', '顾敻', '春色迷人恨正赊，可堪荡子不还家，细风轻露着梨花。
帘外有情双燕飏，槛前无力绿杨斜，小屏狂梦极天涯。', '', '[]', '75cadccd-f3fc-45bb-bea6-c087e8b4ced9', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·红藕香寒翠渚平', '顾敻', '红藕香寒翠渚平，月笼虚阁夜蛩清，塞鸿惊梦两牵情。
宝帐玉炉，残麝冷，罗衣金缕暗尘生，小窗孤烛泪纵横。', '', '[]', 'ceda90cc-f205-4fb1-88a5-ce195eb318be', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·荷芰风轻帘幕香', '顾敻', '荷芰风轻帘幕香，绣衣㶉𫛶泳回塘，小屏闲掩旧潇湘。
恨入空帷鸾影独，泪凝双脸渚莲光，薄情年少悔思量。', '', '[]', '79c8cfa7-ad32-42b1-9efe-a34fdf11ddfd', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·惆怅经年别谢娘', '顾敻', '惆怅经年别谢娘，月窗花院好风光，此时相望最情伤。
青鸟不来传锦字，瑶姬何处琐兰房，忍教魂梦两茫茫。', '', '[]', '3694635b-a097-4ade-a09f-94d8cbcef842', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·庭菊飘黄玉露浓', '顾敻', '庭菊飘黄玉露浓，冷莎偎砌隐鸣蛩，何期良夜得相逢。
背帐风摇红蜡滴，惹香梦暖绣衾重，觉来枕上怯晨钟。', '', '[]', '666af2b0-a149-47d5-9a68-ef9c9461ba45', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·云峡风高叶乱飞', '顾敻', '云峡风高叶乱飞，小庭寒雨绿苔微，深闺人静掩屏帷。
粉黛暗愁金带枕，鸳鸯空绕画罗衣，那堪辜负不思归。', '', '[]', '1b04ef60-8b26-4be3-8cdf-b94c59043cb2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·雁响遥天玉漏清', '顾敻', '雁响遥天玉漏清，小纱窗外月胧明，翠帷金鸭炷香平。
何处不归音信断，良宵空使攀魂惊，簟凉枕冷不胜情。', '', '[]', '3ee101d6-f8df-437d-9592-a5bbf01e339e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·露白蟾明又到秋', '顾敻', '露白蟾明又到秋，佳期幽会两悠悠，梦牵情役几时休。
记得泥人微敛黛，无言斜倚小书楼，暗思前事不胜愁。', '', '[]', 'd6ce7e42-db73-47f0-aebf-ebb8a4d3e425', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·杨柳舞风', '顾敻', '杨柳舞风，轻惹春烟残雨。
杏花愁，莺正语，画楼东。
锦屏寂寞思无穷，还是不知消息。
镜尘生，珠泪滴，损仪容。', '', '[]', 'eac244b9-bf37-45d1-99e5-ae2a1a393153', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·罗带缕金', '顾敻', '罗带缕金，兰麝烟凝魂断。
画屏欹，云鬓乱，恨难任。
几回垂泪滴鸳衾，薄情何处去。
月临窗，花满树，信沉沉。', '', '[]', '5a2d5f46-0faf-45f5-86ee-6977b6a8bad3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·小槛日斜', '顾敻', '小槛日斜，风度绿窗人悄悄。
翠帷闲掩舞双鸾，旧香寒。
别来情绪转难拚，韶颜看却老。
依稀粉上有啼痕，暗销魂。', '', '[]', '21a22a2c-3f13-4a10-b9cd-06dec7e4bea3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·黛薄红深', '顾敻', '黛薄红深，约掠绿鬟云腻。
小鸳鸯，金翡翠，称人心。
锦鳞无处传幽意，海燕兰堂春又去。
隔年书，千点泪，恨难任。', '', '[]', '08221cff-7552-4b5f-8b6d-a476b5162714', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·掩却菱花', '顾敻', '掩却菱花，收拾翠钿休上面。
金虫玉燕锁香奁，恨厌厌。
云鬟半坠懒重簪，泪侵山枕湿。
恨灯背帐梦方酣，雁飞南。', '', '[]', 'e5049d13-166c-4b90-b52c-2e30836b2e0e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·水碧风清', '顾敻', '水碧风清，入槛细香红藕腻。
谢娘敛翠恨无涯，小屏斜。
堪憎荡子不还家，漫留罗带结。
帐深枕腻炷沉烟，负当年。', '', '[]', '47a3d478-dc28-4482-91b3-969624e9d5e1', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·黛愁怨红羞', '顾敻', '黛愁怨红羞，掩映画堂春欲暮。
残花微雨隔青楼，思悠悠。
芳菲时节看将度，寂寞无人还独语。
画罗襦，香粉污，不胜愁。', '', '[]', 'd1feab98-2cc3-4fe7-941d-207df532df25', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·秋夜香闺思寂寞', '顾敻', '秋夜香闺思寂寞，漏迢迢。
鸳帷罗幌麝烟销，烛光摇。
正忆玉郎游荡去，无寻处。
更闻帘外雨萧萧，滴芭蕉。', '', '[]', '3411d423-8b2d-44ee-a94f-a49a7b137d0f', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '遐方怨·帘影细', '顾敻', '帘影细，簟纹平。
象纱笼玉指，缕金罗扇轻。
嫩双脸似花明，两条眉黛远山横。
风箫歇，镜尘生。
辽塞音书绝，梦魂长暗惊。
玉郎经岁负娉婷，教人怎不恨无情。', '', '[]', '3e287f83-97cb-49e0-b9cb-9bceb6e1eea8', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '献衷心·绣鸳鸯帐暖', '顾敻', '绣鸳鸯帐暖，画孔雀欹。
人悄悄，月明时，想昔年欢笑，恨今日分离。
银背，铜漏永，阻佳期。
小炉烟细，虚阁帘垂。
几多心事，暗地思惟。
被娇娥牵役，魂梦如痴。
金闺里，山枕上，始应知。', '', '[]', '06e1999a-791e-4236-86eb-825663838398', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '应天长·瑟瑟罗裙金线缕', '顾敻', '瑟瑟罗裙金线缕，轻透鹅黄香画袴。
垂交带，盘鹦鹉，袅袅翠翘移玉步。
背人匀檀注，慢转横波偷觑。
敛黛春情暗许，倚慵不语。', '', '[]', 'e41d700e-ed19-4fc7-a37f-07a4868a8b57', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '诉衷情·香灭帘垂春漏永', '顾敻', '香灭帘垂春漏永，整鸳衾。
罗带重，双凤，缕黄金。
窗外月光临，沉沉。
断肠无处寻，负春心。', '', '[]', 'b13e6237-3541-49d7-b51b-2c9b206fdef7', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '诉衷情·永夜抛人何处去', '顾敻', '永夜抛人何处去，绝来音。
香阁掩，眉敛，月将沉。
怎忍不相寻？鸳孤衾。
换我心为你心，始知相忆深。', '', '[]', 'e853b34e-c1d6-43f2-bc38-bb35c86a7a82', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·春尽小庭花落', '顾敻', '春尽小庭花落，寂寞。
凭槛敛双眉，忍教成病忆佳期。
知么知，知么知。', '', '[]', 'b351b328-5f90-4aeb-a6b5-6daf0f4ae094', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·歌发谁家筵上', '顾敻', '歌发谁家筵上，寥亮。
别恨正悠悠，兰釭背帐月当楼。
愁么愁，愁么愁。', '', '[]', '8775f1cd-ec35-439c-b160-30c975af6f40', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·弱柳好花尽坼', '顾敻', '弱柳好花尽坼，晴陌。
陌上少年郎，满身兰麝扑人香。
狂么狂，狂么狂。', '', '[]', '5beea78d-0ccb-449f-b5d3-26bd0010c604', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·记得那时相见', '顾敻', '记得那时相见，胆战。
鬓乱四肢柔，泥人无语不抬头。
羞么羞，羞么羞。', '', '[]', '19fa7213-af7b-43c5-9c28-5f29d14ec321', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·夜久歌声怨咽', '顾敻', '夜久歌声怨咽，残月。
菊冷露微微，看看湿透缕金衣。
归么归，归么归。', '', '[]', 'e3658ebd-bb33-4f68-b170-1b7f90450c53', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·我忆君诗最苦', '顾敻', '我忆君诗最苦，知否。
字字尽关心，红笺写寄表情深。
吟么吟，吟么吟。', '', '[]', '84593e10-3b5b-4c9e-b891-88755be7bb52', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·金鸭香浓鸳被', '顾敻', '金鸭香浓鸳被，枕腻。
小髻簇花钿，腰如细柳脸如莲。
怜么怜，怜么怜。', '', '[]', '8209a88b-cbef-4694-98d4-4959052798af', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·曲砌蝶飞烟暖', '顾敻', '曲砌蝶飞烟暖，春半。
花发柳垂条，花如双脸柳如腰。
娇么娇，娇么娇。', '', '[]', '575037b8-55e1-45cb-860f-2609fbf83c73', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '荷叶杯·一去又乖期信', '顾敻', '一去又乖期信，春尽。
满院长莓苔，手挼裙带独徘徊。
来么来，来么来。', '', '[]', '28f47ab5-5344-48b8-89f3-01d0fd348965', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '渔歌子·晓风清', '顾敻', '晓风清，幽沼绿，倚栏凝望珍禽浴。
画帘垂，翠屏曲，满袖荷香馥郁。
好摅怀，堪寓目，身闲心静平生足。
酒杯深，光影促，名利无心较逐。', '', '[]', '68e006cd-c08f-4fe4-80ec-cceed6658e29', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·碧染长空池似镜', '顾敻', '碧染长空池似镜，倚楼闲望凝情，满衣红藕细香清。
象床珍簟，山障掩，玉琴横。
暗想昔时欢笑事，如今赢得愁生。
博山炉暖淡烟轻。
蝉吟人静，残日傍，小窗明。', '', '[]', 'fc29f73f-2c2b-443e-a5c8-01715c3999fe', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·幽闺小槛春光晚', '顾敻', '幽闺小槛春光晚，柳浓花淡莺稀。
旧欢思想尚依依，翠颦红敛，终日损芳菲。
何事狂夫音信断，不如梁燕犹归。
画意深处麝烟微，屏虚枕冷，风细雨霏霏。', '', '[]', 'f2131e0b-d192-4aba-98c7-97417248bd59', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·月色穿帘风入竹', '顾敻', '月色穿帘风入竹，倚屏双黛愁时。
砌花含露两三枝，如啼恨脸，魂断损容仪。
香烬暗消金鸭冷，可堪辜负前期。
绣襦不整鬓鬟欹，几多惆怅，情绪在天涯。', '', '[]', 'df615a49-9077-4c02-b230-e116ab0599ea', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '醉公子·漠漠秋云淡', '顾敻', '漠漠秋云淡，红耦香侵槛。
枕欹小山屏，金铺向晚扃。
睡起横波慢，独望情何限。
衰柳数声蝉，魂消似去年。', '', '[]', 'a2cf31de-75d7-459d-b73d-22f4d188783f', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '醉公子·岸柳垂金线', '顾敻', '岸柳垂金线，雨晴莺石啭。
家在绿杨边，往来多少年。
马嘶芳草远，高楼帘半卷。
敛袖翠蛾攒，相逢尔许难。', '', '[]', '8613aaee-0de7-43ea-8ace-ec1e68e90061', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子·旧欢娱', '顾敻', '旧欢娱，新怅望，拥鼻含颦楼上。
浓柳翠，晚霞微，江鸥接翼飞。
帘半卷，屏斜掩，远岫参差迷眼。
歌满耳，酒盈樽，前非不要论。', '', '[]', '623f8c90-2d86-42f7-be39-8a876b980f46', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·蓼岸风多枯柚香', '孙光宪', '蓼岸风多枯柚香，江边一望楚天长，片帆烟际闪孤光。
目送征鸿飞杳杳，思随流水去茫茫，兰红波碧忆潇湘。', '', '[]', 'ef307dc1-6ae9-4fc2-b3a8-a089a7bd1c2c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·桃杏风香帘幕闲', '孙光宪', '桃杏风香帘幕闲，谢家门户约花关，画梁幽语燕初还。
绣阁数行题了壁，晓屏一枕酒醒山，却疑身是梦魂间。', '', '[]', '301c94ac-e3ec-4231-a382-859c198bbf2f', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·花渐凋疏不耐风', '孙光宪', '花渐凋疏不耐风，画帘垂地晚堂空，堕阶萦藓舞愁红。
腻粉半沾金靥子，残香犹暖绣熏笼，蕙心无处与人同。', '', '[]', 'd8c41bb1-aa82-44e3-855b-333bda4f4f4a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·揽镜无言泪欲流', '孙光宪', '揽镜无言泪欲流，凝情半日懒梳头，一庭疏雨湿春愁。
杨柳只知伤离别，杏花应信损娇羞，泪沾魂断轸离忧。', '', '[]', 'd648f688-9040-4dc7-ad9c-342966ae8e6c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·半踏长裾宛约行', '孙光宪', '半踏长裾宛约行，晚帘疏处见分明，此时堪恨昧平生。
早是消魂残烛影，更愁闻着品弦声，杳无消息若为情。', '', '[]', 'bf6ff1b4-051f-4a41-bd19-5184e1e210f8', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·兰沐初休曲槛前', '孙光宪', '兰沐初休曲槛前，缓风迟日洗头天，湿云新敛未梳蝉。
翠袂半将遮粉臆，宝钗长欲坠香肩，此时模样不禁怜。', '', '[]', 'bece71dc-47cd-4a1e-b8b6-b226fb96dd65', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·风递残香出绣帘', '孙光宪', '风递残香出绣帘，团窠金凤舞襜襜，落花微雨恨相兼。
何处去来狂太甚，空推宿酒睡无厌，怎教人不别猜嫌。', '', '[]', '6a148d63-c2f5-44b8-8aba-55486c587341', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·轻打银筝坠燕泥', '孙光宪', '轻打银筝坠燕泥，断丝高罥画楼西，花冠闲上午墙啼。
粉箨半开新竹径，红苞尽落旧桃蹊，不堪终日闭深闺。', '', '[]', 'a185fc7a-4894-4c0f-a7c8-01fc60e96b5a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·乌帽斜欹倒佩鱼', '孙光宪', '乌帽斜欹倒佩鱼，静街偷步访仙居，隔墙应认打门初。
将见客时微掩敛，得人怜处且先疏，低头羞问壁边书。', '', '[]', '064b2a6e-36b4-44e4-a91f-72d7f3477ad3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·太平天子', '孙光宪', '太平天子，等闲游戏，疏河千里。
柳如丝，偎倚绿波春水，长淮风不起。
如花殿脚三千女，争云雨，何处留人住？
锦帆风，烟际江，烧空，魂迷大业中。', '', '[]', 'aa631e67-b770-4a95-a8d5-3068ba6c7ee3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·柳拖金缕', '孙光宪', '柳拖金缕，着烟笼雾，蒙蒙落絮。
凤皇舟上楚女，妙舞，雷喧波上鼓。
龙争虎战分中土，人无主，桃叶江南渡。
襞花笺，艳思牵。
成篇，官娥相与传。', '', '[]', '66ca1127-437a-4f5f-8934-4c4fe7828098', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·花落', '孙光宪', '花落，烟薄，谢家池阁。
寂寞春深，翠蛾轻敛意沉吟。
沾襟，无人知此心。
玉炉香断霜灰冷，帘铺影，梁燕归红杏。
晚来天，空悄然。
孤眠，枕檀云髻偏。', '', '[]', 'ac8849cd-b4f9-4a9e-9c4a-ffecf82d5c7e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·风飐', '孙光宪', '风飐，波敛。
团荷闪闪，珠倾露点。
木兰舟上，何处吴娃越艳，藕花红照脸。
大堤狂杀襄阳客，烟波隔，渺渺湖光白。
身已归，心不归。
斜晖，远汀㶉𫛶飞。', '', '[]', '5e679dde-96da-4b7e-b613-c07dc2deb315', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·月华如水笼香砌', '孙光宪', '月华如水笼香砌，金环碎撼门初闭。
寒影堕高檐，钩垂一画帘。
碧烟轻袅袅，红战灯花笑。
即此是高唐，掩屏秋梦长。', '', '[]', 'dd83862c-201d-4cc8-9e7e-40579b7e79d3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·花冠频鼓墙头翼', '孙光宪', '花冠频鼓墙头翼，东方淡白连窗色。
门外早莺声，背楼残月明。
薄寒笼醉态，依旧铅华在。
握手送人归，半拖金缕衣。', '', '[]', '097bc885-7bc5-47e4-9b68-d5798147782b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·小庭花落无人归', '孙光宪', '小庭花落无人归，疏香满地东风老。
春晚信沉沉，天涯何处寻。
晓堂屏六扇，眉共湘山远。
怎奈别离心，近来尤不禁。', '', '[]', 'b4aebbc4-377f-44c0-af8c-cd356ee82507', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·青岩碧洞经朝雨', '孙光宪', '青岩碧洞经朝雨，隔花相唤南溪去。
一只木兰船，波平远浸天。
扣舷惊翡翠，嫩玉抬香臂。
红日欲沉西，烟中遥解觽。', '', '[]', '59bceaf1-972f-412b-8011-70e5488678c4', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·木绵花映丛祠小', '孙光宪', '木绵花映丛祠小，越禽声里春光晓。
铜鼓与蛮歌，南人祈赛多。
客帆风正急，茜袖偎樯立。
极浦几回头，烟波无限愁。', '', '[]', '4159997e-5d32-40db-8fa6-d15352294109', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河渎神·汾水碧依依', '孙光宪', '汾水碧依依，黄云落叶初飞。
翠华一去不言归，庙门空掩斜晖。
四壁阴森排古画，依旧琼轮羽驾。
小殿沉沉清夜，银灯飘落香灺。', '', '[]', '91b3acea-2500-454d-a4fa-a5de58d11a0e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河渎神·江上草芊芊', '孙光宪', '江上草芊芊，春晚湘妃庙前。
一方卵色楚南天，数行征雁联翩。
独倚朱栏情不极，魂断终朝相忆。
两桨不知消息，远汀时起㶉𫛶。', '', '[]', '5bf010aa-1ee6-43d8-8f1f-de0ff9c19e19', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·红窗寂寂无人语', '孙光宪', '红窗寂寂无人语，暗淡梨花雨。
绣罗纹地粉新描，博山香炷旋抽条，暗魂消。
天涯一去无消息，终日长相忆。
教人相忆几时休？不堪枨触别离愁，泪还流。', '', '[]', '690d7402-f24e-4519-bbe3-1e0704245a3b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·好风微揭帘旌起', '孙光宪', '好风微揭帘旌起，金翼鸾相倚。
翠檐愁听乳禽声，此时春态暗关情，独难平。
画堂流水空相翳，一穗香摇曳。
教人无处寄相思，落花芳草过前期，没人知。', '', '[]', '7361b035-eea8-410c-be44-367cb3789017', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '后庭花·景阳钟动宫莺啭', '孙光宪', '景阳钟动宫莺啭，露凉金殿。
轻飙吹起琼花旋，玉叶如剪。
晚来高阁上，珠帘卷，见坠香千片。
修蛾慢脸陪雕辇，后庭新宴。', '', '[]', '350de348-3681-4e15-8b88-449e6e352230', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '后庭花·石城依旧空江国', '孙光宪', '石城依旧空江国，故宫春色。
七尺青丝芳草碧，绝世难得。
玉英凋落尽，更何人识，野棠如织。
只是教人添怨忆，怅望无极。', '', '[]', 'be134cf9-8320-4c5d-bd03-6ef120260a52', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '生查子·寂寞掩朱门', '孙光宪', '寂寞掩朱门，正是天将暮。
暗淡小庭中，滴滴梧桐雨。
绣工夫，牵心绪，配尽鸳鸯缕。
待得没人时，偎倚论私语。', '', '[]', '33e6af30-7f9f-4e22-b350-d9818130b44b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '生查子·暖日策花骢', '孙光宪', '暖日策花骢，亸鞚垂杨陌。
芳草惹烟青，落絮随风白。
谁家绣毂动香尘，隐遇难神仙客。
狂杀玉鞭郎，咫尺音容隔。', '', '[]', 'a8730876-5c6a-4e77-8fe6-86b439647723', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '生查子·金井堕高梧', '孙光宪', '金井堕高梧，玉殿笼斜月。
永巷寂无人，敛态愁堪绝。
玉炉寒，香烬灭，还似君恩歇。
翠辇不归来，幽恨将谁说。', '', '[]', 'dbbe0b2a-7ecf-468c-83c8-163e35da9c8e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·霜拍井梧干叶堕', '孙光宪', '霜拍井梧干叶堕，翠帷雕槛初寒。
薄铅残黛称花冠，含情无语，延伫倚栏干。
杳杳征轮何处去，离愁别恨千般。
不堪心绪正多端，镜奁长掩，无意对孤鸾。', '', '[]', '64a55278-8660-48e9-aab8-aa1294f1b0db', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·暮雨凄凄深院闭', '孙光宪', '暮雨凄凄深院闭，灯前凝坐初更。
玉钗低压鬓云横，半垂罗幕，相映烛光明。
终是有心投汉佩，低头但理秦筝。
燕双鸾耦不胜情，只愁明发，将逐楚云行。', '', '[]', 'be46dd83-82b1-40d6-8123-74abbebc209a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·空碛无边', '孙光宪', '空碛无边，万里阳关道路。
马萧萧，人去去，陇云愁。
香貂旧制戎衣窄，胡霜千里白。
绮罗心，魂梦隔，上高楼。', '', '[]', '80ebd4ee-b9e1-47ab-802c-aa3afa25075b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·曲槛小楼', '孙光宪', '曲槛小楼，正是莺花二月。
思无聊，愁欲绝，郁离襟。
展屏空对潇湘水，眼前千万里。
泪掩红，眉敛翠，恨沉沉。', '', '[]', '26da113f-5577-4405-bb2b-39841a5b2698', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·敛态窗前', '孙光宪', '敛态窗前，袅袅雀钗抛颈。
燕成双，鸾对影，耦新知。
玉纤淡拂眉山小，镜中嗔共照。
翠连娟，红缥渺，早妆时。', '', '[]', '2e210f00-92b1-472a-a832-94e7e8269ce8', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '清平乐·愁肠欲断', '孙光宪', '愁肠欲断，正是青春半。
连理分枝鸾失伴，又是一场离散。
掩镜无语眉低，思随芳草萋萋。
凭仗东风吹梦，与郎终日东西。', '', '[]', '7c7403fb-45cb-492b-8ed0-85677fa2cac4', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '清平乐·等闲无语', '孙光宪', '等闲无语，春恨如何去？
终是疏狂留不住，花暗柳浓何处。
尽日目断魂飞，晚窗斜界残晖。
长恨朱门薄暮，绣鞍骢马空归。', '', '[]', '2477f015-e486-4be6-90db-9e0dec9ee756', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子·听寒更', '孙光宪', '听寒更，闻远雁，半夜萧娘深院。
扃绣户，下珠帘，满庭喷玉蟾。
人语静，香闺冷，红幕半垂清影。
云雨态，蕙兰心，此情江海深。', '', '[]', 'c3cfa67a-757a-4baa-8b20-1c7010f53c68', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子·今夜期', '孙光宪', '今夜期，来日别，相对只堪愁绝。
偎粉面，捻瑶簪，无言泪满襟。
银箭落，霜华薄，墙外晓鸡咿喔。
听咐嘱，恶情悰，断肠西复东。', '', '[]', '548ab1af-4a3b-4b38-a1b9-d85c8548d6d1', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·蕙风芝露', '孙光宪', '蕙风芝露，坛际残香轻度。
蕊珠宫，苔点分圆碧，桃花践破红。
品流巫峡外，名籍紫微中。
真侣墉城会，梦魂通。', '', '[]', '00852222-a1aa-478f-8e6c-2351a3e3d32b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·淡花瘦玉', '孙光宪', '淡花瘦玉，依约神仙妆束。
佩琼文，瑞露通宵贮，幽香尽日焚。
碧纱笼绛节，黄藕冠浓云。
勿以吹箫伴，不同群。', '', '[]', '4ac18ba2-30f7-43e7-835b-26d463ce26d8', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '风流子·茅舍槿篱溪曲', '孙光宪', '茅舍槿篱溪曲，鸡犬自南自北。
菰叶长，水葓开，门外春波涨绿。
听织，声促，轧轧鸣梭穿屋。', '', '[]', '247ab777-37a1-4130-8c87-0a24164031ca', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '风流子·楼倚长衢欲暮', '孙光宪', '楼倚长衢欲暮，簪见神仙伴侣。
微傅粉，拢梳头，隐映画帘开处。
无语，无绪，慢曳罗裙归去。', '', '[]', '95529585-9054-4dec-af98-597af7543b5f', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '风流子·金络玉衔嘶马', '孙光宪', '金络玉衔嘶马，系向绿杨阴下。
朱户掩，绣帘垂，曲院水流花谢。
欢罢，归也，犹在九衢深夜。', '', '[]', '2e7e0729-5e02-4307-8d88-399b72d802e4', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '定西番·鸡禄山前游骑', '孙光宪', '鸡禄山前游骑，边草白，朔天明，马蹄轻。
鹊面弓离短韔，弯来月欲成。
一只鸡鹘云外，晓鸿惊。', '', '[]', 'e9ba402c-ec0a-4f67-8055-53b94b44e2bc', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '定西番·帝子枕前秋夜', '孙光宪', '帝子枕前秋夜，霜幄冷，月华明，正三更。
何处戍楼寒笛，梦残闻一声。
遥想汉关万里，泪纵横。', '', '[]', '5d42234a-16bb-44aa-95fe-6cc9cc778d18', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河满子·冠剑不随君去', '孙光宪', '冠剑不随君去，江河还共恩深。
歌袖半遮眉黛惨，泪珠旋滴衣襟。
惆怅云愁雨怨，断魂何处相寻。', '', '[]', '98bf7ec6-49dc-4a6f-9ca3-d23f06451abb', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '玉蝴蝶·春欲尽', '孙光宪', '春欲尽，景仍长，满园花正黄。
粉翘两悠飏，翩翩过短墙。
鲜飙暖，牵游伴，飞去立残芳。
无语对萧娘，舞衫沉麝香。', '', '[]', '7c6a9da3-b818-4c15-9e42-13243d094156', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '八拍蛮·孔雀尾拖金线长', '孙光宪', '孔雀尾拖金线长，怕人飞起入丁香。
越女沙头争拾翠，相呼归去背斜阳。', '', '[]', 'b8fb888d-4578-4c79-8da1-3bcc9123c953', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '竹枝·门前春水白苹花', '孙光宪', '门前春水（竹枝）白苹花（女儿），岸上无人（竹枝）小艇斜（女儿）。
商女经过（竹枝）江欲暮（女儿），散抛残食（竹枝）饲神鸦（女儿）。', '', '[]', 'b11b0be3-b859-4322-aa82-ef48af230eb6', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '竹枝·乱绳千结绊人深', '孙光宪', '乱绳千结（竹枝）绊人深（女儿），越罗万丈（竹枝）表长寻（女儿）。
杨柳在身（竹枝）垂意绪（女儿），藕花落尽（竹枝）见莲心（女儿）。', '', '[]', '20f43cb4-0de1-4dc9-8ca4-99006f570926', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '思帝乡·如何', '孙光宪', '如何？遣情情更多。
永日水堂帘下，敛羞蛾。
六幅罗裙窣地，微行曳碧波。
看尽满地疏雨，打团荷。', '', '[]', '89dfbe34-6ee7-4ca0-a74b-4d4ca4159d91', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '上行杯·草草离亭鞍马', '孙光宪', '草草离亭鞍马，从远道，此地分襟，燕宋秦吴千万里。
无辞一醉。野棠开，江草湿。伫立，沾泣，征骑骎骎。', '', '[]', 'a7ebcccc-fe7c-49a2-b4e9-92a84ab9d0ee', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '上行杯·离棹逡巡欲动', '孙光宪', '离棹逡巡欲动，临极浦，故人相送，去住心情知不共。
金船满捧。绮罗愁，丝管咽。回别，帆影灭，江浪如雪。', '', '[]', '5f387ecb-5b18-45b9-bd67-6019817f8c30', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '谒金门·留不得', '孙光宪', '留不得！留得也应无益。
白纻春衫如雪色，扬州初去日。
轻别离，甘抛掷，江上满帆风疾。
却羡彩鸳三十六，孤鸾还一只。', '', '[]', '90fe2de0-5531-4870-bd25-bf1159f6ff4a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '思越人·古台平', '孙光宪', '古台平，芳草远，馆娃宫外春深。
翠黛空留千载恨，教人何处相寻。
绮罗无复当时事，露花点滴香泪。
惆怅遥天横绿水，鸳鸯对时飞起。', '', '[]', '4b0bb839-17b5-453f-8b12-2ff4833b19f6', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '思越人·渚莲枯', '孙光宪', '渚莲枯，宫树老，长洲废萧条。
想象玉人空处所，月明独上溪桥。
经春初败秋风起，江兰绿蕙愁死。
一片风流伤心地，魂销目断西子。', '', '[]', '2fdd6697-1f75-45e7-a929-052f30e541e4', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·阊门风暖落花干', '孙光宪', '阊门风暖落花干，飞遍江城江城雪不寒。
独有晚来临水驿，闲人多凭赤栏干。', '', '[]', 'bdab43ed-5d20-4630-9b7e-30539aaa3191', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·有池有榭即蒙蒙', '孙光宪', '有池有榭即蒙蒙，浸润翻成长养功。
恰似有人长点检，着行排立向春风。', '', '[]', '01c3a43b-c571-4eff-b7dd-242e822ef535', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·根柢虽然傍浊河', '孙光宪', '根柢虽然傍浊河，无妨终日近笙歌。
骖骖金带谁堪比，还共黄莺不较多。', '', '[]', '7eaf5e38-dbcd-4d8e-a920-53a5a7ad292d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杨柳枝·万株枯槁怨亡隋', '孙光宪', '万株枯槁怨亡隋，似吊吴台各自垂。
好是淮阴明月里，酒楼横笛不胜吹。', '', '[]', '0b872dd2-33ad-441b-b7cf-8b01e3f6226e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '望梅花·数枝开与短墙平', '孙光宪', '数枝开与短墙平，见雪萼红跗相映，引起谁人边塞情。
帘外欲三更，吹断离愁月正明，空听隔江声。', '', '[]', '4439fdf4-0e24-4c1c-a46a-a9f33fa06229', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '渔歌子·草芊芊', '孙光宪', '草芊芊，波漾漾，湖边草色连波涨。
沿蓼岸，泊飘汀，天际玉轮初上。
扣舷歌，联极望，桨声伊轧知何向。
黄鹊叫，白鸥眠，谁似侬家疏旷。', '', '[]', 'a1a292cb-6688-4f80-b6e5-b1a74ba4e5d2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '渔歌子·泛流萤', '孙光宪', '泛流萤，明又灭，夜凉水冷东湾阔。
风浩浩，笛寥寥，万顷金波澄澈。
杜若洲，香郁烈，一声宿雁霜时节。
经霅水，过松江，尽属侬家日月。', '', '[]', '4ee2454c-72f3-4d80-90d7-8191309563e2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·罗裾薄薄秋波染', '魏承班', '罗裾薄薄秋波染，眉间画时山两点。
相见绮筵时，深情暗共知。
翠翘云鬓动，敛态弹金凤。
宴罢入兰房，邀入解佩珰。', '', '[]', '4b26aa86-d847-4a1a-80a2-b6d351354504', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·罗衣隐约金泥画', '魏承班', '罗衣隐约金泥画，玳筵一曲当秋夜。
声战觑人娇，云袅翠翘。
酒醺红玉软，眉翠秋山远。
绣幌麝烟沉，谁人知两心。', '', '[]', 'ffa7525b-2732-4ded-a209-6b3f278082cb', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '满宫花·雪霏霏', '魏承班', '雪霏霏，风凛凛，玉郎何处狂饮。
醉时想得纵风流，罗帐香帷鸳寝。
春朝秋夜思君甚，愁见绣屏孤枕。
少年何事负初心，泪滴缕金双衽。', '', '[]', '70884857-a8ac-499b-b05d-ebe60262729b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '木兰花·小芙蓉', '魏承班', '小芙蓉，香旖旎，碧玉堂深清似水。
闭宝匣，掩金铺，倚屏拖袖愁如醉。
迟迟好景烟花媚，曲渚鸳鸯眠锦翅。
凝然愁望静相思，一双笑靥嚬香蕊。', '', '[]', '09901577-4b70-4409-8573-85e1473a8386', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '玉楼春·寂寂画堂梁上燕', '魏承班', '寂寂画堂梁上燕，高卷翠帘横数扇。
一庭春色恼人来，满地落花红几片。
愁倚锦屏低雪面，泪滴绣罗金缕线。
好天凉月尽伤心，为是玉郎长不见。', '', '[]', '600f7b67-279e-4cc3-af9c-5ebb219170da', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '玉楼春·轻敛翠蛾呈皓齿', '魏承班', '轻敛翠蛾呈皓齿，莺啭一枝花影里。
声声清迥遏行云，寂寂画梁尘暗起。
玉斝满斟情未已，促坐王孙公子醉。
春风筵上贯珠匀，艳色韶颜娇旖旎。', '', '[]', '410c9c4c-0ec7-4131-8049-ccae4df6222b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '诉衷情·高歌宴罢月初盈', '魏承班', '高歌宴罢月初盈，诗情引恨情。
烟露冷，水流轻，思想梦难成。
罗帐袅香平，恨频生。
思君无计睡还醒，隔层城。', '', '[]', 'fd154d8c-1245-4df5-8537-76055b936b73', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '诉衷情·春深花簇小楼台', '魏承班', '春深花簇小楼台，风飘锦绣开。
新睡觉，步香阶，山枕印红腮。
鬓乱坠金钗，语檀偎。
临行执手重重嘱，几千回。', '', '[]', '32f84125-375c-427c-8628-bc7ead2409b5', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '诉衷情·银汉云晴玉漏长', '魏承班', '银汉云晴玉漏长，蛩声悄画堂。
筠簟冷，碧窗凉，红蜡泪飘香。
皓月泻寒光，割人肠。
那堪独自步池塘，对鸳鸯。', '', '[]', 'e39195e6-a9e8-4896-ba46-f7f33888c213', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '诉衷情·金风轻透碧窗纱', '魏承班', '金风轻透碧窗纱，银釭焰影斜。
倚枕卧，恨何赊，山掩小屏霞。
云雨别吴娃，想容华。
梦成几度绕天涯，到君家。', '', '[]', '30191e1d-47ff-4452-aa09-6cba9b22ebd1', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '诉衷情·春情满眼脸红绡', '魏承班', '春情满眼脸红绡，娇妒索人饶。
星靥小，玉珰摇，几共醉春朝。
别后忆纤腰，梦魂劳。
如今风叶又萧萧，恨迢迢。', '', '[]', 'afb66189-85e4-496a-87b3-709f7a568a24', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '生查子·烟雨晚晴天', '魏承班', '烟雨晚晴天，零落花无语。
难话此时心，梁燕双来去。
琴韵对薰风，有恨和情抚。
肠断断弦频，泪滴黄金缕。', '', '[]', '40f9db24-e2ee-48cd-a716-8ba1b3777999', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '生查子·寂寞画堂空', '魏承班', '寂寞画堂空，深夜垂罗幕。
灯暗锦屏欹，月冷珠帘薄。
愁恨梦难成，何处贪欢乐。
看看又春来，还是长萧索。', '', '[]', '36361eff-59e3-472b-8948-97573053846b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '黄钟乐·池塘烟暖草萋萋', '魏承班', '池塘烟暖草萋萋。
惆怅闲宵，含恨愁坐，思堪迷。
遥想玉人情事远，音容浑似隔桃溪。
偏记同欢秋月低，帘外论心，花畔和醉，暗相携。
何事春来君不见，梦魂长在锦江西。', '', '[]', 'fd851341-a7eb-4456-a664-41f6aedf1348', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '渔歌子·柳如眉', '魏承班', '柳如眉，云似发。
姣绡雾縠笼香雪。
梦魂惊，钟漏歇，窗外晓莺残月。
几多情，无处说，落花飞絮清明节。
少年郎，容易别，一去音书断绝。', '', '[]', 'd66ca747-613f-4963-89cf-189c5db65997', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·金锁重门荒苑静', '鹿虔扆', '金锁重门荒苑静，绮窗愁对秋空。
翠华一去寂无踪，玉楼歌吹，声断已随风。
烟月不知人事改，夜阑还照深宫。
藕花相向野塘中，暗伤亡国，清露泣香红。', '', '[]', '8201199a-4405-4516-bd66-d636ac166e10', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·无赖晓莺惊梦断', '鹿虔扆', '无赖晓莺惊梦断，起来残醉初醒。
映窗丝柳袅烟青，翠帘慵卷，约砌杏花零。
一自玉郎游冶去，莲凋月惨仪形。
暮天微雨洒闲庭，手挼裙带，无语倚云屏。', '', '[]', '14a8b7b0-29f0-4f3a-a069-537fcfa61792', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·凤楼琪树', '鹿虔扆', '凤楼琪树，惆怅刘郎一去，正春深。
洞里愁空结，人间信莫寻。
竹疏斋殿迥，松密醮坛阴。
倚云低首望，可知心。', '', '[]', '625aece3-c140-4db4-9e49-2319f793437e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·步虚坛上', '鹿虔扆', '步虚坛上，绛节霓旌相向，引真仙。
玉佩摇蟾影，金炉袅麝烟。
露浓霜简湿，风紧羽衣偏。
欲留难得住，却归天。', '', '[]', '97d850f0-05f6-41ae-915a-0dcd5fc43787', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '思越人·翠屏欹', '鹿虔扆', '翠屏欹，银烛背，漏残清夜迢迢。
双带绣窠盘锦荐，泪浸花暗香消。
珊瑚枕腻鸦鬟乱，玉纤慵整云散。
若是适来新梦见，离肠怎不千断。', '', '[]', '9df49c03-27c4-493a-b110-c64c63bcdc30', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·卷荷香淡浮烟渚', '鹿虔扆', '卷荷香淡浮烟渚，绿嫩擎新雨。
绣窗疏透晓风情，象床珍簟冷光轻，水纹平。
九疑黛色屏斜掩，枕上眉心敛。
不堪相望病将成，钿昏檀粉泪纵横，不胜情。', '', '[]', '41cbf2f6-cb81-4b08-adbf-327cebb8829a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·粉融红腻莲房绽', '阎选', '粉融红腻莲房绽，脸动双波慢。
小鱼衔玉鬓钗横，石榴裙染象纱轻，转娉婷。
偷期锦浪荷深处，一梦云兼雨。
臂留檀印齿痕香，深秋不寐漏初长，尽思量。', '', '[]', 'c470c409-18ac-4a30-b36e-fcaf1b897b8c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·楚腰蛴领团香玉', '阎选', '楚腰蛴领团香玉，鬓叠深深绿。
月蛾星眼笑微嚬，柳妖桃艳不胜春，晚妆匀。
水纹簟青纱帐，雾罩秋波上。
一枝娇卧醉芙蓉，袅宵不得与君同，恨忡忡。', '', '[]', 'd15a9751-c5af-47ec-a17f-1ce83e73f96d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·雨停荷芰逗浓香', '阎选', '雨停荷芰逗浓香，岸边蝉噪垂杨。
物华空有旧池塘，不逢仙子，何处梦襄王。
珍簟对欹鸳枕冷，此来尘暗凄凉。
欲凭危槛恨偏长，藕花珠缀，犹似汗凝妆。', '', '[]', '84f2032a-f048-4cf3-9a03-2d3d5b55f542', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·十二高峰天外寒', '阎选', '十二高峰天外寒，竹梢轻拂仙坛。
宝衣行雨在云端，画帘深殿，香雾冷风残。
欲问楚王何处去？翠屏犹掩金鸾。
猿啼明月照空滩，孤舟行客，惊梦亦艰难。', '', '[]', '529df102-dc39-42fd-a1ca-f4bcf3f59d0f', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·寂寞流苏冷绣茵', '阎选', '寂寞流苏冷绣茵，倚屏山枕惹香尘，小庭花露泣浓香。
刘阮信非仙洞客，嫦娥终是月中人，此生无路访东邻。', '', '[]', '3df9fef3-0c5f-4090-aaf2-791454248240', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '八拍蛮·云锁嫩黄烟柳细', '阎选', '云锁嫩黄烟柳细，风吹红蒂雪梅残。
光景不胜闺阁恨，行行坐坐黛眉攒。', '', '[]', '7297dbb1-f7a8-431e-b7b0-a34fc92782e8', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '八拍蛮·愁锁黛眉烟易惨', '阎选', '愁锁黛眉烟易惨，泪飘红脸粉难匀。
憔悴不知缘底事，遇人推道不宜春。', '', '[]', 'bea3bcf4-7693-480c-9537-9a337a321ac0', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·秋雨', '阎选', '秋雨，秋雨，无昼无夜，滴滴霏霏。
暗灯凉簟怨分离，妖姬，不胜悲。
西风稍急喧窗竹，停又续，腻脸悬双玉。
几回邀约雁来时，违期，雁归，人不归。', '', '[]', '2405b224-d28f-45ee-949c-af2eeb0251b2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·一番荷芰生池沼', '尹鹗 六首', '一番荷芰生池沼，槛前风送馨香。
昔年于此伴萧娘，相偎伫立，牵惹叙衷肠。
时逞笑容无限态，还如菡萏争芳。
别来虚遣思悠飏，慵窥往事，金锁小兰房。', '', '[]', 'aacca3e5-ba03-4546-bb9e-e620678b6ae7', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·深秋寒夜银河静', '尹鹗 六首', '深秋寒夜银河静，月明深院中庭。
西窗幽梦等闲成，逡巡觉后，特地恨难平。
红烛半消残焰短，依稀暗背银屏。
枕前何事最伤情，梧桐叶上，点点露珠零。', '', '[]', '3392b342-efbd-424a-a14c-3fa0e7754afd', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '满宫花·月沉沉', '尹鹗 六首', '月沉沉，人悄悄，一炷后庭香袅。
风流帝子不归来，满地禁花慵扫。
离恨多，相见少，何处醉迷三岛。
漏清宫树子规啼，愁锁碧窗春晓。', '', '[]', '05fc2c19-7655-4c98-b612-7087d398e157', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '杏园芳·严妆嫩脸花明', '尹鹗 六首', '严妆嫩脸花明，教人见了关情。
含羞举步越罗轻，称娉婷。
终朝咫尺窥香阁，迢遥似隔层城。
何时休遣梦相萦，入云屏。', '', '[]', '9f861efc-b68a-4818-8e02-e8c485cbca3d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '醉公子·暮烟笼藓砌', '尹鹗 六首', '暮烟笼藓砌，戟门犹未闭。
尽日醉寻春，归来月满身。
离鞍偎绣袂，坠巾花乱缀。
何处恼佳人，檀痕衣上新。', '', '[]', 'ea2e9684-17d4-46a1-95d4-624adc8a2496', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·陇云暗合秋天白', '尹鹗 六首', '陇云暗合秋天白，俯窗独坐窥烟陌。
楼际角重吹，黄昏方醉归。
荒唐难共语，明日还应去。
上马出门时，金鞭莫与伊。', '', '[]', '321c0621-208b-4dc1-a3ad-fba62f360a60', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·春暮黄莺下砌前', '毛熙震', '春暮黄莺下砌前，水晶帘影露珠悬，绮霞低映晚晴天。
弱柳万条垂翠带，残红落地碎香钿，蕙风飘荡散轻烟。', '', '[]', 'f900902f-56a8-44dc-8a18-fb479fc705ef', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·花榭香红烟景迷', '毛熙震', '花榭香红烟景迷，满庭芳草绿萋萋，金铺闲掩绣帘低。
紫燕一双娇语碎，翠屏十二晚峰齐，梦魂消散醉空闺。', '', '[]', '3ac23de5-04be-4e8b-b061-c97dc1163930', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·晚起红房醉欲消', '毛熙震', '晚起红房醉欲消，绿鬟云散袅金翘，雪香花语不胜娇。
好是向人柔弱处，玉纤时急绣裙腰，春心牵惹转无聊。', '', '[]', '77db328b-abff-414b-bb6d-811464f81adf', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·一只横钗坠髻丛', '毛熙震', '一只横钗坠髻丛，静眠珍簟起来慵，绣罗红嫩抹酥胸。
羞敛细蛾魂暗断，困迷无语思犹浓，小屏香霭碧山重。', '', '[]', '7cf16c37-c62f-43df-944b-f19940b8edc0', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·云薄罗裙绶带长', '毛熙震', '云薄罗裙绶带长，满身新裛瑞龙香，翠钿斜映艳梅妆。
佯不觑人空婉约，笑和娇语太猖狂，忍教牵恨暗形相。', '', '[]', '20ecc594-3856-4189-a9b6-dc2b361f09e5', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·碧玉冠轻袅燕钗', '毛熙震', '碧玉冠轻袅燕钗，捧心无语步香阶，缓移弓底绣罗鞋。
暗想欢娱何计好，岂堪期约有时乖，日高深院正忘怀。', '', '[]', 'b93dc416-6369-4da6-9ef2-35298f85194e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·半醉凝情卧绣茵', '毛熙震', '半醉凝情卧绣茵，睡容无力卸罗裙，玉笼鹦鹉厌听闻。
慵整落钗金翡翠，象梳欹鬓月生云，锦屏销幌麝烟熏。', '', '[]', 'ab96b09f-4c8e-4439-ba83-0670dfa0f458', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·南齐天子宠婵娟', '毛熙震', '南齐天子宠婵娟，六宫罗绮三千。
潘妃娇艳独芳妍，椒房兰洞，云雨降神仙。
纵态迷欢心不足，风流可惜当年。
纤腰婉约步金莲，妖君倾国，犹自至今传。', '', '[]', '1eaeebcb-402f-49f2-9148-e926643fcf99', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·幽闺欲曙闻莺啭', '毛熙震', '幽闺欲曙闻莺啭，红窗月影微明。
好风频谢落花声，隔帷残烛，犹照绮屏筝。
绣被锦茵眠玉暖，炷香斜袅烟轻。
淡蛾羞敛不胜情，暗思闲梦，何处逐云行。', '', '[]', '08a14260-cacf-418a-9c83-2f0a5e164bca', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子·秋色清', '毛熙震', '秋色清，河影淡，深户烛寒光暗。
绡幌碧，锦衾红，博山香炷融。
更漏咽，蛩鸣切，满院霜华如雪。
新月上，薄云收，映帘悬玉钩。', '', '[]', '0c105817-bcb1-4243-a66c-79c50847e2b2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '更漏子·烟月寒', '毛熙震', '烟月寒，秋夜静，漏转金壶初永。
罗幕下，绣屏空，灯花结碎红。
人悄悄，愁无了，思梦不成难晓。
长忆得，与郎期，窃香私语时。', '', '[]', 'e57164ea-a149-4849-9fa5-100b08d2f703', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·碧桃红杏', '毛熙震', '碧桃红杏，迟日媚笼光影，彩霞深。
香暖熏莺语，风清引鹤音。
翠鬟冠玉叶，霓袖捧瑶琴。
应共吹箫侣，暗相寻。', '', '[]', '575260fe-97f1-4d04-af6c-d3c9528ebc14', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·修蛾慢脸', '毛熙震', '修蛾慢脸，不语檀心一点，小山妆。
蝉鬓低含绿，罗衣淡拂黄。
闷来深院里，闲步落花傍。
纤手轻轻整，玉炉香。', '', '[]', '51dad257-2dd5-4671-add4-f95ec7efc2a2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '清平乐·春光欲暮', '毛熙震', '春光欲暮，寂寞闲庭户。
粉蝶双双穿槛舞，帘卷晚天疏雨。
含愁独倚闺帷，玉炉烟断香微。
正是销魂时节，东风满树花飞。', '', '[]', 'd43f6877-0422-414d-9045-a4392178c960', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南歌子·远山愁黛眉', '毛熙震', '远山愁黛眉，横波慢脸明，腻香红玉茜罗轻。
深院晚堂人静，理银筝。
鬓动行云影，裙遮点屐声，娇羞爱问曲中名。
杨柳杏花时节，几多情？', '', '[]', '2d73fc20-f90f-49a2-aa99-6eb4bef9a9f2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南歌子·惹恨还添恨', '毛熙震', '惹恨还添恨，牵肠即断肠。
凝情不语一枝芳，独映画帘闲立，绣衣香。
暗想为云女，应怜傅粉郎。
晚来轻步出闺房，髻慢钗横无力，纵猖狂。', '', '[]', '3b96a1e2-2e10-4afe-885d-6aa01edab221', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河满子·寂寞芳菲暗度', '毛熙震', '寂寞芳菲暗度，岁华如箭堪惊。
缅想旧欢多少事，转添春思难平。
曲槛丝垂金柳，小窗弦断银筝。
深院空闻燕语，满园闲落花轻。
一片相思休不得，忍教长日愁生。
谁见夕阳孤梦，觉来无限伤情。', '', '[]', '58216fd2-24cc-4620-a0b7-04670440816c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河满子·无语残妆淡薄', '毛熙震', '无语残妆淡薄，含羞亸袂轻盈。
几度香闺眠过晓，绮窗疏日微明。
云母帐中偷惜，水晶枕上初惊。
笑靥嫩疑花坼，愁眉翠敛山横。
相望只教添怅恨，整鬟时见纤琼。
独倚朱扉闲立，谁知别有深情。', '', '[]', '3aee71c5-7336-4baf-8a4f-3055a73ac915', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '小重山·梁燕双飞画阁前', '毛熙震', '梁燕双飞画阁前，寂寥多少恨，懒孤眠。
晓来闲处想君怜，红罗帐，金鸭冷沉烟。
谁信损婵娟，倚屏啼玉箸，湿香钿。
四肢无力上秋千，群花谢，愁对艳阳天。', '', '[]', '8d620c2f-786d-454e-975d-0afddc448f10', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '定西番·苍翠浓阴满院', '毛熙震', '苍翠浓阴满院，莺对语，蝶交飞，戏蔷薇。
斜日倚栏风好，余香出绣衣。
未得玉郎消息，几时归。', '', '[]', '460eca52-0e35-4b75-a985-9460a25ef622', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '木兰花·掩朱扉', '毛熙震', '掩朱扉，钩翠箔，满院莺声春寂寞。
匀粉泪，恨檀郎，一去不归花又落。
对斜晖，临小阁，前事岂堪重想着。
金带冷，画屏幽，宝帐慵熏兰麝薄。', '', '[]', 'f0fddd8c-7c53-44cb-a7ed-38ccd72b6085', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '后庭花·莺啼燕语芳菲节', '毛熙震', '莺啼燕语芳菲节，瑞庭花发。
昔时欢宴歌声揭，管弦清越。
自从陵谷追游歇，画梁尘黦。
伤心一片如圭月，闲锁宫阙。', '', '[]', 'c57c02f2-8394-4ac0-bab2-6aba74e5f9e4', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '后庭花·轻盈舞妓含芳艳', '毛熙震', '轻盈舞妓含芳艳，竞妆新脸。
步摇珠翠修蛾敛，腻鬟云染。
歌声慢发开檀点，绣衫斜掩。
时将纤手匀红脸，笑招金靥。', '', '[]', '7527e621-1869-4fd3-a5d9-eab2b083341a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '后庭花·越罗小袖新香蒨', '毛熙震', '越罗小袖新香蒨，薄笼金钏。
倚栏无语摇轻扇，半遮匀面。
春残日暖莺娇懒，满庭花片。
怎不教人长相见，画堂深院。', '', '[]', 'd2ac94eb-69b2-465a-aabd-e3741dc09886', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·闲卧绣纬', '毛熙震', '闲卧绣纬，慵想万般情宠。
锦檀偏，翘股重，翠云欹。
暮天屏上春山碧，映香烟雾隔。
蕙兰心，魂梦役，敛蛾眉。', '', '[]', '84e2d402-f792-43f7-bfbb-c93e29fa8469', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·钿匣舞鸾', '毛熙震', '钿匣舞鸾，隐映艳红修碧。
月梳斜，云鬓腻，粉香寒。
晓花微敛轻呵展，袅钗金燕软。
日初升，帘半卷，对妆残。', '', '[]', '4741363f-b4d2-4dd4-8ab4-99d5212df88e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·梨花满院飘香雪', '毛熙震', '梨花满院飘香雪，高楼夜静风筝咽。
斜月照帘帷，忆君和梦稀。
小窗灯影背，燕语惊愁态。
屏掩断香飞，行云山外归。', '', '[]', 'a3a00925-19f7-43b4-8734-d09d369ba12c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·绣帘高轴临塘看', '毛熙震', '绣帘高轴临塘看，雨翻荷芰真珠散。
残暑晚初凉，轻风渡水香。
无聊悲往事，怎奈牵情思。
光景暗相催，等闲秋又来。', '', '[]', '8bf3ddfa-48ea-492a-a120-1594fd53d413', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·天含残碧融春色', '毛熙震', '天含残碧融春色，五陵薄幸无消息。
尽日掩朱门，离愁暗断魂。
莺啼芳树暖，燕拂回塘满。
寂寞对屏山，相思醉梦间。', '', '[]', 'b8d4653d-ffc4-4133-aa98-33744c4250c5', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·入夏偏宜淡薄妆', '李珣', '入夏偏宜淡薄妆，越罗衣褪郁金黄，翠钿檀注助容光。
相见无言还有恨，几回拚却又思量，月窗香径梦悠飏。', '', '[]', 'a19ead88-a3a6-4c61-ab92-278530149c4d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·晚出闲庭看海棠', '李珣', '晚出闲庭看海棠，风流学得内家妆，小钗横戴一枝芳。
镂玉梳斜云鬓腻，缕金衣透雪肌香，暗思何事立残阳。', '', '[]', '6b5ec811-2363-486d-9713-99b17d1f5d40', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·访旧伤离欲断魂', '李珣', '访旧伤离欲断魂，无因重见玉楼人，六街微雨镂香尘。
早为不逢巫峡梦，那堪虚度锦江春，遇花倾酒莫辞频。', '', '[]', 'ec5b53be-db74-427c-9356-31fd15ab2392', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·红藕花香到槛频', '李珣', '红藕花香到槛频，可堪闲忆似花人，旧欢如梦绝音尘。
翠叠画屏山隐隐，冷铺纹簟水潾潾，断魂何处一蝉新。', '', '[]', '8fa19b8d-3f4f-4fe8-be8a-98c8adacc310', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '渔歌子·楚山青', '李珣', '楚山青，湘水绿，春风淡荡看不足。
草芊芊，花簇簇，渔艇棹歌相续。
信浮沉，无管束，钓回乘月归湾曲。
酒盈樽，云满屋，不见人间荣辱。', '', '[]', '802832b2-9af7-4c9e-a2c7-f3c23172933b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '渔歌子·荻花秋', '李珣', '荻花秋，潇湘夜，橘洲佳景如屏画。
碧烟中，明月下，小艇垂纶初罢。
水为乡，篷作舍，鱼羹稻饭常餐也。
酒盈杯，书满架，名利不将心挂。', '', '[]', '5e0252ab-ec06-4008-bb5e-920a1242cb58', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '渔歌子·柳垂丝', '李珣', '柳垂丝，花满树，莺啼楚岸春山暮。
棹轻舟，出深浦，缓唱渔歌归去。
罢垂纶，还酌醑，孤村遥指云遮处。
下长汀，临浅渡，惊起一行沙鹭。', '', '[]', 'ac9f5d99-335e-4487-aa60-8635aa9cc55a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '渔歌子·九疑山', '李珣', '九疑山，三湘水，芦花时节秋风起。
水云间，山月里，棹月穿云游戏。
鼓清琴，倾绿蚁，扁舟自得逍遥志。
任东西，无定止，不议人间醒醉。', '', '[]', '65fc4479-d37e-46fd-bca4-e9b1838a1253', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '巫山一段云·有客经巫峡', '李珣', '有客经巫峡，停桡向水湄。
楚王曾此梦瑶姬，一梦杳无期。
尘暗珠帘卷，香消翠帷垂。
西风回首不胜悲，暮雨洒空祠。', '', '[]', 'ca6dede3-e2a3-4453-a471-db93e9a17ad9', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '巫山一段云·古庙依青嶂', '李珣', '古庙依青嶂，行宫枕碧流。
水声山色锁妆楼，往事思悠悠。
云雨朝还暮，烟花春复秋。
啼猿何必近孤舟，行客自多愁。', '', '[]', '80fe57a0-62c0-4cd2-9bbd-8db8f6d0a4dc', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·帘卷池心小阁虚', '李珣', '帘卷池心小阁虚，暂凉闲步徐徐。
芰荷经雨半凋疏，拂堤垂柳，蝉噪夕阳余。
不语低鬟幽思远，玉钗斜坠双鱼。
几回偷看寄来书，离情别恨，相隔欲何如。', '', '[]', '390fec23-1bbd-4a91-a4af-6774d40c9ee0', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·莺报帘前暖日红', '李珣', '莺报帘前暖日红，玉炉残麝犹浓。
起来闺思尚疏慵，别愁春梦，谁解此情悰。
强整娇姿临宝镜，小池一朵芙蓉。
旧欢无处再寻踪，更堪回顾，屏画九疑峰。', '', '[]', '0160f191-4ec0-4c4c-bd0b-5e9106b60a56', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·烟漠漠', '李珣', '烟漠漠，雨凄凄，岸花零落鹧鸪啼。
远客扁舟临野渡，思乡处，潮退水平春色暮。', '', '[]', '3a7b72cf-61f5-4bac-9915-14ac76bdc421', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·兰棹举', '李珣', '兰棹举，水纹开，竞携藤笼采莲来。
回塘深处遥相见，邀同宴，绿酒一卮红上面。', '', '[]', 'a4599b58-ca1f-4e5b-aed0-bbf38b411962', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·归路近', '李珣', '归路近，扣舷歌，采真珠处水风多。
曲岸小桥山月过，烟深锁，豆蔻花垂千万朵。', '', '[]', '4843014b-220d-430c-ae61-1be67ba326a1', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·乘彩舫', '李珣', '乘彩舫，过莲塘，棹歌惊起睡鸳鸯。
游女带香偎伴笑，争窈窕，竞折团荷遮晚照。', '', '[]', 'd2dc06b5-01ba-4394-8c7e-734b56b60545', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·倾绿蚁', '李珣', '倾绿蚁，泛红螺，闲邀女伴簇笙歌。
避暑信船轻浪里，闲游戏，夹岸荔枝红蘸水。', '', '[]', '23687d0b-81da-4b9b-a4a8-353299951641', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·云带雨', '李珣', '云带雨，浪迎风，钓翁回棹碧湾中。
春酒香熟鲈鱼美，谁同醉？
缆却扁舟篷底睡。', '', '[]', '228f5b32-5983-4061-889f-c5fdc79c7b4c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·沙月静', '李珣', '沙月静，水烟轻，芰荷香里夜船行。
绿鬟红脸谁家女？
遥相顾，缓唱棹歌极浦去。', '', '[]', '7d83df21-e43b-4885-90e7-d74ce373b4cb', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·渔市散', '李珣', '渔市散，渡船稀，越南云树望中微。
行客待湘天欲暮，送春浦，愁听猩猩啼瘴雨。', '', '[]', '2cc406e9-a3de-4395-ac6e-bf609384aaf5', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·拢云髻', '李珣', '拢云髻，背犀梳，焦红衫映绿罗裙。
越王台下春风暖，药盈岸，游赏每邀邻女伴。', '', '[]', '0bfffae4-0c8a-4b85-bd23-b2a21875ca25', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '南乡子·相见处', '李珣', '相见处，晚晴天，斜桐花下越台前。
暗里回眸深属意，遗双翠，骑象背人先过水。', '', '[]', 'a068b346-50f4-4d8b-a12f-053a38340c02', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·星高月午', '李珣', '星高月午，丹桂青松深处。
醮坛开，金磬敲清露，珠幢立翠苔。
步虚声缥缈，想象思徘徊。
晓天归去路，指蓬莱。', '', '[]', 'ea2e7928-11c2-47df-8ff5-76850f63dcc8', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '女冠子·春山夜静', '李珣', '春山夜静，愁闻洞天疏磬。
玉堂虚，细雾垂珠佩，轻烟曳翠裙。
对花情脉脉，望月步徐徐。
刘阮今何处？绝来书。', '', '[]', '4e0e9a3c-f6d6-4989-9495-51b69b0f45ce', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·寂寞青楼', '李珣', '寂寞青楼，风触绣帘珠碎撼。
月朦胧，花暗淡，锁春愁。
寻想往事依稀梦，泪脸桃红色重。
鬓欹蝉。钗坠凤，思悠悠。', '', '[]', 'c20f5d6c-56c3-4e64-b459-aeed65810f2e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·雨渍花零', '李珣', '雨渍花零，红散香凋池两岸。
别情遥，春歌断，掩银屏。
孤帆早晚离三楚，闲理钿筝愁几许？
曲中情，弦上语，不堪听。', '', '[]', 'a76607f7-ec69-4926-965e-95a596ee0f27', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·秋雨联绵', '李珣', '秋雨联绵，声散败荷丛里。
那堪深夜枕前听，酒初醒。
牵愁惹思更无停，烛暗香凝天欲曙。
细和烟，冷和雨，透帘旌。', '', '[]', 'c0c322fd-32b6-4863-b32d-1898e5a13d2c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '酒泉子·秋月婵娟', '李珣', '秋月婵娟，皎洁碧纱窗外。
照花穿竹冷沉沉，印池心。
凝露滴，砌蛩吟，惊觉谢娘残梦。
夜深斜傍枕前来，影徘徊。', '', '[]', 'a16c85b3-38f6-4aef-987e-5aba89995835', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '望远行·春日迟迟思寂寥', '李珣', '春日迟迟思寂寥，行客关山路遥。
琼窗时听语莺娇，柳丝牵恨一条条。
休晕绣，罢吹萧，貌逐残花暗凋。
同心犹结旧裙腰，忍辜风月度良宵。', '', '[]', '20b1c6a3-54ee-4e75-b34a-fc043c9fdc05', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '望远行·露滴幽庭落叶时', '李珣', '露滴幽庭落叶时，愁聚萧娘柳眉。
玉郎一去负佳期，水云迢递雁书迟。
屏半掩，枕斜欹，蜡泪无言对垂。
吟蛩断续漏频移，入窗明月鉴空帷。', '', '[]', '4eee26b0-5af4-4fa5-ab7d-9eddfbad395b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·回塘起波纹细', '李珣', '回塘起波纹细，剌桐花里门斜闭。
残日照平芜，双双飞鹧鸪。
征帆何处客，相见还相隔。
不语欲魂消，望中烟水遥。', '', '[]', '528aa55c-72b3-46ac-bba0-0332a64a081b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·等闲将度三春景', '李珣', '等闲将度三春景，帘垂碧砌参差影。
曲槛日初斜，杜鹃啼落花。
恨君容易处，又话潇湘去。
凝思倚屏山，泪流红脸斑。', '', '[]', 'd8f9f8ab-2b8d-4910-abd5-55a3a5369f26', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·隔帘微雨双飞燕', '李珣', '隔帘微雨双飞燕，砌花零落红深浅。
捻得宝筝凋，心随征棹遥。
楚天云外路，动便经年去。
香断画屏深，旧欢何处寻。', '', '[]', 'aa6babc2-704b-453d-a5a7-f0f9ac8a8cb2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '西溪子·金缕翠钿浮动', '李珣', '金缕翠钿浮动，妆罢小窗圆梦。
日高时，春已老，人来到，满地落花慵扫。
无语倚屏风，泣残红。', '', '[]', '9fa41f67-f49c-4ac2-809f-a0b88967629f', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·金笼莺报天将曙', '李珣', '金笼莺报天将曙，惊起分飞处。
夜来潜与玉郎期，多情不觉酒醒迟，失归期。
映花避月遥相送，腻髻偏凤。
欲回娇步入香闺，倚屏无语捻云篦，翠眉低。', '', '[]', 'e12c246c-2b35-4e58-8c84-a788f9c27886', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·去去', '李珣', '去去，何处？迢迢巴楚，山水相连。
朝云暮雨，依旧十二峰前，猿声到客船。
愁肠岂异丁香结？因离别，故国音书绝。
想佳人花下，对明月春风，恨应同。', '', '[]', '22f729d4-db0a-4341-b23f-f9b28a046d8b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '河传·春暮', '李珣', '春暮，微雨。送君南浦，愁敛双蛾。
落花深处，啼鸟似逐离散，粉檀珠泪和。
临流更把同心结，情哽咽，后会何时节？
不堪回首，相望已隔汀洲，檐声幽。', '', '[]', 'f14de006-7095-4a53-8c6c-099e195660a7', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '应天长·一钩初月临妆镜', '李璟', '一钩初月临妆镜，蝉鬓凤钗慵不整。
重帘静，层楼迥，惆怅落花风不定。
柳堤芳草径，梦断辘轳金井。
昨夜更阑酒醒，春愁过却病。', '', '[]', '2b77597b-d3de-4e73-9f89-5637393c8dea', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '望远行·碧砌花光照眼', '李璟', '碧砌花光照眼明，朱扉长日镇长扃。
馀寒欲去梦难成，炉香烟冷自亭亭。
辽阳月、秣陵砧，不传消息但传情。
黄金台下忽然惊，征人归日二毛生！', '', '[]', '6d3f1345-bf8c-4397-b00f-14ffd647cd97', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '摊破浣溪沙·手卷真珠上玉钩', '李璟', '手卷真珠上玉钩，依前春恨锁重楼。
风里落花谁是主？思悠悠。
青鸟不传云外信，丁香空结雨中愁。
回首绿波三楚暮，接天流。', '', '[]', 'ae3bc926-d69f-46ed-a462-76a38e94bab8', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '摊破浣溪沙·菡萏香销翠叶残', '李璟', '菡萏香销翠叶残，西风愁起绿波间。
还与韶光共憔悴，不堪看！
细雨梦回鸡塞远，小楼吹彻玉笙寒。
多少泪珠无限恨，倚栏杆。', '', '[]', '3e2743f0-f14e-486b-b895-b38757cbc1d4', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·春花秋月何时了', '李煜', '春花秋月何时了，往事知多少？
小楼昨夜又东风，故国不堪回首月明中。
雕栏玉砌应犹在，只是朱颜改。
问君能有几多愁？恰似一江春水向东流。', '', '[]', '6d92502c-d5d1-44ad-8462-fd05f34399ad', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '乌夜啼·昨夜风兼雨', '李煜', '昨夜风兼雨，帘帏飒飒秋声。
烛残漏断频攲枕，起坐不能平。
世事漫随流水，算来一梦浮生。
醉乡路稳宜频到，此外不堪行。', '', '[]', 'b1518a9f-aece-4fda-884c-36479f885347', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '一斛珠·晓妆初过', '李煜', '晓妆初过，沈檀轻注些儿个。
向人微露丁香颗。
一曲清歌，暂引樱桃破。
罗袖裛残殷色可，杯深旋被香醪涴。
绣床斜凭娇无那。
烂嚼红茸，笑向檀郎唾。', '', '[]', '57f0f581-90b3-4c01-bf15-975755d20c3e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '子夜歌·人生愁恨何能免', '李煜', '人生愁恨何能免，销魂独我情何限。
故国梦重归，觉来双泪垂。
高楼谁与上？长记秋晴望。
往事已成空，还如一梦中。', '', '[]', '507a2ba9-fedc-4964-a7fe-643756af8d5e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '临江仙·樱桃落尽春归去', '李煜', '樱桃落尽春归去，蝶翻轻粉双飞。
子规啼月小楼西。
玉钩罗幕，惆怅暮烟垂。
别巷寂寥人散后，望残烟草低迷。
炉香闲袅凤凰儿。
空持罗带，回首恨依依。', '', '[]', '2fc6e973-75a8-49d8-bcb0-66d2521287ae', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '望江南·多少泪', '李煜', '多少泪，断脸复横颐。
心事莫将和泪说，凤笙休向泪时吹。
肠断更无疑。', '', '[]', 'bca183ea-d10c-44f5-999e-6b991205b5da', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '望江南·多少恨', '李煜', '多少恨，昨夜梦魂中。
还似旧时游上苑，车如流水马如龙。
花月正春风。', '', '[]', '1621dfc3-2875-4042-b87e-a87f34797f06', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '清平乐·别来春半', '李煜', '别来春半，触目柔肠断。
砌下落梅如雪乱，拂了一身还满。
雁来音信无凭，路遥归梦难成。
离恨恰如春草，更行更远还生。', '', '[]', '4cc2e04a-830c-48b1-8cdc-7e34c5a7d18c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '采桑子·庭前春逐红英尽', '李煜', '庭前春逐红英尽，舞态徘徊。
细雨霏微，不放双眉时暂开。
绿窗冷静芳英断，香印成灰。
可奈情怀，欲睡朦胧入梦来。', '', '[]', 'ea957d91-b3cc-4416-9b55-076bb6b3f6c2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '喜迁莺·晓月坠', '李煜', '晓月坠，宿烟微，无语枕频倾攲。
梦回芳草思依依，天远雁声稀。
啼莺散，馀花乱，寂寞画堂深院。
片红休扫尽从伊，留待舞人归。', '', '[]', '96a5c13a-3256-493c-a11c-7fa28b7ccabe', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '蝶恋花·遥夜亭皋闲信步', '李煜', '遥夜亭皋闲信步。
乍过清明，早觉伤春暮。
数点雨声风约住，朦胧淡月云来去。
桃李依依春暗度。
谁在秋千，笑里低低语？
一片芳心千万绪，人间没个安排处。', '', '[]', 'aa48fad1-5143-4e33-818b-889c71d62dad', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '相见欢·无言独上西楼', '李煜', '无言独上西楼，月如钩。
寂寞梧桐深院，锁清秋。
剪不断，理还乱，是离愁。
别是一般滋味，在心头。', '', '[]', '2eaf327e-4fc7-437b-9b96-ce24d342a9d1', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '相见欢·林花谢了春红', '李煜', '林花谢了春红，太匆匆！
无奈朝来寒雨晚来风。
胭脂泪，留人醉，几时重？
自是人生长恨水长东！', '', '[]', '4c21b103-721a-4123-9195-ee946200510a', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '长相思·云一涡', '李煜', '云一涡，玉一梭。
澹澹衫儿薄薄罗，轻颦双黛螺。
秋风多，雨相和。
帘外芭蕉三两窠。夜长人奈何？', '', '[]', '11514ff2-00f6-44cf-ae40-821cbfc73830', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '捣练子令·深院静', '李煜', '深院静，小庭空，断续寒砧断续风。
无奈夜长人不寐，数声和月到帘栊。', '', '[]', '601bb88e-6f6d-4201-9e3e-6e23d555e18c', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·红日已高三丈透', '李煜', '红日已高三丈透，金炉次第添香兽。
红锦地依随步皱。
佳人舞点金钗溜，酒恶时拈花蕊嗅。
别殿遥闻箫鼓奏。', '', '[]', '68be1431-55ab-443e-8a52-76c7eb6607c0', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '望江梅·闲梦远', '李煜', '闲梦远，南国正芳春。
船上管弦江面绿，满城飞絮滚轻尘。
忙杀看花人。
闲梦远，南国正清秋。
千里江山寒色暮，芦花深处泊孤舟。
笛在月明楼。', '', '[]', '58fe2195-4a22-407e-942b-fd63a7287703', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·花明月暗笼轻雾', '李煜', '花明月暗笼轻雾，今宵好向郎边去。
铲袜步香阶，手提金缕鞋。
画堂南畔见，一晌偎人颤。
奴为出来难，教郎恣意怜。', '', '[]', 'f4d6a325-de49-4733-9bc4-7f9cd7deb4ac', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·蓬莱院闭天台女', '李煜', '蓬莱院闭天台女，画堂昼寝人无语。
抛枕翠云光，绣衣闻异香。
潜来珠琐动，惊觉银屏梦。
脸慢笑盈盈，相看无限情。', '', '[]', '1a0a00ba-281b-4dce-b5df-78ddb72cd46b', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '菩萨蛮·铜簧韵脆锵寒竹', '李煜', '铜簧韵脆锵寒竹，新声慢奏移纤玉。
眼色暗相钩，秋波横欲流。
雨云深绣户，未便谐衷素。
宴罢又成空，魂迷春梦中。', '', '[]', 'c676bd25-e493-4022-87f4-846ae21525a5', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '阮郎归·呈郑王十二弟', '李煜', '东风吹水日衔山，春来长是闲。
落花狼籍酒阑珊，笙歌醉梦间。
佩声悄，晚妆残，凭谁整翠鬟？
留连光景惜春颜，黄昏独倚栏。', '', '[]', 'cc52e008-fe41-4332-ac4a-5ac8a889ac16', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浪淘沙·往事只堪哀', '李煜', '往事只堪哀，对景难排。
秋风庭院藓侵阶。
一任珠帘闲不卷，终日谁来？
金剑已沉埋，壮气蒿莱。
晚凉天净月华开。
想得玉楼瑶殿影，空照秦淮。', '', '[]', '1bf21fc9-9f53-4817-b05e-3e39d1c391f4', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '采桑子·辘轳金井梧桐晚', '李煜', '辘轳金井梧桐晚，几树惊秋。
昼雨如愁，百尺虾须在玉钩。
琼窗梦断双蛾皱，回首边头。
欲寄鳞游，九曲寒波不溯流。', '', '[]', '150fd85c-f007-47f2-8ca1-8b091455ed61', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '虞美人·风回小院庭芜绿', '李煜', '风回小院庭芜绿，柳眼春相续。
凭栏半日独无言，依旧竹声新月似当年。
笙歌未散尊前在，池面冰初解。
烛明香暗画楼深，满鬓清霜残雪思难禁。', '', '[]', 'a2b946e4-8a7c-47b9-9fd5-00b6cf004ae2', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '玉楼春·晚妆初了明肌雪', '李煜', '晚妆初了明肌雪，春殿嫔娥鱼贯列。
笙箫吹断水云间，重按霓裳歌遍彻。
临春谁更飘香屑？醉拍栏杆情味切。
归时休放烛光红，待踏马啼清夜月。', '', '[]', '867900ae-b9b8-4d9f-be86-1a8d3b7f0f1d', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '子夜歌·寻春须是先春早', '李煜', '寻春须是先春早，看花莫待花枝老。
缥色玉柔擎，醅浮盏面清。
何妨频笑粲，禁苑春归晚。
同醉与闲评，诗随羯鼓成。', '', '[]', '386a5a63-00c9-429e-809f-3c7e112b2413', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '谢新恩·秦楼不见吹箫女', '李煜', '秦楼不见吹箫女，空馀上苑风光。
粉英含蕊自低昂。
东风恼我，才发一衿香。
琼窗梦醒留残日，当年得恨何长。
碧栏杆外映垂杨。
暂时相见，如梦懒思量。', '', '[]', '70b7d939-88ab-4490-9e23-d08b9db8ac44', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '谢新恩·樱花落尽阶前月', '李煜', '樱花落尽阶前月，象床愁倚薰笼。
远似去年今日，恨还同。
双鬟不整云憔翠，泪沾红抹胸。
何处相思苦？纱窗醉梦中。', '', '[]', 'f453befc-b86b-4388-a873-ca5ae908b1f1', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '谢新恩·庭空客散人归后', '李煜', '庭空客散人归后，画堂半掩珠帘。
林风淅淅夜厌厌。
小楼新月，回首自纤纤。
春光镇在人空老，新愁往恨何穷！
金窗力困起还慵。
一声羌笛，惊起醉怡容。', '', '[]', '7729aef3-d743-482d-ad66-b96e6234c165', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '谢新恩·樱花落尽春将困', '李煜', '樱花落尽春将困，秋千架下归时。
漏暗斜月迟迟，花在枝。
□□□□□□□，□□□□□。
彻晓纱窗下，待来君不知。', '', '[]', 'da2f15af-a592-49e4-9b42-69f3dd4e4115', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '谢新恩·冉冉秋光留不住', '李煜', '冉冉秋光留不住，满阶红叶暮。
又是过重阳，台榭登临处。
茱萸香坠，紫菊气，飘庭户，晚烟笼细雨。
嗈嗈新雁咽寒声，愁恨年年长相侣。', '', '[]', '81f15ec2-f75c-45ec-a38b-a4517f878295', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '破阵子·四十年来家国', '李煜', '四十年来家国，三千里地山河。
凤阁龙楼连霄汉，玉树琼枝作烟萝，几曾识干戈？
一旦归为臣虏，沈腰潘鬓销磨。
最是仓皇辞庙日，教坊犹奏别离歌，垂泪对宫娥。', '', '[]', 'a04c86e1-7aea-4bb8-b9d4-670f1ba72dd3', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浪淘沙令·帘外雨潺潺', '李煜', '帘外雨潺潺，春意阑珊。
罗衾不耐五更寒。
梦里不知身是客，一晌贪欢。
独自莫凭栏，无限江山。
别时容易见时难。
流水落花春去也，天上人间', '', '[]', '78ffef50-ec8d-4027-9f3d-a2af0b47fbaa', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·风压轻云贴水飞', '李煜', '风压轻云贴水飞，乍晴池馆燕争泥。
沈郎多病不胜衣。
沙上未闻鸿雁信，竹间时听鹧鸪啼。
此情唯有落花知。', '', '[]', '6ede5011-3bee-4776-b28b-26cd35788e41', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '长相思·一重山', '李煜', '一重山，两重山。
山远天高烟水寒，相思枫叶丹。
菊花开，菊花残。
寒雁高飞人未还，一帘风月闲。', '', '[]', '135ffe82-77ad-4ba9-8a5c-0aafd2d41d95', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '柳枝·风情渐老见春羞', '李煜', '风情渐老见春羞，到处芳魂感旧游。
多谢长条似旧识，强垂烟穗拂人头。', '', '[]', '52ed1d4c-b023-4aea-99f9-7c76e0fe7b6e', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '后庭花破子·玉树后庭前', '李煜', '玉树后庭前，瑶草妆镜边。
去年花不老，今年月又圆。
莫教偏，和月和花，大教长少年。', '', '[]', '6255c3d4-0266-4bfe-8c47-478383734731', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '三台令·不寐倦长更', '李煜', '不寐倦长更，披衣出户行。
月寒秋竹冷，风切夜窗声。', '', '[]', '4714de68-5997-445c-9e00-c15615a163ec', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '捣练子·云鬓乱', '李煜', '云鬓乱，晚妆残，带恨眉儿远岫攒。
斜托香腮春笋嫩，为谁和泪倚栏杆。', '', '[]', '45f1692b-f6d3-49ee-ae03-dad1912deb15', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '浣溪沙·转烛飘蓬一梦归', '李煜', '转烛飘蓬一梦归，欲寻陈迹怅人非。
天教心愿与身违。
待月池馆空逝水，映花楼阁谩斜晖。
登临不惜更沾衣。', '', '[]', 'd1019dd5-14fe-4b25-b259-31be49a42f60', '五代', 0);
INSERT INTO poetry (category_id, title, author, content, rhythmic, tags, origin_id, dynasty, is_featured) VALUES (13, '渔父·浪花有意千里雪', '李煜', '浪花有意千里雪，桃花无言一队春。
一壶酒，一竿身，快活如侬有几人。
一棹春风一叶舟，一纶茧缕一轻钩。
花满渚，酒满瓯，万顷波中得自由。', '', '[]', 'c0f9fefc-e371-43ce-a462-f19c0604eaa5', '五代', 0);

