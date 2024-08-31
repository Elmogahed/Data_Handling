create table users(
    user_id int, 
    firts_name varchar(255), 
    last_name varchar(255), 
    address text, 
    bio text, 
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp ON UPDATE current_timestamp
);

-- ALTER TABLE users
-- ADD email varchar(255)

-- ALTER TABLE users 
-- modify column created_at datetime

-- truncate table users

-- DROP TABLE users

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name varchar(255),
    job_title varchar(255),
    salary float,
    section varchar(255), 
    bio text
);

ALTER TABLE employees
add date_hire DATETIME default current_timestamp,
add job_degree int;

truncate table employees

drop TABLE employees














