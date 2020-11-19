/*recipes and instructions*/
INSERT INTO Recipe (name, description, instructions) VALUES ('Potato Soup', 'Best Soup Ever', 'Cook bacon, make roux with flour and the drippings, add cheese, potatoes and milk. Simmer until cooked through');

INSERT INTO Recipe (name, description, instructions) VALUES ('Carbonara', 'Creamy Bacon Pasta', 'Cook pasta per package instruction, while hot add egg and cheese, top with bacon and serve immediately');

INSERT INTO Recipe (name, description, instructions) VALUES ('Spritz Cookies', 'Butter Cookie Happiness','Combine ingredients in mixer, put dough in cookie press and press onto cookie sheets, bake at 350 for 8-10 minutes until just barely brown');

INSERT INTO Recipe (name, description, instructions) VALUES ('Nachos', 'Beefy Cheesy Goodness', 'Cook ground beef and add taco seasoning, let cook for 10 minutes to incorporate flavors, serve on top of chips with cheese and salsa');

INSERT INTO Recipe (name, description, instructions) VALUES ('Burgers', 'Solid Basic Burger', 'Form beef into patties and season with salt, grill until medium well, serve on buns with cheese if you are cool');



/*add ingredients to table*/
INSERT INTO Ingredient (name) VALUES ('potatoes'), ('cheese'), ('milk'), ('bacon'), ('sugar'), ('butter'), ('pasta'), ('tortilla chips'), ('taco seasoning'), ('salsa'), ('buns');

INSERT INTO Ingredient (name) VALUES ('ground beef');
/*add measurements*/
INSERT INTO Measure (name) VALUES ('stick'), ('pound');

/*add ingredients into recipes*/

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (3, 6, 3, 2);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (3, 7, 6, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (3, 8, 1, 3);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (3, 9, 1, 2);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (3, 10, 1, 6);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (4, 14, 1, 2);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (4, 7, 6, .5);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (4, 1, 4, 2);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (4, 9, 1, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (5, 13, 5, 4);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (5, 3, 1, 2);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (5, 6, 1, 4);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (5, 5, 2, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (6,15,NULL, NULL);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (6,19, 6, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (6,9, 1, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (6,17, 1, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (6,16, 3, 3);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (7,19, 6, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (7, 9, 1, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (7, 18, 4, 4);


/*get a list of recipes */ 
Select * from Recipe


/* get all the ingredients with names */ 
SELECT r.name AS 'Recipe', r.instructions, ri.amount AS 'Amount', mu.name AS 'Unit of Measure', i.name AS 'Ingredient' 
FROM Recipe r 
JOIN RecipeIngredient ri on r.id = ri.recipe_id 
JOIN Ingredient i on i.id = ri.ingredient_id 
LEFT OUTER JOIN Measure mu on mu.id = measure_id;

/*
get a specific ingredient 
this command is incomplete, the last item on the right hand side of the equals sign needs to be added
*/ 

SELECT *
From Recipe r
JOIN RecipeIngredient ri on ri.recipe_id = r.id  
JOIN Ingredient i on i.id = ri.ingredient_id 
WHERE i.name = butter;

/* Update a recipe*/

UPDATE Ingredient SET name = ('lean ground beef') WHERE name = ('ground beef');


/*Extra Credit I deleted a duplicate ingredient*/
DELETE FROM Ingredient WHERE id = (11);