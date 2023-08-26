// This code demonstrates a player achievement system that awards achievements and unlockable items based on in-game accomplishments. It uses MySQL to store player achievements and unlockable items.

CREATE TABLE achievements (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    description TEXT
);

CREATE TABLE player_achievements (
    player_id INT,
    achievement_id INT,
    obtained_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (player_id) REFERENCES players(id),
    FOREIGN KEY (achievement_id) REFERENCES achievements(id)
);

CREATE TABLE unlockable_items (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    description TEXT
);

CREATE TABLE player_unlockables (
    player_id INT,
    unlockable_id INT,
    unlocked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (player_id) REFERENCES players(id),
    FOREIGN KEY (unlockable_id) REFERENCES unlockable_items(id)
);

INSERT INTO achievements (id, title, description)
VALUES
    (1, 'Novice Explorer', 'Discover 10 unique locations.'),
    (2, 'Dragon Slayer', 'Defeat the mighty dragon.');

INSERT INTO unlockable_items (id, name, description)
VALUES
    (1, 'Dragon Armor', 'Legendary armor made from dragon scales.'),
    (2, 'Explorer's Hat', 'A hat for seasoned adventurers.');

-- Example achievements and unlockables for player 456
INSERT INTO player_achievements (player_id, achievement_id)
VALUES
    (456, 1);

INSERT INTO player_unlockables (player_id, unlockable_id)
VALUES
    (456, 1);
