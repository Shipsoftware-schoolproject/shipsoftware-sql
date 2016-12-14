/* Päivitä laivassa olevan henkilön tietoja */
CREATE VIEW PaivitaLaivanHenkTiedot
AS
SELECT *
FROM Persons;

IF EXISTS (SELECT * FROM sysobjects WHERE name='PaivitaLaivanHenkTietoja') BEGIN
	DROP PROC PaivitaLaivanHenkTietoja
END
GO
CREATE PROC PaivitaLaivanHenkTietoja
	@ShipID (int),
	@SocialID varchar(11),
	@title varchar(60),
	@Phone varchar(20),
	@ZipCode char(5),
	@City varchar(85),
	@MailingAddress varchar(85),
	@Picture varbinary(MAX)
AS
UPDATE PaivitaLaivanHenkTiedot
SET Title = @title, Phone = @phone, ZipCode = @ZipCode, City = @City, MailingAddress = @MailingAddress, Picture = @Picture
WHERE ShipID = @ShipID AND SocialID = @SocialID;
/* EXEC PaivitaLaivanHenkTietoja 1, '01234-0013', 'Baarimikko', '0405019602', 'Kokkola', 'Jorintie 2', NULL; */

/* Hae henkilöitä tittelillä */
IF EXISTS (SELECT * FROM sysobjects WHERE name='HaeHenkTiedotTittelilla') BEGIN
	DROP PROC HaeHenkTiedotTittelilla
END
GO
CREATE PROC HaeHenkTiedotTittelilla
	@Title varchar(60)
AS
SELECT * FROM Persons
WHERE Title = @Title;
/* EXEC HaeHenkTiedotTittelilla 'Kapteeni'; */

/* Hae henkilöt laivasta jotka asuvat kaupungissa */
IF EXISTS (SELECT * FROM sysobjects WHERE name='HaeHenkTiedotLaivaIDjaKaupunki') BEGIN
	DROP PROC HaeHenkTiedotLaivaIDjaKaupunki
END
GO
CREATE PROC HaeHenkTiedotLaivaIDjaKaupunki
    @ShipID int,
    @City varchar(85)
AS
SELECT * FROM Persons
WHERE ShipID = @ShipID AND City LIKE @City + '%';
/* EXEC HaeHenkTiedotLaivaIDjaKaupunki 1, 'Vaasa'; */
