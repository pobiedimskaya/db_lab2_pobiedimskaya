----------------------------
-- Populate Sales table
----------------------------
INSERT INTO Sales(sale_id, sale_price)
VALUES(101, 100000);
INSERT INTO Sales(sale_id, sale_price)
VALUES(102, 500000);
INSERT INTO Sales(sale_id, sale_price)
VALUES(103, 350000);
INSERT INTO Sales(sale_id, sale_price)
VALUES(104, 430000);
INSERT INTO Sales(sale_id, sale_price)
VALUES(105, 210000);
INSERT INTO Sales(sale_id, sale_price)
VALUES(106, 400000);
INSERT INTO Sales(sale_id, sale_price)
VALUES(107, 300000);
INSERT INTO Sales(sale_id, sale_price)
VALUES(108, 250000);
INSERT INTO Sales(sale_id, sale_price)
VALUES(109, 630000);
INSERT INTO Sales(sale_id, sale_price)
VALUES(110, 320000);

----------------------------
-- Populate Neighborhoods table
----------------------------
INSERT INTO Neighborhoods(neighborhood_id, neighborhood_name)
VALUES(301, 'Podil');
INSERT INTO Neighborhoods(neighborhood_id, neighborhood_name)
VALUES(302, 'Maidan Nezalezhnosti');
INSERT INTO Neighborhoods(neighborhood_id, neighborhood_name)
VALUES(303, 'Pechersk');
INSERT INTO Neighborhoods(neighborhood_id, neighborhood_name)
VALUES(304, 'Lipki');
INSERT INTO Neighborhoods(neighborhood_id, neighborhood_name)
VALUES(305, 'Obolon');


----------------------------
-- Populate Houses table
----------------------------
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(201, 2020, 301, 101);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(202, 2010, 301, 102);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(203, 2010, 301, 103);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(204, 2012, 301, 104);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(205, 2013, 301, 105);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(201, 2011, 301, 101);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(202, 2012, 301, 102);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(203, 2010, 301, 103);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(204, 2010, 301, 104);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(205, 2015, 301, 105);
