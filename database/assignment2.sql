-- Task 1: Insertar un nuevo registro en la tabla de cuentas (accounts)
INSERT INTO accounts (first_name, last_name, email, password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- Task 2: Modificar el registro de Tony Stark para cambiar el tipo de cuenta a "Admin"
UPDATE accounts
SET account_type = 'Admin'
WHERE first_name = 'Tony' AND last_name = 'Stark';

-- Task 3: Eliminar el registro de Tony Stark de la base de datos
DELETE FROM accounts
WHERE first_name = 'Tony' AND last_name = 'Stark';

-- Task 4: Modificar el registro del "GM Hummer" para cambiar la descripción a "un interior enorme" en lugar de "interiores pequeños" utilizando la función REPLACE de PostgreSQL
UPDATE inventory
SET description = REPLACE(description, 'small interiors', 'a huge interior')
WHERE make = 'GM' AND model = 'Hummer';

-- Task 5: Utilizar una INNER JOIN para seleccionar los campos make y model de la tabla de inventario y el campo classification name de la tabla de clasificación para los artículos de inventario que pertenecen a la categoría "Sport"
SELECT i.make, i.model, c.name
FROM inventory i
INNER JOIN classification c ON i.classification_id = c.classification_id
WHERE c.name = 'Sport';

