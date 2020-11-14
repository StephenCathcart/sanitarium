-- name: find-killer-by-slug
SELECT 
	k.id, 
    slug, 
    k.name, 
    c.name as classification, 
    residence, 
    appearance, 
    background, 
    misfortune 
FROM killer k 
INNER JOIN classification AS c
ON c.id = k.classification_id
WHERE slug = $1;

-- name: find-random-killer
SELECT 
	k.id, 
    slug, 
    k.name, 
    c.name as classification, 
    residence, 
    appearance, 
    background, 
    misfortune 
FROM killer k 
INNER JOIN classification AS c
ON c.id = k.classification_id
where (k.id in (
    SELECT ka.killer_id
	FROM alias a
	INNER JOIN killer_alias ka
	ON ka.alias_id = a.id AND ka.killer_id = k.id
	WHERE a.name LIKE '%'||?||'%'
)
OR k.name LIKE '%'||?||'%')
AND k.id in (
    SELECT kw.killer_id
    FROM weapon w
    INNER JOIN killer_weapon kw
    ON kw.weapon_id = w.id AND kw.killer_id = k.id
    WHERE w.name LIKE '%'||?||'%'
)
AND c.name LIKE '%'||?||'%'
AND k.residence LIKE '%'||?||'%'
ORDER BY RANDOM() LIMIT 1;

-- name: find-aliases-by-killer-id
SELECT id, name
FROM alias a
INNER JOIN killer_alias ka
ON ka.alias_id = a.id
WHERE ka.killer_id = $1;

-- name: find-weapons-by-killer-id
SELECT id, name
FROM weapon w
INNER JOIN killer_weapon kw
ON kw.weapon_id = w.id
WHERE kw.killer_id = $1;

-- name: find-films-by-killer-id
SELECT id, title, year, length
FROM film f
INNER JOIN killer_film kf
ON kf.film_id = f.id
WHERE kf.killer_id = $1;

-- name: find-victims-by-film-id
SELECT id, name, death, time
FROM victim v
INNER JOIN victim_film vf
ON vf.victim_id = v.id
WHERE vf.film_id = $1;

-- name: find-victims-by-film-and-killer-id
SELECT id, name, death, time
FROM victim v
INNER JOIN victim_film vf
ON vf.victim_id = v.id
INNER JOIN victim_killer kf
ON kf.victim_id = v.id AND kf.killer_id = $1
WHERE vf.film_id = $2;

-- name: find-all-classifications
SELECT name FROM classification;