CREATE DATABASE sonsofanarchy;

\connect sonsofanarchy;

-- Creació de les taules
CREATE TABLE "Characters" (
    "Character_ID"   VARCHAR (5)  NOT NULL,
    "First_Name"     VARCHAR (20) NOT NULL,
    "Last_Name"      VARCHAR (20) NOT NULL,
    "Nickname"       VARCHAR (20) NOT NULL,
    "Sex"            CHAR    (1)  NOT NULL,
    "Birthday"       DATE         NOT NULL,
    "Date_Joined"    DATE,
    "Bike_ID"        VARCHAR (5)  NOT NULL,
    "Headquarter_ID" VARCHAR (5)  NOT NULL
);

CREATE TABLE "Bikes" (
    "Bike_ID"       VARCHAR (5)  NOT NULL,
    "License_Plate" VARCHAR (7)  NOT NULL,
    "Brand"         VARCHAR (20) NOT NULL,
    "Model"         VARCHAR (20) NOT NULL,
    "Motor"         VARCHAR (20) NOT NULL
);

CREATE TABLE "Headquarters" (
    "Headquarter_ID" VARCHAR (5)  NOT NULL,
    "Street"         VARCHAR (25) NOT NULL,
    "City"           VARCHAR (20) NOT NULL,
    "Postcode"       VARCHAR (10) NOT NULL,
    "Country"        VARCHAR (20) NOT NULL
);

CREATE TABLE "Business" (
    "Business_ID"   VARCHAR (5)  NOT NULL,
    "Business_Type" VARCHAR (20) NOT NULL,
    "Date"          DATE         NOT NULL,
    "Deposit"       NUMERIC      NOT NULL,
    "Client"        VARCHAR (20) NOT NULL
);

CREATE TABLE "Criminal_Record" (
    "Crime_ID" VARCHAR (5)  NOT NULL,
    "Crime"    VARCHAR (20) NOT NULL,
    "Jail"     BOOLEAN      NOT NULL,
    "Sentence" VARCHAR (20) NOT NULL
);

CREATE TABLE "Payroll" (
    "Payroll_ID" VARCHAR(5) NOT NULL
);

CREATE TABLE "Bands" (
    "Brand_ID" VARCHAR (5)  NOT NULL
);

CREATE TABLE "Guns" (
    "Gun_ID"   VARCHAR (5)  NOT NULL,
    "Brand"    VARCHAR (20) NOT NULL,
    "Model"    VARCHAR (20) NOT NULL,
    "Gun_Type" VARCHAR (1)  NOT NULL
);

-- Assignació de claus primàries i foranes
