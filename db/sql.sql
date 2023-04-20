CREATE TABLE rooms (
  id INT PRIMARY KEY AUTO_INCREMENT,
  room_type VARCHAR(255) NOT NULL,
  fee DECIMAL(10,2) NOT NULL,
  max_occupants INT NOT NULL
);

INSERT INTO rooms (room_type, fee, max_occupants) VALUES
  ('single', 5000, 1),
  ('shared', 6000, 2),
  ('single', 5000, 1),
  ('shared', 6000, 2),
  ('single', 5000, 1),
  ('shared', 6000, 2),
  ('single', 5000, 1),
  ('shared', 6000, 2),
  ('single', 5000, 1),
  ('shared', 6000, 2);

  CREATE TABLE food_menu (
  food_id INT,
  diet_type VARCHAR(50),
  food VARCHAR(100),
  Day 
);
 
 INSERT INTO food_menu (food_id, diet_type, food, Day) VALUES
  (1, 'special', 'Ugali and Sukuma Wiki', '2023-04-20'),
  (2, 'normal', 'Chapati and Kachumbari', '2023-04-21'),
  (3, 'special', 'Nyama Choma and Ugali', '2023-04-22'),
  (4, 'normal', 'Matoke and Beef Stew', '2023-04-23'),
  (5, 'special', 'Fish Fry and Ugali', '2023-04-24'),
  (6, 'normal', 'Pilau and Kachumbari', '2023-04-25'),
  (7, 'special', 'Mukimo and Beef Stew', '2023-04-26'),
  (8, 'normal', 'Chips and Chicken', '2023-04-27'),
  (9, 'special', 'Githeri and Fried Beef', '2023-04-28'),
  (10, 'normal', 'Mahamri and Chai', '2023-04-29');

CREATE TABLE foodbookings (
  food_id INT,
  food VARCHAR(100),
  reg VARCHAR(50),
  date DATE
);

