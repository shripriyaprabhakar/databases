/* drop all new tables before regenerating when there is bug in schema */
DROP DATABASE IF EXISTS chat;
DROP SCHEMA IF EXISTS users;
DROP SCHEMA IF EXISTS rooms;
DROP SCHEMA IF EXISTS messages;

CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id INT NOT NULL,
  name VARCHAR(20),

  PRIMARY KEY (id)
);

CREATE TABLE rooms (
  id INT NOT NULL,
  name VARCHAR(20),

  PRIMARY KEY (id)
);

/* Describe your table here.*/
CREATE TABLE messages (
  id INT NOT NULL,
  user INT NOT NULL,  /* foreign key needed */
  message VARCHAR(50),
  createdAt VARCHAR(30),
  room INT NOT NULL, /* foreign key needed */


  PRIMARY KEY (id),

  FOREIGN KEY (user) 
    REFERENCES users (id),

  FOREIGN KEY (room) 
    REFERENCES rooms (id)

);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

