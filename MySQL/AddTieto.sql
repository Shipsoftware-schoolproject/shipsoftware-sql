/* Ship Types */
INSERT INTO ShipTypes (Name)
VALUES ('Cargo Ship');
INSERT INTO ShipTypes (Name)
VALUES ('Passanger Ship');
INSERT INTO ShipTypes (Name)
VALUES ('Tanker');

/* Ports */
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
VALUES ('Helsinki Port',60.166603,24.954865);

/* Routes */
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
VALUES (14,15);

/* Ships */
INSERT INTO Ships (ShipName,			ShipTypeID,		ShipLength,		ShipWidth,	ShipDraft,		ShipDeadWeight,		ShipGrossTonnage,	MMSI)
			VALUES('M/S Wasa Express',	2,				141,			22.81,		4.95,			4150,				17053,				230636000);
INSERT INTO Ships (ShipName,			ShipTypeID,		ShipLength,		ShipWidth,	ShipDraft,		ShipDeadWeight,		ShipGrossTonnage,	MMSI)
			VALUES('Colombo Express',	1,				335.07,			42.87,		9.80,			103800,				93750,				211433000);
INSERT INTO Ships (ShipName,			ShipTypeID,		ShipLength,		ShipWidth,	ShipDraft,		ShipDeadWeight,		ShipGrossTonnage,	MMSI)
			VALUES('M/S STAR',			2,				186,			28,			6.5,			4700,				36249,				276672000);
INSERT INTO Ships (ShipName,			ShipTypeID,		ShipLength,		ShipWidth,	ShipDraft,		ShipDeadWeight,		ShipGrossTonnage,	MMSI)
			VALUES('M/S SUPERSTAR',		2,				177,			27.6,		7,				5000,				36400,				276747000);
INSERT INTO Ships (ShipName,			ShipTypeID,		ShipLength,		ShipWidth,	ShipDraft,		ShipDeadWeight,		ShipGrossTonnage,	MMSI)
			VALUES('M/S Susanne',		1,				89.8,			13.6,		5.8,			3200,				2409,				244613000);
INSERT INTO Ships (ShipName,			ShipTypeID,		ShipLength,		ShipWidth,	ShipDraft,		ShipDeadWeight,		ShipGrossTonnage,	MMSI)
			VALUES('Delta Pioneer',		3,				250,			44,			8,				111013,				62320,				240244000);
INSERT INTO Ships (ShipName,			ShipTypeID,		ShipLength,		ShipWidth,	ShipDraft,		ShipDeadWeight,		ShipGrossTonnage,	MMSI)
			VALUES('Finnstraum',		3,				140,			22,			6.7,			16028,				9956,				257409000);
INSERT INTO Ships (ShipName,			ShipTypeID,		ShipLength,		ShipWidth,	ShipDraft,		ShipDeadWeight,		ShipGrossTonnage,	MMSI)
			VALUES('Neptune Pioneer',	1,				189.9,			32.26,		8.2,			55921,				31236,				372723000);
INSERT INTO Ships (ShipName,			ShipTypeID,		ShipLength,		ShipWidth,	ShipDraft,		ShipDeadWeight,		ShipGrossTonnage,	MMSI)
			VALUES('BBC Bahrain',		1,				128.45,			16.6,		6,				7967,				6309,				305847000);
INSERT INTO Ships (ShipName,			ShipTypeID,		ShipLength,		ShipWidth,	ShipDraft,		ShipDeadWeight,		ShipGrossTonnage,	MMSI)
			VALUES('M/S Amorella',		2,				169.4,			28.2,		6.3,			3690,				34384,				230172000);

/* Persons */
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(1,		'Kapteeni',				'01234-0001',		'Matti',		'Seppänen',		'168613899',	'65200',		'Vaasa',	'Wolffintie 31',		null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(1,		'Perämies',				'01234-0002',		'Joona',		'Kotka',		'3467489763',	'65200',		'Vaasa',	'Wolffintie 25',		null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(1,		'Turvallisuusvastaaja', '01234-0003',		'Erkki',		'Isotalo',		'865432489',	'65200',		'Vaasa',	'Ahventie 10',			null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(1,		'Moottorimekaniikko',	'01234-0004',		'Sasu',			'Nurminen',		'3456748963',	'65200',		'Vaasa',	'Ahventie 2',			null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(1,		'Rahtivastaaja',		'01234-0009',		'Janne',		'Soini',		'0503459875',	'65200',		'Vaasa',	'Palosaarentie 29', 	null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(1,		'Sähkömekaniikko',		'01234-0012',		'Eino',			'Heikkinen',	'0600657895',	'65200',		'Vaasa',	'Kapteeninkatu 1',		null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(1,		'Matkustaja',			'01234-0013',		'Taina',		'Järvelä',		'0198456243',	'80160',		'Joensuu',	'Marjalantie 2',		null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(1,		'Matkustaja',			'01234-0014',		'Kimmo',		'Järvelä',		'5053498762',	'80160',		'Joensuu',	'Marjalantie 2',		null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(2,		'Kapteeni',				'01234-0005',		'Ville',		'Jokinen',		'3548978364',	'65200',		'Vaasa',	'Kirkkopuistikko 5',	null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(2,		'Perämies',				'01234-0006',		'Tuukka',		'Kuusela',		'354889752',	'65200',		'Vaasa',	'Hovioikeudenpuisto 2',	null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(2,		'Turvallisuusvastaaja',	'01234-0007',		'Jenni',		'Nieminen',		'8656431285',	'65200',		'Vaasa',	'Palosaarentie 13', 	null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(2,		'Moottorimekaniikko',	'01234-0008',		'Tommi',		'Tuomioja',		'050135896',	'65200',		'Vaasa',	'Palosaarentie 30', 	null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(2,		'Rahtivastaaja',		'01234-0010',		'Ilkka',		'Palosaari',	'659875022',	'65200',		'Vaasa',	'Wolffintie 30',		null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(2,		'Sähkömekaniikko',		'01234-0011',		'Oona',			'Vuorinen',		'044456891',	'65200',		'Vaasa',	'Kapteeninkatu 11',		null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(2,		'Matkustaja',			'01234-0015',		'Sakari',		'Repo',			'185556842',	'42050',		'Helsinki',	'Unioninkatu 50',		null);
INSERT INTO Persons(ShipID, Title,					SocialID,			FirstName,		LastName,		Phone,			ZipCode,		City,		MailingAddress,			Picture)
			 VALUES(2,		'Matkustaja',			'01234-0016',		'Ilmari',		'Juntunen',		'156887996',	'42050',		'Helsinki',	'Snelmanninkatu 6',		null);

/* 15 same size containers */
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(1, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(2, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(3, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(4, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(5, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(6, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(7, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(8, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(9, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(10, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(11, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(12, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(13, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(14, 2.34, 2000, 244.000, 259.000, 605.000);
INSERT INTO Container(ContainerBarCode, ContainerWeight, CarryingCapacity, ContainerWidth, ContainerHeigth, ContainerDepth) VALUES(15, 2.34, 2000, 244.000, 259.000, 605.000);


/* lisäsin cargocontainerit */
INSERT INTO CargoContainer (ContainerBarCode,CargoID,OverallWeight) VALUES (1,1,(select ContainerWeight from Container where ContainerBarCode=1)+ .100);
INSERT INTO CargoContainer (ContainerBarCode,CargoID,OverallWeight) VALUES (2,1,(select ContainerWeight from Container where ContainerBarCode=2)+ .500);
INSERT INTO CargoContainer (ContainerBarCode,CargoID,OverallWeight) VALUES (3,2,(select ContainerWeight from Container where ContainerBarCode=3)+ 13.144); 
INSERT INTO CargoContainer (ContainerBarCode,CargoID,OverallWeight) VALUES (4,3,(select ContainerWeight from Container where ContainerBarCode=4)+ 14.564); 
INSERT INTO CargoContainer (ContainerBarCode,CargoID,OverallWeight) VALUES (5,3,(select ContainerWeight from Container where ContainerBarCode=5)+ 54.896);
INSERT INTO CargoContainer (ContainerBarCode,CargoID,OverallWeight) VALUES (6,4,(select ContainerWeight from Container where ContainerBarCode=6)+ 8.756); 
INSERT INTO CargoContainer (ContainerBarCode,CargoID,OverallWeight) VALUES (7,5,(select ContainerWeight from Container where ContainerBarCode=7)+ .123); 
