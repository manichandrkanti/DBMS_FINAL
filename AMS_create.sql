create database AgriManage;
use AgriManage;

-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-12-17 09:11:20.815

-- tables
-- Table: Commodity
CREATE TABLE Commodity (
    Commodity_ID int NOT NULL,
    Commodity_name varchar(20) NOT NULL,
    Commodity_Variety varchar(20) NOT NULL,
    CONSTRAINT Commodity_pk PRIMARY KEY (Commodity_ID)
);

-- Table: District
CREATE TABLE District (
    District_ID int NOT NULL,
    Distrrict_name varchar(20) NOT NULL,
    District_headquarters varchar(20) NOT NULL,
    State_ID int NOT NULL,
    CONSTRAINT District_pk PRIMARY KEY (District_ID)
);

-- Table: Market
CREATE TABLE Market (
    Market_ID int NOT NULL,
    Market_name varchar(20) NOT NULL,
    Market_location varchar(20) NOT NULL,
    District_ID int NOT NULL,
    CONSTRAINT Market_pk PRIMARY KEY (Market_ID)
);

-- Table: Prices
CREATE TABLE Prices (
    Price_ID int NOT NULL,
    Date varchar(20) NOT NULL,
    Price_min int NOT NULL,
    Price_max int NOT NULL,
    Market_ID int NOT NULL,
    Commodity_ID int NOT NULL,
    CONSTRAINT Prices_pk PRIMARY KEY (Price_ID)
);

-- Table: STATE
CREATE TABLE STATE (
    State_ID int NOT NULL,
    State_name varchar(20) NOT NULL,
    State_zone varchar(20) NOT NULL,
    CONSTRAINT STATE_pk PRIMARY KEY (State_ID)
);

-- foreign keys
-- Reference: District_STATE (table: District)
ALTER TABLE District ADD CONSTRAINT District_STATE FOREIGN KEY District_STATE (State_ID)
    REFERENCES STATE (State_ID);

-- Reference: Market_District (table: Market)
ALTER TABLE Market ADD CONSTRAINT Market_District FOREIGN KEY Market_District (District_ID)
    REFERENCES District (District_ID);

-- Reference: Prices_Commodity (table: Prices)
ALTER TABLE Prices ADD CONSTRAINT Prices_Commodity FOREIGN KEY Prices_Commodity (Commodity_ID)
    REFERENCES Commodity (Commodity_ID);

-- Reference: Prices_Market (table: Prices)
ALTER TABLE Prices ADD CONSTRAINT Prices_Market FOREIGN KEY Prices_Market (Market_ID)
    REFERENCES Market (Market_ID);

-- End of file.

