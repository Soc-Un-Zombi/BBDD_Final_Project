
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
    Model        VARCHAR (20) NOT NULL,
    Motor        VARCHAR (20) NOT NULL,
    MemberID     INT          NOT NULL
);

-- Headquarters: (Finished)
CREATE TABLE Headquarters (
    HeadquarterID  INT GENERATED ALWAYS AS IDENTITY,
    HeadquarterName     VARCHAR (20) NOT NULL,
    Foundation      INT          NOT NULL,
    AddressID       INT          NOT NULL
);

-- Business: (Finished)
CREATE TABLE Business (
    BusinessID      INT GENERATED ALWAYS AS IDENTITY,
    HeadquarterID   INT          NOT NULL,
    BusinessType    VARCHAR (20) NOT NULL,
    Date            DATE         NOT NULL,
    Deposit         NUMERIC      NOT NULL,
    Client          VARCHAR (20) NOT NULL
);

-- Workers: Multivalued atribute from business (Finished)
CREATE TABLE Workers (
    BusinessID INT NOT NULL,
    EmployerID INT NOT NULL
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

ALTER TABLE Business       ADD CONSTRAINT BusinessPK       PRIMARY KEY (BusinessID);

ALTER TABLE Workers        ADD CONSTRAINT WorkersPK        PRIMARY KEY (BusinessID, EmployerID);

ALTER TABLE CriminalRecord ADD CONSTRAINT CriminalRecordPK PRIMARY KEY (CrimeID);

ALTER TABLE Guns           ADD CONSTRAINT GunsPK           PRIMARY KEY (GunID);

ALTER TABLE Address        ADD CONSTRAINT AddressPK        PRIMARY KEY (AddressID);

-- FOREING KEYS

ALTER TABLE Members        ADD CONSTRAINT MembersFK01        FOREIGN KEY (AddressID)     REFERENCES Address      (AddressID),
                           ADD CONSTRAINT MembersFK02        FOREIGN KEY (HeadquarterID) REFERENCES Headquarters (HeadquarterID);

ALTER TABLE Patches        ADD CONSTRAINT PatchesFK01        FOREIGN KEY (MemberID)      REFERENCES Members  (MemberID);

ALTER TABLE Bikes          ADD CONSTRAINT BikesFK01          FOREIGN KEY (MemberID)      REFERENCES Members  (MemberID);

ALTER TABLE Headquarters   ADD CONSTRAINT HeadquartersFK01   FOREIGN KEY (AddressID)     REFERENCES Address  (AddressID);

ALTER TABLE Business       ADD CONSTRAINT BusinessFK01       FOREIGN KEY (HeadquarterID) REFERENCES Headquarters (HeadquarterID);

ALTER TABLE Workers        ADD CONSTRAINT WorkersFK01        FOREIGN KEY (BusinessID)    REFERENCES Business (BusinessID),
                           ADD CONSTRAINT WorkersFK02        FOREIGN KEY (EmployerID)    REFERENCES Members  (MemberID);

ALTER TABLE CriminalRecord ADD CONSTRAINT CriminalRecordFK01 FOREIGN KEY (MemberID)      REFERENCES Members  (MemberID);

ALTER TABLE Guns           ADD CONSTRAINT GunsFK01           FOREIGN KEY (MemberID)      REFERENCES Members  (MemberID);
