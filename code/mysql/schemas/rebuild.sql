DROP DATABASE IF EXISTS docker_in_motion;
CREATE DATABASE docker_in_motion;
USE docker_in_motion;

DROP TABLE IF EXISTS person;
CREATE TABLE person (
    id int(11) NOT NULL AUTO_INCREMENT,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) DEFAULT NULL,
    description text,
    age int(11) DEFAULT NULL,
    PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO person VALUES 
    (1, 'Fisher', 'Price', 'Author of Docker In Motion', 34),
    (2, 'Mary', 'Magdalene', 'Famous personality', 37),
    (3, 'Joseph', 'Mathew', 'Nobody', 55);