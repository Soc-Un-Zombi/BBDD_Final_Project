--CREATE DATABASE sonsofanarchy;

--\connect sonsofanarchy;

-- TAULES
CREATE TABLE Characters (
    CharacterID VARCHAR (5)  NOT NULL,
    FirstName   VARCHAR (20) NOT NULL,
    LastName    VARCHAR (20) NOT NULL,
    Nickname    VARCHAR (20) NOT NULL,
    Sex         CHAR    (1)  NOT NULL,
    Birthday    DATE         NOT NULL,
    Age         NUMERIC      NOT NULL,
    ResidenceID VARCHAR (5)  NOT NULL
);

CREATE TABLE Bikes (
    BikeID       VARCHAR (5)  NOT NULL,
    LicensePlate VARCHAR (7)  NOT NULL,
    Brand        VARCHAR (20) NOT NULL,
    Model        VARCHAR (20) NOT NULL,
    Motor        VARCHAR (20) NOT NULL
    -- TODO: Acabar
);

CREATE TABLE Headquarters (
    HeadquarterID VARCHAR (5)  NOT NULL,
    Street        VARCHAR (25) NOT NULL,
    City          VARCHAR (20) NOT NULL,
    Postcode      VARCHAR (10) NOT NULL,
    Country       VARCHAR (20) NOT NULL,
    LiderID       VARCHAR (5)  NOT NULL
);

CREATE TABLE Business (
    BusinessID   VARCHAR (5)  NOT NULL,
    BusinessType VARCHAR (20) NOT NULL,
    Date         DATE         NOT NULL,
    Deposit      NUMERIC      NOT NULL,
    Client       VARCHAR (20) NOT NULL
    -- TODO: Acabar
);

CREATE TABLE CriminalRecord (
    CrimeID     VARCHAR (5)  NOT NULL,
    Crime       VARCHAR (20) NOT NULL,
    Sentence    VARCHAR (20) NOT NULL,
    JuryDate    DATE         NOT NULL
    -- TODO: Acabar i renovar
);

CREATE TABLE Payroll (
    PayrollID    VARCHAR (5)  NOT NULL,
    Payroll      NUMERIC      NOT NULL,
    ExtraPayroll NUMERIC,
    CharacterID  VARCHAR (5)  NOT NULL,
    PayDate      DATE         NOT NULL
);

CREATE TABLE Bands (
    BandID   VARCHAR (5)  NOT NULL,
    BandName VARCHAR (20) NOT NULL
    -- TODO: Acabar
);

CREATE TABLE Guns (
    GunID   VARCHAR (5)  NOT NULL,
    Brand   VARCHAR (20) NOT NULL,
    Model   VARCHAR (20) NOT NULL,
    GunType VARCHAR (1)  NOT NULL
    -- TODO: Acabar
);

CREATE TABLE Address (
    AddressID  INT          NOT NULL,
    Building   VARCHAR (20) NOT NULL,
    Street     VARCHAR (20) NOT NULL,
    Number     INT          NOT NULL,
    City       VARCHAR (20) NOT NULL,
    PostalCode VARCHAR (10) NOT NULL,
    Country    VARCHAR (20) NOT NULL
);

-- CLAUS PRIMARIES

ALTER TABLE Characters     ADD CONSTRAINT CharactersPK     PRIMARY KEY (CharacterID);

ALTER TABLE Bikes          ADD CONSTRAINT BikesPK          PRIMARY KEY (BikeID);

ALTER TABLE Headquarters   ADD CONSTRAINT HeadquartersPK   PRIMARY KEY (HeadquarterID);

ALTER TABLE Business       ADD CONSTRAINT BusinessPK       PRIMARY KEY (BusinessID);

ALTER TABLE CriminalRecord ADD CONSTRAINT CriminalRecordPK PRIMARY KEY (CrimeID);

ALTER TABLE Payroll        ADD CONSTRAINT PayrollPK        PRIMARY KEY (PayrollID);

ALTER TABLE Bands          ADD CONSTRAINT BandsPK          PRIMARY KEY (BandID);

ALTER TABLE Guns           ADD CONSTRAINT GunsPK           PRIMARY KEY (GunID);

ALTER TABLE Address        ADD CONSTRAINT AddressPK        PRIMARY KEY (AddressID);

-- CLAUS FORANES

    --TODO: Fer les claus foranes