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
WHERE ShipID = @ShipID AND SocialID = @SocialID
