
USE d6_Shipsoftware

INSERT INTO ShipTypes (Name)
Values ('Cargo Ship');
INSERT INTO ShipTypes (Name)
Values ('Passanger Ship');
INSERT INTO ShipTypes (Name)
Values ('Tanker');

INSERT INTO ShipPorts (Name,North,East)
Values ('Vaasa Port',63.087916,21.552222);
INSERT INTO ShipPorts (Name,North,East)
Values ('Umeå Port',63.681783,20.3420000);

INSERT INTO ShipRoutes(StartingPortID,EndingPortID)
Values(1,2)



INSERT INTO Ships(ShipName,ShipTypeID,ShipLength,ShipWidth,ShipDraft,
ShipDeadWeight,ShipGrossTonnage,ShipRoutesID,MMSI,Course)
Values ('M/S Wasa Express',2,141,22.81,4.95,4150,1,1,230636000,null);

INSERT INTO Ships(ShipName,ShipTypeID,ShipLength,ShipWidth,ShipDraft,
ShipDeadWeight,ShipGrossTonnage,ShipRoutesID,MMSI,Course)
Values ('Colombo Express',1,335.07,42.87,null,null,93750,1,211433000,null)

INSERT INTO GPS (ShipID,North,East)
values (1,1,1)

INSERT INTO Container (ContainerBarCode,ContainerWeight,CarryingCapacity,
ContainerWidth,ContainerHeigth,ContainerDepth)
Values (1,2.34,2000,244.000,259.000,605.000);
INSERT INTO Container (ContainerBarCode,ContainerWeight,CarryingCapacity,
ContainerWidth,ContainerHeigth,ContainerDepth)
Values (2,2.34,2000,244.000,259.000,605.000);
INSERT INTO Container (ContainerBarCode,ContainerWeight,CarryingCapacity,
ContainerWidth,ContainerHeigth,ContainerDepth)
Values (3,2.34,2000,244.000,259.000,605.000);
