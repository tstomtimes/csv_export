SET CHARSET UTF8;
USE sample;

DROP TABLE IF EXISTS users;

CREATE TABLE users
(
  id INT(10),
  uname VARCHAR(100),
  email VARCHAR(200),
  tel VARCHAR(20)
);

INSERT INTO users VALUES (1, "田中浩一","tanaka@sample.com","000-0000-0000");
INSERT INTO users VALUES (2, "伊藤真司","ito@sample.com","000-0000-0000");
INSERT INTO users VALUES (3, "鈴木良","suzuki@sample.com","000-0000-0000");
INSERT INTO users VALUES (4, "遠藤正孝","endo@sample.com","000-0000-0000");
INSERT INTO users VALUES (5, "木村雪菜","kimura@sample.com","000-0000-0000");
INSERT INTO users VALUES (6, "小藤敏郎","koto@sample.com","000-0000-0000");
INSERT INTO users VALUES (7, "宮木美優","miyagi@sample.com","000-0000-0000");
INSERT INTO users VALUES (8, "本郷一郎","hongo@sample.com","000-0000-0000");
INSERT INTO users VALUES (9, "佐野純哉","sano@sample.com","000-0000-0000");
INSERT INTO users VALUES (10, "市川悟","ichikawa@sample.com","000-0000-0000");