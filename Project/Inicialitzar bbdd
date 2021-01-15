DROP DATABASE soa;

CREATE DATABASE soa;

\connect soa;


-- TABLES

-- Members: (Finished)
CREATE TABLE Members (
    MemberID      INT GENERATED ALWAYS AS IDENTITY,
    FirstName     VARCHAR (20) NOT NULL,
    LastName      VARCHAR (20) NOT NULL,
    Nickname      VARCHAR (20) NOT NULL,
    Sex           CHAR    (1)  NOT NULL,
    Birthday      DATE         NOT NULL,
    AddressID     INT          NOT NULL,
    InBand        BOOLEAN      NOT NULL,
    HeadquarterID INT
);

-- Patches: Multivalued atribute from Members (Finished)
CREATE TABLE Patches (
    Patch    VARCHAR (20) NOT NULL,
    MemberID INT          NOT NULL
);

-- Bikes: (Finished)
CREATE TABLE Bikes (
    LicensePlate VARCHAR (10) NOT NULL,
    Brand        VARCHAR (20) NOT NULL,
    Model        VARCHAR (30) NOT NULL,
    Motor        VARCHAR (30) NOT NULL,
    MemberID     INT          NOT NULL
);

-- Headquarters: (Finished)
CREATE TABLE Headquarters (
    HeadquarterID   INT GENERATED ALWAYS AS IDENTITY,
    HeadquarterName VARCHAR (30) NOT NULL,
    Foundation      INT          NOT NULL,
    AddressID       INT          NOT NULL
);

-- Business: (Finished)
CREATE TABLE Moves (
    MoveID        INT GENERATED ALWAYS AS IDENTITY,
    HeadquarterID INT          NOT NULL,
    MoveDesc      TEXT         NOT NULL,
    Date          DATE         NOT NULL,
    Deposit       FLOAT        NOT NULL
);

-- CriminalRecord: (Finished)
CREATE TABLE CriminalRecord (
    CrimeID   INT GENERATED ALWAYS AS IDENTITY,
    MemberID  INT          NOT NULL,
    Crime     VARCHAR (20) NOT NULL,
    JuryDate  DATE         NOT NULL,
    JailIn    DATE         NOT NULL,
    JailOut   DATE
);

-- Guns: (Finished)
CREATE TABLE Guns (
    GunID    INT GENERATED ALWAYS AS IDENTITY,
    Brand    VARCHAR (20) NOT NULL,
    Model    VARCHAR (20) NOT NULL,
    GunType  VARCHAR (20) NOT NULL,
    MemberID INT          NOT NULL
);

-- Address: (Finished)
CREATE TABLE Address (
    AddressID  INT GENERATED ALWAYS AS IDENTITY,
    Type       VARCHAR (20) NOT NULL,
    Street     VARCHAR (20) NOT NULL,
    Number     INT          NOT NULL,
    City       VARCHAR (20) NOT NULL,
    State      VARCHAR (20) NOT NULL,
    Country    VARCHAR (20) NOT NULL
);

-- PRIMARY KEYS

ALTER TABLE Members        ADD CONSTRAINT MembersPK        PRIMARY KEY (MemberID);

ALTER TABLE Patches        ADD CONSTRAINT PatchesPK        PRIMARY KEY (Patch, MemberID);

ALTER TABLE Bikes          ADD CONSTRAINT BikesPK          PRIMARY KEY (LicensePlate);

ALTER TABLE Headquarters   ADD CONSTRAINT HeadquartersPK   PRIMARY KEY (HeadquarterID);

ALTER TABLE Moves          ADD CONSTRAINT MovesPK          PRIMARY KEY (MoveID);

ALTER TABLE CriminalRecord ADD CONSTRAINT CriminalRecordPK PRIMARY KEY (CrimeID);

ALTER TABLE Guns           ADD CONSTRAINT GunsPK           PRIMARY KEY (GunID);

ALTER TABLE Address        ADD CONSTRAINT AddressPK        PRIMARY KEY (AddressID);

-- FOREING KEYS

ALTER TABLE Members        ADD CONSTRAINT MembersFK01        FOREIGN KEY (AddressID)     REFERENCES Address      (AddressID),
                           ADD CONSTRAINT MembersFK02        FOREIGN KEY (HeadquarterID) REFERENCES Headquarters (HeadquarterID);

ALTER TABLE Patches        ADD CONSTRAINT PatchesFK01        FOREIGN KEY (MemberID)      REFERENCES Members  (MemberID);

ALTER TABLE Bikes          ADD CONSTRAINT BikesFK01          FOREIGN KEY (MemberID)      REFERENCES Members  (MemberID);

ALTER TABLE Headquarters   ADD CONSTRAINT HeadquartersFK01   FOREIGN KEY (AddressID)     REFERENCES Address  (AddressID);

ALTER TABLE Moves          ADD CONSTRAINT MovesFK01          FOREIGN KEY (HeadquarterID) REFERENCES Headquarters (HeadquarterID);

ALTER TABLE CriminalRecord ADD CONSTRAINT CriminalRecordFK01 FOREIGN KEY (MemberID)      REFERENCES Members  (MemberID);

ALTER TABLE Guns           ADD CONSTRAINT GunsFK01           FOREIGN KEY (MemberID)      REFERENCES Members  (MemberID);


--VIEWS
CREATE VIEW elimina_moto AS SELECT b.licenseplate, b.brand, b.model, m.firstname, m.lastname, m.memberid FROM bikes b, members m 
WHERE b.memberid = m.memberid;


CREATE VIEW elimina_member AS SELECT m.memberid, m.firstname, m.lastname, h.headquartername FROM members m, headquarters h
WHERE m.headquarterid = h.headquarterid;


CREATE VIEW elimina_arma AS SELECT a.gunid, a.brand, a.model, a.guntype, m.firstname, m.lastname, m.memberid FROM guns a, members m
WHERE a.memberid = m.memberid;


CREATE VIEW veure_antecedents AS SELECT m.firstname, m.lastname, c.crimeid, c.crime, c.jurydate  FROM criminalrecord c, members m
WHERE c.memberid = m.memberid;


CREATE VIEW info_antecedents AS SELECT m.firstname, m.lastname, c.crimeid, c.crime, c.jurydate, c.jailin, c.jailout  FROM criminalrecord c, members m
WHERE c.memberid = m.memberid;


CREATE VIEW info_seu_ad AS SELECT h.headquarterid, h.headquartername, a.street, a.number, a.city, a.state, a.country, 
h.foundation FROM headquarters h, address a 
WHERE h.addressid = a.addressid;


CREATE VIEW info_seu_me AS SELECT h.headquarterid, COUNT(m.memberid) FROM headquarters h, members m 
WHERE m.headquarterid = h.headquarterid GROUP BY h.headquarterid;

CREATE VIEW info_seu_di AS SELECT h.headquarterid, SUM(d.deposit) ,COUNT(d.deposit) FROM headquarters h, moves d 
WHERE h.headquarterid = d.headquarterid GROUP BY h.headquarterid;


CREATE VIEW info_persona AS SELECT m.memberid, m.firstname, m.lastname, m.nickname, m.sex, m.birthday, a.street, a.number, 
a.city, a.state, a.country, m.inband, h.headquartername
FROM headquarters h, address a, members m 
WHERE m.addressid = a.addressid AND m.headquarterid = h.headquarterid;


--DATA

-- Headquarters

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Roadford Ave', 7333, 'Charming', 'California', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('SAMCRO', '1967', 1);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Lisburn Rd', 507, 'Belfast', 'North Ireland', 'United Kingdom');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('SAMBEL', '1987', 2);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'N Pershing Ave', 5010, 'San Bernardino', 'California', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('SAMDINO', '1969', 3);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'NE Hwy 101', 1806, 'Lincoln City', 'Oregon', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('SAMLIN', '1972', 4);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'S 38th St', 1217, 'Tacoma', 'Washington', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('SAMTAC', '1970', 5);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'S Broadway Pl', 40, 'Tucson', 'Arizona', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('SAMTAZ', '1970', 6);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', '47 Avenue', 4812, 'Wetaskiwin', 'Alberta', 'Canada');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Alberta Charter', '1988', 7);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'University Blvd SE', 5650, 'Alburquerque', 'New Mexico', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Alburquerque Charter', '1990', 8);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Debarr Rd', 4125, 'Anchorage', 'Alaska', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Anchorage Charter', '1989', 9);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Campstool Rd', 5801, 'Cheyenne', 'Wyoming', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Cheyenne Charter', '1995', 10);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'S Trumbull Ave', 2443, 'Chicago', 'Illinois', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Chicago Charter', '1999', 11);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', '6th St', 13191, 'Chino', 'California', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Chino Charter', '1992', 12);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Fletcher Ct', 688, 'Chino Valley', 'Arizona', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Chino Valley Charter', '1995', 13);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Peoria St', 5095, 'Denver', 'Colorado', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Denver Charter', '1989', 14);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Main St', 17, 'Dungloe', 'Donegal', 'Ireland');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Dungloe Charter', '1975', 15);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'W St', 3414, 'Eureka', 'California', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Eureka Charter', '1992', 16);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'W Barstow Ave', 6099, 'Fresno', 'California', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Fresno Charter', '1982', 17);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Moorabool St', 370, 'South Geelong', 'Victoria', 'Australia');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Geelong Charter', '1977', 18);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Adickesallee', 70, 'Frankfurt am Main', 'Hesse', 'Germany');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Germany Charter', '2003', 19);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Westermarkt', 20, 'Amsterdam', 'North Holland', 'Netherlands');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Holland Charter', '1996', 20);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Av. Pla de la Massa', 8, 'Igualada', 'Catalunya', 'Spain');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Igualada Charter', '2020', 21);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Long Dr', 1000, 'Carson City', 'Nevada', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Indian Hills Charter', '1973', 22);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', '1st St', 9721, 'Joilette', 'Oregon', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Joilette Charter', '1995', 23);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Las Vegas Blvd', 3655, 'Las Vegas', 'Nevada', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Las Vegas Charter', '2010', 24);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Queens Hwy', 1126, 'Long Beach', 'California', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Long Beach Charter', '1994', 25);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Loire Dr', 15, 'Wigan', 'Greater Manchester', 'United Kingdom');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Manchester Charter', '2000', 26);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'S Main St', 686, 'Moab', 'Utah', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Moab Charter', '1989', 27);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Mt Auburn St', 580, 'Cambridge', 'Massachussetts', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('New England Charter', '1998', 28);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'W 34th St', 20, 'New York', 'New York', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('New York City Charter', '1976', 29);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Sandyford Rd', 2, 'Newcastle Upon Tyne', 'North East England', 'United Kingdom');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Newcastle Charter', '2013', 30);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', '4th St', 310, 'Niagra', 'New York', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Niagra Charter', '1992', 31);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Marina Dr NE', 1675, 'Olympia', 'Washington', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Olympia Charter', '1987', 32);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Old York Rd', 6730, 'Philadelphia', 'Pennsylvania', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Philadelphia Charter', '2001', 33);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Wood St', 201, 'Pittsburgh', 'Pennsylvania', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Pittsburgh Charter', '1989', 34);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Piotrkowska', 3, 'Lodz', 'Lodz', 'Poland');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Poland Charter', '2015', 35);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'St Georges Ave', 526, 'Rahway', 'New Jersey', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Rahway Charter', '2008', 36);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'N Sierra St', 500, 'Reno', 'Nevada', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Reno Charter', '1991', 37);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'N Church St', 214, 'Rockford', 'Illinois', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Rockford Charter', '1988', 38);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Foothill Blvd', 5656, 'Rogue River', 'Oregon', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Rogue River Charter', '1990', 39);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'California Ave', 855, 'Salt Lake City', 'Utah', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Salt Lake City Charter', '1981', 40);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'E Las Tunas Dr', 101, 'San Gabriel', 'California', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('San Gabriel Charter', '1996', 41);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'W Spain St', 252, 'Sonoma', 'California', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Sonoma Charter', '1995', 42);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Holmamiralens väg', 10, 'Stockholm', 'Södermanland', 'Sweden');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Stockholm Charter', '1982', 43);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Sardinia Ct', 4303, 'Stockton', 'California', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Stockton Charter', '2002', 44);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'S Lakeshore Dr', 5394, 'Tempe', 'Arizona', 'United States');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Tempe Charter', '1997', 45);

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('Headquarter', 'Forks Market Rd', 1, 'Winnipeg', 'Manitoba', 'Canada');

INSERT INTO Headquarters (headquartername, foundation, addressid)
VALUES ('Winnipeg Charter', '1990', 46);

-- Members

INSERT INTO Address (type, street, number, city, state, country)
VALUES ('House', 'Forks Market Rd', 1, 'Winnipeg', 'Manitoba', 'Canada');

INSERT INTO members (firstname, lastname, nickname, sex, birthday, addressid, inband, headquarterid)
VALUES ('Jackson Nathaniel', 'Teller', 'Jax', 'M', '1978-05-19', 47, true, 1);

INSERT INTO bikes (licenseplate, brand, model, motor, memberid)
VALUES ('7095-ZG', 'Harley-Davidson', 'Dyna Super Glide Sport', 'Four Stroke, 45º V-Twin', 1);

INSERT INTO criminalrecord (memberid, crime, jurydate, jailin, jailout)
VALUES (1, 'Murder', '2000-05-15', '2000-05-20', '2002-05-20');

INSERT INTO guns (brand, model, guntype, memberid)
VALUES ('Glock', '17', 'Fire', 1);

INSERT INTO moves (headquarterid, movedesc, date, deposit)
VALUES (1, 'Weapons sale', '2000-05-26', 5500);
