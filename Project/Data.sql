
-- DATA

-- Headquarters

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Roadford Avenue', 7333, 'Charming', 'California', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('SAMCRO', '1967', 1);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Lisburn Road', 507, 'Belfast', 'North Ireland', 'United Kingdom');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('SAMBEL', '1987', 2);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('SAMDINO', '1969', 3);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('SAMLIN', '1972', 4);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('SAMTAC', '1970', 5);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('SAMTAZ', '1970', 6);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Alberta Charter', '1988', 7);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Alburquerque Charter', '1990', 8);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Anchorage Charter', '1989', 9);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Cheyenne Charter', '1995', 10);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Chicago Charter', '1999', 11);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Chino Charter', '1992', 12);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Chino Valley Charter', '1995', 13);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Denver Charter', '1989', 14);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Dungloe Charter', '1975', 15);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Eureka Charter', '1992', 16);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Fresno Charter', '1982', 17);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Geelong Charter', '1977', 18);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Germany Charter', '2003', 19);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Holland Charter', '1996', 20);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Av. Pla de la Massa', 8, 'Igualada', 'Catalunya', 'Spain');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Igualada Charter', '2020', 21);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Indian Hills Charter', '1973', 22);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Joilette Charter', '1995', 23);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Las Vegas Charter', '2010', 24);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Long Beach Charter', '1994', 25);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Manchester Charter', '2000', 26);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Moab Charter', '1989', 27);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('New England Charter', '1998', 28);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('New York City Charter', '1976', 29);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Newcastle Charter', '2013', 30);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Niagara Charter', '1992', 31);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Olympia Charter', '1987', 32);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Philadelphia Charter', '2001', 33);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Pittsburgh Charter', '1989', 34);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Poland Charter', '2015', 35);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Rahway Charter', '2008', 36);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Reno Charter', '1991', 37);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Rockford Charter', '1988', 38);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Rogue River Charter', '1990', 39);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Russia Charter', '1991', 40);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Salt Lake City Charter', '1981', 41);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('San Gabriel Charter', '1996', 42);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Sonoma Charter', '1995', 43);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Stockholm Charter', '1982', 44);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Stockton Charter', '2002', 45);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Tempe Charter', '1997', 46);

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Winnipeg Charter', '1990', 47);

-- Members

INSERT INTO members (firstname, lastname, nickname, sex, birthday, addressid, inband, headquarterid)
VALUES ('Jackson Nathaniel', 'Teller', 'Jax', 'M', '1978-05-19', 48, true, 1);

-- Bikes

INSERT INTO bikes (licenseplate, brand, model, motor, memberid)
VALUES ();

-- Business

INSERT INTO business (headquarterid, businesstype, date, deposit, client)
VALUES ();

-- Workers

INSERT INTO workers (businessid, employerid)
VALUES ();

-- Criminal Record

INSERT INTO criminalrecord (memberid, crime, jurydate, jailin, jailout)
VALUES ();

-- Guns

INSERT INTO guns (brand, model, guntype, memberid)
VALUES ();
