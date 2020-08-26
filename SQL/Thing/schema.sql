DROP DATABASE IF EXISTS yelp;
CREATE DATABASE yelp;
ALTER DATABASE yelp CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

USE yelp;

CREATE TABLE users (
  id                    INTEGER PRIMARY KEY AUTO_INCREMENT,
  email                 VARCHAR(255) NOT NULL UNIQUE,
  `password`            VARCHAR(255) NOT NULL,
  phone_number          VARCHAR(15) DEFAULT NULL,
  created_timestamp     TIMESTAMP DEFAULT NOW() NOT NULL
);

CREATE TABLE places (
  id                    INTEGER PRIMARY KEY AUTO_INCREMENT,
  `name`                VARCHAR(255) NOT NULL UNIQUE,
  `description`         TEXT DEFAULT NULL,
  thumbnail             BLOB DEFAULT NULL -- or IMAGE or VARCHAR
);

CREATE TABLE ratings (
  id                    INTEGER PRIMARY KEY AUTO_INCREMENT,
  users_id              INTEGER NOT NULL,
  places_id             INTEGER NOT NULL,
  `message`             TEXT DEFAULT NULL,
  number_of_stars       TINYINT DEFAULT 3,

  FOREIGN KEY (users_id) REFERENCES users(id) ON UPDATE RESTRICT ON DELETE RESTRICT,
  FOREIGN KEY (places_id) REFERENCES places(id) ON UPDATE RESTRICT ON DELETE RESTRICT
);


INSERT INTO users (email, `password`, phone_number) VALUES
("test1@test.com", '2lkaflawefubi', '1-604-111-1111'),
("test2@test.com", '2lkaflawefubi', '1-604-111-1111'),
("test3@test.com", '2lkaflawefubi', '1-604-111-1111'),
("test4@test.com", '2lkaflawefubi', '1-604-111-1111'),
("test5@test.com", '2lkaflawefubi', '1-604-111-1111');

INSERT INTO places (`name`, `description`) VALUES
("test1", '2lkaflawewe323232323223nf;owaenffubi'),
("test2", '2lkaflawef12312312312312312312311ubi'),
("test3", '2lkaflawnqwindqilwnaaaaaa1l2ineefubi'),
("test4", '2lkaflaoawnefowenfionwnifewfwawefubi'),
("test5", '2lkaflanaefnawieaaaaaaaaaaaanfwefubi');

INSERT INTO ratings (users_id, places_id, `message`, number_of_stars) VALUES
(1, 1, '1-604-111-1111', 1),
(1, 1, '1-604-111-1111', 2),
(1, 1, '1-604-111-1111', 3),
(1, 1, '1-604-111-1111', 4),
(1, 1, '1-604-111-1111', 1),
(2, 1, '1-604-111-1111', 1),
(2, 1, '1-604-111-1111', 5),
(2, 1, '1-604-111-1111', 5),
(2, 1, '1-604-111-1111', 5),
(2, 1, '1-604-111-1111', 5);