 CREATE SEQUENCE seq_hr_number
   INCREMENT 1
   MINVALUE 1
   MAXVALUE 9223372036854775807
   START 1

 create or replace function hr_id () returns integer as $$
 select CAST(CONCAT(to_char(now(),'YYYYMM'),lpad(''||nextval('seq_hr_number'),3,'0'))as integer)
 $$ language sql

CREATE SEQUENCE seq_job_number
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1

create or replace function job_id () returns varchar as $$
select CONCAT('JOB',to_char(now(),'YYYYMMDD'),'-',lpad(''||nextval('seq_job_number'),4,'0'))
$$ language sql

-- Table Master
Create table category(
	cate_id serial primary key,
	cate_name varchar(255) unique not null,
	cate_cate_id integer,
	cate_modified_date timestamp,
	foreign key(cate_cate_id) references category(cate_id) on update cascade on delete cascade
);

create table skill_type(
	skty_name varchar(55) primary key
);

create table skill_template(
	skte_id serial primary key,
	skte_skill varchar(256),
	skte_description varchar(256),
	skte_week integer,
	skte_orderby integer,
	skte_modified_date timestamp,
	skty_name varchar(55),
	skte_skte_id integer,
	skte_module varchar(125), 
	foreign key(skty_name) references skill_type(skty_name) on update cascade on delete cascade,
	foreign key(skte_skte_id) references skill_template(skte_id) on update cascade on delete cascade
);

create table modules(
	module_name varchar(125) primary key
);

create table status(
	status varchar(15) primary key,
	status_module varchar(125) not null,
	status_modified_date timestamp,
	foreign key(status_module) references modules(module_name) on update cascade on delete cascade
);

create table route_actions(
	roac_id serial primary key,
	roac_name varchar(50),
	roac_orderby integer,
	roac_display char(1),
	roac_module_name varchar(125),
	foreign key(roac_module_name) references modules(module_name) on update cascade on delete cascade
);

create table country(
	country_code varchar(3) primary key,
	country_name varchar(85) unique,
	country_modified_date timestamp
);

create table province(
	prov_id serial primary key,
	prov_code varchar(5) unique,
	prov_name varchar(85),
	prov_modified_date timestamp,
	prov_country_code varchar(3) not null,
	foreign key(prov_country_code) references country(country_code) on update cascade on delete cascade
);

create table city(
	city_id serial primary key,
	city_name varchar(155) unique not null,
	city_modified_date timestamp,
	city_prov_id integer,
	foreign key(city_prov_id) references province(prov_id) on update cascade on delete cascade
);

create table address(
	addr_id serial primary key,
	addr_line1 varchar(255) unique,
	addr_line2 varchar(255) unique,
	addr_postal_code  varchar(10) unique,
	addr_spatial_location json,
	addr_modified_date timestamp,
	addr_city_id integer not null,
	foreign key(addr_city_id) references city(city_id) on update cascade on delete cascade
);

create table address_type(
	adty_id serial primary key,
	adty_name varchar(15) unique,
	adty_modified_date timestamp
);

-- Table Users
CREATE TABLE entity(
    entity_id SERIAL PRIMARY KEY
);

create table users (
	user_entity_id INTEGER primary key,
	user_name varchar(15) UNIQUE,
	user_password varchar(256),
	user_first_name varchar(50),
	user_last_name varchar (50),
	user_email_promotion integer default 0,
	user_demographic json,
	user_modified_date timestamp,
	user_photo varchar(255),
	foreign key(user_entity_id) references entity(entity_id) on update cascade on delete cascade
);
-- user usdu_entity_id diganti asalnya serial menjadi integer
create table users_education (
	usdu_id serial,
	usdu_entity_id integer,
	usdu_school varchar(255),
	usdu_degree varchar(15),
	usdu_field_study varchar(125),
	usdu_start_date timestamp,
	usdu_end_date timestamp,
	usdu_grade varchar(5),
	usdu_activities varchar(512),
	usdu_description varchar(512),
	usdu_modified_date timestamp,
	primary key(usdu_id,usdu_entity_id),
	foreign key(usdu_entity_id) references users(user_entity_id) on update cascade on delete cascade
);

create table users_email(
	pmail_entity_id INTEGER,
	pmail_id serial,
	pmail_address varchar(50),
	pmail_modified_date timestamp,
	primary key (pmail_entity_id,pmail_id),
	foreign key(pmail_entity_id) references users(user_entity_id) on update cascade on delete cascade
);

create table users_media(
	usme_id serial ,
	usme_entity_id INTEGER not null,
	usme_file_link varchar (255) not null,
	usme_filename varchar (55) not null,
	usme_filesize integer not null,
	usme_filetype varchar (15) not null,
	usme_note varchar(55),
	usme_modified_date timestamp,
	primary key (usme_id,usme_entity_id),
	foreign key(usme_entity_id) references users(user_entity_id) on update cascade on delete cascade	
);

CREATE TABLE phone_number_type(
    ponty_code VARCHAR(15) PRIMARY KEY,
    ponty_modified_date TIMESTAMP
);

CREATE TABLE roles(
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(35) UNIQUE NOT NULL,
	role_type VARCHAR(15),
    role_modified_date TIMESTAMP
);

CREATE TABLE users_roles(
    usro_entity_id INTEGER NOT NULL,
    usro_role_id INTEGER NOT NULL,
    usro_modified_date TIMESTAMP,
    PRIMARY KEY(usro_entity_id, usro_role_id),
    FOREIGN KEY(usro_entity_id) REFERENCES users(user_entity_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(usro_role_id) REFERENCES roles(role_id) ON UPDATE CASCADE ON DELETE CASCADE
);


create table users_phones(
	uspo_entity_id integer primary key,
	uspo_number varchar(15) not null,
	uspo_modified_date timestamp,
	uspo_ponty_code varchar(15) not null,
	foreign key(uspo_entity_id) references users(user_entity_id) on update cascade on delete cascade,
	foreign key(uspo_ponty_code) references phone_number_type(ponty_code) on update cascade on delete cascade
	
);

CREATE TABLE users_experiences(
    usex_id SERIAL,
    usex_entity_id integer not null,
    usex_title VARCHAR(255),
    usex_profile_headline VARCHAR(512),
    usex_employment_type VARCHAR(15),
    usex_company_name VARCHAR(255),
    usex_city_id INTEGER,
    usex_is_current CHAR(1),
    usex_start_date TIMESTAMP,
    usex_end_date TIMESTAMP,
    usex_industry VARCHAR(15),
    usex_description VARCHAR(512),
    usex_experience_type VARCHAR(15),
    PRIMARY KEY(usex_id),
    FOREIGN KEY(usex_entity_id) REFERENCES users(user_entity_id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(usex_city_id) REFERENCES city(city_id) ON UPDATE CASCADE ON DELETE CASCADE
);	

CREATE TABLE users_Skill(
    uski_id SERIAL,
	uski_entity_id integer not null,
    uski_modified_date TIMESTAMP,
    uski_skty_name VARCHAR(15) not null,
    PRIMARY KEY(uski_id),
	FOREIGN KEY(uski_entity_id) REFERENCES users(user_entity_id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(uski_skty_name) REFERENCES skill_type(skty_name) ON UPDATE CASCADE ON DELETE CASCADE
);

create table users_experiences_skill(
	uesk_usex_id integer not null,
	uesk_uski_id integer not null,
	primary key (uesk_usex_id,uesk_uski_id),
	foreign key(uesk_usex_id) references users_experiences(usex_id) on update cascade on delete cascade,
	foreign key(uesk_uski_id) references users_skill(uski_id) on update cascade on delete cascade
);

create table users_address(
	etad_addr_id integer primary key,
	etad_modified_date timestamp,
	etad_entity_id integer not null,
	etad_adty_id integer not null,
	foreign key(etad_addr_id) references address(addr_id) on update cascade on delete cascade,
	foreign key(etad_entity_id) references users(user_entity_id) on update cascade on delete cascade,
	foreign key(etad_adty_id) references address_type(adty_id) on update cascade on delete cascade
);

-- Table Jobs Part 1
create table employee_range(
    emra_id serial primary key,
    emra_range_min integer UNIQUE,
    emra_range_max integer UNIQUE,
    emra_modified_date timestamp
);

create table client(
    clit_id integer primary key,
    clit_name varchar(256) UNIQUE,
    clit_about varchar(512),
    clit_modified_date timestamp,
    clit_addr_id integer, 
    clit_emra_id integer,
	FOREIGN KEY (clit_addr_id) REFERENCES address(addr_id) on update cascade on delete cascade,
	FOREIGN KEY (clit_emra_id) REFERENCES employee_range(emra_id) on update cascade on delete cascade
);

create table job_category(
    joca_id serial primary key,
    joca_name varchar(255),
    joca_modified_date timestamp
    
);

create table job_type(
    joty_id serial primary key,
    joty_name varchar(56)
);

--Table HR
create table job_role(
  joro_id serial primary key,
  joro_name varchar(55) not null unique,
  joro_modified_date timestamp
);

create table department(
  dept_id serial primary key,
  dept_name varchar(50) not null,
  dept_modified_date timestamp
);

create table employee(
  emp_entity_id integer default hr_id() primary key UNIQUE NOT NULL,
  emp_emp_number varchar(25) not null unique,
  emp_national_id varchar(25) not null unique,
  emp_login_id varchar(85),
  emp_birth_date timestamp not null,
  emp_marital_status char(1) not null,
  emp_gender char(1) not null,
  emp_hire_date timestamp not null,
  emp_salaried_flag char(1) not null,
  emp_vacation_hours smallint,
  emp_sickleave_hours smallint,
  emp_current_flag smallint,
  emp_emp_entity_id integer,
  emp_modified_date timestamp,
  emp_joro_id integer not null,
  foreign key(emp_entity_id) references users(user_entity_id),
  foreign key(emp_emp_entity_id) references employee(emp_entity_id),
  foreign key(emp_joro_id) references job_role(joro_id)
);

create table employee_department_history(
  edhi_id serial,
  edhi_entity_id integer,
  edhi_start_date timestamp,
  edhi_end_date timestamp,
  edhi_modified_date timestamp,
  edhi_dept_id integer not null,
  constraint pk_employee_department_history primary key(edhi_id, edhi_entity_id),
  foreign key(edhi_entity_id) references employee(emp_entity_id),	
  foreign key(edhi_dept_id) references department(dept_id)
);

create table employee_pay_history(
  ephi_entity_id integer,
  ephi_rate_change_date timestamp,
  ephi_rate_salary integer,
  ephi_pay_frequence smallint,
  ephi_modified_date timestamp,
  constraint pk_employee_pay_history primary key(ephi_entity_id, ephi_rate_change_date),
  foreign key(ephi_entity_id) references employee(emp_entity_id)
);

create table employee_client_contract (
  ecco_entity_id integer,
  ecco_id serial,
  ecco_contract_no varchar(55),
  ecco_contract_date timestamp,
  ecco_start_date timestamp,
  ecco_end_date timestamp,
  ecco_comment varchar (512),
  ecco_modified_date timestamp,
  ecco_media_link varchar (255),
  ecco_status varchar(15),
  ecco_joty_id integer not null,
  ecco_account_manager integer not null,
  ecco_clit_id integer not null,
  constraint pk_employee_client_contract primary key(ecco_entity_id, ecco_id),
  foreign key(ecco_entity_id) references employee(emp_entity_id),
  foreign key(ecco_joty_id) references job_type(joty_id),
  foreign key(ecco_account_manager) references employee(emp_entity_id),
  foreign key(ecco_clit_id) references client(clit_id)
);

--Tabel Jobs Part 2

create table job_post(
    jopo_id serial primary key NOT NULL,
    jopo_number varchar(25) default job_id() UNIQUE NOT NULL,
    jopo_title varchar(255) NOT NULL,
    jopo_min_salary integer,
    jopo_max_salary integer,
    jopo_description json,
    jopo_responsibility json,
    jopo_target json,
    jopo_benefit json,
    jopo_start_date timestamp,
    jopo_end_date timestamp,
    jopo_publish_date timestamp,
    jopo_modified_date timestamp,
    jopo_emp_entity_id integer NOT NULL,
    jopo_clit_id integer NOT NULL,
    jopo_joro_id integer NOT NULL,
    jopo_joty_id integer NOT NULL,
    jopo_joca_id integer NOT NULL,
    jopo_status varchar(15),
	FOREIGN KEY (jopo_emp_entity_id)REFERENCES employee(emp_entity_id) on update cascade on delete cascade,
	FOREIGN KEY (jopo_clit_id) REFERENCES client(clit_id) on update cascade on delete cascade,
	FOREIGN KEY (jopo_joro_id) REFERENCES job_role(joro_id) on update cascade on delete cascade,
	FOREIGN KEY (jopo_joty_id) REFERENCES job_type(joty_id) on update cascade on delete cascade,
	FOREIGN KEY (jopo_joca_id) REFERENCES job_category(joca_id) on update cascade on delete cascade
);

create table talent_apply(
    taap_id serial primary key,
    taap_jopo_id integer NOT NULL,
	taap_entity_id integer NOT NULL,
    taap_intro varchar(512),
    taap_scoring integer,
    taap_modified_date timestamp,
    taap_status varchar(15),
	FOREIGN KEY (taap_jopo_id) REFERENCES job_post(jopo_id) on update cascade on delete cascade,
	FOREIGN KEY (taap_entity_id) REFERENCES users(user_entity_id) on update cascade on delete cascade
);

create table talent_apply_progress(
    tapr_id serial primary key,
    tapr_modified_date timestamp,
    tapr_status varchar(15),
    tapr_comment varchar(256),
    tapr_taap_id integer not null,
    tapr_roac_id integer not null,
	FOREIGN KEY (tapr_taap_id) REFERENCES talent_apply(taap_id) on update cascade on delete cascade,
	FOREIGN KEY (tapr_roac_id) REFERENCES route_actions(roac_id) on update cascade on delete cascade
);

--Table Course Online
create table program_entity(
	prog_id serial primary key NOT NULL,
	prog_title varchar(256) NOT NULL,
	prog_headline varchar(512) NOT NULL,
	prog_type varchar(15),
	prog_learning_type varchar(15),
	prog_rating numeric,
	prog_total_student integer,
	prog_modified_date timestamp,
	prog_image varchar(256),
	prog_city_id integer,
	prog_cate_id integer,
	FOREIGN KEY (prog_city_id) REFERENCES city(city_id) on update cascade on delete cascade,
	FOREIGN KEY (prog_cate_id) REFERENCES category(cate_id) on update cascade on delete cascade
);

create table courses(
	corse_prog_id serial primary key,
	corse_best_seler char(1),
	corse_price numeric,
	corse_language varchar(35),
	corse_item_learning json,
	corse_item_include json,
	corse_requirement json,
	corse_description json,
	corse_target_level json,
	corse_modified_date timestamp,
	corse_status varchar(15),
	FOREIGN KEY (corse_prog_id) REFERENCES program_entity(prog_id) on update cascade on delete cascade
);

create table course_review(
	core_prog_id serial NOT NULL,
	core_entity_id integer NOT NULL,
	core_review varchar(512),
	core_rating integer,
	core_modified_date timestamp,
	PRIMARY KEY ( core_prog_id , core_entity_id ),
	FOREIGN KEY (core_prog_id) REFERENCES courses(corse_prog_id) on update cascade on delete cascade,
	FOREIGN KEY (core_entity_id) REFERENCES users(user_entity_id) on update cascade on delete cascade
);

create table student_course(
	stud_prog_id integer NOT NULL,
	stud_entity_id integer NOT NULL,
	stud_start_date timestamp,
	stud_end_date timestamp,
	stud_certificated char(1),
	stud_certificate_link varchar(255),
	stud_modified_date timestamp,
	stud_access_token varchar(255),
	stud_access_grant char(1),
	stud_status varchar(15),
	PRIMARY KEY ( stud_prog_id , stud_entity_id ),
	FOREIGN KEY (stud_prog_id) REFERENCES courses(corse_prog_id) on update cascade on delete cascade,
	FOREIGN KEY (stud_entity_id) REFERENCES users(user_entity_id) on update cascade on delete cascade
);

create table instructor_course(
	inco_id serial,
	inco_entity_id integer NOT NULL,
	inco_prog_id integer NOT NULL,
	inco_modified_date timestamp,
	PRIMARY KEY ( inco_id , inco_prog_id , inco_entity_id ),
	FOREIGN KEY (inco_prog_id) REFERENCES courses(corse_prog_id) on update cascade on delete cascade,
	FOREIGN KEY (inco_entity_id) REFERENCES employee(emp_entity_id) on update cascade on delete cascade	
);

create table contents(
	cont_id serial UNIQUE NOT NULL,
	cont_prog_id integer NOT NULL,
	cont_title  varchar(100),
	cont_preview char(1),
	cont_description varchar(256),
	cont_total_section integer,
	cont_total_lecture integer,
	cont_total_minute integer,
	cont_modified_date timestamp,
	PRIMARY KEY ( cont_id , cont_prog_id  ),
	FOREIGN KEY (cont_prog_id) REFERENCES courses(corse_prog_id) on update cascade on delete cascade
);

create table content_section(
	cose_id serial PRIMARY KEY ,
	cose_title varchar(256),
	cose_preview char(1),
	cose_note varchar(256),
	cose_minute integer,
	cose_modified_date timestamp,
	cose_cont_id integer not null,
	FOREIGN KEY (cose_cont_id) REFERENCES contents(cont_id) on update cascade on delete cascade
);

create table student_evaluation(
	stev_id serial primary key,
	stev_entity_id integer,
	stev_score integer,
	stev_date timestamp,
	stev_modified_date timestamp,
	stev_cont_id integer,
	FOREIGN KEY (stev_entity_id) REFERENCES users(user_entity_id) on update cascade on delete cascade,
	FOREIGN KEY (stev_cont_id) REFERENCES contents(cont_id) on update cascade on delete cascade
);

CREATE TABLE content_section_material(
	cosm_id serial PRIMARY KEY NOT NULL,
	cosm_filename varchar(55),
	cosm_filesize integer,
	cosm_filetype varchar(15),
	cosm_filelink varchar(255),
	cosm_modified_date timestamp,
	cosm_cose_id integer,
	FOREIGN KEY (cosm_cose_id) REFERENCES content_section(cose_id) on update cascade on delete cascade
);

--Table Bootcamp
CREATE TABLE batch
(
    batch_id serial,
    batch_prog_id integer,
    batch_name varchar(15),
    batch_start_date date,
    batch_end_date date,
    batch_status varchar(15),
    batch_reason varchar(255),
    batch_type varchar(15),
    batch_modified_date date,
    batch_recruiter_id integer,
    batch_instructor_id integer,
    batch_co_instructor_id integer,
    CONSTRAINT batch_pkey PRIMARY KEY (batch_id),
    CONSTRAINT batch_batch_co_instructor_id_fkey FOREIGN KEY (batch_co_instructor_id) REFERENCES employee(emp_entity_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT batch_batch_instructor_id_fkey FOREIGN KEY (batch_instructor_id) REFERENCES employee(emp_entity_id) ON UPDATE CASCADE ON DELETE CASCADE,        
    CONSTRAINT batch_batch_prog_id_fkey FOREIGN KEY (batch_prog_id) REFERENCES program_entity(prog_id) ON UPDATE CASCADE ON DELETE CASCADE, 
    CONSTRAINT batch_batch_recruiter_id_fkey FOREIGN KEY (batch_recruiter_id) REFERENCES employee(emp_entity_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE batch_student
(
    bast_id serial,
    bast_batch_id integer,
    bast_entity_id integer,
    bast_status varchar(15),
    bast_review varchar(512),
    bast_total_score integer,
    bast_modified_date date,
    CONSTRAINT batch_student_pkey PRIMARY KEY (bast_id, bast_batch_id, bast_entity_id),
    CONSTRAINT bast_id_unique UNIQUE (bast_id),
    CONSTRAINT batch_student_bast_batch_id_fkey FOREIGN KEY (bast_batch_id)
        REFERENCES batch(batch_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT batch_student_bast_entity_id_fkey FOREIGN KEY (bast_entity_id)
        REFERENCES users(user_entity_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

CREATE TABLE batch_student_evaluation
(
    base_id integer,
    base_type varchar(15),
    base_skill varchar(256),
    base_grade integer,
    base_note varchar(256),
    base_order integer,
    base_modified_date date,
    base_bast_id integer,
    CONSTRAINT batch_student_evaluation_pkey PRIMARY KEY (base_id),
    CONSTRAINT batch_student_evaluation_base_bast_id_fkey FOREIGN KEY (base_bast_id)
        REFERENCES batch_student(bast_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

CREATE TABLE bootcamp_apply
(
    boap_prog_id integer,
    boap_entity_id integer,
    boap_total_skor integer,
    boap_review varchar(255),
    boap_modified_date date,
    boap_status varchar(15),
    CONSTRAINT bootcamp_apply_pkey PRIMARY KEY (boap_prog_id, boap_entity_id),
    CONSTRAINT bootcamp_apply_boap_entity_id_fkey FOREIGN KEY (boap_entity_id)
        REFERENCES users (user_entity_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT bootcamp_apply_boap_prog_id_fkey FOREIGN KEY (boap_prog_id)
        REFERENCES program_entity (prog_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
CREATE TABLE bootcamp_apply_progress
(
    bapr_id integer,
    bapr_prog_id integer,
    bapr_entity_id integer,
    boar_comment varchar(512),
    boar_modified_date date,
    bor_status character varying(15),
    bapr_roac_id integer,
    CONSTRAINT bootcamp_apply_progress_pkey PRIMARY KEY (bapr_id, bapr_prog_id, bapr_entity_id),
    CONSTRAINT bootcamp_apply_progress_bapr_prog_id_bapr_entity_id_fkey FOREIGN KEY (bapr_entity_id, bapr_prog_id)
        REFERENCES bootcamp_apply (boap_entity_id, boap_prog_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT bootcamp_apply_progress_bapr_roac_id_fkey FOREIGN KEY (bapr_roac_id)
        REFERENCES route_actions (roac_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE programs_review
(
    pore_prog_id integer,
    pore_entity_id integer,
    bore_review varchar(512),
    bore_rating integer,
    bore_modified_date date,
    CONSTRAINT programs_review_pkey PRIMARY KEY (pore_prog_id, pore_entity_id),
    CONSTRAINT programs_review_pore_entity_id_fkey FOREIGN KEY (pore_entity_id)
        REFERENCES users(user_entity_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT programs_review_pore_prog_id_fkey FOREIGN KEY (pore_prog_id)
        REFERENCES program_entity(prog_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

--Table Sales
CREATE TABLE sales_order_header(
	sohe_id serial unique,
	sohe_student_entity_id integer,
	sohe_revision_number integer,
	sohe_order_date timestamp,
	sohe_due_date timestamp,
	sohe_ship_date timestamp,
	sohe_order_number varchar(25) unique,
	sohe_account_number varchar(25),
	sohe_patr_trx_number varchar(25),
	sohe_subtotal numeric,
	sohe_tax numeric, 
	sohe_total_discount numeric,
	sohe_total_due numeric,
	sohe_comment varchar(255),
	sohe_access_token varchar(255),
	sohe_modified_date timestamp,
	sohe_ship_address integer,
	sohe_status varchar(15),
	PRIMARY KEY ( sohe_id , sohe_student_entity_id ),
	FOREIGN KEY (sohe_student_entity_id) REFERENCES users(user_entity_id) on update cascade on delete cascade,
	FOREIGN KEY (sohe_ship_address) REFERENCES address(addr_id) on update cascade on delete cascade,
	FOREIGN KEY (sohe_status) REFERENCES status(status) on update cascade on delete cascade
);

CREATE TABLE cart_items(
	cait_id serial primary key NOT NULL,
	cait_quantity integer,
	cait_modified_date timestamp,
	cait_entity_id integer,
	cait_prog_id integer,
	FOREIGN KEY (cait_entity_id) REFERENCES users(user_entity_id) on update cascade on delete cascade,
	FOREIGN KEY (cait_prog_id) REFERENCES program_entity(prog_id) on update cascade on delete cascade
);

CREATE TABLE coupon_ofter(
	coof_id serial primary key,
	coof_description varchar(255),
	coof_discount numeric,
	coof_status varchar(15),
	coof_start_date timestamp,
	coof_end_date timestamp,
	coof_min_qty integer,
	coof_max_qty integer,
	coof_modified_date timestamp,
	coof_cate_id integer,
	FOREIGN KEY (coof_cate_id) REFERENCES cart_items(cait_id) on update cascade on delete cascade
);

CREATE TABLE sales_order_detail(
	sode_id serial PRIMARY KEY NOT NULL,
	sode_qty integer,
	sode_unit_price numeric,
	sode_unit_price_discount numeric,
	sode_line_total numeric,
	sode_modified_date timestamp,
	sode_prog_id integer,
	sode_coof_id integer,
	sode_sohe_id integer,
	FOREIGN KEY (sode_prog_id) REFERENCES program_entity(prog_id) on update cascade on delete cascade,
	FOREIGN KEY (sode_coof_id) REFERENCES coupon_ofter(coof_id) on update cascade on delete cascade,
	FOREIGN KEY (sode_sohe_id) REFERENCES sales_order_header(sohe_id) on update cascade on delete cascade
);

CREATE TABLE coupon_ofter_course(
	saca_coof_id serial NOT NULL,
	saca_prog_id integer NOT NULL,
	saca_modified_date timestamp,
	PRIMARY KEY ( saca_coof_id, saca_prog_id),
	FOREIGN KEY (saca_coof_id) REFERENCES coupon_ofter(coof_id) on update cascade on delete cascade,
	FOREIGN KEY (saca_prog_id) REFERENCES program_entity(prog_id) on update cascade on delete cascade
);

--Table Payment
create table bank(
	bank_entity_id int primary key,
	bank_code varchar(10) unique,
	bank_name varchar(55) unique,
	bank_modified_date timestamp,
  	foreign key (bank_entity_id) references entity(entity_id) on update cascade on delete cascade
);

create table payment_gateaway(
	paga_entity_id int primary key,
	paga_code varchar(10) unique,
	paga_name varchar(55) unique,
	paga_virtual_account varchar(25) unique,
	paga_modified_date timestamp,
	paga_owner_id int,
	foreign key (paga_owner_id) references users(user_entity_id) on update cascade on delete cascade
);

create table user_accounts(
	usac_entity_id int,
	usac_user_entity_id int,
	usac_account_number varchar(25) unique,
	usac_saldo numeric,
	usac_type varchar(15),
	usac_start_date date,
	usac_end_date date,
	usac_modified_date timestamp,
	usac_branch varchar(25),
	usac_branch_city int,
	primary key (usac_entity_id, usac_user_entity_id),
	foreign key (usac_entity_id) references entity(entity_id) on update cascade on delete cascade,
	foreign key (usac_user_entity_id) references users(user_entity_id) on update cascade on delete cascade,
	foreign key (usac_branch_city) references city(city_id)
);

create table payment_transaction(
	patr_id serial primary key,
	patr_trx_number varchar(55) unique,
	patr_debet numeric,
	patr_credit numeric,
	patr_type varchar(15),
	patr_note varchar(255),
	patr_modified_date timestamp,
	patr_source_id varchar(25),
	patr_target_id varchar(25),
	patr_trx_number_ref varchar(55) unique,
	patr_user_entity_id int,
	foreign key (patr_source_id) references user_accounts(usac_account_number) on update cascade on delete cascade,
	foreign key (patr_target_id) references user_accounts(usac_account_number) on update cascade on delete cascade,
	foreign key (patr_user_entity_id) references users(user_entity_id) on update cascade on delete cascade
);