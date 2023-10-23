--Choose one of your favorite films and add it to the "film" table. Fill in rental rates with 4.99 and rental durations with 2 weeks.

INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating, last_update, special_features, fulltext)
VALUES ('The Shawshank Redemption',
'Two imprisoned men bond over a number of years, finding solace and friendship in each other.', 
1994,
1, 
14,
4.99,
142,
19.99,
'PG-13',
'2023-10-23 23:14:34',
'{Trailers, commentary}',
'{The Shawshank Redemption is a 1994 American drama film written and directed by Frank Darabont, based on the 1982 Stephen King novella Rita Hayworth and Shawshank Redemption.}');

-- Insert new actors into the actor table
INSERT INTO public.actor (first_name, last_name, last_update)
VALUES
    ('Denzel', 'Washington', NOW()),
    ('John', 'Travolta', NOW()),
    ('Jason', 'Statham', NOW());

-- WITH actor_ids AS
    SELECT actor_id
    FROM public.actor
    WHERE first_name IN ('Denzel', 'John', 'Jason')
    AND last_name IN ('Washington', 'Travolta', 'Statham')


-- Associate the actors with your favorite film in the film_actor table
-- Replace 'Your_Film_ID' with the actual film ID
INSERT INTO public.film_actor (actor_id, film_id, last_update)
SELECT actor_id, 1, NOW()
FROM (
    SELECT actor_id
    FROM public.actor
    WHERE first_name IN ('Denzel', 'John', 'Jason')
    AND last_name IN ('Washington', 'Travolta', 'Statham')
) as actor_ids;