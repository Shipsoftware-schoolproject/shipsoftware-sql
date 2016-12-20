use d6_Shipsoftware

go

IF EXISTS (SELECT * FROM sys.objects WHERE [name] = 'TarkistaGPSLoki' AND [type] = 'TR')

DROP TRIGGER TarkistaGPSLoki

GO 
CREATE TRIGGER TarkistaGPSLoki
ON GPS
For INSERT
AS
BEGIN TRANSACTION

DECLARE @LKM int
DECLARE @LAIVAID int
SET @LAIVAID = (SELECT ShipID FROM inserted)
SET @LKM = (SELECT COUNT(LogID) FROM GPS WHERE ShipID = @LAIVAID)

While @LKM > 5
BEGIN
print 'Liikaa Lokeja'
delete from GPS
where ShipID = @LAIVAID AND LogID = (select top 1 LogID from GPS where ShipID = @LAIVAID order by LogID ASC);
Set @LKM = @LKM - 1;

END
COMMIT TRANSACTION 
GO
