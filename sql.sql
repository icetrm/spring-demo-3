DROP TABLE people IF EXISTS;

CREATE TABLE people  (
    person_id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
)