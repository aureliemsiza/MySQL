// This code demonstrates an inventory system that stores various items with their attributes using MySQL. Each item has a unique ID, a name, and some attributes such as damage, durability, and weight.

CREATE TABLE items (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    damage INT,
    durability INT,
    weight FLOAT
);

INSERT INTO items (id, name, damage, durability, weight)
VALUES
    (1, 'Sword', 10, 100, 5.0),
    (2, 'Shield', 0, 150, 8.0),
    (3, 'Potion', 0, 1, 0.5);
