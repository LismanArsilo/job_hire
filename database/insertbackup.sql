
-- -------------Module Master---------------------
-- Table Category
insert into category(cate_id,cate_name,cate_cate_id,cate_modified_date)
values(1,'Development',null,current_timestamp);
insert into category(cate_id,cate_name,cate_cate_id,cate_modified_date)
values(2,'Full Stack',1,current_timestamp);
insert into category(cate_id,cate_name,cate_cate_id,cate_modified_date)
values(3,'Java Technology',1,current_timestamp);
insert into category(cate_id,cate_name,cate_cate_id,cate_modified_date)
values(4,'.Net Technology',1,current_timestamp);
insert into category(cate_id,cate_name,cate_cate_id,cate_modified_date)
values(5,'Golang',1,current_timestamp);
insert into category(cate_id,cate_name,cate_cate_id,cate_modified_date)
values(6,'Mobile Development',null,current_timestamp);
insert into category(cate_id,cate_name,cate_cate_id,cate_modified_date)
values(7,'Android',6,current_timestamp);
insert into category(cate_id,cate_name,cate_cate_id,cate_modified_date)
values(8,'Flutter',6,current_timestamp);
insert into category(cate_id,cate_name,cate_cate_id,cate_modified_date)
values(9,'React Native',6,current_timestamp);
insert into category(cate_id,cate_name,cate_cate_id,cate_modified_date)
values(10,'Swift',6,current_timestamp);
insert into category(cate_id,cate_name,cate_cate_id,cate_modified_date)
values(11,'Data Scientist',null,current_timestamp);
insert into category(cate_id,cate_name,cate_cate_id,cate_modified_date)
values(12,'Hadoop',11,current_timestamp);
insert into category(cate_id,cate_name,cate_cate_id,cate_modified_date)
values(13,'Python',11,current_timestamp);

--Tabel Skill type
insert into skill_type(skty_name) values ('java');
insert into skill_type(skty_name) values ('dotnet');
insert into skill_type(skty_name) values ('sql');
insert into skill_type(skty_name) values ('softskill');
insert into skill_type(skty_name) values ('hardskill');
insert into skill_type(skty_name) values ('mini project');
insert into skill_type(skty_name) values ('javascript');
insert into skill_type(skty_name) values ('express.js');
insert into skill_type(skty_name) values ('nodejs');
insert into skill_type(skty_name) values ('springboot');
insert into skill_type(skty_name) values ('Final');
insert into skill_type(skty_name) values ('Presentation');
insert into skill_type(skty_name) values ('Technical');

 -- tabel Skill Template 
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (1,'Fundamental','Minggu pertama kamu akan belajar fundamental c#, mulai dari tipe data, variable, array, condition, iteration dan collection', 1, 1, 'javascript', NULL, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (2,'Data Type','', 1, 2, 'javascript', 1, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (3,'Scoping Variable','', 1, 3, 'javascript', 1, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (4,'Arrays','', 1, 4, 'javascript', 1, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (5,'Control Statement','', 1, 5, 'javascript', 1, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (6,'Iteration','', 1, 6, 'javascript', 1, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (7,'Collections','', 1, 7, 'javascript', 1, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (8,'Quiz','', 1, 7, 'javascript', 1, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (9,'Object Oriented Programming','OOP wajib kalian kuasain karena OOP akan membantu kita ketika kita develop application yang sangat komplek', 2, 1, 'javascript', null, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (10,'Encapsulation','', 2, 2, 'javascript', 9, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (11,'Inheritance','', 2, 3, 'javascript', 9, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (12,'Abstraction','', 2, 4, 'javascript', 9, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (13,'Polymorphism','', 2, 5, 'javascript', 9, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (14,'Design Pattern','', 2, 6, 'javascript', 9, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (15,'Quiz','', 2, 6, 'javascript', 9, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (16,'Database','', 3, 1, 'javascript', null, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (17,'Create Database','', 3, 2, 'javascript', 16, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (18,'DDL','', 3, 3, 'javascript', 16, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (19,'DML','', 3, 4, 'javascript', 16, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (20,'Back End','', 4, 1, 'javascript', null, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (21,'NodeJS','', 4, 2, 'javascript', 20, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (22,'RestApi','', 4, 3, 'javascript', 20, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (23,'ORM Sequelize','', 4, 4, 'javascript', 20, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (24,'First Project','', 4, 5, 'javascript', 20, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (25,'Front End','', 5, 1, 'javascript', null, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (26,'HTML & CSS','', 5, 2, 'javascript', 25, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (27,'ReactJS','', 5, 3, 'javascript', 25, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (28,'Redux','', 5, 4, 'javascript', 25, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (29,'GraphQL','', 5, 5, 'javascript', 25, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (30,'Microservices','', 6, 1, 'javascript', null, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (31,'Docker','', 6, 2, 'javascript', 30, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (32,'Kubernetes','', 6, 3, 'javascript', 30, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (33,'Kafka','', 6, 4, 'javascript', 30, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (34,'Mini Project','', 7, 1, 'javascript', null, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (35,'Revamp CodeAcademy','', 7, 2, 'javascript', 34, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (36,'Back End','', 8, 3, 'javascript', 34, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (37,'Front End','', 9, 4, 'javascript', 34, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (38,'Presentation','', 10, 5, 'javascript', 34, 'bootcamp');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (39,'Softskill','', 11, 1, 'softskill', null, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (40,'Learning','', 11, 2, 'softskill', 39, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (41,'Discipline','', 11, 3, 'softskill', 39, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (42,'Persistence','', 11, 4, 'softskill', 39, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (43,'Problem Solving','', 11, 5, 'softskill', 39, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (44,'Communication','', 11, 6, 'softskill', 39, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (45,'TeamWork','', 11, 7, 'softskill', 39, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (46,'Final Evaluation','', 12, 1, 'Final', null, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (47,'Struktur programming language','', 12, 2, 'Final', 46, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (48,'Logika','', 12, 3, 'Final', 46, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (49,'OOP','', 12, 4, 'Final', 46, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (50,'Database','', 12, 5, 'Final', 46, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (51,'Webservices','', 12, 6, 'Final', 46, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (52,'Microservices','', 12, 7, 'Final', 46, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (53,'Tugas Harian','', 12, 8, 'Final', 46, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (54,'Presentation','', 12, 1, 'Presentation', null, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (55,'Business Process','', 12, 2, 'Presentation', 54, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (56,'Performance','', 12, 3, 'Presentation', 54, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (57,'Media Material','', 12, 4, 'Presentation', 54, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (58,'Logic & Technical','', 12, 5, 'Presentation', 54, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (59,'Knowledge','', 12, 6, 'Presentation', 54, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (60,'Technical','', 12, 1, 'Technical', null, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (61,'Fundamental & Logic','', 12, 2, 'Technical', 60, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (62,'OOP','', 12, 3, 'Technical', 60, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (63,'Database DDL & DML','', 12, 4, 'Technical', 60, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (64,'Project','', 12, 5, 'Technical', 60, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (65,'Webservices','', 12, 6, 'Technical', 60, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (66,'Microservices','', 12, 7, 'Technical', 60, 'evaluation');
INSERT INTO skill_template (skte_id,skte_skill, skte_description, skte_week, skte_orderby, skty_name, skte_skte_id,skte_module)
  VALUES (67,'Deployment','', 12, 8, 'Technical', 60, 'evaluation');
  
--tabel mudules
insert into modules(module_name) values ('Master');
insert into modules(module_name) values ('User');
insert into modules(module_name) values ('HR');
insert into modules(module_name) values ('Course');
insert into modules(module_name) values ('Bootcamp');
insert into modules(module_name) values ('Job');
insert into modules(module_name) values ('Payment');
insert into modules(module_name) values ('Sales');

--tabel status
insert into status(status, status_module)
	values ('certified', 'User');
insert into status(status, status_module)
	values ('voluntering', 'User');
insert into status(status, status_module)
	values ('organization', 'User');
insert into status(status, status_module)
	values ('reward', 'User');
insert into status(status, status_module)
	values ('fulltime', 'User');
insert into status(status, status_module)
	values ('freelance', 'User');
insert into status(status, status_module)
	values ('bachelor', 'User');
insert into status(status, status_module)
	values ('diploma', 'User');
insert into status(status, status_module)
	values ('Male', 'HR');
insert into status(status, status_module)
	values ('Female', 'HR');
insert into status(status, status_module)
	values ('Single', 'HR');
insert into status(status, status_module)
	values ('Married', 'HR');
insert into status(status, status_module)
	values ('Hourly', 'HR');
insert into status(status, status_module)
	values ('Salaried', 'HR');
insert into status(status, status_module)
	values ('Active', 'HR');
insert into status(status, status_module)
	values ('InActive', 'HR');
insert into status(status, status_module)
	values ('Contract', 'HR');
insert into status(status, status_module)
	values ('Prohibation', 'HR');
insert into status(status, status_module)
	values ('Monthly', 'HR');
insert into status(status, status_module)
	values ('Weekly', 'HR');
insert into status(status, status_module)
	values ('Bootcamp', 'Course');
insert into status(status, status_module)
	values ('Course', 'Course');
insert into status(status, status_module)
	values ('Online', 'Course');
insert into status(status, status_module)
	values ('Offline', 'Course');
insert into status(status, status_module)
	values ('English', 'Course');
insert into status(status, status_module)
	values ('Bahasa', 'Course');
insert into status(status, status_module)
	values ('Open', 'Bootcamp');
insert into status(status, status_module)
	values ('Running', 'Bootcamp');
insert into status(status, status_module)
	values ('Closed', 'Bootcamp');
insert into status(status, status_module)
	values ('Pending', 'Bootcamp');
insert into status(status, status_module)
	values ('Extend', 'Bootcamp');
insert into status(status, status_module)
	values ('Passed', 'Bootcamp');
insert into status(status, status_module)
	values ('Failed', 'Bootcamp');
insert into status(status, status_module)
	values ('Resign', 'Bootcamp');
insert into status(status, status_module)
	values ('Publish', 'Job');
insert into status(status, status_module)
	values ('Draft', 'Job');
insert into status(status, status_module)
	values ('Remove', 'Job');
insert into status(status, status_module)
	values ('Waiting', 'Job');
insert into status(status, status_module)
	values ('Done', 'Job');
insert into status(status, status_module)
	values ('New', 'Sales');
insert into status(status, status_module)
	values ('Shipping', 'Sales');
insert into status(status, status_module)
	values ('Cancelled', 'Sales');
insert into status(status, status_module)
	values ('TopUp', 'Payment');
insert into status(status, status_module)
	values ('Transfer', 'Payment');
insert into status(status, status_module)
	values ('PayOrder', 'Payment');
insert into status(status, status_module)
	values ('Refund', 'Payment');
insert into status(status, status_module)
	values ('Debit', 'Payment');
insert into status(status, status_module)
	values ('Credit', 'Payment');
insert into status(status, status_module)
	values ('Payment', 'Payment');
insert into status(status, status_module)
	values ('Internal', 'User');
insert into status(status, status_module)
	values ('External', 'User');
insert into status(status, status_module)
	values ('Outsource', 'User');

--tabel Route Actions
insert into route_actions(roac_id,roac_name,roac_orderby, roac_display, roac_module_name)
	values(1,'Apply Aplication',1,1,'Bootcamp');
insert into route_actions(roac_id,roac_name,roac_orderby, roac_display, roac_module_name)
	values(2,'Filtering Test',2,1,'Bootcamp');
insert into route_actions(roac_id,roac_name,roac_orderby, roac_display, roac_module_name)
	values(3,'Contract Legal',3,1,'Bootcamp');
insert into route_actions(roac_id,roac_name,roac_orderby, roac_display, roac_module_name)
	values(4,'Briefing Bootcamp',4,1,'Bootcamp');
insert into route_actions(roac_id,roac_name,roac_orderby, roac_display, roac_module_name)
	values(5,'Join Bootcamp',5,1,'Bootcamp');
insert into route_actions(roac_id,roac_name,roac_orderby, roac_display, roac_module_name)
	values(6,'Get Certified',6,1,'Bootcamp');
insert into route_actions(roac_id,roac_name,roac_orderby, roac_display, roac_module_name)
	values(7,'Placement',7,1,'Bootcamp');
insert into route_actions(roac_id,roac_name,roac_orderby, roac_display, roac_module_name)
	values(8,'Idle',8,0,'Bootcamp');
insert into route_actions(roac_id,roac_name,roac_orderby, roac_display, roac_module_name)
	values(9,'Drop Out',9,0,'Bootcamp');
insert into route_actions(roac_id,roac_name,roac_orderby, roac_display, roac_module_name)
	values(10,'Apply Application',1,1,'Job');
insert into route_actions(roac_id,roac_name,roac_orderby, roac_display, roac_module_name)
	values(11,'Interview',2,1,'Job');
insert into route_actions(roac_id,roac_name,roac_orderby, roac_display, roac_module_name)
	values(12,'Contract Legal',3,1,'Job');
insert into route_actions(roac_id,roac_name,roac_orderby, roac_display, roac_module_name)
	values(13,'Placement',4,1,'Job');
	
--tabel Country
INSERT INTO country(country_code, country_name)
	VALUES ('IND', 'Indonesia');
	
--tabel province
INSERT INTO province (prov_id,  prov_name , prov_country_code) 
 VALUES (1,'DKI Jakarta','IND');
INSERT INTO province (prov_id,  prov_name , prov_country_code)
 VALUES (2,'Jawa Barat','IND');
 
--tabel city
INSERT INTO city (city_id, city_name, city_prov_id)
	VALUES (1,'Bandung',2);
INSERT INTO city (city_id, city_name, city_prov_id) 
	VALUES (2, 'Bogor',2);
INSERT INTO city (city_id, city_name, city_prov_id) 
	VALUES (3,'Jakarta',1);

--tabel address
INSERT INTO address (addr_id, addr_line1, addr_line2, addr_postal_code, addr_spatial_location,addr_city_id) 
	VALUES (1,'jl. Sambiloto no 20,sumu','a','56789','{}',2);
INSERT INTO address (addr_id, addr_line1, addr_line2, addr_postal_code, addr_spatial_location,addr_city_id) 
	VALUES (2,'jl. North ridge no 18, sukaraja, babakan','b','67859','{}',2);
 

--tabel address type
INSERT INTO address_type (adty_id, adty_name) VALUES (1,'Home');
INSERT INTO address_type (adty_id, adty_name) VALUES (2,'Main Office');
INSERT INTO address_type (adty_id, adty_name) VALUES (3,'Primary');
INSERT INTO address_type (adty_id, adty_name) VALUES (4,'Shipping');
INSERT INTO address_type (adty_id, adty_name) VALUES (5,'Billing');
INSERT INTO address_type  (adty_id, adty_name)VALUES (6,'Archive');

-- ------------- Module Users ---------------------
-- INSERT TABLE roles
insert into  roles (role_id, role_name, role_type) 
values (1, 'Candidat','external');
insert into  roles (role_id, role_name, role_type) 
values (2, 'Talent','external');
insert into  roles (role_id, role_name, role_type) 
values (3, 'Recruiter','Internal');
insert into  roles (role_id, role_name, role_type) 
values (4, 'Instructor','Internal');
insert into  roles (role_id, role_name, role_type) 
values (5, 'Sales','Internal');
insert into  roles (role_id, role_name, role_type) 
values (6, 'Manager','Internal');
insert into  roles (role_id, role_name, role_type ) 
values (7, 'Vice President','Internal');
insert into  roles (role_id, role_name, role_type) 
values (8, 'Account Manager','Internal');
insert into  roles (role_id, role_name, role_type) 
values (9, 'Student','eksternal');
insert into  roles (role_id, role_name, role_type) 
values (10, 'Administrator','Internal');
insert into  roles (role_id, role_name, role_type) 
values (11, 'Outsource','Internal');

-- INSERT TABLE entity
insert into  entity (entity_id) 
values (1);
insert into  entity (entity_id) 
values (2);
insert into  entity (entity_id) 
values (3);
insert into  entity (entity_id) 
values (4);
insert into  entity (entity_id) 
values (5);
insert into  entity (entity_id) 
values (6);
insert into  entity (entity_id) 
values (7);
insert into  entity (entity_id) 
values (8);
insert into  entity (entity_id) 
values (9);

-- INSERT TABLE users		
insert into  users (user_entity_id, user_name,user_first_name, user_last_name, user_email_promotion, user_modified_date, user_demographic,user_photo, user_password) 
values (1,'kangdian', 'kang', 'dian',1,'12-Jul-22','{"latitude":"12.90","longitude":"-99.989"}', 'photo.png',  'yadfaldjfapdjf;ajfpasdf');
insert into  users (user_entity_id, user_name,user_first_name, user_last_name, user_email_promotion, user_modified_date, user_demographic,user_photo, user_password) 
values (2,'nofal', 'nofal', 'firdaus',0,'12-Jul-22','{"latitude":"12.90","longitude":"-99.989"}', 'nofal.png', 'ajdfja;dfpadjfadf');
insert into  users (user_entity_id, user_name,user_first_name, user_last_name, user_email_promotion, user_modified_date, user_demographic,user_photo, user_password) 
values (3,'abdul101', 'Abdul', 'Razaq',1,'12-Jul-22','{"latitude":"12.90","longitude":"-99.989"}', 'abdul.png', 'alsdjfapdfaodfadf');
insert into  users (user_entity_id, user_name,user_first_name, user_last_name, user_email_promotion, user_modified_date, user_demographic,user_photo, user_password) 
values (4,'ratih', 'ratih wina', 'ludwig',0,'12-Jul-22','{"latitude":"12.90","longitude":"-99.989"}', 'ratih.png', 'yadlfjadjfa');
insert into  users (user_entity_id, user_name,user_first_name, user_last_name, user_email_promotion, user_modified_date, user_demographic,user_photo, user_password) 
values (5,'Eka', 'Eka', 'Nugroho',0,'12-Jul-22','{"latitude":"12.90","longitude":"-99.989"}', 'eka.png', 'ynyaldjf;adfadfad;faldfsa');
insert into  users (user_entity_id, user_name,user_first_name, user_last_name, user_email_promotion, user_modified_date, user_demographic,user_photo, user_password) 
values (6,'novia', 'novia', 'slebew',1,'12-Jul-22','{"latitude":"12.90","longitude":"-99.989"}', 'novia.png', 'lajdfljaljdfajdf;a');
insert into  users (user_entity_id, user_name,user_first_name, user_last_name, user_email_promotion, user_modified_date, user_demographic,user_photo, user_password) 
values (7,'novelina', 'novelina', 'lina',0,'12-Jul-22','{"latitude":"12.90","longitude":"-99.989"}', 'lina.png', 'lkadjfajdf;adf');
insert into  users (user_entity_id, user_name,user_first_name, user_last_name, user_email_promotion, user_modified_date, user_demographic,user_photo, user_password) 
values (8,'yugo', 'yugo', 'ardan',1,'12-Jul-22','{"latitude":"12.90","longitude":"-99.989"}', 'yogo.png', 'aldjfadfa;dfjlajdf;a');
insert into  users (user_entity_id, user_name,user_first_name, user_last_name, user_email_promotion, user_modified_date, user_demographic,user_photo, user_password) 
values (9,'andhika', 'andhika', 'pratama',1,'12-Jul-22','{"latitude":"12.90","longitude":"-99.989"}', 'andhika.png', 'ladfljafjadfas;f');


--INSERT TABLE users_roles
insert into  users_roles (usro_entity_id, usro_role_id,usro_modified_date) 
values (1, 1,'12-Jul-22');
insert into  users_roles (usro_entity_id, usro_role_id,usro_modified_date) 
values (2, 1,'12-Jul-22');
insert into  users_roles (usro_entity_id, usro_role_id,usro_modified_date) 
values (3, 3,'12-Jul-22');
insert into  users_roles (usro_entity_id, usro_role_id,usro_modified_date) 
values (4, 5,'12-Jul-22');	

-- INSERT TABLE phone_number_type
insert into  phone_number_type (ponty_code,ponty_modified_date) 
values ('Home', '12-Jul-22');	
insert into  phone_number_type (ponty_code,ponty_modified_date) 
values ('Cell', '12-Jul-22');	

-- INSERT TABLE users_phone
insert into  users_phones (uspo_entity_id, uspo_number,uspo_ponty_code) 
values (1, '8139809091','Cell');	
insert into  users_phones (uspo_entity_id, uspo_number,uspo_ponty_code) 
values (3, '022-7890987','Home');	
insert into  users_phones (uspo_entity_id, uspo_number,uspo_ponty_code) 
values (2, '089898989','Cell');	

-- INSERT TABLE user_address
insert into  users_address (etad_addr_id,etad_entity_id,etad_adty_id) 
values (1, 1 ,1);
insert into  users_address (etad_addr_id,etad_entity_id,etad_adty_id) 
values (2, 2 , 2);	

-- INSERT TABLE users_email
insert into  users_email (pmail_id, pmail_entity_id, pmail_address) 
values (1, 1 ,'dian@code.id');
insert into  users_email (pmail_id, pmail_entity_id, pmail_address) 
values (2, 1 ,'dian@gmail.com');
insert into  users_email (pmail_id, pmail_entity_id, pmail_address) 
values (3, 2 ,'nofal@code.id');

-- INSERT TABLE users_media
insert into  users_media (usme_id, usme_entity_id,usme_file_link, usme_filename, usme_filesize, usme_filetype, usme_note) 
values (1, 1 ,'https://','ijazah.png',2345, 'png','ijazah');
insert into  users_media (usme_id, usme_entity_id,usme_file_link, usme_filename, usme_filesize, usme_filetype, usme_note) 
values (2, 1 ,'https://','cv.docx',1890, 'word','cv');

-- INSERT TABLE users_education
insert into  users_education (usdu_id,usdu_entity_id,usdu_school,usdu_degree,usdu_field_study,usdu_start_date,usdu_end_date,usdu_grade,usdu_activities,usdu_description) 
values (1, 1 ,'MIT','Bachelor','Informatic', '12-Jul-00','12-Aug-05',3.45,'I m bachelor with cumlaude','');

-- INSERT TABLE users_experiences
insert into users_experiences (usex_id, usex_entity_id, usex_title, usex_profile_headline, usex_employment_type, usex_company_name, usex_city_id, usex_is_current, usex_start_date, usex_end_date,usex_industry, usex_description, usex_experience_type) 
values (1, 1 ,'Head Of Bootcamp', 'Software Engineer, Data Scientist', 'Fulltime', 'Code.id',1,1, '12-Jul-19', '12-Jul-20','Consultant IT','I believe…','Company');
insert into users_experiences (usex_id, usex_entity_id, usex_title, usex_profile_headline, usex_employment_type, usex_company_name, usex_city_id, usex_is_current, usex_start_date, usex_end_date,usex_industry, usex_description, usex_experience_type) 
values (2, 1 ,'Motivator', 'Act as volunter',  'Freelance', 'Government',1,0, '12-Jul-19', '12-Jul-20','Government','helping people to learn','Volunter');

-- INSERT TABLE users_skill			
insert into  users_skill (uski_id, uski_entity_id,uski_skty_name) 
values (1, 1, 'java');
insert into  users_skill (uski_id, uski_entity_id,uski_skty_name) 
values (2, 1, 'dotnet');
insert into  users_skill (uski_id, uski_entity_id,uski_skty_name) 
values (3, 2, 'javascript');

-- INSERT TABLE users_experience_skill	
insert into  users_experiences_skill(uesk_usex_id, uesk_uski_id) 
values (1, 1);
insert into users_experiences_skill (uesk_usex_id, uesk_uski_id) 
values (1, 2);
insert into  users_experiences_skill(uesk_usex_id, uesk_uski_id) 
values (1, 3);

-- -------------Module HumanResource---------------------

-- Data Job Role
INSERT INTO job_role(joro_name) VALUES('Software Developer');
INSERT INTO job_role(joro_name) VALUES('Data Engineer');
INSERT INTO job_role(joro_name) VALUES('Java Developer');
INSERT INTO job_role(joro_name) VALUES('QA');

-- Data Department
INSERT INTO department(dept_id, dept_name) VALUES(1,'Development');
INSERT INTO department(dept_id, dept_name) VALUES(2,'Sales');
INSERT INTO department(dept_id, dept_name) VALUES(3,'Bootcamp Academy');

-- Data Employee
INSERT INTO employee(emp_entity_id, emp_emp_number, emp_national_id, emp_login_id, emp_birth_date, emp_marital_status, emp_gender, emp_hire_date, emp_salaried_flag, emp_vacation_hours, emp_sickleave_hours, emp_current_flag, emp_emp_entity_id, emp_joro_id)
    VALUES(1, '202207001', '13419981009004', 'kangdian@code.id', '1998-3-12', 'M', 'M', '2020-1-10', '1', 12, 12, 1, 5, 2);
INSERT INTO employee(emp_entity_id, emp_emp_number, emp_national_id, emp_login_id, emp_birth_date, emp_marital_status, emp_gender, emp_hire_date, emp_salaried_flag, emp_vacation_hours, emp_sickleave_hours, emp_current_flag, emp_joro_id)
    VALUES(4, '202207002', '13420021009004', 'ratih@code.id', '2002-1-12', 'S', 'F', '2022-6-13', '1', 12, 12, 1, 2);
INSERT INTO employee(emp_entity_id, emp_emp_number, emp_national_id, emp_login_id, emp_birth_date, emp_marital_status, emp_gender, emp_hire_date, emp_salaried_flag, emp_vacation_hours, emp_sickleave_hours, emp_current_flag, emp_joro_id)
    VALUES(5, '202205001', '13419771009005', 'eka@code.id', '1977-1-12', 'M', 'M', '2021-10-13', '1', 12, 12, 1, 2);
INSERT INTO employee(emp_entity_id, emp_emp_number, emp_national_id, emp_login_id, emp_birth_date, emp_marital_status, emp_gender, emp_hire_date, emp_salaried_flag, emp_vacation_hours, emp_sickleave_hours, emp_current_flag, emp_emp_entity_id, emp_joro_id)
    VALUES(7, '202205035', '13419771009006', 'novelina@code.id', '1998-3-12', 'S', 'F', '2021-10-13', '1', 12, 12, 1, 5, 2);

-- Data Employee Department History
INSERT INTO employee_department_history(edhi_entity_id, edhi_start_date, edhi_end_date, edhi_dept_id) 
    VALUES(1, '2019-7-12', '2020-7-12', 1);
INSERT INTO employee_department_history(edhi_entity_id, edhi_start_date, edhi_dept_id)
    VALUES(4, '2020-7-12', 3);


-- Data Employee Pay History
INSERT INTO employee_pay_history(ephi_entity_id, ephi_rate_change_date, ephi_rate_salary, ephi_pay_frequence)
    VALUES(1, '2019-7-12', 6000000, 1);
INSERT INTO employee_pay_history(ephi_entity_id, ephi_rate_change_date, ephi_rate_salary, ephi_pay_frequence)
    VALUES(4, '2020-7-12', 7000000, 1);

--lanjut ke job_type sampai job_category
INSERT INTO job_type(joty_name) VALUES ('Magang');
INSERT INTO job_type(joty_name) VALUES ('Full-Time');
INSERT INTO job_type(joty_name) VALUES ('Part-Time');
INSERT INTO job_type(joty_name) VALUES ('Freelance');
INSERT INTO job_type(joty_name) VALUES ('Contract');
INSERT INTO job_type(joty_name) VALUES ('Prohibation');

insert into employee_range(emra_range_min, emra_range_max) values (3000000, 5000000);
insert into employee_range(emra_range_min, emra_range_max) values (4000000, 6000000);
insert into employee_range(emra_range_min, emra_range_max) values (5000000, 7000000);

INSERT INTO client(clit_id, clit_name, clit_about, clit_addr_id, clit_emra_id) 
VALUES (1, 'Code ID', 'CodeId adalah perusahaan…', 1, 2);
INSERT INTO client(clit_id, clit_name, clit_about, clit_addr_id, clit_emra_id) 
VALUES (2, 'Telkomsel', 'CodeId adalah perusahaan…',1, 3 );
INSERT INTO client(clit_id, clit_name, clit_about, clit_addr_id, clit_emra_id) 
VALUES (3, 'Astra International', 'CodeId adalah perusahaan…', 1, 1);

INSERT INTO job_category(joca_name) VALUES ('Software Engineer');
INSERT INTO job_category(joca_name) VALUES ('Business Development');
INSERT INTO job_category(joca_name) VALUES ('Marketing');
INSERT INTO job_category(joca_name) VALUES ('Operations');

-- Data Employee Client Contract
INSERT INTO employee_client_contract(ecco_entity_id, ecco_contract_no, ecco_contract_date, ecco_start_date, ecco_end_date, ecco_media_link, ecco_status, ecco_joty_id, ecco_account_manager, ecco_clit_id)
    VALUES(4, '002/HR-CODE.ID/PKWTT/I/2022', '2022-6-13', '2022-6-13', '2023-6-13', 'https://codeacademy/assets/contract.pdf', 'contract', 1, 5, 1)

-- -------------Module course_online---------------------
INSERT INTO program_entity VALUES (1,'Javascript Fullstack From Zero To Expert'
								   ,'Modern javascript for everyone with projects, challenge and theory. More Course in one !'
								   ,'course','online'
								   ,NULL
								   ,NULL
								   ,NULL
								   ,'javascript.png',1,2	
								  );
								  
INSERT INTO program_entity VALUES (2,'Java Technology'
								   ,'Join bootcamp and become java developer'
								   ,'bootcamp','offline'
								   ,NULL
								   ,NULL
								   ,NULL
								   ,'java.png',1,3	
								  );

INSERT INTO program_entity VALUES (3,'Golang'
								   ,'Develop application with golang'
								   ,'course','online'
								   ,NULL
								   ,NULL
								   ,NULL
								   ,'javascript.png',NULL,2
								  );

						   
INSERT INTO courses VALUES (1,'0',750000,'bahasa'
						   ,'{ "items" : ["Become an advanced, confident, and modern JavaScript developer from scratch",
							"Become job-ready by understanding how JavaScript really works behind the scenes",
							"JavaScript fundamentals: variables, if/else, operators, boolean logic, functions, arrays, objects, loops, strings, etc."]
							}'
						   ,'{"items":[
							{"value" : "69 hours on-demand video","icon" : "video"},
							{"value" : "22 article","icon" : "list"},
							{"value" : "18 downloadable resources","icon" : "download"},
							{"value" : "Full lifetime access","icon" : "infinite"},
							{"value" : "Access on mobile and TV","icon" : "phone"},
							{"value" : "Certificate of completion","icon" : "reward"}
							]}'
							,'{"items" : [
							"No coding experience is necessary to take this course! I take you from beginner to expert!",
							"Any computer and OS will work — Windows, macOS or Linux. We will set up your text editor the course.",
							"A basic understanding of HTML and CSS is a plus, but not a must! The course includes an HTML and CSS crash course."
							]}'
							,'{"items" : "JavaScript is the most popular programming language in the world. It powers the entire modern web. It provides millions of high-paying jobs all over the world."
							}'
							,'{"items" : "Take this course if you want to gain a true and deep understanding of JavaScript"
							}'
						   ,NULL
						   ,'publish'
						   );

INSERT INTO contents VALUES (1,1,'Javascript Fundamental','-','',NULL,NULL,NULL,NULL);
INSERT INTO contents VALUES (2,1,'Iteration','','',NULL,NULL,NULL,NULL);
INSERT INTO contents VALUES (3,1,'Data Structure','','',NULL,NULL,NULL,NULL);

INSERT INTO content_section VALUES (1,'Course Structure And Project',1
									,'you will learning how to create new project'
									,185
									,NULL
									,1);

INSERT INTO content_section VALUES ('2','Setting up Visual Code',1,'-'
									,75,NULL,1);

INSERT INTO content_section_material VALUES (1,'video1.mp4',12345,'mp4'
									,'https://codeacademy/assets',NULL,'1');

INSERT INTO student_course VALUES (1,6
								   ,'22-Jul-22'
								   ,'12-Oct-22'
								   ,'1','yqajdfjaofjajdf;adfapadfadfl'
									,NULL,'','1','inprogress');

INSERT INTO course_review VALUES (1,6
								   ,'Course javascript sangat comprehensif, mudah diikutin, 
								  trainer sangat menguasai materi'
								   ,4,NULL);

INSERT INTO instructor_course VALUES (1,1,1,NULL);

INSERT INTO student_evaluation VALUES (1,6,88
									   ,'12-Oct-22'
									   ,NULL
									   ,NULL);

-- -------------Module bootcamp---------------------
-- batch
INSERT INTO batch(
	batch_id, batch_prog_id, batch_name, batch_start_date, batch_end_date, batch_status, batch_reason, batch_type, batch_modified_date, batch_recruiter_id, batch_instructor_id, batch_co_instructor_id)
	VALUES (1, 2, 'Batch#15','2022-08-12','2022-10-12', 'New', NULL, 'offline', NULL, 5, 1, NULL);

--batch_student
INSERT INTO batch_student(
	bast_id, bast_batch_id, bast_entity_id, bast_status, bast_review, bast_total_score, bast_modified_date)
	VALUES (1, 1, 3, 'running', 'selama bootcamp', 88, NULL);
INSERT INTO batch_student(
	bast_id, bast_batch_id, bast_entity_id, bast_status, bast_review, bast_total_score, bast_modified_date)
	VALUES (2, 1, 8, 'running', 'ok nice', 86, NULL);

--batch_student_evaluation
INSERT INTO batch_student_evaluation(
	base_id, base_type, base_skill, base_grade, base_note, base_order, base_modified_date, base_bast_id)
	VALUES (1, 'Technical', 'Fundamental', 4, NULL, 1, NULL, 1);
INSERT INTO batch_student_evaluation(
	base_id, base_type, base_skill, base_grade, base_note, base_order, base_modified_date, base_bast_id)
	VALUES (2, 'Technical', 'Database', 4, NULL, 2, NULL, 1);	
INSERT INTO batch_student_evaluation(
	base_id, base_type, base_skill, base_grade, base_note, base_order, base_modified_date, base_bast_id)
	VALUES (3, 'Technical', 'OOP', 3, NULL, 3, NULL, 1);	
INSERT INTO batch_student_evaluation(
	base_id, base_type, base_skill, base_grade, base_note, base_order, base_modified_date, base_bast_id)
	VALUES (4, 'Softskill', 'Discipline', 4, NULL, 4, NULL, 1);

--programs_review
INSERT INTO programs_review(
	pore_prog_id, pore_entity_id, bore_review, bore_rating, bore_modified_date)
	VALUES (2, 3, 'selama mengikuti bootcamp sangat senang karena di guide oleh mentor berpengalaman', 4, NULL);
INSERT INTO programs_review(
	pore_prog_id, pore_entity_id, bore_review, bore_rating, bore_modified_date)
	VALUES (2, 8, 'mengikuti bootcamp di code academy menambah level skill saya', 4, NULL);

--bootcamp_apply
INSERT INTO bootcamp_apply(
	boap_prog_id, boap_entity_id, boap_total_skor, boap_review, boap_modified_date, boap_status)
	VALUES (2, 3, 75, 'Personality ok, antusias, komunikasi bagus', NULL, 'recomended');	
INSERT INTO bootcamp_apply(
	boap_prog_id, boap_entity_id, boap_total_skor, boap_review, boap_modified_date, boap_status)
	VALUES (2, 8, 88, 'nice', NULL, 'passed');

--bootcamp_apply_progress
INSERT INTO bootcamp_apply_progress(
	bapr_id, bapr_prog_id, bapr_entity_id, boar_comment, boar_modified_date, bor_status, bapr_roac_id)
	VALUES (1, 2, 3, NULL, NULL, 'done', 1);
INSERT INTO bootcamp_apply_progress(
	bapr_id, bapr_prog_id, bapr_entity_id, boar_comment, boar_modified_date, bor_status, bapr_roac_id)
	VALUES (2, 2, 3, NULL, NULL, 'done', 2);
INSERT INTO bootcamp_apply_progress(
	bapr_id, bapr_prog_id, bapr_entity_id, boar_comment, boar_modified_date, bor_status, bapr_roac_id)
	VALUES (3, 2, 3, NULL, NULL, 'done', 3);
INSERT INTO bootcamp_apply_progress(
	bapr_id, bapr_prog_id, bapr_entity_id, boar_comment, boar_modified_date, bor_status, bapr_roac_id)
	VALUES (4, 2, 3, NULL, NULL, 'done', 4);
INSERT INTO bootcamp_apply_progress(
	bapr_id, bapr_prog_id, bapr_entity_id, boar_comment, boar_modified_date, bor_status, bapr_roac_id)
	VALUES (5, 2, 3, 'join bootcamp available di minggu ke 2 dari jadwal', NULL, 'done', 5);
INSERT INTO bootcamp_apply_progress(
	bapr_id, bapr_prog_id, bapr_entity_id, boar_comment, boar_modified_date, bor_status, bapr_roac_id)
	VALUES (6, 2, 3, NULL, NULL, 'done', 6);
INSERT INTO bootcamp_apply_progress(
	bapr_id, bapr_prog_id, bapr_entity_id, boar_comment, boar_modified_date, bor_status, bapr_roac_id)
	VALUES (7, 2, 3, NULL, NULL, 'done', 7);
	
-- -------------Module job_hire---------------------

-- insert  
-- Insert employee_range masih bingung isi data emra_rang_min sama max
 --INSERT INTO employee_range(joty_name) VALUES ('Magang'); // sudah di atas

--publish_date modified_date
select * from job_post
INSERT INTO job_post(jopo_number, jopo_title, jopo_min_salary, jopo_max_salary, jopo_description,
					 jopo_responsibility, jopo_target, jopo_benefit, jopo_start_date, jopo_end_date,
					 jopo_emp_entity_id, jopo_clit_id, jopo_joro_id, jopo_joty_id, jopo_joca_id, 
					 jopo_status) 
VALUES ('JOB20220727-0001', 'Java Developer', 9000000, 16000000, 
		'{"item" : "Developing, implementing, and maintaining Java based components and interfaces. Coordinate with the rest of the team working on different layers of the infrastructure. Delivering code with well tested"}', 
		'{"items" : "Proficient in Core Java, with a solid understanding of object-oriented programming Have minimum 1 year of working experience in Java Programming Skill Set: Spring framework, JPA / Hibernate Experience with database Oracle, My SQL, Postgre SQL or MS SQL Server Able to working with Agile methodology Can join immediately is a plus" }',
		'{"item" : "Sertifikat Professional, D3 (Diploma), D4 (Diploma), Sarjana (S1),Diploma Pascasarjana, Gelar Professional, Magister (S2)"}',
		'{"item": "Career growth in software development Positive working environment Great opportunity to get experiences in several industry sectors"}',
		'12-Jul-22', '12-Aug-22', 7, 3, 1, 5, 1, 'publish');

INSERT INTO talent_apply(taap_entity_id, taap_jopo_id, taap_intro, taap_scoring, taap_status)
VALUES (9, 2, 'perkenalkan nama saya andhika, saya data scienties anthusias', 8, 'interview');

-- idnya harus di sesuaikan karena serial jadi tidak terkadang inputan berbeda

INSERT INTO talent_apply_progress(tapr_status, tapr_taap_id , tapr_roac_id)
VALUES ('done', 5, 10); 
INSERT INTO talent_apply_progress(tapr_status, tapr_taap_id , tapr_roac_id)
VALUES ('done', 5, 11); 
INSERT INTO talent_apply_progress(tapr_status, tapr_taap_id , tapr_roac_id)
VALUES ('waiting', 5, 12); 
INSERT INTO talent_apply_progress(tapr_status, tapr_taap_id , tapr_roac_id)
VALUES ('waiting', 5, 13); 

-- -------------Module sales---------------------

--insert table cart_items
insert into cart_items values (1,1,null,3,1);
insert into cart_items values (2,1,null,3,3);

--insert table coupon_ofter
insert into coupon_ofter values (1,'dapatkan diskon untuk 5 orang',50,'new','27-jul-22','27-oct-22',1,5,null,1);

--insert table coupon_ofter_course
insert into coupon_ofter_course values (1,1);
insert into coupon_ofter_course values (1,3);

--insert table sales_order_header
insert into sales_order_header values (1,
									3,
									1,
									'27-jul-22',
									'30-jul-22',
									'28-jul-22',
									'ORD#20220727-0000001',
									'131899555',
									'20220727#000003',
									100000,
									0,
									50,
									50000,
									'pembelian course online javascript',
									'aldjfjadlfjladjf;la',
									null,
									1,
									'Closed');

--insert table sales_order_detail
insert into sales_order_detail values (1,1,100000,50,50000,null,1,1,1)

-- -------------Module payment---------------------
INSERT INTO bank (bank_entity_id, bank_code, bank_name, bank_modified_date)
VALUES (2, 'BCA', 'Bank Central Asia',current_timestamp);
INSERT INTO bank (bank_entity_id, bank_code, bank_name, bank_modified_date)
VALUES (3, 'BNI', 'Bank Negara Indonesia',current_timestamp);
INSERT INTO bank (bank_entity_id, bank_code, bank_name, bank_modified_date)
VALUES (4, 'MAN', 'Bank Mandiri',current_timestamp);
INSERT INTO bank (bank_entity_id, bank_code, bank_name, bank_modified_date)
VALUES (5, 'JAGO','Bank Jago',current_timestamp);

INSERT INTO payment_gateaway (paga_entity_id, paga_code, paga_name, paga_virtual_account)
VALUES (6, 'GOTO', 'Payment GoTo',20111);
INSERT INTO payment_gateaway (paga_entity_id, paga_code, paga_name, paga_virtual_account)
VALUES (7, 'OVO', 'OVO',21999);
INSERT INTO payment_gateaway (paga_entity_id, paga_code, paga_name, paga_virtual_account)
VALUES (8, 'SP', 'Shopee Paylater',99999);

INSERT INTO user_accounts (usac_entity_id, usac_user_entity_id, usac_account_number,usac_saldo,usac_type,usac_branch)
VALUES (9,3,131899555,100000,'debet','Jakarta');
INSERT INTO user_accounts (usac_entity_id, usac_user_entity_id, usac_account_number,usac_saldo,usac_type)
VALUES (8,3,087654321,50000,'payment');
INSERT INTO user_accounts (usac_entity_id, usac_user_entity_id, usac_account_number,usac_saldo,usac_type)
VALUES (7,3,99999,10000,'payment');

INSERT INTO payment_transaction (patr_id, patr_trx_number, patr_debet, patr_credit,patr_type,patr_note,patr_source_id,patr_target_id,patr_user_entity_id)
VALUES (1,'20220727#000001',0,50000,'Topup','topup bank ke goto',131899555,087654321,3);
INSERT INTO payment_transaction (patr_id, patr_trx_number, patr_debet, patr_credit,patr_type,patr_note,patr_source_id,patr_target_id,patr_user_entity_id,patr_trx_number_ref)
VALUES (2,'20220727#000002',50000,0,'Topup','receive topup',087654321,131899555,3,'20220727#000001');
INSERT INTO payment_transaction (patr_id, patr_trx_number, patr_debet, patr_credit,patr_type,patr_note,patr_source_id,patr_target_id,patr_user_entity_id)
VALUES (3,'20220727#000003',0,10000,'PayOrder','bayar shoppee order',131899555,99999,3);
INSERT INTO payment_transaction (patr_id, patr_trx_number, patr_debet, patr_credit,patr_type,patr_note,patr_source_id,patr_target_id,patr_user_entity_id)
VALUES (4,'20220727#000004',0,15000,'PayOrder','bayar shoppee order',131899555,99999,3);
select * from payment_transaction
