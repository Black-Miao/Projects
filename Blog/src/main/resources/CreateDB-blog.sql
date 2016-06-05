CREATE DATABASE blog;

USE blog;

CREATE TABLE user(uid INT AUTO_INCREMENT PRIMARY KEY,
                  username VARCHAR(20) NOT NULL UNIQUE KEY,
                  password VARCHAR(20) NOT NULL,
                  email VARCHAR(40) NOT NULL UNIQUE KEY,
                  sex ENUM('1','2','3') DEFAULT '3',
                  birthday DATETIME);

CREATE TABLE discuss(did INT AUTO_INCREMENT PRIMARY KEY,
                     createTime DATETIME NOT NULL,
                     message TEXT NOT NULL,
                     userId INT NOT NULL,
                     articleId INT NOT NULL,
                     replyId INT);

CREATE TABLE admin(aid INT AUTO_INCREMENT PRIMARY KEY,
                   username VARCHAR(20) NOT NULL UNIQUE KEY,
                   password VARCHAR(20) NOT NULL);

CREATE TABLE article(id INT AUTO_INCREMENT PRIMARY KEY,
                     title VARCHAR(40) NOT NULL UNIQUE,
                     createTime DATETIME NOT NULL,
                     articlePath VARCHAR(50) NOT NULL UNIQUE,
                     categoryId INT);

CREATE TABLE category(cid INT AUTO_INCREMENT PRIMARY KEY,
                      catgoryName VARCHAR(30) UNIQUE ,
                      number INT);