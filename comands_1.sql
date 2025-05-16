-- Команда создания таблицы 

CREATE TABLE Computer (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),  
	price FLOAT,
	memory INT
);

--Внесение данных в таблицу 
INSERT INTO 
	Computer(name, price,memory)
VALUES
	('Asus',777.77,512);

-- Получение данных из таблицы 
SELECT 
	name,price,memory 
FROM 
	Computer
WHERE name = 'Asus';