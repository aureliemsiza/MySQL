// This code demonstrates a quest system that tracks the progress of quests for different players using MySQL. Each quest has a unique ID, a title, and objectives. Players can have multiple active quests with their progress tracked.

CREATE TABLE quests (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    objectives TEXT
);

CREATE TABLE player_quests (
    player_id INT,
    quest_id INT,
    progress INT,
    FOREIGN KEY (player_id) REFERENCES players(id),
    FOREIGN KEY (quest_id) REFERENCES quests(id)
);

INSERT INTO quests (id, title, objectives)
VALUES
    (1, 'Retrieve the Stolen Relic', 'Find the hidden cave and recover the relic.'),
    (2, 'Defeat the Dragon', 'Slay the fearsome dragon threatening the village.');

-- Example progress tracking for player 123
INSERT INTO player_quests (player_id, quest_id, progress)
VALUES
    (123, 1, 0),
    (123, 2, 1);
