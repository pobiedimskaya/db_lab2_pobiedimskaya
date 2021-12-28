----------------------------
-- Populate Sales table
----------------------------
INSERT INTO Sales(sale_id, sale_price, house_id)
VALUES(101, 100000, 201);
INSERT INTO Sales(sale_id, sale_price, house_id)
VALUES(102, 500000, 202);
INSERT INTO Sales(sale_id, sale_price, house_id)
VALUES(103, 350000, 203);
INSERT INTO Sales(sale_id, sale_price, house_id)
VALUES(104, 430000, 204);
INSERT INTO Sales(sale_id, sale_price, house_id)
VALUES(105, 210000, 205);
INSERT INTO Sales(sale_id, sale_price, house_id)
VALUES(106, 400000, 206);
INSERT INTO Sales(sale_id, sale_price, house_id)
VALUES(107, 300000, 207);
INSERT INTO Sales(sale_id, sale_price, house_id)
VALUES(108, 250000, 208);
INSERT INTO Sales(sale_id, sale_price, house_id)
VALUES(109, 630000, 209);
INSERT INTO Sales(sale_id, sale_price, house_id)
VALUES(110, 320000, 210);

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
INSERT INTO Houses(house_id, year_built, neighborhood_id)
VALUES(201, 2020, 301);
INSERT INTO Houses(house_id, year_built, neighborhood_id)
VALUES(202, 2010, 301);
INSERT INTO Houses(house_id, year_built, neighborhood_id)
VALUES(203, 2010, 302);
INSERT INTO Houses(house_id, year_built, neighborhood_id)
VALUES(204, 2012, 303);
INSERT INTO Houses(house_id, year_built, neighborhood_id)
VALUES(205, 2013, 303);
INSERT INTO Houses(house_id, year_built, neighborhood_id)
VALUES(206, 2011, 303);
INSERT INTO Houses(house_id, year_built, neighborhood_id)
VALUES(207, 2012, 304);
INSERT INTO Houses(house_id, year_built, neighborhood_id)
VALUES(208, 2010, 304);
INSERT INTO Houses(house_id, year_built, neighborhood_id)
VALUES(209, 2010, 305);
INSERT INTO Houses(house_id, year_built, neighborhood_id)
VALUES(210, 2015, 305);
