SELECT * FROM my_db.users;

update my_db.users set password = '{bcrypt}$2a$10$Yx.UqzKG9cv2gSH7epZJU.ln4dPEd.942zNuCjxespaVaAFUV7i0a'
 where username = 'alex';
update my_db.users set password = '{bcrypt}$2a$10$iY6dMn1fGC0D.Xc7mq8sc.BUYXHOB25zU.FWNmwJlb.ZMoY9M2Fjy' where username = 'nasty';
update my_db.users set password = '{bcrypt}$2a$10$UK7qlkYyUW45NTJ/eKu0n.J1SmveGFYRR.jZBG0Hi4u5/YwXxvxg.' where username = 'ivan';

    