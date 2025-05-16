
-- CREATE TABLE Balance (
--   id SERIAL PRIMARY KEY,
--   username VARCHAR(50) UNIQUE NOT NULL,
--   balance FLOAT NOT NULL
-- );

-- INSERT INTO 
--   Balance(username, balance)
-- VALUES
--   ('asal', 100.3);

-- SELECT username, balance FROM Balance;


CREATE TABLE Categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Articles (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    content TEXT NOT NULL,
    category INTEGER REFERENCES Categories(id)
);

INSERT INTO Categories (name) VALUES 
('Новости'),
('Статьи'),
('Обзоры');


INSERT INTO Articles (title, content, category) VALUES
('Новости', 'Содержание новостей', 1),
('Статьи', 'Общие статьи', 2),
('Обзор', 'Обзор новостей', 3);

SELECT * FROM Categories;
SELECT * FROM Articles;

SELECT 
    a.id, 
    a.title, 
    a.content, 
    c.name AS category_name
FROM Articles a
JOIN Categories c ON a.category = c.id;
