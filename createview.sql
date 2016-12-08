use d6_Shipsoftware

-- kysely hakee laivojen nimen,tyypin,
-- sekä reitin lähtö ja pääte sataman nimet.

CREATE VIEW LaivojenLahtoJaPaateSatamat as
Select ShipName, Name as Shiptype,
 (select Name from ShipPorts where ShipRoutes.StartingPortID = ShipPortID)as StartingPort,
 (select Name from ShipPorts where ShipRoutes.EndingPortID = ShipPortID) as EndingPort
FROM Ships
inner join ShipRoutes
on Ships.ShipRoutesID = ShipRoutes.ShipRoutesID
inner join ShipTypes
on Ships.ShipTypeID = ShipTypes.ShipTypeID