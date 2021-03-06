#药肝患者表
create table medicine_liver_patient(
    id int not null auto_increment,
    identifier varchar(50),
    abbreviation varchar(10),#患者姓名拼音缩写
    name varchar(20),
    gender varchar(5),
    height float(5,2),
    weight float(5,2),
    bmi float(4,2),
    department varchar(50),#科室
    admission_date Date,#入院日期
    discharge_date Date,#出院日期
    hospitalized_number varchar(50),#住院号
    hospitalized_department varchar(50),#住院科室
    hospitalized_age int,#住院年龄
    hospital varchar(50),
    career varchar(50),#职业
    nation varchar(20),
    birthday datetime,
    complete boolean,
    hospital_id long,
    project_id long,
    primary key(id)
);

#入院诊断
create table admission_diagnosis(
	id int not null auto_increment,
	medicine_liver_patient_id int,
	diagnosis varchar(100),
	diagnosis_date Date,
	primary key(id)
);

#出院诊断
create table discharge_diagnosis(
	id int not null auto_increment,
	medicine_liver_patient_id int,
	diagnosis varchar(100),
	diagnosis_date Date,
	primary key(id)
);

#既往疾病史
create table medicine_liver_disease_history(
	id int not null auto_increment,
	patient_id int,
	other_history int,#是否存在因本次入院的其他疾病史
	past_disease int,#既往病史
    epidemic_tourism int,#疫区旅游史
    epidemic_text varchar(50),#疫区旅游史详情
    person_history varchar(30),#个人史
	complete boolean default false,
    primary key(id)
);

#与既往疾病史关联表
create table medicine_liver_disease_history_detail(
	id int not null auto_increment,
	disease_history_id int,
	disease_type varchar(50),#疾病种类
    disease_name varchar(50),#疾病名称
	existence varchar(10),#是否仍然存在
    pre_medicine varchar(50),#曾用药
	primary key(id)
);

#过敏状况
create table medicine_liver_allergy_history(
	id int not null auto_increment,
	patient_id int,
	allergy_history int,#既往过敏史
	allergen varchar(50),#过敏原
    description text,#补充说明
	complete boolean,
    primary key(id)
);

#饮酒情况
create table medicine_liver_drink(
	id int not null auto_increment,
	patient_id int,
	drink_history int,#饮酒史
	complete boolean,
	primary key(id)
);

#与饮酒情况关联表
create table medicine_liver_drink_detail(
	id int not null auto_increment,
	medicine_liver_drink_id int,
	drink_type varchar(20),#饮酒种类
	drink_quantity varchar(10),#饮酒数量
	drink_life varchar(10),#饮酒年限
	proof varchar(10),#酒精精度
	primary key(id)
);

#可疑药物
create table medicine_liver_suspected_drug(
	id int not null auto_increment,
	patient_id int,
	complete boolean,
	primary key(id)
);

#与可疑药物关联表
create table medicine_liver_suspected_drug_detail(
	id int not null auto_increment,
	medicine_liver_suspected_drug_id int,
	generic_name varchar(50),#通用名
	trade_name varchar(50),#商品名
	drug_classification varchar(50),#药物种类
	medication_method varchar(50),#用药方法
	dose varchar(10),#日剂量
	begin_date Date,#开始日期
	drug_with_drawal varchar(50),#是否停药
	drug_with_drawal_date Date,#停药日期
	decrement varchar(50),#是否减量
	drug_exposure varchar(50),#既往该药暴露史
	exposure_liver_damage varchar(50),#既往暴露引起肝损
    manufactor varchar(50),#厂家及批号
	primary key(id)
);

#症状体征
create table medicine_liver_symptoms(
	id int not null auto_increment,
	patient_id int,
	liver_injury int,#肝损伤伴随的症状体征
	weak int,#乏力
	weak_begin_date Date,#乏力出现时间
	weak_disappear_date Date,#乏力消失时间
	weak_discharge int,#乏力出院时表现
	anorexia int,#纳差
	anorexia_begin_date Date,#纳差出现时间
	anorexia_disappear_date Date,#纳差消失时间
	anorexia_discharge int,#纳差出院表现
	abdominal_distention int,#腹胀
	abdominal_distention_begin_date Date,#腹胀出现时间
	abdominal_distention_disappear_date Date,#腹胀消失时间
	abdominal_distention_discharge int,#腹胀出院表现
	jaundice int,#黄疸
	jaundice_begin_date Date,#黄疸出现时间
	jaundice_disappear_date Date,#黄疸消失时间
	jaundice_discharge int,#黄疸出院时表现
	nausea int,#恶心
	nausea_begin_date Date,#恶心出现时间
	nausea_disappear_date Date,#恶心消失时间
	nausea_discharge int,#恶心出院时表现
	vomit int,#呕吐
	vomit_begin_date Date,#呕吐出现时间
	vomit_disappear_date Date,#呕吐消失时间
	vomit_discharge int,#呕吐出院时表现
	gingival_bleeding int,#齿龈出血
	gingival_bleeding_begin_date Date,#齿龈出血出现时间
	gingival_bleeding_disappear_date Date,#齿龈出血消失时间
	gingival_bleeding_discharge int,#齿龈出血出院表现
	epistaxis int,#鼻衄
	epistaxis_begin_date Date,#鼻衄出现时间
	epistaxis_disappear_date Date,#鼻衄消失时间
	epistaxis_discharge int,#鼻衄出院时表现
	liver_pain int,#肝区疼痛
	liver_pain_begin_date Date,#肝区疼痛出现时间
	liver_pain_disappear_date Date,#肝区疼痛消失时间
	liver_pain_discharge int,#肝区疼痛出院表现
	hepatomegaly int,#肝肿大
	hepatomegaly_begin_date Date,#肝肿大出现时间
	hepatomegaly_disappear_date Date,#肝肿大消失时间
	hepatomegaly_discharge int,#肝肿大出院表现
	splenomegaly int,#脾肿大
	splenomegaly_begin_date Date,#脾肿大出现时间
	splenomegaly_disappear_date Date,#脾肿大消失时间
	splenomegaly_discharge int,#脾肿大出院表现
	fever int,#发热
	fever_begin_date Date,#发热开始时间
	fever_disappear_date Date,#发热消失时间
	fever_discharge int,#发热出院表现
	rash int,#皮疹
	rash_begin_date Date,#皮疹出现时间
	rash_disappear_date Date,#皮疹消失时间
	rash_discharge int,#皮疹出院表现
	arthralgia int,#关节痛
	arthralgia_begin_date Date,#关节痛出现时间
	arthralgia_disappear_date Date,#关节痛消失时间
	arthralgia_discharge int,#关节痛出院表现
	skin_itch int,#皮肤瘙痒
	skin_itch_begin_date Date,#皮肤瘙痒出现时间
	skin_itch_disappear_date Date,#皮肤瘙痒消失时间
	skin_itch_discharge int,#皮肤瘙痒出院表现
	complete boolean,
	primary key(id)
);

#与症状体征关联表
create table medicine_liver_symptoms_other(
	id int not null auto_increment,
	medicine_liver_symptoms_id int,
	name varchar(50),#其他体征名
	description varchar(50),#表现
	begin_date Date,#出现时间
	disappear_date Date,#消失时间
	discharge_symptoms varchar(50),#出院表现
	primary key(id)
);

#实验室检查--首次异常的生化检查
create table medicine_liver_first_abnormal_examination(
	id int not null auto_increment,
	patient_id int,
	alt varchar(20),
	alt_date Date,
	ast varchar(20),
	ast_date Date,
    tab1_check_date Date,#肝脏生化检查时间
	tab2_check_date Date,#肾功能检查时间
    tab3_check_date Date,#血糖检查时间
    tab4_check_date Date,#凝血功能检查时间
    tab5_check_date Date,#肿瘤标志物检查时间
    ggt varchar(20),
	ggt_date Date,
	alp varchar(20),
	alp_date Date,
	bile_acid varchar(20),#胆汁酸
	bile_acid_date Date,#胆汁酸检查日期
	tbil varchar(20),
	tbil_date Date,
	dbil varchar(20),
	dbil_date Date,
	tp varchar(20),
	tp_date Date,
	alb varchar(20),
	alb_date Date,
	scr varchar(20),
	scr_date Date,
	bun varchar(20),
	bun_date Date,
	plasma_glucose varchar(20),#空腹血糖
	plasma_glucose_date Date,#空腹血糖检查日期
	pt varchar(20),
	pt_date Date,
	inr varchar(20),
	inr_date Date,
	afp varchar(20),
	afp_date Date,
	remark varchar(200),#备注
    first boolean,
	complete boolean,
	primary key(id)
);

#实验室检查--所有住院生化检查（首次异常除外）
create table medicine_liver_hospital_abnormal_examination(
	id int not null auto_increment,
	patient_id int,
	alt varchar(20),
	alt_date Date,
	ast varchar(20),
	ast_date Date,
	ggt varchar(20),
	ggt_date Date,
	alp varchar(20),
	alp_date Date,
	bile_acid varchar(20),#胆汁酸
	bile_acid_date Date,#胆汁酸检查日期
	tbil varchar(20),
	tbil_date Date,
	dbil varchar(20),
	dbil_date Date,
	tp varchar(20),
	tp_date Date,
	alb varchar(20),
	alb_date Date,
	scr varchar(20),
	scr_date Date,
	urea_nitrogen varchar(20),#尿素氮
	urea_nitrogen_date Date,#尿素氮检查日期
	plasma_glucose varchar(20),#空腹血糖
	plasma_glucose_date Date,#空腹血糖检查日期
	pt varchar(20),
	pt_date Date,
	inr varchar(20),
	inr_date Date,
	afp varchar(20),
	afp_date Date,
	complete boolean,
	primary key(id)
); 

#实验室检查--排除其他肝脏疾病
create table medicine_liver_exclude_other(
	id int not null auto_increment,
	patient_id int,
	anti_hav int,
	anti_hav_date Date,
	hbsag int,
	hbsab int,
	hbcab int,
	hbeag int,
	hbeab int,
	hbvdna int,
	hbvdna_date Date,
	antihcv int,
	antihcv_date Date,
	hcvrna int,
	hcvrna_date Date,
	Mononucleosis int,#单核细胞增多症
	Mononucleosis_date Date,#单核细胞增多症检查日期
	ana int,
	ama int,
	amam2 int,
	sma int,
	lkm int,
	rheumatoid int,#类风湿因子
	rheumatoid_date Date,#类风湿因子检查日期
	ceruloplasmin int,#铜蓝蛋白
	ceruloplasmin_date Date,#铜蓝蛋白检查日期
	cytomegalovirus int,#巨细胞病毒
	ebviruses int,#EB病毒
	herpes_simplex int,#单纯疱疹病毒
    hepatitis_b_five_date Date,#乙肝五项日期
    autoimmune_antibody_date Date,#自身免疫抗体日期
    other_virus_check_date Date,#其他病毒检测时间
	remark varchar(200),
	complete boolean,
	primary key(id)	
);

#实验室检查--血常规
create table medicine_liver_routine_blood(
	id int not null auto_increment,
	patient_id int,
    routine_blood_date Date,
	wbc varchar(20),
	wbc_date Date,
	plt varchar(20),
	plt_date Date,
	hb varchar(20),
	hb_date Date,
	neutrophil varchar(20),#中性粒细胞计数
	neutrophil_date Date,#中性粒细胞计数日期
	total_hemoglobin varchar(20),#总血红蛋白浓度
	total_hemoglobin_date Date,#总血红蛋白浓度日期
	eosinophil varchar(20),#嗜酸性粒细胞计数
	eosinophil_date Date,#嗜酸性粒细胞计数日期
	remark varchar(200),#备注
	complete boolean,
	primary key(id)
);

#影像学和内窥镜检查
create table medicine_liver_imaging_endoscopy(
	id int not null auto_increment,
	patient_id int,
	liver_bultrasound int,#肝脏B超
	liver_bultrasound_date Date,#肝脏B超检查日期
	liver_bultrasound_biliary_tract int,#肝脏B超排除胆道疾病
	liver_bultrasound_esophageal_gastric_varices int,#肝脏B超排除食管胃底静脉曲张
	liver_ct varchar(200),#肝脏CT
	liver_ct_date Date,#肝脏CT检查日期
	liver_ct_biliary_tract int,#肝脏CT排除胆道疾病
	liver_ct_esophageal_gastric_varices int,#肝脏CT排除食管胃底静脉曲张
	liver_mri varchar(200),#肝脏MRI
	liver_mri_date Date,#肝脏MRI检查日期
	liver_mri_biliary_tract int,#肝脏MRI排除胆道疾病
	liver_mri_esophageal_gastric_varices int,#肝脏MRI排除食管胃底静脉曲张
	fibroscan varchar(200),#Fibroscan
	fibroscan_date Date,#Fibroscan检查日期
	fibroscan_biliary_tract int,#Fibroscan排除胆道疾病
	fibroscan_esophageal_gastric_varices int,#Fibroscan排除食管胃底静脉曲张
	ercp varchar(200),#ERCP
	ercp_date Date,#ERCP检查日期
	ercp_biliary_tract int,#ERCP排除胆道疾病
	ercp_esophageal_gastric_varices int,#ERCP排除食管胃底静脉曲张
	mrcp varchar(200),#MRCP
	mrcp_date Date,#MRCP检查日期
	mrcp_biliary_tract int,#MRCP排除胆道疾病
	mrcp_esophageal_gastric_varices int,#MRCP排除食管胃底静脉曲张
	gastroscope varchar(200),#胃镜
	gastroscope_date Date,#胃镜检查日期
	gastroscope_biliary_tract int,#胃镜排除胆道疾病
	gastroscope_esophageal_gastric_varices int,#胃镜排除食管胃底静脉曲张
	image varchar(50),
    image_describe varchar(100),
    complete boolean,
	primary key(id)
);

#与影像学和内窥镜检查关联表
create table medicine_liver_other_imaging_endoscopy(
	id int auto_increment not null,
    imaging_endoscopy_id int,
    item varchar(50),
    item_date Date,
    result text,
    biliary_tract int,
    esophageal_gastric_varices int,
    primary key(id)
);

#肝脏组织学检查
create table medicine_liver_liver_histological(
	id int not null auto_increment,
	patient_id int,
	interface_hepatitis int,#门管区交界面肝炎
    confluent_necrosis int,#融合性坏死
	focal int,#局灶性
    portal_inflammation int,#门管区炎症
    fibrosis int,#纤维化评分
    severity text,#肝病严重程度
	complete boolean,
	primary key(id)
);

#药物性肝损伤严重程度
create table medicine_liver_liver_injury(
	id int not null auto_increment,
	patient_id int,
	ascites int,#腹水
	hepatic_encephalopathy int,#肝性脑病
	extend_inr int,#延长INR或者凝血时间
	failure int,#器官衰竭
	extend_hospital_stay int,#住院时间延长
    medicine varchar(50),#药名
    alt varchar(20),
    alp varchar(20),
    r varchar(20),#alt/alp
    liver_injury_type varchar(10),#肝损伤类型
    medicine_start int,#从用药开始
    withdrawal_start int,#从停药开始
    stop_medicine int,#停药后
    continue_medicine int,#继续用药
    drink_pregnancy int,#饮酒或妊娠
    age int,#年龄
    with_medicine int,#伴随用药
    other_liver_injury_reason int,#其他肝损伤原因
    past_liver_injury_information int,#既往肝损伤信息
    re_medicine_response int,#再用药反应
	rucam varchar(20),#rucam评分
	complete boolean,
	primary key(id)
);

#针对药物性肝损伤的治疗措施
create table medicine_liver_treatment(
	id int not null auto_increment,
	patient_id int,
	treatment int,#治疗措施
	complete boolean,
	primary key(id)
);

#与治疗相关联的药物治疗表
create table medicine_liver_treatment_detail(
	id int not null auto_increment,
	medicine_liver_treatment_id int,
	generic_name varchar(50),#通用名
	trade_name varchar(50),#商品名
	detail_method varchar(50),#用药方法
	dose varchar(50),#日剂量
    category varchar(20),
	detail_start_date Date,#开始日期
	detail_end_date Date,#结束日期
	primary key(id)
);

create table medicine_liver_treatment_cn(
	id int not null auto_increment,
    medicine_liver_treatment_id int,
    cn_trade_name varchar(50),
    cn_method varchar(50),
    cn_dose varchar(50),
    cn_start_date Date,
    cn_end_date Date,
    primary key(id)
);

#与治疗相关联的其他治疗方案表
create table medicine_liver_treatment_other(
	id int not null auto_increment,
	medicine_liver_treatment_id int,
	method varchar(50),#治疗措施
	method_detail varchar(100),#治疗措施详述
	other_start_date Date,#开始日期
	other_end_date Date,#结束日期
	primary key(id)
);

#疾病转归
create table medicine_liver_disease_outcome(
	id int not null auto_increment,
	patient_id int,
	outcome varchar(50),#疾病转归
	complete boolean,
	primary key(id)
);

#生物样本留置
create table medicine_liver_biological_samples(
	id int not null auto_increment,
	patient_id int,
	biological_samples varchar(50),#是否留置
    num1 varchar(50),
    num2 varchar(50),
    num3 varchar(50),
    num4 varchar(50),
    num5 varchar(50),
    num6 varchar(50),
    remark1 text,
    remark2 text,
    remark3 text,
    remark4 text,
    remark5 text,
    remark6 text,
	complete boolean,
	primary key(id)
);

create table ml_proprietary_chinese_medicine(
	id int not null auto_increment,
    ml_drug_id int not null,
    pro_name varchar(50),
    manufactor varchar(50),
    constitute varchar(100),
    suspend_constitute varchar(50),
    pro_dose varchar(50),
    pro_begin_time Date,
    pro_end_time Date,
    pro_category varchar(10),
    primary key(id)
);

create table ml_chinese_herbal_medicine(
	id int not null auto_increment,
    ml_drug_id int not null,
    herbal_name varchar(50),
    herbal_dose varchar(50),
    herbal_begin_time Date,
    herbal_end_time Date,
    buy_from varchar(50),
    herbal_category varchar(10),
    primary key(id)
);

create table ml_suspend_chinese_medicine(
	id int not null auto_increment,
    ml_drug_id int not null,
    sus_name varchar(50),
    sample varchar(5),
    number varchar(50),
    sus_category varchar(10),
    primary key(id)
);

create table ml_four(
	id int not null auto_increment,
    patient_id int,
	tongue_gloss int,#舌面光泽
    tongue_color int,#舌面颜色
    tongue_nature int,#舌质
    tongue_nature_part int,#舌质部分
    tongue_body int,#舌体
    moss_nature int,#苔质
    moss_nature_part int,#苔质部分
    moss_color int,#苔色
    moss_color_part int,#苔色部分
    sublingual_vein int,#舌下静脉
    left_vein int,#左脉
    right_vein int,#右脉
    fatigue int,#乏力
    skin_itching int,#皮肤瘙痒
    two_eyes_dry int,#两目干涩
    blurred_vision int,#视物模糊
    depression int,#抑郁
    irritability int,#烦躁易怒
    insomnia int,#失眠
    easy_wake_up int,#易醒
    tinnitus int,#耳鸣
    dry_mouth int,#口干
    mouth_pain int,#口苦
    bad_breath int,#口臭
    nausea int,#恶心
    belching int,#嗳气
    abdominal_distention int,#脘腹胀满
    flank_pain int,#胁肋痛
    flank_pain_persist int,#胁肋痛 持续时间
    anorexia int,#纳差
    aphrodisiac_cold int,#畏寒肢冷
    limb int,#肢体困重
    backache_foot_soft int,#腰痠脚软
    hand_foot_fan_hot int,#手足烦热
    urine_yellow int,#尿黄
    constipation int,#便秘
    loose_stools int,#便溏
    sweat int,#汗出
    sweat_persist int,#汗出 持续时间
    lower_extremity_edema int,#下肢水肿
    face_dull int,#面晦暗
    eye_yellow int,#目黄
    body_yellow int,#身黄
    spider_nevus int,#蜘蛛痣数量
    liver_palm int,#肝掌
    abdominal_veins int,#腹壁脉络曲张
    yellow_tumor int,#黄色瘤
    complete boolean,
    primary key(id)
);












