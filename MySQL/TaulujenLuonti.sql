/* versio: 1.6.2 */

CREATE TABLE ShipTypes (
	ShipTypeID int NOT NULL AUTO_INCREMENT,
	Name varchar(30) NOT NULL , /* matkustaja,tankkeri, sukellusvene, sotavene, rahtilaiva */
PRIMARY KEY (ShipTypeID) )
ENGINE = INNODB;

CREATE TABLE ShipPorts (
	ShipPortID int NOT NULL AUTO_INCREMENT,
	Name varchar(85) NOT NULL ,
	North float NOT NULL ,
	East float NOT NULL ,
PRIMARY KEY (ShipPortID) )
ENGINE = INNODB;

CREATE TABLE RouteCheckpoint (
	CheckpointID int NOT NULL , /* TODO: tarvisiko AUTO_INCREMENT:n?? */
	CheckpointName varchar(24) ,
	North float NOT NULL ,
	East float NOT NULL ,
PRIMARY KEY (CheckpointID) )
ENGINE = INNODB;

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

CREATE TABLE Ships (
	ShipID int NOT NULL AUTO_INCREMENT, 					/*	yksilöllinen ID Laivalle*/
	ShipName varchar(40) NOT NULL , 		/* USS Manhattan*/
	ShipTypeID int NOT NULL,		/* matkustaja,tankkeri, sukellusvene, sotavene, rahtilaiva*/
	ShipLength decimal(5,2),					/* metreinä kiitos*/ 
	ShipWidth decimal(5,2),					/* metreinä kiitos*/
	ShipDraft decimal(4,2),					/* metreinä iitos*/
	ShipDeadWeight int,				/* tonneina kiitos*/
	ShipGrossTonnage int,					/* tonneina kiitos*/
	ShipRoutesID int, 					/* ShipRoutesID taulukossa ShipRoutes */
	MMSI int NOT NULL, 						-- MMSI numero käytetään back-endis
	Course float ,					-- laivan suunta
	IsSailing bit DEFAULT 0,
	ShipSpeed decimal (6,4) DEFAULT 0,
PRIMARY KEY (ShipID ) ,
INDEX indexShipTypeID(ShipTypeID),
INDEX indexShipRoutesID(ShipRoutesID),
FOREIGN KEY (ShipTypeID) REFERENCES ShipTypes (ShipTypeID),
FOREIGN KEY (ShipRoutesID) REFERENCES ShipRoutes (ShipRoutesID) )
ENGINE = INNODB; -- ONKO LAIVALLA pakko olla reitti?

-- TODO: @Jori päivitä kantaan ja tee triggeri
CREATE TABLE GPS (
	LogID int NOT NULL AUTO_INCREMENT,
	ShipID int NOT NULL,
	North float NOT NULL,
	East float NOT NULL,
	UpdatedTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
INDEX indexShipID(ShipID),
PRIMARY KEY (LogID),
FOREIGN KEY (ShipID) REFERENCES Ships (ShipID) )
ENGINE = INNODB;

CREATE TABLE Cargo (
	CargoID int NOT NULL AUTO_INCREMENT,
	CargoType varchar(30) NOT NULL,
	ShipID int NOT NULL,
INDEX indexShipID(ShipID),
PRIMARY KEY (CargoID) ,
FOREIGN KEY (ShipID) REFERENCES Ships (ShipID) )
ENGINE = INNODB;

CREATE TABLE Container (
	ContainerBarCode int NOT NULL ,
	ContainerWeight decimal(6, 3) NOT NULL , -- kg
	CarryingCapacity int NOT NULL , /* kg/m2 */
	ContainerWidth decimal(9,3) NOT NULL ,
	ContainerHeigth decimal(9,3) NOT NULL ,
	ContainerDepth decimal(9,3) NOT NULL ,
PRIMARY KEY (ContainerBarCode)) 
ENGINE = INNODB;

CREATE TABLE CargoContainer (
	ContainerBarCode int NOT NULL,
	CargoID int NOT NULL ,
	OverallWeight Decimal(6,3),
INDEX indexCargoID(CargoID),
INDEX indexContainerBarCode(ContainerBarCode),
PRIMARY KEY (ContainerBarCode) ,
FOREIGN KEY (CargoID) REFERENCES Cargo (CargoID) ,
FOREIGN KEY (ContainerBarCode) REFERENCES Container (ContainerBarCode) )
ENGINE = INNODB;

CREATE TABLE Persons (
	ShipID int NOT NULL ,
	Title varchar(60),			/*	#Esim kapteeni, perämies jne.*/
	SocialID char(11) NOT NULL ,
	FirstName varchar(30) NOT NULL ,
	LastName varchar(30) NOT NULL,
	Phone varchar(20),				/* Muuta kun persons table päivitetty!! */
	ZipCode char(5) ,				/*#NOT NULL päälle kun on testattu*/
	City Varchar(85) ,		/*#NOT NULL päälle kun on testattu*/
	MailingAddress Varchar(85) ,			/*#NOT NULL päälle kun on testattu*/
	Picture LONGBLOB,   /* TODO: ehkä kuvan voisi säilyttää esim. kiintolevyllä ja tämä olisi tyylin polku kuvaan? */
INDEX indexShipID(ShipID),
PRIMARY KEY (SocialID ),
FOREIGN KEY (ShipID) REFERENCES Ships (ShipID) )
ENGINE = INNODB;

CREATE INDEX ix_Title ON Persons(Title)
