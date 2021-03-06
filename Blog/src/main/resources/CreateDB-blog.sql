CREATE DATABASE blog;

USE blog;

CREATE TABLE user(uid INT AUTO_INCREMENT PRIMARY KEY,
                  username VARCHAR(20) NOT NULL UNIQUE KEY,
                  password VARCHAR(20) NOT NULL,
                  email VARCHAR(40) NOT NULL UNIQUE KEY,
                  salt VARCHAR(40) NOT NULL UNIQUE KEY );

CREATE TABLE admin(aid INT AUTO_INCREMENT PRIMARY KEY,
                   username VARCHAR(20) NOT NULL UNIQUE KEY,
                   password VARCHAR(20) NOT NULL);

CREATE TABLE category(cid INT AUTO_INCREMENT PRIMARY KEY,
                      categoryName VARCHAR(30) NOT NULL UNIQUE ,
                      number INT);

CREATE TABLE article(id INT AUTO_INCREMENT PRIMARY KEY,
                     title VARCHAR(40) NOT NULL UNIQUE,
                     createTime DATETIME NOT NULL,
                     articlePath VARCHAR(50) NOT NULL UNIQUE,
                     categoryId INT,
                     FOREIGN KEY (categoryId) REFERENCES category(cid));

CREATE TABLE discuss(did INT AUTO_INCREMENT PRIMARY KEY,
                     createTime DATETIME NOT NULL,
                     message TEXT NOT NULL,
                     userId INT NOT NULL,
                     articleId INT NOT NULL,
                     ownId VARCHAR(50),
                     parentId VARCHAR(50),
                     FOREIGN KEY (userId) REFERENCES user(uid),
                     FOREIGN KEY (articleId) REFERENCES article(id));