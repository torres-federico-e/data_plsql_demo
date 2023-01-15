BEGIN
   -- Start of the Transaction procedure
   START TRANSACTION;

    -- Insert to City Table
    INSERT INTO city
    SELECT 
          601  -- city_id
        ,'New York' --city
        ,103   -- country_id
        ,make_timestamp(2022,08,15, 13,15,00) -- last_update


    -- Insert to Address Table
    INSERT INTO address
    SELECT  
          606 -- address_id 
        ,'82 Beaver St' -- address
        , null -- address2
        , 'Manhattan'  -- district
        , 601 -- city_id
        , 10005 -- postal_code
        ,  12345678 --phone
        , make_timestamp(2022,08,15, 13,15,00) --last_updated


    -- Insert to Staff Table
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



-- In case of any failure performing inserts; adding New city, New Address 
-- or New Staff member, execute ROLLBACK operation on the whole Transaction  Block
-- to go back to committed state 

   EXCEPTION
      WHEN OTHERS THEN
         ROLLBACK;
         RAISE;

-- End of the Transaction block/procedure
END;


