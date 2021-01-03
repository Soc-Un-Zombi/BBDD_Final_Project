
-- DATA

-- Address (Headquarters)

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Roadford Avenue', 7333, 'Charming', 'California', 'United States');

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Lisburn Road', 507, 'Belfast', 'North Ireland', 'United Kingdom');

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Av. Pla de la Massa', 8, 'Igualada', 'Catalunya', 'Spain');

-- Address (Houses)

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('House', 'Ctra. Manresa', 59, 'Igualada', 'Catalunya', 'Spain');

-- Headquarters

INSERT INTO headquarters (foundation, addressid)
VALUES ('2000-10-31', 2);

INSERT INTO headquarters (foundation, addressid)
VALUES ('2002-08-25', 3);

INSERT INTO headquarters (foundation, addressid)
VALUES ('2008-03-17', 1);

-- Members / Patches

INSERT INTO members (firstname, lastname, nickname, sex, birthday, age, work, addressid, inband, headquarterid)
VALUES ('Joan Francesc', 'Pedro García', 'Juanpe', 'M', '2000-03-17', 20, 'Mechanic', 4, true, 3);

-- Bikes

INSERT INTO bikes (licenseplate, brand, model, motor, memberid)
VALUES ();

-- Business / Workers

INSERT INTO business (headquarterid, businesstype, date, deposit, client)
VALUES ();

INSERT INTO workers (businessid, employerid)
VALUES ();

-- Criminal Record

INSERT INTO criminalrecord (memberid, crime, jurydate, jailin, jailout)
VALUES ();

-- Guns

INSERT INTO guns (brand, model, guntype, memberid)
VALUES ();