
-- Simple Show: Table data types
-----------------------------------
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'address'


-- Full Show: Data Types, Keys, contraints 
--------------------------------------
SELECT 
    conrelid
    ,conrelid::regclass AS table_name 
    ,conname AS foreign_key
    ,pg_get_constraintdef(oid) 
    ,*
FROM pg_constraint 
WHERE contype = 'f' 
AND  connamespace = 'public'::regnamespace 
-- Table name
AND conrelid::regclass::text = 'city_id' -- insert table name
ORDER BY conrelid::regclass::text, contype DESC;
