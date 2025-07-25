CREATE TABLE series(id INTEGER PRIMARY KEY, name TEXT);

INSERT INTO series(id, name)
VALUES
    (1, 'Classic'),
    (2, 'X'),
    (3, 'Zero'),
    (4, 'ZX');

CREATE TABLE games(id INTEGER PRIMARY KEY, name TEXT, seriesid INTEGER, releaseplatform TEXT, year INTEGER, FOREIGN KEY(seriesid) REFERENCES series(id));

INSERT INTO games (id, name, seriesid, releaseplatform, year)
VALUES
    (1, 'Mega Man', 1, 'NES', 1987),
    (2, 'Mega Man 2', 1, 'NES', 1988),
    (3, 'Mega Man 3', 1, 'NES', 1990),
    (4, 'Mega Man 4', 1, 'NES', 1991),
    (5, 'Mega Man 5', 1, 'NES', 1992),
    (6, 'Mega Man 6', 1, 'NES', 1993),
    (7, 'Mega Man 7', 1, 'SNES', 1995),
    (8, 'Mega Man 8', 1, 'PS1/Saturn', 1996),
    (9, 'Mega Man 9', 1, 'Wii/PS3/360', 2008),
    (10, 'Mega Man 10', 1, 'Wii/PS3/360', 2010),
    (11, 'Mega Man 11', 1, 'Switch/PS4/XB1/PC', 2018),
    (12, 'Mega Man: Dr.Wily''s Revenge', 1, 'GB', 1991),
    (13, 'Mega Man II', 1, 'GB', 1991),
    (14, 'Mega Man III', 1, 'GB', 1992),
    (15, 'Mega Man IV', 1, 'GB', 1993),
    (16, 'Mega Man V', 1, 'GB', 1994),
    (17, 'Mega Man & Bass', 1, 'SNES', 1998),
    (18, 'Mega Man Powered Up', 1, 'PSP', 2006),
    (19, 'Mega Man X', 2, 'SNES', 1993),
    (20, 'Mega Man X2', 2, 'SNES', 1994),
    (21, 'Mega Man X3', 2, 'SNES', 1995),
    (22, 'Mega Man X4', 2, 'PS1/Saturn', 1997),
    (23, 'Mega Man X5', 2, 'PS1', 2000),
    (24, 'Mega Man X6', 2, 'PS1', 2001),
    (25, 'Mega Man X7', 2, 'PS2', 2003),
    (26, 'Mega Man X8', 2, 'PS2', 2004),
    (27, 'Mega Man Xtreme', 2, 'GBC', 2000),
    (28, 'Mega Man Xtreme 2', 2, 'GBC', 2001),
    (29, 'Mega Man Maverick Hunter X', 2, 'PSP', 2005),
    (30, 'Mega Man Zero', 3, 'GBA', 2002),
    (31, 'Mega Man Zero 2', 3, 'GBA', 2003),
    (32, 'Mega Man Zero 3', 3, 'GBA', 2004),
    (33, 'Mega Man Zero 4', 3, 'GBA', 2005),
    (34, 'Mega Man ZX', 4, 'DS', 2006),
    (35, 'Mega Man ZX Advent', 4, 'DS', 2007);

CREATE TABLE bosses(id INTEGER, name TEXT, gameid INTEGER, weapon TEXT, weakness TEXT, prereq TEXT, FOREIGN KEY(gameid) REFERENCES games(id), UNIQUE(id,gameid));

INSERT INTO bosses (id, name, gameid, weapon, weakness, prereq)
VALUES
    (1, 'Cut Man', 1, 'Rolling Cutter', 'Super Arm', NULL),
    (2, 'Guts Man', 1, 'Super Arm', 'Hyper Bomb', NULL),
    (3, 'Ice Man', 1, 'Ice Slasher', 'Thunder Beam', NULL),
    (4, 'Bomb Man', 1, 'Hyper Bomb', 'Fire Storm', NULL),
    (5, 'Fire Man', 1, 'Fire Storm', 'Ice Slasher', NULL),
    (6, 'Elec Man', 1, 'Thunder Beam', 'Rolling Cutter', NULL),
    (1, 'Metal Man', 2, 'Metal Blade', 'Quick Boomerang/Metal Blade', NULL),
    (2, 'Air Man', 2, 'Air Shooter', 'Leaf Shield', NULL),
    (3, 'Bubble Man', 2, 'Bubble Lead', 'Metal Blade', NULL),
    (4, 'Quick Man', 2, 'Quick Boomerang', 'Time Stopper/Crash Bomber', NULL),
    (5, 'Crash Man', 2, 'Crash Bomber', 'Air Shooter', NULL),
    (6, 'Flash Man', 2, 'Time Stopper', 'Metal Blade/Crash Bomber', NULL),
    (7, 'Heat Man', 2, 'Atomic Fire', 'Bubble Lead', NULL),
    (8, 'Wood Man', 2, 'Leaf Shield', 'Atomic Fire', NULL);
