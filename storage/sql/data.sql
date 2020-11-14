--- This file was generated automatically.
--- sanitarum-tool: v1.0
--- created: 2019-02-06 20:40:54
-------------------------------------------------
-- name: data
-------------------------------------------------
-- Killer ---------------------------------------
INSERT INTO killer (id, slug, name, classification_id, residence, appearance, background, misfortune)
VALUES (1, '~chucky', 'Charles Lee Ray', 1, 'Chicago', '', '', '');
INSERT INTO killer (id, slug, name, classification_id, residence, appearance, background, misfortune)
VALUES (2, '~ghostface', 'Ghostface', 2, 'Woodsboro', '', '', '');
INSERT INTO killer (id, slug, name, classification_id, residence, appearance, background, misfortune)
VALUES (3, '~jason', 'Jason Voorhees', 3, 'Camp Crystal Lake', 'Machete wielding mass murderer', 'Jason Voorhees has been depicted as a non-verbal, indestructible, machete-wielding mass murderer. Jason is primarily portrayed as being completely silent throughout the film series.', 'Hacked by Tommy Jarvis');
INSERT INTO killer (id, slug, name, classification_id, residence, appearance, background, misfortune)
VALUES (4, '~leatherface', 'Jedidiah Sawyer', 1, 'Kingsland, Texas', '', '', '');
INSERT INTO killer (id, slug, name, classification_id, residence, appearance, background, misfortune)
VALUES (5, '~norman', 'Norman Bates', 1, 'Fairvale, California', '', '', '');
INSERT INTO killer (id, slug, name, classification_id, residence, appearance, background, misfortune)
VALUES (6, '~pennywise', 'Pennywise', 4, 'Derry, Maine', 'Clown with razor sharp teeth.', 'Pennywise the Dancing Clown is an evil and demonic entity who kills children and is part of the disasters that occur every 30 years in Derry, Maine.', 'Was killed by having his heart pulled out while still alive.');
INSERT INTO killer (id, slug, name, classification_id, residence, appearance, background, misfortune)
VALUES (7, '~pinhead', 'Elliot Spencer', 5, 'Labyrinth', '', '', '');
INSERT INTO killer (id, slug, name, classification_id, residence, appearance, background, misfortune)
VALUES (8, '~samara', 'Samara Osorio', 6, 'Moesko Island', '', '', '');
INSERT INTO killer (id, slug, name, classification_id, residence, appearance, background, misfortune)
VALUES (9, '~tiff', 'Tiffany Valentine-Ray', 1, 'Chicago', '', '', '');
-------------------------------------------------
-- Classification -------------------------------
INSERT INTO classification (id, name)
VALUES (3, 'Mass Murderer');
INSERT INTO classification (id, name)
VALUES (4, 'Demon');
INSERT INTO classification (id, name)
VALUES (5, 'Extradimensional Being');
INSERT INTO classification (id, name)
VALUES (6, 'Vengeful Ghost');
INSERT INTO classification (id, name)
VALUES (1, 'Serial Killer');
INSERT INTO classification (id, name)
VALUES (2, 'Murderer');
-------------------------------------------------
-- Alias ----------------------------------------
INSERT INTO alias (id, name)
VALUES (1, 'Chucky');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (1, 1);
INSERT INTO alias (id, name)
VALUES (11, 'Roman Bridger');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (2, 11);
INSERT INTO alias (id, name)
VALUES (28, 'Samara Morgan');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (8, 28);
INSERT INTO alias (id, name)
VALUES (16, 'Thomas ''Bubba'' Sawyer');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (4, 16);
INSERT INTO alias (id, name)
VALUES (17, '''Junior'' Sawyer');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (4, 17);
INSERT INTO alias (id, name)
VALUES (25, 'The Hell Priest');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (7, 25);
INSERT INTO alias (id, name)
VALUES (22, 'Ed');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (5, 22);
INSERT INTO alias (id, name)
VALUES (6, 'The Woodsboro Killer');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (2, 6);
INSERT INTO alias (id, name)
VALUES (15, 'Jedidiah ''Jed'' Sawyer');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (4, 15);
INSERT INTO alias (id, name)
VALUES (18, '''Leather'' Slaughter');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (4, 18);
INSERT INTO alias (id, name)
VALUES (31, 'Mom');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (9, 31);
INSERT INTO alias (id, name)
VALUES (5, 'The Killer');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (2, 5);
INSERT INTO alias (id, name)
VALUES (7, 'Billy Loomis');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (2, 7);
INSERT INTO alias (id, name)
VALUES (19, 'Norma Bates');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (5, 19);
INSERT INTO alias (id, name)
VALUES (14, 'Crystal Lake Killer');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (3, 14);
INSERT INTO alias (id, name)
VALUES (27, 'Samara');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (8, 27);
INSERT INTO alias (id, name)
VALUES (30, 'Pookie');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (9, 30);
INSERT INTO alias (id, name)
VALUES (4, 'Good Guy');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (1, 4);
INSERT INTO alias (id, name)
VALUES (10, 'Mickey Altieri');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (2, 10);
INSERT INTO alias (id, name)
VALUES (13, 'Charlie Walker');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (2, 13);
INSERT INTO alias (id, name)
VALUES (21, 'Normy');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (5, 21);
INSERT INTO alias (id, name)
VALUES (12, 'Jill Roberts');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (2, 12);
INSERT INTO alias (id, name)
VALUES (23, 'Pennywise the Dancing Clown');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (6, 23);
INSERT INTO alias (id, name)
VALUES (24, 'Clown');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (6, 24);
INSERT INTO alias (id, name)
VALUES (2, 'The Lakeshore Strangler');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (1, 2);
INSERT INTO alias (id, name)
VALUES (3, 'The Killer Doll');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (1, 3);
INSERT INTO alias (id, name)
VALUES (9, 'Debbie Loomis');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (2, 9);
INSERT INTO alias (id, name)
VALUES (29, 'Tiff');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (9, 29);
INSERT INTO alias (id, name)
VALUES (8, 'Stu Macher');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (2, 8);
INSERT INTO alias (id, name)
VALUES (20, 'Mother');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (5, 20);
INSERT INTO alias (id, name)
VALUES (26, 'Lead Cenobite');
INSERT INTO killer_alias (killer_id, alias_id)
VALUES (7, 26);
-------------------------------------------------
-- Weapon ---------------------------------------
INSERT INTO weapon (id, name)
VALUES (3, 'Machete');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (3, 3);
INSERT INTO weapon (id, name)
VALUES (15, 'Nail File');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (9, 15);
INSERT INTO weapon (id, name)
VALUES (11, 'Pyrokinesis');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (7, 11);
INSERT INTO weapon (id, name)
VALUES (13, 'Hydrokinesis');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (8, 13);
INSERT INTO weapon (id, name)
VALUES (1, 'Knife');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (1, 1);
INSERT INTO weapon (id, name)
VALUES (4, 'Ice Pick');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (3, 4);
INSERT INTO weapon (id, name)
VALUES (8, 'Teeth');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (6, 8);
INSERT INTO weapon (id, name)
VALUES (12, 'Telepathy');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (7, 12);
INSERT INTO weapon (id, name)
VALUES (6, 'Sledgehammer');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (4, 6);
INSERT INTO weapon (id, name)
VALUES (7, 'Kitchen knife');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (5, 7);
INSERT INTO weapon (id, name)
VALUES (9, 'Hooked Chains');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (7, 9);
INSERT INTO weapon (id, name)
VALUES (14, 'Dark Powers');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (8, 14);
INSERT INTO weapon (id, name)
VALUES (2, 'Bowie Knife');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (2, 2);
INSERT INTO weapon (id, name)
VALUES (5, 'Chainsaw');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (4, 5);
INSERT INTO weapon (id, name)
VALUES (10, 'Psychokinesis');
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (7, 10);
INSERT INTO killer_weapon (killer_id, weapon_id)
VALUES (8, 10);
-------------------------------------------------
-- Film -----------------------------------------
INSERT INTO film (id, title, year, length)
VALUES (12, 'Leatherface: Texas Chainsaw Massacre 3', 1990, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (4, 12);
INSERT INTO film (id, title, year, length)
VALUES (20, 'Psycho III', 1986, 96);
INSERT INTO killer_film (killer_id, film_id)
VALUES (5, 20);
INSERT INTO film (id, title, year, length)
VALUES (27, 'Hellraiser: Bloodline', 1996, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (7, 27);
INSERT INTO film (id, title, year, length)
VALUES (30, 'Hellraiser: Deader', 2005, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (7, 30);
INSERT INTO film (id, title, year, length)
VALUES (4, 'Bride of Chucky', 1998, 100);
INSERT INTO killer_film (killer_id, film_id)
VALUES (1, 4);
INSERT INTO killer_film (killer_id, film_id)
VALUES (9, 4);
INSERT INTO film (id, title, year, length)
VALUES (5, 'Seed of Chucky', 2004, 93);
INSERT INTO killer_film (killer_id, film_id)
VALUES (1, 5);
INSERT INTO killer_film (killer_id, film_id)
VALUES (9, 5);
INSERT INTO film (id, title, year, length)
VALUES (19, 'Psycho II', 1983, 113);
INSERT INTO killer_film (killer_id, film_id)
VALUES (5, 19);
INSERT INTO film (id, title, year, length)
VALUES (22, 'IT', 1990, 192);
INSERT INTO killer_film (killer_id, film_id)
VALUES (6, 22);
INSERT INTO film (id, title, year, length)
VALUES (34, 'The Ring', 2002, 145);
INSERT INTO killer_film (killer_id, film_id)
VALUES (8, 34);
INSERT INTO film (id, title, year, length)
VALUES (1, 'Child''s Play', 1988, 88);
INSERT INTO killer_film (killer_id, film_id)
VALUES (1, 1);
INSERT INTO film (id, title, year, length)
VALUES (17, 'Leatherface', 2017, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (4, 17);
INSERT INTO film (id, title, year, length)
VALUES (13, 'Texas Chainsaw Massacre: The Next Generation', 1994, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (4, 13);
INSERT INTO film (id, title, year, length)
VALUES (21, 'Psycho IV: The Beginning', 1990, 96);
INSERT INTO killer_film (killer_id, film_id)
VALUES (5, 21);
INSERT INTO film (id, title, year, length)
VALUES (29, 'Hellraiser: Hellseeker', 2002, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (7, 29);
INSERT INTO film (id, title, year, length)
VALUES (32, 'Hellraiser: Revelations', 2011, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (7, 32);
INSERT INTO film (id, title, year, length)
VALUES (7, 'Cult of Chucky', 2017, 91);
INSERT INTO killer_film (killer_id, film_id)
VALUES (1, 7);
INSERT INTO killer_film (killer_id, film_id)
VALUES (9, 7);
INSERT INTO film (id, title, year, length)
VALUES (11, 'The Texas Chainsaw Massacre 2', 1986, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (4, 11);
INSERT INTO film (id, title, year, length)
VALUES (31, 'Hellraiser: Hellworld', 2005, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (7, 31);
INSERT INTO film (id, title, year, length)
VALUES (3, 'Child''s Play 3', 1991, 90);
INSERT INTO killer_film (killer_id, film_id)
VALUES (1, 3);
INSERT INTO film (id, title, year, length)
VALUES (26, 'Hellraiser III: Hell on Earth', 1992, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (7, 26);
INSERT INTO film (id, title, year, length)
VALUES (24, 'Hellraiser', 1987, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (7, 24);
INSERT INTO film (id, title, year, length)
VALUES (6, 'Curse of Chucky', 2013, 97);
INSERT INTO killer_film (killer_id, film_id)
VALUES (1, 6);
INSERT INTO killer_film (killer_id, film_id)
VALUES (9, 6);
INSERT INTO film (id, title, year, length)
VALUES (14, 'The Texas Chainsaw Massacre', 2003, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (4, 14);
INSERT INTO film (id, title, year, length)
VALUES (25, 'Hellbound: Hellraiser II', 1988, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (7, 25);
INSERT INTO film (id, title, year, length)
VALUES (28, 'Hellraiser Inferno', 2000, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (7, 28);
INSERT INTO film (id, title, year, length)
VALUES (35, 'The Ring Two', 2002, 128);
INSERT INTO killer_film (killer_id, film_id)
VALUES (8, 35);
INSERT INTO film (id, title, year, length)
VALUES (36, 'Rings', 2017, 107);
INSERT INTO killer_film (killer_id, film_id)
VALUES (8, 36);
INSERT INTO film (id, title, year, length)
VALUES (10, 'The Texas Chain Saw Massacre', 1974, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (4, 10);
INSERT INTO film (id, title, year, length)
VALUES (16, 'Texas Chainsaw 3D', 2013, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (4, 16);
INSERT INTO film (id, title, year, length)
VALUES (9, 'Friday the 13th', 1980, 154);
INSERT INTO killer_film (killer_id, film_id)
VALUES (3, 9);
INSERT INTO film (id, title, year, length)
VALUES (15, 'The Texas Chainsaw Massacre: The Beginning', 2006, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (4, 15);
INSERT INTO film (id, title, year, length)
VALUES (18, 'Psycho', 1960, 109);
INSERT INTO killer_film (killer_id, film_id)
VALUES (5, 18);
INSERT INTO film (id, title, year, length)
VALUES (23, 'IT: Chapter One', 2017, 135);
INSERT INTO killer_film (killer_id, film_id)
VALUES (6, 23);
INSERT INTO film (id, title, year, length)
VALUES (33, 'Hellraiser: Judgement', 2018, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (7, 33);
INSERT INTO film (id, title, year, length)
VALUES (2, 'Child''s Play 2', 1990, 84);
INSERT INTO killer_film (killer_id, film_id)
VALUES (1, 2);
INSERT INTO film (id, title, year, length)
VALUES (8, 'Scream', 0, 0);
INSERT INTO killer_film (killer_id, film_id)
VALUES (2, 8);
-------------------------------------------------
-- Victim ---------------------------------------
INSERT INTO victim (id, name, death, time) 
VALUES (50, 'Milton Arbogast', 'Stabbed', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (50, 18);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (50, 5);
INSERT INTO victim (id, name, death, time) 
VALUES (82, 'Diane', 'Impaled', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (82, 4);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (82, 9);
INSERT INTO victim (id, name, death, time) 
VALUES (7, 'Ms. Kettlewell', 'Beaten', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (7, 2);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (7, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (16, 'Carnival Security Guard', 'Shot', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (16, 3);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (16, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (25, 'Britney Spears', 'Car Explosion', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (25, 5);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (25, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (58, 'Norma Bates', 'Poisoned', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (58, 21);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (58, 5);
INSERT INTO victim (id, name, death, time) 
VALUES (60, 'Laurie Ann', 'Unknown', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (60, 22);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (60, 6);
INSERT INTO victim (id, name, death, time) 
VALUES (62, 'Victor ''Vic'' Criss', 'Decapitated', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (62, 22);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (62, 6);
INSERT INTO victim (id, name, death, time) 
VALUES (63, 'Reginald ''Belch'' Higgins', 'Folded in Half, Eaten', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (63, 22);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (63, 6);
INSERT INTO victim (id, name, death, time) 
VALUES (69, 'Katherine ''Katie'' Embry', 'Heart Attack', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (69, 34);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (69, 8);
INSERT INTO victim (id, name, death, time) 
VALUES (5, 'Technician', 'Electrocuted', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (5, 2);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (5, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (18, 'Tiffany ''Tiff'' Valentine', 'Electrocuted', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (18, 4);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (18, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (85, 'Officer Stanton', 'Throat slit', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (85, 6);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (85, 9);
INSERT INTO victim (id, name, death, time) 
VALUES (21, 'Old Man', 'Shot', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (21, 4);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (21, 1);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (21, 9);
INSERT INTO victim (id, name, death, time) 
VALUES (37, 'Alice', 'Unknown', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (37, 7);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (37, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (57, 'Unidentified Girl #1', 'Strangled', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (57, 21);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (57, 5);
INSERT INTO victim (id, name, death, time) 
VALUES (59, 'Chet Rudolph', 'Poisoned', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (59, 21);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (59, 5);
INSERT INTO victim (id, name, death, time) 
VALUES (75, 'Max Rourke', 'Heart Attack', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (75, 35);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (75, 8);
INSERT INTO victim (id, name, death, time) 
VALUES (1, 'Margaret Lorraine ''Maggie'' Peterson', 'Falling', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (1, 1);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (1, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (9, 'Joanne Mildred', 'Throat Slit', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (9, 2);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (9, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (38, 'Angela', 'Wrists slit', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (38, 7);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (38, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (47, 'Unidentified Girl #1', 'Murdered', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (47, 18);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (47, 5);
INSERT INTO victim (id, name, death, time) 
VALUES (70, 'Ferry Horse', 'Cut by Boat Propeller', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (70, 34);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (70, 8);
INSERT INTO victim (id, name, death, time) 
VALUES (76, 'Carter', 'Heart Attack', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (76, 36);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (76, 8);
INSERT INTO victim (id, name, death, time) 
VALUES (84, 'Fulvia', 'Beaten', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (84, 5);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (84, 9);
INSERT INTO victim (id, name, death, time) 
VALUES (17, 'Howard Fitzwater', 'Smothered', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (17, 4);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (17, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (36, 'Alice''s Grandma', 'Suffocated', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (36, 6);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (36, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (12, 'Garbage Man', 'Crushed', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (12, 3);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (12, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (26, 'Unidentified Man #1', 'Macheted', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (26, 5);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (26, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (42, 'Dr. Foley', 'Head stomped', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (42, 7);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (42, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (73, 'Shelter Mountain Inn Manager', 'Heart Attack', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (73, 34);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (73, 8);
INSERT INTO victim (id, name, death, time) 
VALUES (78, 'Sky', 'Heart Attack', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (78, 36);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (78, 8);
INSERT INTO victim (id, name, death, time) 
VALUES (2, 'Eddie ''Edward'' Caputo', 'Incinerated', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (2, 1);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (2, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (8, 'Phillip George ''Phil'' Simpson', 'Neck Snap', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (8, 2);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (8, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (61, 'Georgie Denbrough', 'Arm ripped off', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (61, 22);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (61, 23);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (61, 6);
INSERT INTO victim (id, name, death, time) 
VALUES (71, 'Noah Clay', 'Heart Attack', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (71, 34);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (71, 8);
INSERT INTO victim (id, name, death, time) 
VALUES (14, 'Sergeant Botnick', 'Throat Slit', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (14, 3);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (14, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (32, 'Father Frank', 'Poisoned, Decapitated', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (32, 6);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (32, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (79, 'Burke', 'Heart Attack', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (79, 36);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (79, 8);
INSERT INTO victim (id, name, death, time) 
VALUES (30, 'Jennifer Tilly', 'Axed', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (30, 5);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (30, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (35, 'Ian', 'Jaw cut off with Axe', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (35, 6);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (35, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (41, 'Nurse Carlos', 'Stabbed', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (41, 7);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (41, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (72, 'Dr. Scott', 'Dark Powers', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (72, 34);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (72, 8);
INSERT INTO victim (id, name, death, time) 
VALUES (83, 'Redman', 'Gutted', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (83, 5);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (83, 9);
INSERT INTO victim (id, name, death, time) 
VALUES (15, 'Harold Aubrey Whitehurst', 'Blown Up', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (15, 3);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (15, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (39, 'Claire', 'Decapitated', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (39, 7);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (39, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (44, 'Malcolm', 'Drilled', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (44, 7);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (44, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (52, 'Red', 'Stabbed', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (52, 20);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (52, 5);
INSERT INTO victim (id, name, death, time) 
VALUES (53, 'Patsy Boyle', 'Stabbed', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (53, 20);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (53, 5);
INSERT INTO victim (id, name, death, time) 
VALUES (67, 'Patrick Hockstetter', 'Eaten', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (67, 23);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (67, 6);
INSERT INTO victim (id, name, death, time) 
VALUES (74, 'Jake Pierce', 'Heart Attack', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (74, 35);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (74, 8);
INSERT INTO victim (id, name, death, time) 
VALUES (11, 'Christopher Sullivan', 'Strangled', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (11, 3);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (11, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (43, 'Nurse Ashley', 'Drilled', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (43, 7);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (43, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (20, 'Chief Warren Kincaid', 'Stabbed, Nailed', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (20, 4);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (20, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (48, 'Unidentified Girl #2', 'Murdered', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (48, 18);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (48, 5);
INSERT INTO victim (id, name, death, time) 
VALUES (10, 'Grace Elsie Poole', 'Stabbed', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (10, 2);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (10, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (13, 'Colonel Francis Cochran', 'Heart Attack', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (13, 3);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (13, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (55, 'Maureen Coyle', 'Accidental, Impaled', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (55, 20);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (55, 5);
INSERT INTO victim (id, name, death, time) 
VALUES (66, 'Betty Ripsom', 'Unknown', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (66, 23);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (66, 6);
INSERT INTO victim (id, name, death, time) 
VALUES (45, '', '', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 31);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 33);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 15);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 24);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 30);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 26);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 29);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 8);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 13);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 17);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 25);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 27);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 28);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 10);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 14);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 16);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 11);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 12);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (45, 32);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (45, 2);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (45, 4);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (45, 7);
INSERT INTO victim (id, name, death, time) 
VALUES (51, 'Emma Spool', 'Poisoned and Bludgeoned', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (51, 19);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (51, 5);
INSERT INTO victim (id, name, death, time) 
VALUES (68, 'Eddie Corcoran', 'Unknown', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (68, 23);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (68, 6);
INSERT INTO victim (id, name, death, time) 
VALUES (77, 'Unidentified Passengers', 'Plane Crush', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (77, 36);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (77, 8);
INSERT INTO victim (id, name, death, time) 
VALUES (23, 'Gravedigger', 'Shot', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (23, 4);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (23, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (27, 'Unidentified Man #2', 'Smothered', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (27, 5);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (27, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (29, 'Stan', 'Stabbed', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (29, 5);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (29, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (56, 'Holly', 'Stabbed', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (56, 21);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (56, 5);
INSERT INTO victim (id, name, death, time) 
VALUES (64, 'Koontz', 'Eaten', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (64, 22);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (64, 6);
INSERT INTO victim (id, name, death, time) 
VALUES (81, 'Russ', 'Impaled', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (81, 4);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (81, 9);
INSERT INTO victim (id, name, death, time) 
VALUES (6, 'Mattson', 'Suffocated', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (6, 2);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (6, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (24, 'Tony Gardner', 'Decapitated', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (24, 5);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (24, 1);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (24, 9);
INSERT INTO victim (id, name, death, time) 
VALUES (49, 'Marion Crane', 'Stabbed', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (49, 18);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (49, 5);
INSERT INTO victim (id, name, death, time) 
VALUES (65, 'Edward ''Eddie'' Kaspbrak', 'Squeezed', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (65, 22);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (65, 6);
INSERT INTO victim (id, name, death, time) 
VALUES (80, 'Officer Robert Bailey', 'Throat slit', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (80, 4);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (80, 9);
INSERT INTO victim (id, name, death, time) 
VALUES (33, 'Jill', 'Electrocuted', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (33, 6);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (33, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (34, 'Bard Pierce', 'Knifed in eye', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (34, 6);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (34, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (22, 'Old Woman', 'Shot', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (22, 4);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (22, 1);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (22, 9);
INSERT INTO victim (id, name, death, time) 
VALUES (28, 'Unidentified Man #3', 'Impaled', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (28, 5);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (28, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (31, 'Sarah Pierce', 'Scissors in chest', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (31, 6);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (31, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (40, 'Madeleine', 'Spine pulled out through mouth', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (40, 7);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (40, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (54, 'Duane Duke', 'Drowned', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (54, 20);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (54, 5);
INSERT INTO victim (id, name, death, time) 
VALUES (4, 'Doctor Phillip Ardmore', 'Electrocuted', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (4, 1);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (4, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (19, 'Officer ''Needlenose'' Norton', 'Incinerated', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (19, 4);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (19, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (86, 'Asylum Guard', 'Throat slit', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (86, 7);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (86, 9);
INSERT INTO victim (id, name, death, time) 
VALUES (3, 'John Aelsop Bishop', 'Stabbed', 0);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (3, 1);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (3, 1);
INSERT INTO victim (id, name, death, time) 
VALUES (46, 'Frank', 'Killed with chair', 2);
INSERT INTO victim_film (victim_id, film_id) 
VALUES (46, 9);
INSERT INTO victim_killer (victim_id, killer_id) 
VALUES (46, 3);