DECLARE @i INT = 1;
WHILE @i < 16
BEGIN
	INSERT INTO Container(ContainerBarCode,	ContainerWeight,	CarryingCapacity,	ContainerWidth,	ContainerHeigth,	ContainerDepth)
				   VALUES(@i,				2.34,				2000,				244.000,		259.000,			605.000);
	SET @i = @i + 1;
END;
