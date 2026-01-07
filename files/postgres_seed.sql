CREATE DATABASE app_pg_db;

CREATE USER app_pg_user WITH PASSWORD 'app_pg_pass';

GRANT ALL PRIVILEGES ON DATABASE app_pg_db TO app_pg_user;

\c app_pg_db;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100)
);

INSERT INTO users (name, email)
VALUES ('Bob', 'bob@example.com');
