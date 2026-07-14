CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    is_active BOOLEAN
);

SELECT *
FROM pg_tables
WHERE schemaname ='public';

CREATE TABLE product (
	id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	fee NUMERIC(10,2)
);