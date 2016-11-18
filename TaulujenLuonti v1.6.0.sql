USE d6_Shipsoftware
CREATE TABLE ShipTypes (
	ShipTypeID int NOT NULL IDENTITY(1,1),
	Name varchar(30) NOT NULL , /* matkustaja,tankkeri, sukellusvene, sotavene, rahtilaiva */
PRIMARY KEY (ShipTypeID) );

CREATE TABLE ShipPorts (
	ShipPortID int NOT NULL IDENTITY(1,1),
	Name varchar(85) NOT NULL ,
	North float NOT NULL ,
	East float NOT NULL ,
PRIMARY KEY (ShipPortID) );

CREATE TABLE RouteCheckpoint (
	CheckpointID int NOT NULL ,
	CheckpointName varchar(24) ,
	North float NOT NULL ,
	East float NOT NULL ,
PRIMARY KEY (CheckpointID) );

CREATE TABLE ShipRoutes (
	ShipRoutesID int NOT NULL IDENTITY(1,1),
	StartingPortID int  ,
	EndingPortID int  ,	
PRIMARY KEY (ShipRoutesID) ,
FOREIGN KEY (StartingPortID) REFERENCES ShipPorts (ShipPortID) , 
FOREIGN KEY (EndingPortID) REFERENCES ShipPorts (ShipPortID),

CREATE TABLE ShipRouteCheckpoint (
	ShipRouteCheckpointID int NOT NULL IDENTITY(1,1),
	ShipRoutesID int NOT NULL ,
	CheckpointID int NOT NULL ,
PRIMARY KEY (ShipRouteCheckpointID) ,
FOREIGN KEY (ShipRoutesID) REFERENCES ShipRoutes,
FOREIGN KEY (CheckpointID) REFERENCES RouteCheckpoint);

CREATE TABLE Ships (
	ShipID int NOT NULL IDENTITY(1,1), 					/*	yksilöllinen ID Laivalle*/
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
PRIMARY KEY (ShipID ) ,
FOREIGN KEY (ShipTypeID) REFERENCES ShipTypes); -- ONKO LAIVALLA pakko olla reitti?
FOREIGN KEY (ShipRoutesID) REFERENCES ShipRoutes );

CREATE TABLE GPS (
	ShipID int NOT NULL,
	North float NOT NULL,
	East float NOT NULL,
	UpdatedTime datetime NOT NULL DEFAULT GETDATE(),
PRIMARY KEY (ShipID),
FOREIGN KEY (ShipID) REFERENCES Ships);

CREATE TABLE Cargo (
	CargoID int NOT NULL IDENTITY(1,1),
	CargoType varchar(30) NOT NULL,
	ShipID int NOT NULL,
PRIMARY KEY (CargoID) ,
FOREIGN KEY (ShipID) REFERENCES Ships );

CREATE TABLE Container (
	ContainerBarCode int NOT NULL ,
	ContainerWeight decimal(6, 3) NOT NULL , -- kg
	CarryingCapacity int NOT NULL , /* kg/m2 */
	ContainerWidth decimal(9,3) NOT NULL ,
	ContainerHeigth decimal(9,3) NOT NULL ,
	ContainerDepth decimal(9,3) NOT NULL ,
PRIMARY KEY (ContainerBarCode)) ;

CREATE TABLE CargoContainer (
	ContainerBarCode int NOT NULL,
	CargoID int NOT NULL ,
	Overall_Weight Decimal(6),
PRIMARY KEY (ContainerBarCode) ,
FOREIGN KEY (CargoID) REFERENCES Cargo,
FOREIGN KEY (ContainerBarCode) REFERENCES Container );

CREATE TABLE Persons (
	ShipID int NOT NULL ,
	Title varchar(60),			/*	#Esim kapteeni, perämies jne.*/
	SocialID varchar(11) NOT NULL ,
	FirstName varchar(30) NOT NULL ,
	LastName varchar(30) NOT NULL,
	Phone varchar(20),				/* Muuta kun persons table päivitetty!! */
	ZipCode char(5) ,				/*#NOT NULL päälle kun on testattu*/
	City Varchar(85) ,		/*#NOT NULL päälle kun on testattu*/
	MailingAddress Varchar (85) ,			/*#NOT NULL päälle kun on testattu*/
	Picture varbinary(max) ,   /*SELVITÄ OIKEA MUOTO*/
PRIMARY KEY (SocialID ),
FOREIGN KEY (ShipID) REFERENCES Ships);
