-- PART 2
-- What are all the types of pokemon that a pokemon can have?
SELECT name FROM types;

-- What is the name of the pokemon with id 45? Eevee
SELECT name FROM pokemons WHERE id=45;

-- How many pokemon are there? 656
SELECT COUNT(*) FROM pokemons; 

-- How many types are there?
SELECT COUNT(*) FROM types;
 
-- How many pokemon have a secondary type?
SELECT COUNT(*) AS pokes_with_2dary_type 
FROM pokemons 
WHERE secondary_type IS NOT NULL;

-- PART 3
-- What is each pokemon's primary type?
SELECT p.name AS Pokemons, t.name AS Primary_Type
FROM types AS t
JOIN pokemons AS p ON t.id = p.primary_type;

SELECT p.name AS p_name, t.name AS t_name
FROM pokemons p, types t
WHERE p.primary_type = t.id;
-- What is Rufflet's secondary type? 
SELECT p.name, t.name 
FROM types t
JOIN pokemons p ON t.id = p.secondary_type
WHERE p.name = 'Rufflet';

SELECT pokemons.name,t.name
FROM types t, pokemons 
WHERE t.id = pokemons.secondary_type
AND pokemons.name = 'Rufflet';

-- What are the names of the pokemon that belong to the trainer with trainerID 303?
-- How many pokemon have a secondary type `Poison`
-- What are all the primary types and how many pokemon have that type?
-- How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? 
-- (Hint: your query should not display a trainer
-- How many pokemon only belong to one trainer and no other?



-- pokemons, trainers, types, pokemon_trainer