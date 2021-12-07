CREATE DATABASE skilvulmusicstreaming;
USE skilvulmusicstreaming;

CREATE TABLE user 
( user_id INT(10) NOT NULL AUTO_INCREMENT, 
  name VARCHAR(50),
  email VARCHAR(50),
  password VARCHAR(30),
  PRIMARY KEY (user_id));
  
CREATE TABLE playlist 
( playlist_id INT(10) NOT NULL AUTO_INCREMENT, 
  user_id INT(10),
  tracks INT(10),
  PRIMARY KEY (playlist_id));  
  
CREATE TABLE album
( album_id INT(10) NOT NULL AUTO_INCREMENT, 
  name VARCHAR(50),
  singer_id INT(10),
  PRIMARY KEY (album_id));  
  
CREATE TABLE singer 
( singer_id INT(10) NOT NULL AUTO_INCREMENT, 
  name VARCHAR(50),
  PRIMARY KEY (playlist_id));  
	
CREATE TABLE track 
( track_id INT(10) NOT NULL AUTO_INCREMENT, 
  title VARCHAR(100),
  singer_id INT(10),
  album_id INT(10),
  PRIMARY KEY (track_idid),
  CONSTRAINT singer_id FOREIGN KEY (`singer_id`) REFERENCES `singer` (`singer_id`),
  CONSTRAINT album_id FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`)
  ); 
  
CREATE TABLE playlist_track 
( playlist_id INT(10), 
  track_id INT(10)
  CONSTRAINT playlist_id FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`),
  CONSTRAINT track_id FOREIGN KEY (`track_id`) REFERENCES `track` (`track_id`)
  );  
  
INSERT INTO user VALUES ('3240879', 'Eko', 'Eko_budidaya988@gmail.com', 'admin123');
INSERT INTO user VALUES ('3460652', 'Budi', 'Budi_daya6522@gmail.com', 'user123');
INSERT INTO user VALUES ('9140343', 'Siti', 'Siti_nurbaya283@gmail.com', 'password789');

INSERT INTO playlist VALUES ('0332532', '3240879', '0825');
INSERT INTO playlist VALUES ('0253363', '3460652', '0851');
INSERT INTO playlist VALUES ('0058979', '9140343', '0882');

INSERT INTO album VALUES ('1107990', 'Future Hearts', '10984329');
INSERT INTO album VALUES ('1197877', 'Wonder', '10984371');
INSERT INTO album VALUES ('1186986', 'Hot Sauce', '10024920');

INSERT INTO singer VALUES ('10984329', 'All Time Low');
INSERT INTO singer VALUES ('10984371', 'Shawn Mendes');
INSERT INTO singer VALUES ('10024920', 'NCT Dream');

INSERT INTO track VALUES ('082590', 'Missing You', '10984329', '1107990');
INSERT INTO track VALUES ('085175', 'Higher', '10984371', '1197877');
INSERT INTO track VALUES ('088248', 'Diggity', '10024920', '1186986');

INSERT INTO playlist_track VALUES ('0332532', '082590');
INSERT INTO playlist_track VALUES ('0253363', '085175');
INSERT INTO playlist_track VALUES ('0058979', '088248');


