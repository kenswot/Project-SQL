## The first thing to do. Create a Database for recipe
CREATE DATABASE recipe;

drop database recipe;

## Use the recipe Databse
use recipe;

## Starting Creating the tables

##Create recipes table
Create table recipes(
recipe_id int not null auto_increment primary key,
recipe_name varchar(50) NOT NULL,
recipeCooktime time NOT NULL,
recipeDirection varchar(200) NOT NULL,
created date,
modified date
);

select * from recipes;

## Create Ingrediant Table
Create table ingredient(
ingredient_id int not null auto_increment primary key,
ingredient_name varchar(50) NOT NULL,
amount varchar(50)
);

select * from ingredient;

## Create Recipe Ingrediant table
CREATE TABLE RecipeIngredient (RecipeIngredient_id INT NOT NULL primary key, recipe_id INT NOT NULL, ingredient_id INT NOT NULL,  
FOREIGN KEY(recipe_id) REFERENCES recipes(recipe_id), 
 
FOREIGN KEY(ingredient_id) REFERENCES ingredient(ingredient_id)) 
ENGINE=InnoDB;

drop table RecipeIngredient;

select * from RecipeIngredient;

## Create picture of recipe
CREATE TABLE pictures  (image_id int(10) NOT NULL auto_increment primary key,
image blob,
picture_name varchar(20) NOT NULL
);

select * from pictures;

## Start Inserting into Recipes table
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('101', 'Fried Egg', '00:00:05', 'Break the egg and pour it into the hot oil', '2005-01-01', '2006-01-01');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('102', 'Macaroni', '00:00:45', 'Put hot water on fire after 20 mintue pour the Macaroni on fire', '2005-02-04', '2006-02-04');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('103', 'Fried Yam', '00:00:25', 'Make your oil hot then slice your yam into small pieces', '2005-03-01', '2006-05-06');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('104', 'Fried Potates', '00:00:24', 'Make your oil hot then slice your Potates inside', '2005-07-08', '2006-01-01');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('105', 'Boiled Yam', '00:01:00', 'Peel your yam and cut it into propotional sizes inside an hot water', '2005-03-01', '2006-03-01');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('106', 'Rice', '00:01:30', 'Parboil your Rice just put a fresh water on fire just cook for 40 minutue', '2005-08-09', '2006-08-09');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('107', 'Beans', '00:02:00', 'Boil your beans and pour ', '2005-04-09', '2006-04-09');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('108', 'Eba and Egusi', '00:00:55', 'Make your Eba and Egusi', '2005-09-04', '2006-09-04');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('109', 'Spagetti', '00:00:35', 'Break your Spargetti inside hot water, just after 35 minntue throw the hot water away', '2005-07-07', '2006-07-07');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('110', 'Pancake', '00:00:25', 'Make your flour watery then add raw eggs, sugar, milk then fry it', '2005-10-10', '2006-10-10');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('111', 'Fried Meat', '00:00:35', 'wash your meat throuogly then put it inside hot oil to fry', '2005-10-12', '2006-10-12');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('112', 'Banga Soup', '00:01:00', 'Wash your banga put it inside fire to cook then pound it and cook the water from the pounded banga', '2005-12-10', '2006-12-10');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('113', 'Fried fish', '00:00:30', 'Wash your fish throuogly and then fry it well', '2005-11-11', '2006-11-11');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('114', 'Pounded Yam', '00:00:40', 'Cook your yam for 30 minutue and then pound it well', '2005-02-02', '2006-02-02');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('115', 'Noddles', '00:00:15', 'Put your noddles inside hot water and let it cook well', '2005-12-03', '2006-12-03');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('116', 'Fried Rice', '00:02:00', 'Cook your fried rice well', '2005-04-04', '2006-04-04');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('117', 'Cocunut Rice', '00:02:00', 'Cook your coconut rice well', '2005-05-05', '2006-05-05');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('118', 'Pap', '00:00:10', 'After using spoon to turn the pap then pour hot water inside it and put it on fire', '2005-06-06', '2006-06-06');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('119', 'Custard', '00:00:10', 'After using spoon to turn the custard then pour hot water inside it and put it on fire', '2005-08-11', '2006-08-11');
INSERT INTO recipes(recipe_id, recipe_name, recipeCooktime, recipeDirection, created, modified) VALUES('120', 'Meat', '00:00:40', 'Wash your meat and put it on the fire', '2005-11-01', '2006-11-01');

select * from recipes;
drop table ingredient;

## Start inserting data into 
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('101','egg', '1');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('102','Macaroni', '1');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('103','yam', '1');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('104','potatoes', '1');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('105','yam', '1');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('106','rice', '1kg');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('107','beans', '1mudu');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('108','garri', '1mudu');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('109','spagetti', '1spagetti');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('110','flour', '1kg');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('111','meat', '10 pieces');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('112','banga', '1bunch');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('113','fish', '10pieces');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('114','yam', '20pieces');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('115','noddles', '3pack');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('116','rice,', '2kg');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('117','coconut', '1');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('118','pap', '20gm');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('119','custard', '20gm');
INSERT INTO ingredient (ingredient_id, ingredient_name, amount) VALUES('120','meat', '20pieces');
 select * from ingredient;
 
 
 SET FOREIGN_KEY_CHECKS = 0;

drop table RecipeIngredient; 


INSERT INTO RecipeIngredient (RecipeIngredient_id, recipe_id, ingredient_id) VALUES (101,1, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (102,2, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (103,3, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (104, 4, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (105, 5, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (106, 6, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (107, 7, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (108, 8, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (109, 9, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (110, 10, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (111, 11, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (112, 12, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (113, 13, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (114, 14, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (115, 15, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (116, 16, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (117, 17, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (118, 18, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (119, 19, 1);
INSERT INTO RecipeIngredient (RecipeIngredient_id,recipe_id, ingredient_id) VALUES (120, 20, 1);

select * from recipeIngredient;


INSERT INTO pictures(image_id, image, picture_name) value(1, LOAD_FILE('C:/Users/Swot/Pictures/fried_egg.jpeg'), 'fried_egg');
INSERT INTO pictures(image_id, image, picture_name) value(2, LOAD_FILE('C:/Users/Swot/Pictures/macaroni.jpeg'), 'macaroni');
INSERT INTO pictures(image_id, image, picture_name) value(3, LOAD_FILE('C:/Users/Swot/Pictures/fried_yam.jpeg'), 'fried_yam');
INSERT INTO pictures(image_id, image, picture_name) value(4, LOAD_FILE('C:/Users/Swot/Pictures/fried_potatoes.jpeg'), 'fried_potatoes');
INSERT INTO pictures(image_id, image, picture_name) value(5, LOAD_FILE('C:/Users/Swot/Pictures/yam.jpeg'), 'yam');
INSERT INTO pictures(image_id, image, picture_name) value(6, LOAD_FILE('C:/Users/Swot/Pictures/rice.jpeg'), 'rice');
INSERT INTO pictures(image_id, image, picture_name) value(7, LOAD_FILE('C:/Users/Swot/Pictures/beans.jpeg'), 'beans');
INSERT INTO pictures(image_id, image, picture_name) value(8, LOAD_FILE('C:/Users/Swot/Pictures/egusi.jpeg'), 'egusi');
INSERT INTO pictures(image_id, image, picture_name) value(9, LOAD_FILE('C:/Users/Swot/Pictures/spagetti.jpeg'), 'spagetti');
INSERT INTO pictures(image_id, image, picture_name) value(10, LOAD_FILE('C:/Users/Swot/Pictures/pancake.jpeg'), 'pancake');
INSERT INTO pictures(image_id, image, picture_name) value(11, LOAD_FILE('C:/Users/Swot/Pictures/meat.jpeg'), 'meat');
INSERT INTO pictures(image_id, image, picture_name) value(12, LOAD_FILE('C:/Users/Swot/Pictures/banga.jpeg'), 'banga');
INSERT INTO pictures(image_id, image, picture_name) value(13, LOAD_FILE('C:/Users/Swot/Pictures/fried_fish.jpeg'), 'fried_fish');
INSERT INTO pictures(image_id, image, picture_name) value(14, LOAD_FILE('C:/Users/Swot/Pictures/pounded_yam.jpeg'), 'pounded_yam');
INSERT INTO pictures(image_id, image, picture_name) value(15, LOAD_FILE('C:/Users/Swot/Pictures/noddles.jpeg'), 'noddles');
INSERT INTO pictures(image_id, image, picture_name) value(16, LOAD_FILE('C:/Users/Swot/Pictures/fried_rice.jpeg'), 'fried_rice');
INSERT INTO pictures(image_id, image, picture_name) value(17, LOAD_FILE('C:/Users/Swot/Pictures/coconut_rice.jpeg'), 'coconut_rice');
INSERT INTO pictures(image_id, image, picture_name) value(18, LOAD_FILE('C:/Users/Swot/Pictures/pap.jpeg'), 'pap');
INSERT INTO pictures(image_id, image, picture_name) value(19, LOAD_FILE('C:/Users/Swot/Pictures/custard.jpeg'), 'custard');
INSERT INTO pictures(image_id, image, picture_name) value(20, LOAD_FILE('C:/Users/Swot/Pictures/meat.jpeg'), 'meat');

select * from pictures;


## Question 2
### Select all the recipe
SELECT r.recipe_name, i.ingredient_name AS ingredient from RecipeIngredient ri
 right JOIN ingredient i ON ri.ingredient_id = i.ingredient_id
 JOIN recipes r ON ri.recipe_id = r.recipe_id;
 
 
 
 
 ### Number 9
 ## Name of Recipe that have a picture
SELECT r.recipe_name , pi.image   FROM RecipeIngredient rq
left JOIN recipes r on r.recipe_id = rq.recipe_id 
JOIN pictures pi  on pi.image_id = rq.picture;
-- LEFT OUTER JOIN  pictures pi on pi.image_id = picture;


## Question 3
## Select the cook time of a particular recipe
select recipeCooktime from recipes where recipe_name = 'beans';

## Question 4
##4 Make an update to the cook time of a particular recipe
UPDATE recipes set recipeCooktime = '00:00:55' where recipe_id = 102;
select * from recipes;

## Question 5
## Write a query to select the recipe that takes less than an hour to cook
select recipeCooktime from recipes where recipeCooktime < '00:01:00';

## Question 6
## Write a query to calculate the average cook time of a recipe
SELECT SEC_TO_TIME(AVG(TIME_TO_SEC(recipeCooktime))) AS average_cooktime from recipes;

 
## Question 7
## Write a query to display the recipe’s ingredients and the recipe picture of a particular recipe.
Select i.ingredient_name AS recipe_ingredient, rp.picture_name  AS recipe_picture,  rp.picture_name from RecipeIngredient ri
LEFT JOIN recipes r ON ri.recipe_id = r.recipe_id
LEFT JOIN ingredient i ON ri.ingredient_id = i.ingredient_id
LEFT JOIN pictures rp ON ri.ingredient_id = rp.image_id;
-- where r.recipe_id = 

## Question 8
## Write a query to find the name and cook time of a recipe who has a higher cooktime than the recipe whose name= ‘Rice’
SELECT recipe_name, recipeCooktime from recipes where recipeCooktime > (select recipeCooktime from recipes where recipe_name = 'rice');

## Question 10
## Write a query to find the recipe having the same cook time
select recipe_name, recipeCooktime, COUNT(*) AS CT from recipes GROUP BY recipeCooktime HAVING CT > 1 order by CT;

drop database recipe;