--CREATE DATABASE sonsofanarchy;

--\connect sonsofanarchy;

-- TAULES

CREATE TABLE Members (
    MemberID  INT GENERATED ALWAYS AS IDENTITY,
    FirstName VARCHAR (20) NOT NULL,
    LastName  VARCHAR (20) NOT NULL,
    Nickname  VARCHAR (20) NOT NULL,
    Sex       CHAR    (1)  NOT NULL,
    Birthday  DATE         NOT NULL,
    Age       INT          NOT NULL,
    Work      VARCHAR (20) NOT NULL,
    InBand    BOOLEAN      NOT NULL,
    HouseID   VARCHAR (5)  NOT NULL
);

CREATE TABLE Bikes (
    LicensePlate VARCHAR (10) NOT NULL,
    Brand        VARCHAR (20) NOT NULL,
    Model        VARCHAR (20) NOT NULL,
    Motor        VARCHAR (20) NOT NULL,
    GarageID     VARCHAR (5)  NOT NULL,
    MemberID     VARCHAR (5)  NOT NULL
);

CREATE TABLE Headquarters (
    HeadquarterID INT GENERATED ALWAYS AS IDENTITY,
    LiderID       VARCHAR (5)  NOT NULL,
    Foundation    DATE         NOT NULL,
    AdressID      VARCHAR (5)  NOT NULL
);

CREATE TABLE Business (
    BusinessID    INT GENERATED ALWAYS AS IDENTITY,
    HeadquarterID VARCHAR (5)  NOT NULL,
    BusinessType  VARCHAR (20) NOT NULL,
    Date          DATE         NOT NULL,
    Deposit       NUMERIC      NOT NULL,
    Client        VARCHAR (20) NOT NULL
);

CREATE TABLE Workers (
    BusinessID VARCHAR (5) NOT NULL,
    EmployerID VARCHAR (5) NOT NULL
);

CREATE TABLE CriminalRecord (
    CrimeID     INT GENERATED ALWAYS AS IDENTITY,
    Crime       VARCHAR (20) NOT NULL,
    JuryDate    DATE         NOT NULL,
    JailIn      DATE         NOT NULL,
    JailOut     DATE
);

CREATE TABLE Guns (
    GunID    INT GENERATED ALWAYS AS IDENTITY,
    Brand    VARCHAR (20) NOT NULL,
    Model    VARCHAR (20) NOT NULL,
    GunType  VARCHAR (20) NOT NULL,
    MemberID INT NOT NULL
);

CREATE TABLE Address (
    AddressID  INT GENERATED ALWAYS AS IDENTITY,
    Building   VARCHAR (20) NOT NULL,
    Street     VARCHAR (20) NOT NULL,
    Number     INT          NOT NULL,
    City       VARCHAR (20) NOT NULL,
    PostalCode VARCHAR (10) NOT NULL,
    Country    VARCHAR (20) NOT NULL
);

-- CLAUS PRIMARIES

ALTER TABLE Members        ADD CONSTRAINT MembersPK        PRIMARY KEY (MemberID);

ALTER TABLE Bikes          ADD CONSTRAINT BikesPK          PRIMARY KEY (LicensePlate);

ALTER TABLE Headquarters   ADD CONSTRAINT HeadquartersPK   PRIMARY KEY (HeadquarterID);

ALTER TABLE Business       ADD CONSTRAINT BusinessPK       PRIMARY KEY (BusinessID);

ALTER TABLE CriminalRecord ADD CONSTRAINT CriminalRecordPK PRIMARY KEY (CrimeID);

ALTER TABLE Guns           ADD CONSTRAINT GunsPK           PRIMARY KEY (GunID);

ALTER TABLE Address        ADD CONSTRAINT AddressPK        PRIMARY KEY (AddressID);

-- CLAUS FORANES

    --TODO: Fer les claus foranes
