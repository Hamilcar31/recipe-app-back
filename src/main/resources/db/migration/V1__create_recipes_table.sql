CREATE TABLE recipes
(
    id           UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title        VARCHAR(255) NOT NULL,
    description  VARCHAR(1000),
    instructions VARCHAR(2000),
    duration     INTEGER,
    servings     INTEGER
);

CREATE TABLE recipe_ingredients
(
    recipe_id  UUID           NOT NULL REFERENCES recipes (id) ON DELETE CASCADE,
    ingredient VARCHAR(255)   NOT NULL,
    quantity   NUMERIC(10, 2) NOT NULL,
    unit       VARCHAR(255)   NOT NULL
);

CREATE VIEW recipes_with_ingredients AS
SELECT r.id,
       r.title,
       r.description,
       r.instructions,
       r.duration,
       r.servings,
       json_agg(
               json_build_object(
                       'ingredient', ri.ingredient,
                       'quantity', ri.quantity,
                       'unit', ri.unit
               )
       ) FILTER (WHERE ri.ingredient IS NOT NULL)::jsonb AS ingredients
FROM recipes r
         LEFT JOIN recipe_ingredients ri ON ri.recipe_id = r.id
GROUP BY r.id, r.title, r.description, r.instructions, r.duration, r.servings;