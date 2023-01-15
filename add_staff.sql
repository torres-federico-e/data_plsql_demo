-- City Table
INSERT INTO city
SELECT 
      601  -- city_id
     ,'New York' --city
     ,103   -- country_id
     ,make_timestamp(2022,08,15, 13,15,00) -- last_update

-- INSERT 0 1
-- Query returned successfully in 244 msec.


-- Address Table
INSERT INTO address
SELECT  
       606 -- address_id 
     ,'82 Beaver St' -- '82 Beaver St, New York, NY 10005, Estados Unidos' -- address
     , null -- address2
     , 'Manhattan'  -- district
     , 601 -- city_id
     , 10005 -- postal_code
     ,  12345678 --phone
     , make_timestamp(2022,08,15, 13,15,00) --last_updated

-- INSERT 0 1
-- Query returned successfully in 244 msec.


-- Staff Table
INSERT INTO staff
SELECT  
      3          --staff_id
    , 'John'     --first_name
    , 'Wick'     --last_name
    , 606        --address_id
    , 'j.kayne@gmail.com' --email
    , 1          --store_id
    , true       --active
    , 'j.kayne'  --username
    ,'31f51faebeaafcb546721a7bd012db57b5434992' --hashed password
    , make_timestamp(2022,08,15, 13,15,00)   --last_update
    , null           --picture








select * from country where country_id = 102