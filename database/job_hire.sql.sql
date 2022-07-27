-- create table
create table employee_range(
    emra_id serial primary key NOT NULL,
    emra_range_min integer UNIQUE,
    emra_range_max integer UNIQUE,
    emra_modified_date timestamp
);
-- select * from employee_range;

create table client(
    clit_id integer primary key NOT NULL,
    clit_name varchar(256) NOT NULL UNIQUE,
    clit_about varchar(512),
    clit_modified_date timestamp,
    clit_addr_id integer, 
    clit_emra_id integer
);
-- select * from client;

create table job_category(
    joca_id serial primary key NOT NULL,
    joca_name varchar(255),
    joca_modified_date timestamp
    
);
-- select * from job_category;

create table job_type(
    joty_id serial primary key NOT NULL,
    joty_name varchar(56)
);
-- select * from job_type;

create table job_post(
    jopo_id serial primary key NOT NULL,
    jopo_number varchar(25) UNIQUE NOT NULL,
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
    jopo_joro_id integer,
    jopo_joty_id integer,
    jopo_joca_id integer,
    jopo_status varchar(15)    
);
-- select * from job_post;

create table talent_apply(
    taap_id serial NOT NULL,
    taap_entity_id integer NOT NULL,
    taap_jopo_id integer NOT NULL,
    taap_intro varchar(512),
    taap_scoring integer,
    taap_modified_date timestamp,
    taap_status varchar(15)
);
-- select * from talent_apply;

create table talent_apply_progress(
    tapr_id serial primary key,
    tapr_modified_date timestamp,
    tapr_status varchar(15),
    tapr_comment varchar(256),
    tapr_entity_id integer,
    tapr_roac_id integer
);
-- select * from talent_apply_progress;

--create fk key
ALTER TABLE client 
ADD FOREIGN KEY (clit_addr_id)
REFERENCES address(addr_id) on update cascade on delete cascade ;

ALTER TABLE client 
ADD FOREIGN KEY (clit_emra_id)
REFERENCES employee_range(emra_id) on update cascade on delete cascade;

ALTER TABLE job_post 
ADD FOREIGN KEY (jopo_emp_entity_id)
REFERENCES employee(emp_entity_id) on update cascade on delete cascade;

ALTER TABLE job_post 
ADD FOREIGN KEY (jopo_clit_id)
REFERENCES client(clit_id) on update cascade on delete cascade;

ALTER TABLE job_post 
ADD FOREIGN KEY (jopo_joro_id)
REFERENCES job_role(joro_id) on update cascade on delete cascade;

ALTER TABLE job_post 
ADD FOREIGN KEY (jopo_joty_id)
REFERENCES job_type(joty_id) on update cascade on delete cascade;

ALTER TABLE job_post 
ADD FOREIGN KEY (jopo_joca_id)
REFERENCES job_category(joca_id) on update cascade on delete cascade;

ALTER TABLE job_post 
ADD FOREIGN KEY (jopo_status)
REFERENCES talent_apply(taap_status) on update cascade on delete cascade;

ALTER TABLE talent_apply
ADD PRIMARY KEY (taap_id, taap_entity_id , taap_jopo_id) 

ALTER TABLE talent_apply 
ADD FOREIGN KEY (taap_entity_id)
REFERENCES users(user_entity_id) on update cascade on delete cascade;

ALTER TABLE talent_apply 
ADD FOREIGN KEY (taap_jopo_id)
REFERENCES job_post(jopo_id) on update cascade on delete cascade;

ALTER TABLE talent_apply_progress
ADD FOREIGN KEY (tapr_entity_id)
REFERENCES talent_apply(taap_entity_id) on update cascade on delete cascade;

ALTER TABLE talent_apply_progress
ADD FOREIGN KEY (tapr_roac_id)
REFERENCES route_actions(roac_id) on update cascade on delete cascade;

--Insert table
INSERT INTO job_type(joty_name) VALUES ('Magang');
INSERT INTO job_type(joty_name) VALUES ('Full-Time');
INSERT INTO job_type(joty_name) VALUES ('Part-Time');
INSERT INTO job_type(joty_name) VALUES ('Freelance');
INSERT INTO job_type(joty_name) VALUES ('Contract');
INSERT INTO job_type(joty_name) VALUES ('Prohibation');

INSERT INTO client(clit_id, clit_name, clit_about) 
VALUES (1, 'Code ID', 'CodeId adalah perusahaan…');
INSERT INTO client(clit_id, clit_name, clit_about) 
VALUES (2, 'Telkomsel', 'CodeId adalah perusahaan…' );
INSERT INTO client(clit_id, clit_name, clit_about) 
VALUES (3, 'Astra International', 'CodeId adalah perusahaan…');

INSERT INTO job_category(joca_name) VALUES ('Software Engineer');
INSERT INTO job_category(joca_name) VALUES ('Business Development');
INSERT INTO job_category(joca_name) VALUES ('Marketing');
INSERT INTO job_category(joca_name) VALUES ('Operations');

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
VALUES (9, 1, 'perkenalkan nama saya andhika, saya data scienties anthusias', 8, 'interview');

INSERT INTO talent_apply_progress(tapr_status, tapr_entity_id , tapr_roac_id)
VALUES ('done', 9, 10); 
INSERT INTO talent_apply_progress(tapr_status, tapr_entity_id , tapr_roac_id)
VALUES ('done', 9, 11); 
INSERT INTO talent_apply_progress(tapr_status, tapr_entity_id , tapr_roac_id)
VALUES ('waiting', 9, 12); 
INSERT INTO talent_apply_progress(tapr_status, tapr_entity_id , tapr_roac_id)
VALUES ('waiting', 9, 14); 