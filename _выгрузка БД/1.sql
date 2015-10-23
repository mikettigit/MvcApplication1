DROP TABLE Clothes;
CREATE TABLE Clothes
(
	Id int NOT NULL, 
	Name nvarchar(20),
	SubName nvarchar(20),
	Img nvarchar(256),
	Thickness real,
	Description ntext,
	Available bit,
	ServiceComments ntext);

DROP TABLE Clothes_Photos;
CREATE TABLE Clothes_Photos
(
	ClothId int NOT NULL,
	PhotoId int NOT NULL
);

DROP TABLE Clothes_Prices;
CREATE TABLE Clothes_Prices
(
	ClothId int NOT NULL,
	Type nvarchar(10) NOT NULL,
	Value real NOT NULL
);

DROP TABLE Clothes_Tags;
CREATE TABLE Clothes_Tags
(
	ClothId int NOT NULL,
	Type nvarchar(50) NOT NULL,
	Description nvarchar(50) NOT NULL,
	Name nvarchar(50) NOT NULL
);

DROP TABLE Photos;
CREATE TABLE Photos 
(
	Id int NOT NULL, 
	Img nvarchar(256),
	Description ntext
);

DROP TABLE Photos_Tags;
CREATE TABLE Photos_Tags
(
	PhotoId int NOT NULL,
	Type nvarchar(50),
	Description nvarchar(50),
	Name nvarchar(50)
);

DROP TABLE Shapes;
CREATE TABLE Shapes
(
	Id int NOT NULL,
	Img nvarchar(256),
	Description ntext,
	Name nvarchar(50),
	Available bit,
	ServiceComments ntext
);

INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (2,'Brianna','1','/Content/Images/Catalog/brianna_1.jpg',0.3,'растительный узор',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (2,'Color','Цвет','зеленый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (2,'Color','Цвет','коричневый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (2,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (2,'eco',6256);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (2,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (2,'lux',4000);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (1,'Flowers','1','/Content/Images/Catalog/flowers_1.jpg',0.3,'лиловые цветы',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (1,'15');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (1,'Color','Цвет','фиолетовый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (1,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (1,'eco',6287);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (1,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (1,'lux',4000);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (3,'Brianna','2','/Content/Images/Catalog/brianna_2.jpg',0.3,'растительный узор',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (3,'5');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (3,'Color','Цвет','зеленый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (3,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (3,'eco',6256);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (3,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (3,'lux',4000);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (4,'Maya','1','/Content/Images/Catalog/Maya_1.jpg',0.3,'красные цветы',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (4,'22');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (4,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (4,'Color','Цвет','красный');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (4,'eco',6256);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (4,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (4,'lux',4000);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (5,'Vogue','1','/Content/Images/Catalog/vogue_1.jpg',0.3,'',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (5,'42');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (5,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (5,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (5,'eco',6256);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (5,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (5,'lux',4000);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (6,'Vogue','2','/Content/Images/Catalog/vogue_2.jpg',0.3,'зеленый',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (6,'Color','Цвет','зеленый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (6,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (6,'eco',6256);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (6,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (6,'lux',4000);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (7,'Vogue','3','/Content/Images/Catalog/vogue_3.jpg',0.3,'черный узор',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (7,'Color','Цвет','коричневый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (7,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (7,'eco',6256);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (7,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (7,'lux',4000);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (8,'Vanila','1','/Content/Images/Catalog/vanila_1.jpg',0.4,'',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (8,'41');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (8,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (8,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (8,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (8,'compact',2120);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (8,'lux',3080);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (9,'Vanila','2','/Content/Images/Catalog/vanila_2.jpg',0.4,'',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (9,'54');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (9,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (9,'Color','Цвет','коричневый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (9,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (9,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (9,'compact',2120);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (9,'lux',3080);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (10,'Adora','1','/Content/Images/Catalog/adora_1.jpg',0.25,'перелив - эффект шелка',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (10,'43');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (10,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (10,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (10,'eco',6366);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (10,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (10,'lux',3850);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (11,'Adora','2','/Content/Images/Catalog/adora_2.jpg',0.25,'перелив - эффект шелка.<br/> Бежевый',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (11,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (11,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (11,'eco',6362);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (11,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (11,'lux',3850);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (12,'Adora','3','/Content/Images/Catalog/adora_3.jpg',0.25,'перелив - эффект шелка.<br/>',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (12,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (12,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (12,'eco',6362);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (12,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (12,'lux',3850);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (32,'Capelli','2','/Content/Images/Catalog/capelli_2.jpg',0.25,'волнистый узор <br/> Внимание! Узор горизонтальный, свяжитесь с нами, если узор нужно расположить вертикально',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (32,'Color','Цвет','зеленый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (32,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (32,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (32,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (32,'lux',2665);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (13,'Adora','4','/Content/Images/Catalog/adora_4.jpg',0.25,'перелив - эффект шелка.<br/> Персиковый',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (13,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (13,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (13,'eco',6362);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (13,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (13,'lux',3850);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (14,'Adora','5','/Content/Images/Catalog/adora_5.jpg',0.25,'перелив - эффект шелка.<br/> Светло-зеленый',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (14,'Color','Цвет','зеленый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (14,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (14,'eco',6362);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (14,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (14,'lux',3850);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (15,'Africa','blackout','/Content/Images/Catalog/africa_blackout.jpg',0.4,'Блэкаут для детской',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (15,'2');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (15,'Color','Цвет','оранжевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (15,'Group','Группа','Детские ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (15,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (15,'eco',6289);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (15,'compact',2790);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (15,'lux',3730);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (16,'Cinema','blackout','/Content/Images/Catalog/cinema_blackout.jpg',0.45,'Блэкаут для детской',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (16,'10');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (16,'Color','Цвет','серый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (16,'Group','Группа','Детские ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (16,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (16,'eco',6299);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (16,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (16,'lux',4000);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (17,'Sleepy','blackout','/Content/Images/Catalog/sleepy_blackout.jpg',0.45,'Блэкаут для детской',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (17,'35');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (17,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (17,'Group','Группа','Детские ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (17,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (17,'eco',6299);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (17,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (17,'lux',4000);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (18,'Bali','502','/Content/Images/Catalog/bali_502.jpg',0.6,'100% джут. Плетенка',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (18,'3');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (18,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (18,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (18,'Group','Группа','Плетеные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (18,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (18,'compact',1970);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (18,'lux',2465);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (19,'Bali','503','/Content/Images/Catalog/bali_503.jpg',0.6,'100% джут. Плетенка',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (19,'Color','Цвет','коричневый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (19,'Group','Группа','Плетеные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (19,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (19,'compact',1970);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (19,'lux',2465);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (20,'Bombay','1','/Content/Images/Catalog/bombay_1.jpg',0.25,'пейсли',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (20,'4');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (20,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (20,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (20,'Bestseller','Основные (бестселлеры)','Популярная');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (20,'eco',7647);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (20,'compact',4210);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (20,'lux',5575);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (21,'Bombay','3','/Content/Images/Catalog/bombay_3.jpg',0.25,'пейсли',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (21,'44');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (21,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (21,'Color','Цвет','серебро');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (21,'Color','Цвет','серебро');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (21,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (21,'Bestseller','Основные (бестселлеры)','Популярная');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (21,'eco',7647);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (21,'compact',4210);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (21,'lux',5575);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (22,'Bombay','5','/Content/Images/Catalog/bombay_5.jpg',0.25,'пейсли',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (22,'Color','Цвет','голубой');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (22,'Color','Цвет','зеленый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (22,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (22,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (22,'Bestseller','Основные (бестселлеры)','Популярная');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (22,'eco',7647);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (22,'compact',4210);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (22,'lux',5575);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (23,'Bombay','7','/Content/Images/Catalog/bombay_7.jpg',0.25,'пейсли',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (23,'Color','Цвет','фиолетовый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (23,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (23,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (23,'Bestseller','Основные (бестселлеры)','Популярная');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (23,'eco',7647);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (23,'compact',4210);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (23,'lux',5575);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (24,'California','cream','/Content/Images/Catalog/California_cream.jpg',0.22,'растительный узор',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (24,'6');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (24,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (24,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (24,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (24,'eco',5664);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (24,'compact',2910);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (24,'lux',3265);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (25,'California','yellow','/Content/Images/Catalog/California_yellow.jpg',0.22,'растительный узор',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (25,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (25,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (25,'eco',5664);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (25,'compact',2910);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (25,'lux',3265);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (26,'California','peach','/Content/Images/Catalog/California_peach.jpg',0.22,'растительный узор',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (26,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (26,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (26,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (26,'eco',5664);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (26,'compact',2910);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (26,'lux',3265);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (27,'California','blue','/Content/Images/Catalog/California_blue.jpg',0.22,'растительный узор',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (27,'Color','Цвет','голубой');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (27,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (27,'eco',5664);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (27,'compact',2910);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (27,'lux',3265);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (28,'California','green','/Content/Images/Catalog/California_green.jpg',0.22,'растительный узор',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (28,'Color','Цвет','зеленый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (28,'Group','Группа','Дизайнерские ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (28,'eco',5664);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (28,'compact',2910);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (28,'lux',3265);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (29,'Camilla','4','/Content/Images/Catalog/Camilla_4.jpg',0.25,'белые ромашки',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (29,'7');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (29,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (29,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (29,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (29,'compact',2270);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (29,'lux',2580);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (30,'Camilla','5','/Content/Images/Catalog/Camilla_5.jpg',0.25,'розовые маргаритки',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (30,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (30,'Color','Цвет','розовый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (30,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (30,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (30,'compact',2270);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (30,'lux',2580);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (31,'Capelli','1','/Content/Images/Catalog/Capelli_1.jpg',0.25,'волнистый узор <br/> Внимание! Узор горизонтальный, свяжитесь с нами, если узор нужно расположить вертикально',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (31,'8');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (31,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (31,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (31,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (31,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (31,'lux',2665);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (33,'Capelli','3','/Content/Images/Catalog/Capelli_3.jpg',0.25,'волнистый узор <br/> Внимание! Узор горизонтальный, свяжитесь с нами, если узор нужно расположить вертикально',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (33,'Color','Цвет','голубой');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (33,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (33,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (33,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (33,'lux',2665);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (34,'Carina','1','/Content/Images/Catalog/carina_1.jpg',0.34,'',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (34,'9');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (34,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (34,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (34,'eco',6204);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (34,'compact',2120);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (34,'lux',3080);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (35,'Carina','2','/Content/Images/Catalog/carina_2.jpg',0.34,'',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (35,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (35,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (35,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (35,'eco',6204);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (35,'compact',2120);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (35,'lux',3080);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (36,'Carina','blackout','/Content/Images/Catalog/carina_blackout.jpg',0.45,'',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (36,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (36,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (36,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (36,'eco',6204);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (36,'compact',3130);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (36,'lux',4000);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (37,'Diana','1','/Content/Images/Catalog/diana_1.jpg',0.22,'листья',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (37,'11');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (37,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (37,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (37,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (37,'compact',2350);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (37,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (38,'Diana','2','/Content/Images/Catalog/diana_2.jpg',0.22,'листья',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (38,'Color','Цвет','коричневый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (38,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (38,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (38,'compact',2350);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (38,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (39,'Fantasia','1','/Content/Images/Catalog/fantasia_1.jpg',0.22,'бежевый узор',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (39,'12');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (39,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (39,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (39,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (39,'compact',2340);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (39,'lux',3040);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (40,'Fantasia','2','/Content/Images/Catalog/fantasia_2.jpg',0.22,'капучино',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (40,'Color','Цвет','коричневый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (40,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (40,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (40,'compact',2340);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (40,'lux',3040);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (41,'Fantasia','3','/Content/Images/Catalog/fantasia_3.jpg',0.22,'коричневый узор',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (41,'Color','Цвет','коричневый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (41,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (41,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (41,'compact',2340);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (41,'lux',3040);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (42,'Flora','1','/Content/Images/Catalog/flora_1.jpg',0.22,'растительный узор',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (42,'14');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (42,'Color','Цвет','коричневый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (42,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (42,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (42,'compact',2340);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (42,'lux',3040);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (43,'Flora','2','/Content/Images/Catalog/flora_2.jpg',0.22,'растительный узор',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (43,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (43,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (43,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (43,'compact',2340);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (43,'lux',3040);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (44,'Flora','3','/Content/Images/Catalog/flora_3.jpg',0.22,'растительный узор',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (44,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (44,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (44,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (44,'compact',2340);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (44,'lux',3040);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (45,'Filomena','1','/Content/Images/Catalog/filomena_1.jpg',0.43,'для детской',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (45,'13');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (45,'51');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (45,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (45,'Color','Цвет','серый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (45,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (45,'Bestseller','Основные (бестселлеры)','Популярная');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (45,'eco',6256);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (45,'compact',2800);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (45,'lux',4000);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (46,'Frutties','1','/Content/Images/Catalog/frutties_1.jpg',0.25,'',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (46,'16');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (46,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (46,'Color','Цвет','оранжевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (46,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (46,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (46,'compact',2350);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (46,'lux',2885);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (47,'Gerbera','1','/Content/Images/Catalog/gerbera_1.jpg',0.3,'узор герберы',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (47,'17');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (47,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (47,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (47,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (47,'compact',2330);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (47,'lux',3010);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (48,'Havana','605','/Content/Images/Catalog/havana_605.jpg',1,'100% джут',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (48,'18');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (48,'Color','Цвет','коричневый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (48,'Group','Группа','Плетеные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (48,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (48,'compact',1970);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (48,'lux',2840);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (49,'Havana','606','/Content/Images/Catalog/havana_606.jpg',1,'100% джут',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (49,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (49,'Group','Группа','Плетеные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (49,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (49,'compact',1970);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (49,'lux',2840);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (50,'Irena','1','/Content/Images/Catalog/irena_1.jpg',0.25,'',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (50,'19');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (50,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (50,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (50,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (50,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (50,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (51,'Irena','2','/Content/Images/Catalog/irena_2.jpg',0.25,'',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (51,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (51,'Color','Цвет','оранжевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (51,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (51,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (51,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (51,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (52,'Madera','1','/Content/Images/Catalog/madera_1.jpg',0.3,'замша',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (52,'21');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (52,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (52,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (52,'eco',5892);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (52,'compact',2520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (52,'lux',3855);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (53,'Madera','4','/Content/Images/Catalog/madera_4.jpg',0.3,'замша',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (53,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (53,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (53,'eco',5892);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (53,'compact',2520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (53,'lux',3855);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (54,'Madera','8','/Content/Images/Catalog/madera_8.jpg',0.3,'замша',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (54,'Color','Цвет','коричневый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (54,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (54,'eco',5892);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (54,'compact',2520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (54,'lux',3855);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (55,'Ultima','1','/Content/Images/Catalog/ultima_1.jpg',0.4,'узор - карта',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (55,'38');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (55,'58');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (55,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (55,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (55,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (55,'compact',2330);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (55,'lux',3240);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (56,'Megapolis','4','/Content/Images/Catalog/megapolis_4.jpg',0.3,'узор - окошки',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (56,'23');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (56,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (56,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (56,'eco',5165);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (56,'compact',2350);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (56,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (57,'Megapolis','8','/Content/Images/Catalog/megapolis_8.jpg',0.3,'узор - окошки',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (57,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (57,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (57,'eco',5165);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (57,'compact',2350);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (57,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (58,'Miracle','1','/Content/Images/Catalog/miracle_1.jpg',0.3,'жатый шелк',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (58,'24');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (58,'57');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (58,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (58,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (58,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (58,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (58,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (58,'lux',3090);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (59,'Miracle','3','/Content/Images/Catalog/miracle_3.jpg',0.3,'жатый шелк',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (59,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (59,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (59,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (59,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (59,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (59,'lux',3090);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (60,'Miracle','6','/Content/Images/Catalog/miracle_6.jpg',0.3,'жатый шелк',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (60,'Color','Цвет','голубой');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (60,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (60,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (60,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (60,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (60,'lux',3090);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (61,'Miracle','9','/Content/Images/Catalog/miracle_9.jpg',0.3,'жатый шелк. Терракотовый',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (61,'46');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (61,'Color','Цвет','оранжевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (61,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (61,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (61,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (61,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (61,'lux',3090);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (62,'Nelke','1','/Content/Images/Catalog/nelke_1.jpg',0.25,'желтые цветы',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (62,'25');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (62,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (62,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (62,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (62,'compact',2270);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (62,'lux',2665);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (63,'Nelke','3','/Content/Images/Catalog/nelke_3.jpg',0.25,'красные цветы',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (63,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (63,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (63,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (63,'compact',2270);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (63,'lux',2665);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (64,'Olivia','1','/Content/Images/Catalog/olivia_1.jpg',0.25,'',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (64,'26');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (64,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (64,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (64,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (64,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (64,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (65,'Olivia','2','/Content/Images/Catalog/olivia_2.jpg',0.25,'кремовый',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (65,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (65,'Color','Цвет','бежевый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (65,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (65,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (65,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (66,'Olivia','3','/Content/Images/Catalog/olivia_3.jpg',0.25,'',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (66,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (66,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (66,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (66,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (66,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (67,'Olivia','4','/Content/Images/Catalog/olivia_4.jpg',0.25,'',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (67,'Color','Цвет','зеленый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (67,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (67,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (67,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (67,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (68,'Olivia','5','/Content/Images/Catalog/olivia_5.jpg',0.25,'',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (68,'Color','Цвет','голубой');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (68,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (68,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (68,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (68,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (69,'Olivia','6','/Content/Images/Catalog/olivia_6.jpg',0.25,'',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (69,'59');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (69,'60');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (69,'Color','Цвет','оранжевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (69,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (69,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (69,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (69,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (70,'Oregon','1','/Content/Images/Catalog/oregon_1.jpg',0.17,'',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (70,'27');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (70,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (70,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (70,'eco',5232);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (70,'compact',2270);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (70,'lux',2665);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (71,'Pietra','1','/Content/Images/Catalog/pietra_1.jpg',0.25,'',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (71,'28');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (71,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (71,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (71,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (71,'compact',2270);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (71,'lux',2665);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (72,'Presto','1','/Content/Images/Catalog/presto_1.jpg',0.34,'"стрекозы"',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (72,'29');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (72,'Color','Цвет','серый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (72,'Color','Цвет','красный');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (72,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (72,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (72,'compact',2350);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (72,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (73,'Rodos','203','/Content/Images/Catalog/rodos_203.jpg',0.73,'100% джут',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (73,'30');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (73,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (73,'Group','Группа','Плетеные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (73,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (73,'compact',1970);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (73,'lux',2465);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (74,'Rodos','204','/Content/Images/Catalog/rodos_204.jpg',0.73,'100% джут. Фисташковый',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (74,'Color','Цвет','зеленый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (74,'Group','Группа','Плетеные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (74,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (74,'compact',1970);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (74,'lux',2465);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (75,'Savanna','1','/Content/Images/Catalog/savanna_1.jpg',0.3,'',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (75,'31');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (75,'Color','Цвет','оранжевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (75,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (75,'eco',5119);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (75,'compact',2340);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (75,'lux',2665);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (76,'Screen','1','/Content/Images/Catalog/screen_1.jpg',0.54,'негорючая ткань',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (76,'32');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (76,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (76,'Group','Группа','Специальные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (76,'eco',7885);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (76,'compact',3540);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (76,'lux',4750);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (77,'Screen','3','/Content/Images/Catalog/screen_3.jpg',0.7,'негорючая ткань',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (77,'Color','Цвет','серый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (77,'Group','Группа','Специальные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (77,'eco',7885);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (77,'compact',3540);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (77,'lux',4750);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (78,'Screen','8','/Content/Images/Catalog/screen_8.jpg',0.54,'негорючая ткань',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (78,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (78,'Group','Группа','Специальные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (78,'eco',7885);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (78,'compact',3540);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (78,'lux',4750);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (79,'Shantung','1','/Content/Images/Catalog/shantung_1.jpg',0.4,'текстура - лён',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (79,'33');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (79,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (79,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (79,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (79,'compact',1520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (79,'lux',1650);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (80,'Shantung','2*2','/Content/Images/Catalog/shantung_2x2.jpg',0.4,'текстура - лён',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (80,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (80,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (80,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (80,'compact',1520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (80,'lux',1650);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (81,'Shantung','12','/Content/Images/Catalog/shantung_12.jpg',0.4,'текстура - лён',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (81,'Color','Цвет','розовый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (81,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (81,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (81,'compact',1520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (81,'lux',1650);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (82,'Shantung','15','/Content/Images/Catalog/shantung_15.jpg',0.4,'текстура - лён',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (82,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (82,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (82,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (82,'compact',1520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (82,'lux',1650);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (83,'Shantung','11*5','/Content/Images/Catalog/shantung_11x5.jpg',0.4,'текстура - лён',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (83,'Color','Цвет','голубой');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (83,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (83,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (83,'compact',1520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (83,'lux',1650);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (84,'Shantung','63','/Content/Images/Catalog/shantung_63.jpg',0.4,'текстура - лён',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (84,'Color','Цвет','зеленый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (84,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (84,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (84,'compact',1520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (84,'lux',1650);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (85,'Shantung','4','/Content/Images/Catalog/shantung_4.jpg',0.4,'текстура - лён',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (85,'Color','Цвет','коричневый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (85,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (85,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (85,'compact',1520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (85,'lux',1650);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (86,'Shantung','111','/Content/Images/Catalog/shantung_111.jpg',0.4,'текстура - лён',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (86,'Color','Цвет','голубой');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (86,'Color','Цвет','серый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (86,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (86,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (86,'compact',1520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (86,'lux',1650);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (87,'Shantung','028','/Content/Images/Catalog/shantung_028.jpg',0.4,'текстура - лён',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (87,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (87,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (87,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (87,'compact',1520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (87,'lux',1650);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (88,'Shantung','051','/Content/Images/Catalog/shantung_051.jpg',0.4,'текстура - лён',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (88,'Color','Цвет','серый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (88,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (88,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (88,'compact',1520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (88,'lux',1650);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (89,'Shantung','058','/Content/Images/Catalog/shantung_058.jpg',0.4,'текстура - лён',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (89,'Color','Цвет','серый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (89,'Group','Группа','Ткани с узором');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (89,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (89,'compact',1520);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (89,'lux',1650);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (90,'Siesta','1','/Content/Images/Catalog/siesta_1.jpg',0.35,'прозрачная ткань с рисунком',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (90,'34');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (90,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (90,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (90,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (90,'compact',2400);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (90,'lux',3020);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (91,'Sonnette','1','/Content/Images/Catalog/sonnette_1.jpg',0.34,'',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (91,'36');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (91,'50');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (91,'55');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (91,'Color','Цвет','серый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (91,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (91,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (91,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (91,'compact',2350);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (91,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (92,'Sonnette','2','/Content/Images/Catalog/sonnette_2.jpg',0.34,'сиреневый',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (92,'Color','Цвет','фиолетовый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (92,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (92,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (92,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (92,'compact',2350);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (92,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (93,'Sonnette','4','/Content/Images/Catalog/sonnette_4.jpg',0.34,'',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (93,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (93,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (93,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (93,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (93,'compact',2350);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (93,'lux',2835);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (94,'Stripes','16','/Content/Images/Catalog/stripes_16.jpg',0.25,'Внимание! Узор горизонтальный, свяжитесь с нами, если узор нужно расположить вертикально',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (94,'37');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (94,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (94,'Color','Цвет','оранжевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (94,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (94,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (94,'compact',1930);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (94,'lux',2280);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (95,'Stripes','17','/Content/Images/Catalog/stripes_17.jpg',0.25,'Внимание! Узор горизонтальный, свяжитесь с нами, если узор нужно расположить вертикально',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (95,'Color','Цвет','оранжевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (95,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (95,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (95,'compact',1930);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (95,'lux',2280);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (96,'Stripes','19','/Content/Images/Catalog/stripes_19.jpg',0.25,'Внимание! Узор горизонтальный, свяжитесь с нами, если узор нужно расположить вертикально',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (96,'Color','Цвет','зеленый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (96,'Color','Цвет','желтый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (96,'Color','Цвет','голубой');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (96,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (96,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (96,'compact',1930);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (96,'lux',2280);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (97,'Stripes','20','/Content/Images/Catalog/stripes_20.jpg',0.25,'Внимание! Узор горизонтальный, свяжитесь с нами, если узор нужно расположить вертикально',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (97,'Color','Цвет','голубой');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (97,'Color','Цвет','зеленый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (97,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (97,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (97,'compact',1930);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (97,'lux',2280);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (98,'Stripes','21','/Content/Images/Catalog/stripes_21.jpg',0.25,'Внимание! Узор горизонтальный, свяжитесь с нами, если узор нужно расположить вертикально',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (98,'Color','Цвет','серый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (98,'Color','Цвет','красный');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (98,'Color','Цвет','розовый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (98,'Group','Группа','Ткани с рисунком');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (98,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (98,'compact',1930);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (98,'lux',2280);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (99,'Loto','022','/Content/Images/Catalog/loto_022.jpg',0.22,'Серебристая обратная сторона.<br/>Самый тонкий блэкаут - подходит для самых высоких окон.',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (99,'20');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (99,'45');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (99,'52');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (99,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (99,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (99,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (99,'eco',5859);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (99,'compact',2470);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (99,'lux',3780);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (100,'Loto','025','/Content/Images/Catalog/loto_025.jpg',0.22,'Серебристая обратная сторона.<br/>Самый тонкий блэкаут - подходит для самых высоких окон.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (100,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (100,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (100,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (100,'eco',5859);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (100,'compact',2470);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (100,'lux',3780);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (101,'Loto','054','/Content/Images/Catalog/loto_054.jpg',0.22,'Серебристая обратная сторона.<br/>Самый тонкий блэкаут - подходит для самых высоких окон.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (101,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (101,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (101,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (101,'eco',5859);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (101,'compact',2470);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (101,'lux',3780);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (102,'Loto','055','/Content/Images/Catalog/loto_055.jpg',0.22,'Серебристая обратная сторона.<br/>Самый тонкий блэкаут - подходит для самых высоких окон.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (102,'Color','Цвет','серый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (102,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (102,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (102,'eco',5859);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (102,'compact',2470);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (102,'lux',3780);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (103,'Loto','056','/Content/Images/Catalog/loto_056.jpg',0.22,'Серебристая обратная сторона.<br/>Самый тонкий блэкаут - подходит для самых высоких окон.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (103,'Color','Цвет','черный');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (103,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (103,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (103,'eco',5859);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (103,'compact',2470);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (103,'lux',3780);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (104,'Uni','1','/Content/Images/Catalog/uni_1.jpg',0.4,'одноцветная ткань',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (104,'39');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (104,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (104,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (104,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (104,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (104,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (105,'Uni','2','/Content/Images/Catalog/uni_2.jpg',0.4,'одноцветная ткань',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (105,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (105,'Color','Цвет','бежевый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (105,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (105,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (105,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (106,'Uni','3','/Content/Images/Catalog/uni_3.jpg',0.4,'одноцветная ткань',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (106,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (106,'Color','Цвет','бежевый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (106,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (106,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (106,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (107,'Uni','4','/Content/Images/Catalog/uni_4.jpg',0.4,'одноцветная ткань. Светло-персиковый',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (107,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (107,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (107,'Color','Цвет','розовый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (107,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (107,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (107,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (109,'Uni','7','/Content/Images/Catalog/uni_7.jpg',0.4,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (109,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (109,'Color','Цвет','коричневый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (109,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (109,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (109,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (110,'Uni','9','/Content/Images/Catalog/uni_9.jpg',0.4,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (110,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (110,'Color','Цвет','зеленый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (110,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (110,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (110,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (111,'Uni','10','/Content/Images/Catalog/uni_10.jpg',0.4,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (111,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (111,'Color','Цвет','зеленый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (111,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (111,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (111,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (112,'Uni','13','/Content/Images/Catalog/uni_13.jpg',0.4,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (112,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (112,'Color','Цвет','голубой');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (112,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (112,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (112,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (113,'Uni','14','/Content/Images/Catalog/uni_14.jpg',0.4,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (113,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (113,'Color','Цвет','голубой');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (113,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (113,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (113,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (114,'Uni','15','/Content/Images/Catalog/uni_15.jpg',0.4,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (114,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (114,'Color','Цвет','синий');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (114,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (114,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (114,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (115,'Uni','16','/Content/Images/Catalog/uni_16.jpg',0.4,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (115,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (115,'Color','Цвет','розовый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (115,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (115,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (115,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (116,'Uni','17','/Content/Images/Catalog/uni_17.jpg',0.4,'одноцветная ткань. Вишневый',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (116,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (116,'Color','Цвет','красный');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (116,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (116,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (116,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (117,'Uni','18','/Content/Images/Catalog/uni_18.jpg',0.4,'одноцветная ткань. Красно-рыжий',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (117,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (117,'Color','Цвет','оранжевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (117,'Color','Цвет','красный');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (117,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (117,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (117,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (118,'Uni','19','/Content/Images/Catalog/uni_19.jpg',0.4,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (118,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (118,'Color','Цвет','красный');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (118,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (118,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (118,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (119,'Uni','20','/Content/Images/Catalog/uni_20.jpg',0.4,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (119,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (119,'Color','Цвет','желтый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (119,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (119,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (119,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (120,'Uni','21','/Content/Images/Catalog/uni_21.jpg',0.4,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (120,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (120,'Color','Цвет','желтый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (120,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (120,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (120,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (121,'Uni','22','/Content/Images/Catalog/uni_22.jpg',0.4,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (121,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (121,'Color','Цвет','серый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (121,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (121,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (121,'lux',2025);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (122,'Uni blackout','1','/Content/Images/Catalog/uni_blackout_1.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (122,'40');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (122,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (122,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (122,'Color','Цвет','белый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (122,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (122,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (122,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (123,'Uni blackout','2','/Content/Images/Catalog/uni_blackout_2.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (123,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (123,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (123,'Color','Цвет','бежевый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (123,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (123,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (123,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (124,'Uni blackout','4','/Content/Images/Catalog/uni_blackout_4.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (124,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (124,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (124,'Color','Цвет','бежевый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (124,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (124,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (124,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (125,'Uni blackout','7','/Content/Images/Catalog/uni_blackout_7.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (125,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (125,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (125,'Color','Цвет','коричневый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (125,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (125,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (125,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (126,'Uni blackout','8','/Content/Images/Catalog/uni_blackout_8.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (126,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (126,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (126,'Color','Цвет','коричневый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (126,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (126,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (126,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (127,'Uni blackout','9','/Content/Images/Catalog/uni_blackout_9.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (127,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (127,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (127,'Color','Цвет','зеленый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (127,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (127,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (127,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (128,'Uni blackout','14','/Content/Images/Catalog/uni_blackout_14.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (128,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (128,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (128,'Color','Цвет','синий');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (128,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (128,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (128,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (129,'Uni blackout','15','/Content/Images/Catalog/uni_blackout_15.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (129,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (129,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (129,'Color','Цвет','синий');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (129,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (129,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (129,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (130,'Uni blackout','18','/Content/Images/Catalog/uni_blackout_18.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (130,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (130,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (130,'Color','Цвет','оранжевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (130,'Color','Цвет','красный');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (130,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (130,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (130,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (131,'Uni blackout','19','/Content/Images/Catalog/uni_blackout_19.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (131,'61');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (131,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (131,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (131,'Color','Цвет','красный');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (131,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (131,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (131,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (132,'Uni blackout','20','/Content/Images/Catalog/uni_blackout_20.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (132,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (132,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (132,'Color','Цвет','желтый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (132,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (132,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (132,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (133,'Uni blackout','21','/Content/Images/Catalog/uni_blackout_21.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (133,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (133,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (133,'Color','Цвет','желтый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (133,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (133,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (133,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (134,'Uni blackout','22','/Content/Images/Catalog/uni_blackout_22.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (134,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (134,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (134,'Color','Цвет','серый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (134,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (134,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (134,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (135,'Miracle','10','/Content/Images/Catalog/miracle_10.jpg',0.3,'жатый шелк',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (135,'24');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (135,'48');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (135,'Color','Цвет','серый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (135,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (135,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (135,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (135,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (135,'lux',3090);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (136,'Miracle','5','/Content/Images/Catalog/miracle_5.jpg',0.3,'жатый шелк',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (136,'24');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (136,'Color','Цвет','розовый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (136,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (136,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (136,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (136,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (136,'lux',3090);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (137,'Miracle','2','/Content/Images/Catalog/miracle_2.jpg',0.3,'жатый шелк',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (137,'24');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (137,'Color','Цвет','бежевый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (137,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (137,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (137,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (137,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (137,'lux',3090);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (138,'Miracle','0','/Content/Images/Catalog/miracle_0.jpg',0.3,'жатый шелк',1,'');
INSERT INTO Clothes_Photos (ClothId, PhotoId) VALUES (138,'24');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (138,'Color','Цвет','белый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (138,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (138,'Bestseller','Основные (бестселлеры)','Бестселлер');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (138,'eco',5110);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (138,'compact',1510);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (138,'lux',3090);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (139,'Uni blackout','24','/Content/Images/Catalog/uni_blackout_24.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (139,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (139,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (139,'Color','Цвет','бирюзовый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (139,'Color','Цвет','зеленый');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (139,'Color','Цвет','голубой');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (139,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (139,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (139,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (140,'Uni blackout','23','/Content/Images/Catalog/uni_blackout_23.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (140,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (140,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (140,'Color','Цвет','серый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (140,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (140,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (140,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (141,'Uni blackout','13','/Content/Images/Catalog/uni_blackout_13.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (141,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (141,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (141,'Color','Цвет','синий');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (141,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (141,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (141,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (142,'Uni blackout','12','/Content/Images/Catalog/uni_blackout_12.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (142,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (142,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (142,'Color','Цвет','голубой');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (142,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (142,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (142,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (143,'Uni blackout','10','/Content/Images/Catalog/uni_blackout_10.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (143,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (143,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (143,'Color','Цвет','зеленый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (143,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (143,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (143,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (144,'Uni blackout','6','/Content/Images/Catalog/uni_blackout_6.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (144,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (144,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (144,'Color','Цвет','коричневый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (144,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (144,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (144,'lux',3705);
INSERT INTO Clothes (
Id, 
Name,
SubName,
Img,
Thickness,
Description,
Available,
ServiceComments) VALUES (145,'Uni blackout','0','/Content/Images/Catalog/uni_blackout_0.jpg',0.49,'одноцветная ткань.',1,'');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (145,'Group','Группа','Однотонные ткани');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (145,'Blackout','Блэкаут','блэкаут');
INSERT INTO Clothes_Tags (ClothId, Type, Description, Name) VALUES (145,'Color','Цвет','белый');
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (145,'eco',5220);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (145,'compact',2300);
INSERT INTO Clothes_Prices (ClothId, Type, Value) VALUES (145,'lux',3705);






INSERT INTO Photos (
Id, 
Img,
Description) VALUES (43,'/Content/Images/Catalog/adora_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (2,'/Content/Images/Catalog/africa_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (3,'/Content/Images/Catalog/bali_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (4,'/Content/Images/Catalog/bombay_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (5,'/Content/Images/Catalog/brianna_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (6,'/Content/Images/Catalog/california_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (7,'/Content/Images/Catalog/camilla_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (8,'/Content/Images/Catalog/capelli_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (9,'/Content/Images/Catalog/carina_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (10,'/Content/Images/Catalog/cinema_blackout_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (11,'/Content/Images/Catalog/diana_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (12,'/Content/Images/Catalog/fantasia_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (13,'/Content/Images/Catalog/filomena_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (14,'/Content/Images/Catalog/flora_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (15,'/Content/Images/Catalog/flowers_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (16,'/Content/Images/Catalog/frutties_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (17,'/Content/Images/Catalog/gerbera_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (18,'/Content/Images/Catalog/havana_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (19,'/Content/Images/Catalog/irena_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (20,'/Content/Images/Catalog/loto_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (21,'/Content/Images/Catalog/madera_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (22,'/Content/Images/Catalog/maya_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (23,'/Content/Images/Catalog/megapolis_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (24,'/Content/Images/Catalog/miracle_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (25,'/Content/Images/Catalog/nelke_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (26,'/Content/Images/Catalog/olivia_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (27,'/Content/Images/Catalog/oregon_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (28,'/Content/Images/Catalog/pietra_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (29,'/Content/Images/Catalog/presto_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (30,'/Content/Images/Catalog/rodos_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (31,'/Content/Images/Catalog/savanna_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (32,'/Content/Images/Catalog/screen_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (33,'/Content/Images/Catalog/shantung_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (34,'/Content/Images/Catalog/siesta_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (35,'/Content/Images/Catalog/Sleepy_blackout_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (36,'/Content/Images/Catalog/sonnette_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (37,'/Content/Images/Catalog/stripes_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (38,'/Content/Images/Catalog/ultima_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (39,'/Content/Images/Catalog/uni_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (40,'/Content/Images/Catalog/uni_blackout_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (41,'/Content/Images/Catalog/vanila_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (42,'/Content/Images/Catalog/vogue_int.jpg','');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (44,'/Content/Images/Projects/Bombay3eco.jpg','');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (44,'System','Система','Eco');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (44,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (45,'/Content/Images/Projects/Loto022lux.jpg','');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (45,'System','Система','Lux');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (45,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (46,'/Content/Images/Projects/Miracle9lux.jpg','');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (46,'System','Система','Lux');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (46,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (47,'/Content/Images/Projects/Miracle10compact.jpg','');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (47,'System','Система','Compact');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (47,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (48,'/Content/Images/Projects/Miracle10compact_2.jpg','см. <a href="/kudrovo" style="text-decoration:underline;">проект</a> с этой шторой');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (48,'System','Система','Compact');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (48,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (49,'/Content/Images/Projects/Miracle10compact_3.jpg','');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (49,'System','Система','Compact');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (49,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (50,'/Content/Images/Projects/Sonette1eco.jpg','');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (50,'System','Система','Eco');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (50,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (51,'/Content/Images/Projects/Filomenaeco.jpg','');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (51,'System','Система','Eco');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (51,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (52,'/Content/Images/Projects/Loto022eco.jpg','');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (52,'System','Система','Eco');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (52,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (54,'/Content/Images/Projects/Vanila2eco.jpg','Интересный вариант - ткань на боковых створках повернута на 90 градусов относительно центральной створки');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (54,'System','Система','Eco');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (54,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (55,'/Content/Images/Projects/Sonette1eco_2.jpg','Хорошо видно, как ткань смотрится на освещенном и неосвещенном окне');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (55,'System','Система','Eco');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (55,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (57,'/Content/Images/Projects/Miracle1eco.jpg','см. <a href="/yar" style="text-decoration:underline;">проект</a> с этой шторой');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (57,'System','Система','Eco');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (57,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (58,'/Content/Images/Projects/Ultima1eco.jpg','см. <a href="/yar" style="text-decoration:underline;">проект</a> с этой шторой');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (58,'System','Система','Eco');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (58,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (59,'/Content/Images/Projects/Olivia6eco.jpg','');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (59,'System','Система','Eco');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (59,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (60,'/Content/Images/Projects/Olivia6eco_2.jpg','Из окон красивый вид на залив и морской пассажирский порт, но солнце на закате нагревало квартиру очень сильно');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (60,'System','Система','Eco');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (60,'Source','Источник фото','Фото клиента');
INSERT INTO Photos (
Id, 
Img,
Description) VALUES (61,'/Content/Images/Projects/UniBO19eco.jpg','Серии Uni и Uni blackout состоят из множества однотонных тканей различных оттенков. Заказ с использованием одного из вариантов красного цвета');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (61,'System','Система','Eco');
INSERT INTO Photos_Tags (PhotoId, Type, Description, Name) VALUES (61,'Source','Источник фото','Фото клиента');

INSERT INTO Shapes (
Id,
Name,
Img,
Description,
Available,
ServiceComments) VALUES (0,'Белый (алюминий)','/Content/Images/Catalog/prof0.png','',1,'');
INSERT INTO Shapes (
Id,
Name,
Img,
Description,
Available,
ServiceComments) VALUES (1,'Золотой дуб (алюминий)','/Content/Images/Catalog/prof1.png','',1,'');
INSERT INTO Shapes (
Id,
Name,
Img,
Description,
Available,
ServiceComments) VALUES (2,'Темный дуб (алюминий)','/Content/Images/Catalog/prof2.png','',1,'');