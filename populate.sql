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
VALUES(203, 2010, 302, 103);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(204, 2012, 303, 104);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(205, 2013, 303, 105);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(206, 2011, 303, 101);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(207, 2012, 304, 102);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(208, 2010, 304, 103);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(209, 2010, 305, 104);
INSERT INTO Houses(house_id, year_built, neighborhood_id, sale_id)
VALUES(210, 2015, 305, 105);
