--- The master user, will can do this, create a user and add his permissions in database or schemas
CREATE USER database_user WITH PASSWORD 'Test_database';

--- Adding connect permission
GRANT CONNECT ON DATABASE dev_test to database_user;

--- Adding permissions to CREATE, USAGE and ALTER SCHEMA auth.
GRANT USAGE, CREATE, ALTER ON SCHEMA auth TO database_user;

--- Revoke permission to connect.
REVOKE CONNECT ON DATABASE postgres FROM public;

--- adding SELECT, INSERT, UPDATE, DELETE to a user inside the schema auth.
GRANT SELECT,INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA auth TO database_user;
