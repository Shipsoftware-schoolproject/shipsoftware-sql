use d6_Shipsoftware
select ROW_NUMBER() over(order by LogID DESC) as LogNum, LogID,ShipName,ShipID,North,East from lstLaivat where ShipID = 1 order by LogID DESC;
// hakee laivan gps historian uusimmasta-vanhimpaan ja kertoo LogNumissa mikä on uusin ja vanhin vaihda shipID laivaksi jonka haluat löytää
