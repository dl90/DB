DROP DATABASE IF EXISTS review;
CREATE DATABASE review;
ALTER DATABASE review CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

USE review;

DROP TABLE IF EXISTS services;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id          INTEGER PRIMARY KEY AUTO_INCREMENT,
  `name`      VARCHAR(255) NOT NULL,
  `address`   VARCHAR(255) NOT NULL
);

CREATE TABLE services (
  id          INTEGER PRIMARY KEY AUTO_INCREMENT,
  user_id     INTEGER,
  `type`      VARCHAR(255) NOT NULL,
  active      BOOLEAN DEFAULT 0,

  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO users (`name`, `address`)
VALUES 
("Test",  "123 TEST St"),
("test1", "321 TEST St");

INSERT INTO services (user_id, `type`, active)
VALUES
(1, "FULL",     1),
(2, "Garbage",  0);