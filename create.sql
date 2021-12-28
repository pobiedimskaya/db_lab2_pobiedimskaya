CREATE TABLE Sales
(
    sale_id      int    NOT NULL,
    sale_price   int    NOT NULL,
    house_id     int    NOT NULL,
);

CREATE TABLE Houses
(
    house_id     int     NOT NULL,	
    year_built   int     NOT NULL,
    neighborhood_id int  NOT NULL
);

CREATE TABLE Neighborhoods
(
    neighborhood_id      int        NOT NULL,	
    neighborhood_name    char(20)	NOT NULL
);

----------------------
-- Define primary keys
----------------------
ALTER TABLE Sales ADD CONSTRAINT PK_Sales PRIMARY KEY (sale_id);
ALTER TABLE Houses ADD CONSTRAINT PK_Houses PRIMARY KEY (house_id);
ALTER TABLE Neighborhoods ADD CONSTRAINT PK_Neighborhoods PRIMARY KEY (neighborhood_id);

----------------------
-- Define foreign keys
----------------------
ALTER TABLE Sales
ADD CONSTRAINT FK_Houses_Sales FOREIGN KEY (sale_id) REFERENCES Houses (house_id);
ALTER TABLE Houses
ADD CONSTRAINT FK_Houses_Neighborhoods FOREIGN KEY (neighborhood_id) REFERENCES Neighborhoods (neighborhood_id);
