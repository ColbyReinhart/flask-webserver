/*
Create database
*/

-- DROP TABLE USERS;
-- DROP TABLE CATEGORIES;
-- DROP TABLE LEDGER;

CREATE TABLE USERS (
	ID INT PRIMARY KEY NOT NULL,
	NAME TEXT NOT NULL
);

CREATE TABLE CATEGORIES (
	ID INT PRIMARY KEY NOT NULL,
	NAME TEXT NOT NULL
);

CREATE TABLE LEDGER (
	ID INT PRIMARY KEY NOT NULL,
	NAME INT NOT NULL,
	DATE CHAR(10) NOT NULL,
	CATEGORY INT NOT NULL,
	AMOUNT INT NOT NULL,
	DESCRIPTION TEXT
);

INSERT INTO USERS VALUES (0, "Colby");
INSERT INTO USERS VALUES (1, "Sarah");

INSERT INTO CATEGORIES VALUES (0, "Groceries");
INSERT INTO CATEGORIES VALUES (1, "Bills");
INSERT INTO CATEGORIES VALUES (2, "Food");
INSERT INTO CATEGORIES VALUES (3, "School");
INSERT INTO CATEGORIES VALUES (4, "Supplies");
INSERT INTO CATEGORIES VALUES (5, "Repair/Maintenance");
INSERT INTO CATEGORIES VALUES (6, "Fun");
INSERT INTO CATEGORIES VALUES (7, "Misc");