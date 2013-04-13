-- Database = "appusers"

-- Table ROLE

CREATE TABLE role
(
   id        NUMBER (20) NOT NULL,
   role      NUMBER (11) DEFAULT NULL,
   user_id   NUMBER (20) DEFAULT NULL
);

ALTER TABLE role ADD (
  CONSTRAINT PK_ROLE
 PRIMARY KEY
 (ID)
 );

CREATE SEQUENCE role_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE;

CREATE TRIGGER role_trigger
   BEFORE INSERT
   ON role
   FOR EACH ROW
BEGIN
   SELECT role_seq.NEXTVAL INTO :new.id FROM DUAL;
END;

INSERT INTO role (id, role, user_id)
     VALUES (1, 1, 1);

INSERT INTO role (id, role, user_id)
     VALUES (2, 2, 2);

INSERT INTO role (id, role, user_id)
     VALUES (3, 1, 3);

INSERT INTO role (id, role, user_id)
     VALUES (4, 1, 4);

-- Table SUSER

CREATE TABLE suser
(
   id          NUMBER (20) NOT NULL,
   firstName   VARCHAR (255) DEFAULT NULL,
   lastName    VARCHAR (255) DEFAULT NULL,
   password    VARCHAR (255) DEFAULT NULL,
   username    VARCHAR (255) DEFAULT NULL
);

ALTER TABLE suser ADD (
  CONSTRAINT PK_suser
 PRIMARY KEY
 (ID)
 );

CREATE SEQUENCE suser_seq
   START WITH 1
   INCREMENT BY 1
   NOMAXVALUE;

CREATE TRIGGER suser_trigger
   BEFORE INSERT
   ON suser
   FOR EACH ROW
BEGIN
   SELECT suser_seq.NEXTVAL INTO :new.id FROM DUAL;
END;

INSERT INTO suser (id,
                        firstName,
                        lastName,
                        password,
                        username)
     VALUES (1,
             'User1Name',
             'User1Lastname',
             'pass1',
             'user1');

INSERT INTO suser (id,
                        firstName,
                        lastName,
                        password,
                        username)
     VALUES (2,
             'User2Name',
             'User2Lastname',
             'pass2',
             'user2');

INSERT INTO suser (id,
                        firstName,
                        lastName,
                        password,
                        username)
     VALUES (3,
             'User3Name',
             'User3Lastname',
             'pass3',
             'user3');

INSERT INTO suser (id,
                        firstName,
                        lastName,
                        password,
                        username)
     VALUES (4,
             'User4Name',
             'User4Lastname',
             'pass4',
             'user4');

ALTER TABLE role ADD CONSTRAINT FK_role_suser FOREIGN KEY (user_id) REFERENCES suser (id);

