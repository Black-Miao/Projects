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
                     userId INT NOT NULL);

CREATE TABLE admin(aid INT AUTO_INCREMENT PRIMARY KEY,
                   username VARCHAR(20) NOT NULL UNIQUE KEY,
                   password VARCHAR(20) NOT NULL);
