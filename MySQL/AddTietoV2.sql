-- versio 2.0

/* Ship Types */
INSERT INTO ShipTypes (Name)
VALUES ('Cargo Ship');
INSERT INTO ShipTypes (Name)
VALUES ('Passanger Ship');
INSERT INTO ShipTypes (Name)
VALUES ('Tanker');

/* Ports 
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Vaasa Port',63.087916,21.552222);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Umea Port',63.681783,20.3420000);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Kokkola Port',63.840484,23.024850);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Oulu Port',64.989843,25.425479);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Stockholm Port',59.345396,18.132715);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Tallin Port',59.451199,24.765007);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Paldiski Port',59.354122,24.038829);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Riga Port',56.961848,24.090306);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Liepaja Port',56.528791,20.991531);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Klaipeda Port',55.666717,21.142767);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Kalingrad Port',54.692516,20432714);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Gdansk Port',54.412568,18.655134);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('St.Petersburg Port',59.926706,30.228436);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Copenhagen',55.703008,12.598819);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Malmo Port',55.624808,12.98867);
INSERT INTO ShipPorts (Name,North,East)
VALUES ('Helsinki Port',60.166603,24.954865); */

/* Routes 
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (1,2);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (3,1);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (1,3);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (4,2);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (2,4);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (5,6);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (6,5);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (5,16);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (16,5);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (7,8);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (8,7);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (9,10);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (10,9);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (12,13);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (13,12);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (11,13);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (13,11);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (5,16);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (16,5);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (15,14);
INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
VALUES (14,15); */

/* Ships  */
INSERT INTO Ships (IMO,CompanyID,ShipName,TypeID,MMSI)
			VALUES(1,1,"S.S. KingKat",1,123);
			
	-- Tomi lisää laivat MMSI:  230636000,211433000,276672000,276747000,244613000,240244000,257409000,372723000,305847000,230172000
			
/* Persons lisäys malli */
INSERT INTO Persons(IMO, Title,CompanyID,CountryID,FirstName,LastName,Phone,ZipCode,City,MailingAddress,Picture)
			 VALUES(1,'Kapteeni',1,1,'Matti','Seppänen','168613899','65200','Vaasa','Wolffintie 31',null);
			 
INSERT INTO Roles(Name)
			 VALUES('Admin');
INSERT INTO Roles(Name)
			 VALUES('Yritykset');
INSERT INTO Roles(Name)
			 VALUES('Tullivirkailija');
INSERT INTO Roles(Name)
			 VALUES('Ahtaaja');
INSERT INTO Roles(Name)
			 VALUES('Satamavirkailija');
INSERT INTO Roles(Name)
			 VALUES('Sihteeri');

/* 15 same size containers */
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(1, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(2, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(3, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(4, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(5, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(6, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(7, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(8, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(9, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(10, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(11, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(12, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(13, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(14, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(BarCode, Weight, Capacity, Width, Heigth, ContainerDepth) VALUES(15, 2.34, 2000, 244.000, 259.000, 605.000);


/* lisäsin cargocontainerit */
INSERT INTO CargoContainer (BarCode,ID,OverallWeight) VALUES (1,1,(select Weight from Container where BarCode=1)+ .100);
INSERT INTO CargoContainer (BarCode,ID,OverallWeight) VALUES (2,1,(select Weight from Container where BarCode=2)+ .500);
INSERT INTO CargoContainer (BarCode,ID,OverallWeight) VALUES (3,2,(select Weight from Container where BarCode=3)+ 13.144); 
INSERT INTO CargoContainer (BarCode,ID,OverallWeight) VALUES (4,3,(select Weight from Container where BarCode=4)+ 14.564); 
INSERT INTO CargoContainer (BarCode,ID,OverallWeight) VALUES (5,3,(select Weight from Container where BarCode=5)+ 54.896);
INSERT INTO CargoContainer (BarCode,ID,OverallWeight) VALUES (6,4,(select Weight from Container where BarCode=6)+ 8.756); 
INSERT INTO CargoContainer (BarCode,ID,OverallWeight) VALUES (7,5,(select Weight from Container where BarCode=7)+ .123); 
