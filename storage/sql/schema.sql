-- name: schema
-------------------------------------------------
-- Killer ---------------------------------------
CREATE TABLE killer (
    id INTEGER PRIMARY KEY NOT NULL,
    slug TEXT UNIQUE NOT NULL,
    name TEXT UNIQUE NOT NULL,
    classification_id INTEGER NOT NULL,
    residence TEXT NOT NULL,
    appearance TEXT NOT NULL,
    background TEXT NOT NULL,
    misfortune TEXT NOT NULL,
    FOREIGN KEY(classification_id) REFERENCES classification(id)
);
CREATE INDEX killer_slug_idx ON killer (slug);
-------------------------------------------------
-- Classification -------------------------------
CREATE TABLE classification (
    id INTEGER PRIMARY KEY NOT NULL,
    name TEXT UNIQUE NOT NULL
);
CREATE INDEX classification_name_idx ON classification (name);
-------------------------------------------------
-- Alias ----------------------------------------
CREATE TABLE alias (
    id INTEGER PRIMARY KEY NOT NULL,
    name TEXT UNIQUE NOT NULL
);
CREATE INDEX alias_name_idx ON alias (name);
-------------------------------------------------
-- Killer Alias ---------------------------------
CREATE TABLE killer_alias (
    killer_id INTEGER NOT NULL,
    alias_id INTEGER NOT NULL,
    FOREIGN KEY (killer_id) REFERENCES killer(id), 
    FOREIGN KEY (alias_id) REFERENCES alias(id),
    UNIQUE (killer_id, alias_id)
);
-------------------------------------------------
-- Weapon ---------------------------------------
CREATE TABLE weapon (
    id INTEGER PRIMARY KEY NOT NULL,
    name TEXT UNIQUE NOT NULL
);
CREATE INDEX weapon_name_idx ON weapon (name);
-------------------------------------------------
-- Killer Weapon --------------------------------
CREATE TABLE killer_weapon (
    killer_id INTEGER NOT NULL,
    weapon_id INTEGER NOT NULL,
    FOREIGN KEY (killer_id) REFERENCES killer(id), 
    FOREIGN KEY (weapon_id) REFERENCES weapon(id),
    UNIQUE (killer_id, weapon_id)
);
-------------------------------------------------
-- Film -----------------------------------------
CREATE TABLE film (
    id INTEGER PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    year INTEGER NOT NULL,
    length INTEGER NOT NULL,
    UNIQUE (title, year)
);
CREATE INDEX film_title_idx ON film (title);
-------------------------------------------------
-- Killer Film ----------------------------------
CREATE TABLE killer_film (
    killer_id INTEGER NOT NULL,
    film_id INTEGER NOT NULL,
    FOREIGN KEY (killer_id) REFERENCES killer(id), 
    FOREIGN KEY (film_id) REFERENCES film(id),
    UNIQUE (killer_id, film_id)
);
-------------------------------------------------
-- Victim ---------------------------------------
CREATE TABLE victim (
    id INTEGER PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    death TEXT NOT NULL,
    time INTEGER NOT NULL
);
CREATE INDEX victim_name_idx ON victim (name);
-------------------------------------------------
-- Victim Film ----------------------------------
CREATE TABLE victim_film (
    victim_id INTEGER NOT NULL,
    film_id INTEGER NOT NULL,
    FOREIGN KEY (victim_id) REFERENCES victim(id), 
    FOREIGN KEY (film_id) REFERENCES film(id),
    UNIQUE (victim_id, film_id)
);
-------------------------------------------------
-- Victim Killer --------------------------------
CREATE TABLE victim_killer (
    victim_id INTEGER NOT NULL,
    killer_id INTEGER NOT NULL,
    FOREIGN KEY (victim_id) REFERENCES victim(id), 
    FOREIGN KEY (killer_id) REFERENCES killer(id),
    UNIQUE (victim_id, killer_id)
);