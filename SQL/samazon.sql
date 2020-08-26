DROP DATABASE IF EXISTS samazon;
CREATE DATABASE samazon;
ALTER DATABASE samazon CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;

USE samazon;

CREATE TABLE users (
  id            INTEGER PRIMARY KEY AUTO_INCREMENT,
  first_name    VARCHAR(255) DEFAULT 'N/A',
  last_name     VARCHAR(255) DEFAULT 'N/A',
  email         VARCHAR(255) NOT NULL UNIQUE,
  `password`    VARCHAR(255) NOT NULL,
  phone_number  VARCHAR(255) DEFAULT 'N/A'
);

CREATE TABLE credit_cards (
  id            INTEGER PRIMARY KEY AUTO_INCREMENT,
  `number`      INTEGER NOT NULL,
  user_id       INTEGER,

  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE addresses (
  id              INTEGER PRIMARY KEY AUTO_INCREMENT,
  street_address  VARCHAR(255) NOT NULL,
  province        VARCHAR(255) NOT NULL,
  postal_code     VARCHAR(255) NOT NULL,
  user_id         INTEGER,

  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE products (
  id              INTEGER PRIMARY KEY AUTO_INCREMENT,
  `name`          VARCHAR(255) NOT NULL,
  `description`   MEDIUMTEXT NOT NULL,
  `image`         MEDIUMBLOB,
  price           DECIMAL(8,2)
);

CREATE TABLE orders (
  id                INTEGER PRIMARY KEY AUTO_INCREMENT,
  `timestamp`       DATETIME NOT NULL DEFAULT NOW(),
  user_id           INTEGER,
  payment_id        INTEGER,
  shipping_address  INTEGER,
  billing_address   INTEGER,

  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (payment_id) REFERENCES credit_cards(id) ON DELETE CASCADE,
  FOREIGN KEY (shipping_address) REFERENCES addresses(id) ON DELETE CASCADE,
  FOREIGN KEY (billing_address) REFERENCES addresses(id) ON DELETE CASCADE
);

CREATE TABLE product_feedback (
  id          INTEGER PRIMARY KEY AUTO_INCREMENT,
  product_id  INTEGER,
  user_id     INTEGER,
  rating      FLOAT(3,2) NOT NULL DEFAULT 2.5,
  `message`   TEXT,

  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE SET NULL
);

CREATE TABLE order_products (
  id          INTEGER PRIMARY KEY AUTO_INCREMENT,
  order_id    INTEGER,
  product_id  INTEGER,
  row_3       TINYINT DEFAULT NULL,

  FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE SET NULL,
  FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);

CREATE TABLE categories (
  id              INTEGER PRIMARY KEY AUTO_INCREMENT,
  `name`          VARCHAR(255) NOT NULL,
  `description`   TEXT NOT NULL
);

CREATE TABLE product_categories (
  id            INTEGER PRIMARY KEY AUTO_INCREMENT,
  product_id    INTEGER,
  category_id   INTEGER,

  FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
  FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
);