--
--  tables used during the bootstrapping process to safely load users and clients.
-- These are not needed if you're not using the users.sql/clients.sql files to bootstrap the database.
--

CREATE  TABLE IF NOT EXISTS authorities_temp (
      username varchar(50) not null,
      authority varchar(50) not null,
      constraint ix_authority_temp unique (username,authority));
      
CREATE  TABLE IF NOT EXISTS users_temp (
      username varchar(50) not null primary key,
      password varchar(50) not null,
      enabled boolean not null);

CREATE  TABLE IF NOT EXISTS user_info_temp (
	sub VARCHAR(256) not null primary key,
	preferred_username VARCHAR(256),
	name VARCHAR(256),
	given_name VARCHAR(256),
	family_name VARCHAR(256),
	middle_name VARCHAR(256),
	nickname VARCHAR(256),
	profile VARCHAR(256),
	picture VARCHAR(256),
	website VARCHAR(256),
	email VARCHAR(256),
	email_verified BOOLEAN,
	gender VARCHAR(256),
	zone_info VARCHAR(256),
	locale VARCHAR(256),
	phone_number VARCHAR(256),
	address_id VARCHAR(256),
	updated_time VARCHAR(256),
	birthdate VARCHAR(256)
);

CREATE  TABLE IF NOT EXISTS client_details_temp (
	client_description VARCHAR(256),
	dynamically_registered BOOLEAN,
	id_token_validity_seconds BIGINT,
	
	client_id VARCHAR(256),
	client_secret VARCHAR(2048),
	access_token_validity_seconds BIGINT,
	refresh_token_validity_seconds BIGINT,
	allow_introspection BOOLEAN,
	
	client_name VARCHAR(256)
);

CREATE  TABLE IF NOT EXISTS client_scope_temp (
	owner_id VARCHAR(256),
	scope VARCHAR(2048)
);

CREATE  TABLE IF NOT EXISTS client_redirect_uri_temp (
	owner_id VARCHAR(256),
	redirect_uri VARCHAR(2048) 
);

CREATE  TABLE IF NOT EXISTS client_grant_type_temp (
	owner_id VARCHAR(256),
	grant_type VARCHAR(2000)
);

CREATE  TABLE IF NOT EXISTS system_scope_temp (
	scope VARCHAR(256),
	description VARCHAR(4096),
	icon VARCHAR(256),
	restricted BOOLEAN,
	default_scope BOOLEAN
);
