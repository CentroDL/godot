-- Retrieve all info on all tenants
SELECT * FROM tenants;

-- Retrieve the name, age, and gender of all tenants
SELECT name, age, gender FROM tenants;

-- Retrieve all info on all tenants older than 65
SELECT * FROM tenants where tenants.age > 65;

-- Retrieve all info on all tenants in apartment with id 20
SELECT * FROM tenants WHERE apartment_id = 20;

-- Retrieve all info on all tenants in apartment with ids 20 or 21
SELECT * FROM tenants WHERE apartment_id = 20 OR apartment_id = 21;

-- Delete all tenants whose age is greater than 65
DELETE FROM tenants WHERE age > 65;

-- Change all doormen from building 3 to work night shifts.
UPDATE doormen SET shift = 'Night' WHERE building_id = 3;

-- Create one new tenant, put them in any apartment you want
INSERT INTO tenants (name, age, gender, apartment_id) VALUES (
    'Melissa Rycroft',
    28,
    'Female',
    71
);

-- Find just the ids for all apartments for building with 2
SELECT id FROM apartments WHERE building_id = 2;

-- Find all info for apartments in building number 3 whose price is greater than $2300
SELECT * FROM apartments WHERE building_id = 3 AND price > 2300;

-- Geriatric Birthday! Update all tenants whose age is 90 to be 91
UPDATE tenants SET age = 91 WHERE age = 90;

-- Change all tenants ages to increase by 1
UPDATE tenants SET age = age + 1;

-- Find all tenants who live in an apartment that costs more than $2300
SELECT * FROM tenants JOIN apartments ON tenants.apartment_id = apartments.id WHERE apartments.price > 2300;

-- Demonstrate joining doormen with buildings.
doormen JOIN buildings ON doormen.building_id = building.id;

-- Demonstrate joining buildings with apartments.
apartments JOIN buildings ON apartment.building_id = building.id;

-- Demonstrate joining apartments with tenants.
apartments JOIN tenants ON tenants.apartment_id = apartment.id;
