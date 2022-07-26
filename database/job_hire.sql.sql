create table employee_range(
    emra_id serial primary key NOT NULL,
    emra_range_min integer UNIQUE,
    emra_range_max integer UNIQUE,
    emra_modified_date timestamp
);
create table client(
    clit_id integer primary key NOT NULL,
    clit_name varchar(256) NOT NULL UNIQUE,
    clit_about varchar(512),
    clit_modified_date timestamp,
    clit_addr_id integer, 
    clit_emra_id integer
);
create table job_category(
    joca_id serial primary key NOT NULL,
    joca_name varchar(255),
    joca_modified_date timestamp
    
);
create table job_type(
    joty_id serial primary key NOT NULL,
    joty_name varchar(56)
);
create table job_post(
    jopo_id serial primary key NOT NULL.
    jopo_number varchar(25) UNIQUE NOT NULL,
    jopo_title varchar(255) NOT NULL,
    jopo_min_salary number,
    jopo_max_salary number,
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
create table talent_apply(
    taap_id serial primary key NOT NULL,
    taap_entity_id integer NOT NULL,
    taap_jopo_id integer NOT NULL,
    taap_intro varchar(512),
    taap_scoring integer,
    taap_modified_date timestamp,
    taap_status varchar(15)
);
create table talent_apply_progress(
    tapr_id serial primary key,
    tapr_modified_date timestamp,
    tapr_status varchar(15),
    tapr_comment varchar(256),
    tapr_entity_id integer,
    tapr_taap_id integer
);

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
ADD PRIMARY KEY ( taap_entity_id , taap_jopo_id ) 

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
ADD FOREIGN KEY (tapr_taap_id)
REFERENCES talent_apply(taap_id) on update cascade on delete cascade;

-- tapr_roac_id === taap_id


-- ALTER TABLE talent_apply_progress
-- ADD FOREIGN KEY (tapr_roac_id)
-- REFERENCES talent_apply(taap_entity_id);





