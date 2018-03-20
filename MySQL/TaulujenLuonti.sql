/* versio: 1.7 */

CREATE TABLE ShipTypes (
	ID int NOT NULL AUTO_INCREMENT,
	Name varchar(30) NOT NULL , /* matkustaja,tankkeri, sukellusvene, sotavene, rahtilaiva */
PRIMARY KEY (ID) )
ENGINE = INNODB;

/* POISTETTU KÄYTÖSTÄ...MAHD. MYÖHEMPI IMPLEMENTAATIO!
 CREATE TABLE ShipPorts (
	ShipPortID int NOT NULL AUTO_INCREMENT,
	Name varchar(85) NOT NULL ,
	North float NOT NULL ,
	East float NOT NULL ,
PRIMARY KEY (ShipPortID) )
ENGINE = INNODB; */

/*POISTETTU KÄYTÖSTÄ...MAHD. MYÖHEMPI IMPLEMENTAATIO!
CREATE TABLE RouteCheckpoint (
	CheckpointID int NOT NULL , /* TODO: tarvisiko AUTO_INCREMENT:n?? 
	CheckpointName varchar(24) ,
	North float NOT NULL ,
	East float NOT NULL ,
PRIMARY KEY (CheckpointID) )
ENGINE = INNODB; */

/* POISTETTU KÄYTÖSTÄ...MAHD. MYÖHEMPI IMPLEMENTAATIO!
CREATE TABLE ShipRoutes (
	ShipRoutesID int NOT NULL AUTO_INCREMENT,
	StartingPortID int  ,
	EndingPortID int  ,
INDEX indexStartingPortID (StartingPortID),
INDEX indexEndingPortID (EndingPortID),
PRIMARY KEY (ShipRoutesID) ,
FOREIGN KEY (StartingPortID) REFERENCES ShipPorts (ShipPortID) , 
FOREIGN KEY (EndingPortID) REFERENCES ShipPorts (ShipPortID) )
ENGINE = INNODB;
*/
/*POISTETTU KÄYTÖSTÄ...MAHD. MYÖHEMPI IMPLEMENTAATIO!
CREATE TABLE ShipRouteCheckpoint (
	ShipRouteCheckpointID int NOT NULL AUTO_INCREMENT,
	ShipRoutesID int NOT NULL ,
	CheckpointID int NOT NULL ,
PRIMARY KEY (ShipRouteCheckpointID) ,
INDEX indexShipRoutesID(ShipRoutesID),
INDEX indexCheckpointID (CheckpointID),
FOREIGN KEY (ShipRoutesID) REFERENCES ShipRoutes (ShipRoutesID),
FOREIGN KEY (CheckpointID) REFERENCES RouteCheckpoint (CheckpointID) )
ENGINE = INNODB;
*/
CREATE TABLE Country (
	ID int NOT NULL AUTO_INCREMENT,
	Name varchar(36) NOT NULL unique,
INDEX indexID(ID),
PRIMARY KEY (ID))
ENGINE = INNODB;

CREATE TABLE Companies (
	ID int NOT NULL AUTO_INCREMENT,
	Name varchar(100) NOT NULL unique,
	MailingAddress Varchar(85) ,
	ZipCode char(5) ,
	City Varchar(85) ,
    IsPort bit DEFAULT 0,
	CountryID int,
INDEX indexID(ID),
PRIMARY KEY (ID) ,
FOREIGN KEY (CountryID) REFERENCES Country (ID) )
ENGINE = INNODB;

CREATE TABLE Ships (
	IMO int NOT NULL, 		/*	yksilöllinen ID Laivalle pituus uskoisin (7)*/
	CompanyID int,
	ShipName varchar(40) NOT NULL , 		/* USS Manhattan*/
	TypeID int NOT NULL,				/* matkustaja,tankkeri, sukellusvene, sotavene, rahtilaiva*/
	CommentText varchar(100) ,					/* laivan kommentti*/
	ShipLength decimal(5,2),				/* metreinä kiitos*/ 
	Width decimal(5,2),					/* metreinä kiitos*/
	Draught decimal(4,2),					/* metreinä iitos*/
	MMSI int NOT NULL, 						-- MMSI numero käytetään back-endis
	Course float DEFAULT 0,						-- laivan suunta
	Heading int DEFAULT 0, 						-- laivan haluttu suunta, kai?
	ShipSpeed decimal (6,4) DEFAULT 0, 		-- laivan nopeus
	-- ei tietoa mitä nää on mutta kerätään kumminkin
	RefFront int,
	RefLeft int,
	PathText varchar(60),
	Iclass char,
	TargetType char,
	SrcCall varchar(60),
	DstCall varchar(60),
	VesselClass int,
	NavStat int,
		-- GrossTonnage int,					/* tonneina kiitos*/
		-- IsSailing bit DEFAULT 0, 		poistettu käytöstä, käytetty vain Raijan vaatimuksen täyttöön
		-- ShipRoutesID int, 		mah.myöhempi implementaatio			/* ShipRoutesID taulukossa ShipRoutes */
PRIMARY KEY (IMO ) ,
INDEX indexTypeID(TypeID),
INDEX indexID(CompanyID),
FOREIGN KEY (TypeID) REFERENCES ShipTypes (ID),
FOREIGN KEY (CompanyID) REFERENCES Companies (ID) )
ENGINE = INNODB; -- ONKO LAIVALLA pakko olla reitti?

-- TODO: @Jori päivitä kantaan ja tee triggeri
CREATE TABLE GPS (
	ID int NOT NULL AUTO_INCREMENT,
	IMO int NOT NULL,
	Lat float NOT NULL,
	Lng float NOT NULL,
	RealTime DATETIME NOT NULL,
	LastTime DATETIME NOT NULL,
	UpdatedTime timestamp DEFAULT CURRENT_TIMESTAMP,
INDEX indexIMO(IMO),
PRIMARY KEY (ID),
FOREIGN KEY (IMO) REFERENCES Ships (IMO) )
ENGINE = INNODB;

CREATE TABLE Cargo (
	ID int NOT NULL AUTO_INCREMENT,
	CargoType varchar(30) NOT NULL,
	IMO int NOT NULL,
INDEX indexIMO(IMO),
PRIMARY KEY (ID) ,
FOREIGN KEY (IMO) REFERENCES Ships (IMO) )
ENGINE = INNODB;

CREATE TABLE Container (
	BarCode int NOT NULL ,
	Weight decimal(6, 3) NOT NULL , -- kg
	Capacity int NOT NULL , /* kg/m2 */
	Width decimal(9,3) NOT NULL ,
	Heigth decimal(9,3) NOT NULL ,
	ContainerDepth decimal(9,3) NOT NULL ,
PRIMARY KEY (BarCode)) 
ENGINE = INNODB;

CREATE TABLE CargoContainer (
	BarCode int NOT NULL,
	ID int NOT NULL ,
	OverallWeight Decimal(6,3),
INDEX indexID(ID),
INDEX indexBarCode(BarCode),
PRIMARY KEY (BarCode) ,
FOREIGN KEY (ID) REFERENCES Cargo (ID) ,
FOREIGN KEY (BarCode) REFERENCES Container (BarCode) )
ENGINE = INNODB;

CREATE TABLE Roles (
	ID int NOT NULL NOT NULL AUTO_INCREMENT,
	Name varchar(60),
INDEX indexID(ID),
PRIMARY KEY (ID ))
ENGINE = INNODB;

CREATE TABLE Persons (
	IMO int,
	Title varchar(60),			/*	#Esim kapteeni, perämies jne.*/
	PersonID int(11) NOT NULL AUTO_INCREMENT,
	-- Lisää role ja roles taulukko ja kysy juusolta
	CountryID int,
	FirstName varchar(30) NOT NULL ,
	LastName varchar(30) NOT NULL,
	Phone varchar(20),				/* Muuta kun persons table päivitetty!! */
	ZipCode char(5) ,				/*#NOT NULL päälle kun on testattu*/
	City Varchar(85) ,		/*#NOT NULL päälle kun on testattu*/
	MailingAddress Varchar(85) ,			/*#NOT NULL päälle kun on testattu*/
	Picture LONGBLOB,
	Created timestamp DEFAULT CURRENT_TIMESTAMP,
	Updated DATETIME,
INDEX indexIMO(IMO),
PRIMARY KEY (PersonID ),
FOREIGN KEY (CountryID) REFERENCES Country (ID), 
FOREIGN KEY (IMO) REFERENCES Ships (IMO) )
ENGINE = INNODB;

CREATE TABLE Users (
	RoleID int,
	CompanyID int,
	UserID int(11) NOT NULL AUTO_INCREMENT,
	Username varchar(30) NOT NULL unique,
	Email varchar(60) NOT NULL unique,
	Password varchar(60) NOT NULL,
	-- Lisää role ja roles taulukko ja kysy juusolta
	FirstName varchar(30) NOT NULL ,
	LastName varchar(30) NOT NULL,
	Phone varchar(20),				/* Muuta kun persons table päivitetty!! */
	Picture LONGBLOB,
	RememberME varchar(100),
	Created timestamp DEFAULT CURRENT_TIMESTAMP,
	Updated DATETIME,
PRIMARY KEY (UserID ),
FOREIGN KEY (CompanyID) REFERENCES Companies(ID),
FOREIGN KEY (RoleID) REFERENCES Roles (ID))
ENGINE = INNODB;

