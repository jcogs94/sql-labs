-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a televisions table, drop it


-- Create a televisions table

--  The table should have id, model_name, screen_size, resolution,
--  price, release_date, photo_url

CREATE TABLE televisions (
    id SERIAL,
    model_name VARCHAR(20),
    screen_size VARCHAR(5),
    resolution VARCHAR(20),
    price DECIMAL,
    release_date TIMESTAMP,
    photo_url VARCHAR(100)
);


-- Insert 4 televisions into the tv_models table

INSERT INTO televisions ( model_name, screen_size, price ) VALUES ( 'Toshiba', '60"', 600 );
INSERT INTO televisions ( model_name, screen_size, price ) VALUES ( 'Vizio', '55"', 350 );
INSERT INTO televisions ( model_name, screen_size, price ) VALUES ( 'Samsung', '80"', 1500 );
INSERT INTO televisions ( model_name, screen_size, price ) VALUES ( 'Apple', '20"', 50000 );


-- Select all entries from the tv_models table

SELECT * FROM televisions;


-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the tv_models, removing the resolution column
--  and add vertical_resolution and horizontal_resolution columns

ALTER TABLE televisions DROP COLUMN resolution;
ALTER TABLE televisions ADD COLUMN vertical_resolution INT;
ALTER TABLE televisions ADD COLUMN horizontal_resolution INT;
