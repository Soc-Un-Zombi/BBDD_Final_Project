
-- DATA

-- Address (Headquarters)

-- https://sonsofanarchy.fandom.com/wiki/Category:Sons_of_Anarchy_Charters

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Charter', 'Roadford Avenue', 7333, 'Charming', 'California', 'United States');

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Charter', 'Lisburn Road', 507, 'Belfast', 'North Ireland', 'United Kingdom');

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Charter', 'Av. Pla de la Massa', 8, 'Igualada', 'Catalunya', 'Spain');

-- Address (Houses)

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('House', 'Ctra. Manresa', 59, 'Igualada', 'Catalunya', 'Spain');

-- Headquarters

INSERT INTO Charters (chartername, foundation, addressid)
VALUES ('SAMCRO', '1967-05-07', 1);

-- Members / Patches

INSERT INTO members (firstname, lastname, nickname, sex, birthday, age, work, addressid, inband, chartersid)
VALUES ();

-- Bikes

INSERT INTO bikes (licenseplate, brand, model, motor, memberid)
VALUES ();

-- Business / Workers

INSERT INTO business (chartersid, businesstype, date, deposit, client)
VALUES ();

INSERT INTO workers (businessid, employerid)
VALUES ();

-- Criminal Record

INSERT INTO criminalrecord (memberid, crime, jurydate, jailin, jailout)
VALUES ();

-- Guns

INSERT INTO guns (brand, model, guntype, memberid)
VALUES ();
