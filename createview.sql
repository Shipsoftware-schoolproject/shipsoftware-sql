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

Create view LaivaTyyppienMaara as

select count(*) as laivojenMaara, ShipTypes.Name
from Ships
inner join ShipTypes
on ShipTypes.ShipTypeID = Ships.ShipTypeID
group by ShipTypes.Name

create view EtsiKaikkiKapteenit as

select SocialID, FirstName +' '+ LastName as Name, Title
from Persons
where Title like 'Kapteeni'


-- shipshort viewin päivitys
UPDATE ShipShort
Set IsSailing = 0
WHERE ShipSpeed = 0
