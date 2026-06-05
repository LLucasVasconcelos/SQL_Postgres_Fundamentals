
--- CREATE A SIMPLE TABLE FOR USERS
create table AUTH.users (
	id_user SERIAL primary key,
	username VARCHAR(100) not null unique, --should be unique, if it will be used for login
	email VARCHAR(150) not null unique, --should be unique
	hashed_password VARCHAR(100) not null
);

--- Because id_user is a serial, we do not need to add this on insert, the databse will do this for us.
insert into auth.users (username,email,hashed_password) values ('arthur_dent','arthur_dent@test.com','sopa_de_mamaco');
insert into auth.users (username,email,hashed_password) values ('Trillian','trillian@test.com','zaphod');
insert into auth.users (username,email,hashed_password) values ('Ford Prefect','ford_prefect@test.com','sensor_surbeta');
insert into auth.users (username,email,hashed_password) values ('marvin','marvin@test.com','i_am_sad_bro');
--- Show what we have until now on this table
select * from auth.users;

--- CREATE a table for services, here we create a reference to the table user, to use for a inner join later.
CREATE TABLE auth.service (
    id_service SERIAL PRIMARY KEY, -- Unique identifier for each service
    name VARCHAR(100) NOT null unique,        -- Name of the service unique for search
    type VARCHAR(50),                         -- Category or type of service
    price DECIMAL(10, 2) NOT NULL,            -- Price with 2 decimal places
    id_user INT,                              -- Foreign key column

    -- Creating the reference to the USERS table
    CONSTRAINT fk_user_services
        FOREIGN KEY (id_user)
        REFERENCES auth.users(id_user)
        ON DELETE CASCADE                     -- Optional: Deletes services if the user is deleted
);

--alter table auth.service  -- How to edit a existing column in table (IF NEEDED)
--	alter column name TYPE VARCHAR(100),
--	alter column name set not null,
--	add constraint service_name_unique unique (name);

insert into auth.service (name,type,price,id_user) values ('Male Long Hair Cut','long hair', 40.0,1);
insert into auth.service (name,type,price,id_user) values ('Male Short Hair Cut','short hair', 25.0,1);
insert into auth.service (name,type,price,id_user) values ('Female Short Hair Cut','short hair', 50.0, 2);
insert into auth.service (name,type,price,id_user) values ('Female Long Hair Cut','long hair', 70.0, 2);
insert into auth.service (name,type,price,id_user) values ('Male test Hair Cut','long hair', 70.0, 3);

--truncate table auth.users cascade; --- Remove all rows and clear the indices in table


select * from auth.service;

--drop table auth.users cascade; ---- Remove/delete all table
--drop table auth.service cascade; ---- Remove/delete all table




