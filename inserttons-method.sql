DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(100) CHECK (role IN ('student','professor','admin')),
    department_id INT REFERENCES departments(id) ON DELETE SET NULL,
    metadata JSONB,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT NOW()
);
--insert single data into table
insert into departments(name) values('CSE');
select *from departments;

--insert multiple data at once
insert into departments(name) values('AI & ML'),('IT'),('CSBS'),('EE') on conflict (name) do nothing;
SELECT COUNT(*) FROM users;
select *from users;