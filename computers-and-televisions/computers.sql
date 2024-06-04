-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a computers table, drop it

-- Create a computers table


-- The table should have id, make, model, cpu_speed, memory_size,
--  price, release_date, photo_url, storage_amount, number_usb_ports,
--  number_firewire_ports, number_thunderbolt_ports

CREATE TABLE computers ( id serial, make varchar(20), model varchar(20), cpu_speed decimal, memory_size varchar(20), price decimal, release_date timestamp, photo_url varchar(100), storage_amount varchar(20), number_usb_ports int, number_firewire_ports int, number_thunderbolt_ports int );


-- Insert 4 computers into the computers table

INSERT INTO computers ( make, model, price ) VALUES ( 'Intel', 'Laptop 1', 350 );
INSERT INTO computers ( make, model, price ) VALUES ( 'HP', 'Laptop 2', 450 );
INSERT INTO computers ( make, model, price ) VALUES ( 'Toshiba', 'Laptop 3', 550 );
INSERT INTO computers ( make, model, price ) VALUES ( 'Apple', 'Laptop 4', 80000 );


-- Select all entries from the computers table

SELECT * FROM computers;


-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the computers_models, removing the storage_amount column
-- and add storage_type and storage_size columns

ALTER TABLE computers DROP COLUMN storage_amount;
ALTER TABLE computers ADD COLUMN storage_type VARCHAR(10);
ALTER TABLE computers ADD COLUMN storage_size VARCHAR(15);
