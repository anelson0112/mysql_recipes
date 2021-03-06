/* creates table for recipes, with fields for ID number only, that auto increments with each new entry, a name with 25 character limit, description with 50 character limit, instructions with 500 character limit, ENGINE=InnoDB-database storage engine,  DEFAULT CHARSET=utf8 code that transforms characters into bits */
create table Recipe (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(25), description VARCHAR(50), instructions VARCHAR(500)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/* creates a table for the ingredients, incredient has an id number, auto increments with each entry. Name with 50 character limit*/
create table Ingredient (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
/* creates a table for measurements, id number auto increments with each additional entry. Name with a 30 character limit*/
create table Measure (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
/* creates a table that combines the previous tables to form the recipes*/
create table RecipeIngredient (recipe_id INT NOT NULL, ingredient_id INT NOT NULL, measure_id INT, amount INT, 
/* constraint is a limit- foriegn key creates the link between 2 tables, the primary key is created table that the FK referrs to.  */
	CONSTRAINT fk_recipe FOREIGN KEY(recipe_id) REFERENCES Recipe(id), 
	CONSTRAINT fk_ingredient FOREIGN KEY(ingredient_id) REFERENCES Ingredient(id), 
	CONSTRAINT fk_measure FOREIGN KEY(measure_id) REFERENCES Measure(id)) 
	ENGINE=InnoDB DEFAULT CHARSET=utf8; 

/*adding different values into measure*/
INSERT INTO Measure (name) VALUES('CUP'), ('TEASPOON'), ('TABLESPOON'), ('WHOLE');
/* adding ingredients into ingredient table*/
INSERT INTO Ingredient (name) VALUES('egg'), ('salt'), ('sugar'), ('chocolate'), ('vanilla extract'), ('flour');
/*Inserting instructions into the recipe table*/
INSERT INTO Recipe (name, description, instructions) VALUES('Boiled Egg', 'A single boiled egg', 'Add egg to cold water. Bring water to boil. Cook.');

INSERT INTO Recipe (name, description, instructions) VALUES('Chocolate Cake', 'Yummy cake', 'Add eggs, flour, chocolate to pan. Bake at 350 for 1 hour');
/* adding values into the ingredient table and into the recipe table*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (1, 1, NULL, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 1, NULL, 3);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 2, 2, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 3, 1, 2);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 4, 1, 1);

/*recipes and instructions*/
INSERT INTO Recipe (name, description, instructions) VALUES ('Potato Soup', 'Best Soup Ever', 'Cook bacon, make roux with flour and the drippings, add cheese, potatoes and milk. Simmer until cooked through');

INSERT INTO Recipe (name, description, instructions) VALUES ('Carbonara', 'Creamy Bacon Pasta', 'Cook pasta per package instruction, while hot add egg and cheese, top with bacon and serve immediately');

INSERT INTO Recipe (name, description, instructions) VALUES ('Spritz Cookies', 'Butter Cookie Happiness','Combine ingredients in mixer, put dough in cookie press and press onto cookie sheets, bake at 350 for 8-10 minutes until just barely brown');

INSERT INTO Recipe (name, description, instructions) VALUES ('Nachos', 'Beefy Cheesy Goodness', 'Cook ground beef and add taco seasoning, let cook for 10 minutes to incorporate flavors, serve on top of chips with cheese and salsa');

INSERT INTO Recipe (name, description, instructions) VALUES ('Burgers', 'Solid Basic Burger', 'Form beef into patties and season with salt, grill until medium well, serve on buns with cheese if you are cool');



/*add ingredients to table*/
INSERT INTO Ingredient (name) VALUES ('potatoes'), ('cheese'), ('milk'), ('bacon'), ('sugar'), ('butter'), ('pasta'), ('tortilla chips'), ('taco seasoning'), ('salsa'), ('buns');

/*add ingredients to table*/
INSERT INTO Ingredient (name) VALUES ('potatoes'), ('cheese'), ('milk'), ('bacon'), ('sugar'), ('butter'), ('pasta'), ('tortilla chips'), ('taco seasoning'), ('salsa'), ('buns');

/*add measurements*/
INSERT INTO Measure (name) VALUES ('stick'), ('pound');

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