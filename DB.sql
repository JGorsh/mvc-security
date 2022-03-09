USE my_db;

CREATE TABLE users (
  username varchar(15),
  password varchar(100),
  enabled tinyint(1),
  PRIMARY KEY (username)
) ;

CREATE TABLE authorities (
  username varchar(15),
  authority varchar(25),
  FOREIGN KEY (username) references users(username)
) ;

INSERT INTO my_db.users (username, password, enabled)
VALUES
	('alex', '{bcrypt}$2a$10$Yx.UqzKG9cv2gSH7epZJU.ln4dPEd.942zNuCjxespaVaAFUV7i0a', 1),
	('nasty', '{bcrypt}$2a$10$iY6dMn1fGC0D.Xc7mq8sc.BUYXHOB25zU.FWNmwJlb.ZMoY9M2Fjy', 1),
	('ivan', '{bcrypt}$2a$10$UK7qlkYyUW45NTJ/eKu0n.J1SmveGFYRR.jZBG0Hi4u5/YwXxvxg.', 1);
    
INSERT INTO my_db.authorities (username, authority)
VALUES
	('alex', 'ROLE_EMPLOYEE'),
	('nasty', 'ROLE_HR'),
    ('ivan', 'ROLE_HR'),
	('ivan', 'ROLE_MANAGER');
    
   