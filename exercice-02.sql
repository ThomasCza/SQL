DELETE
FROM student NE PAS FAIRE , ca suprime tout

DELETE
FROM student
WHERE id = 53


WHERE delete_date <= '2022-01-01'




UPDATE table
SET firstname = 'foo', lastname = 'Baz'
WHERE id = 53


UPDATE student
SET project_id = 123
WHERE create_date >= '2022-01-01'


SELECT * 
FROM studentWHERE (nom = 'foo' or nom='baz')
AND created_date <= '2021-01-01'



-- Exo 2
-- Requêtes en écriture

-- Code 2.1
-- Si aucun id n'est précisé pour un student, un project ou un tag, c'est à vous de le retrouver.
-- Mais vous devez écrire l'id en dur dans votre requête.
-- (Autrement dit, ce n'est pas nécessaire de faire de sous-requêtes.)
--
-- Exemple : l'énoncé de l'exo dit de mettre à jour la description du tag `SQL`.
-- Il faut d'abord retrouver l'id du tag `SQL` :
SELECT *
FROM tag
WHERE name = 'SQL'
--
-- La requête renvoit le résultat suivant :
-- id name description
-- 6  SQL  NULL
--
-- Pour mettre à jour le tag `SQL` j'écris l'id `6` en dur dans la requête :
UPDATE tag
SET description = 'Foo bar baz'
WHERE id = 6

-- Exo 2.1
-- Insérez un tag :
-- - nom : SASS
-- - description : aucune

INSERT INTO `tag` (`id`, `name`, `description`) VALUES (NULL, 'SASS', NULL);



-- Exo 2.2
-- Insérez une school year :
-- - nom: Promo 2023
-- - description : La promo de l'année 2023
-- - date de début : 15 mars 2023
-- - date de fin : aucune

INSERT INTO `school_year` (`id`, `name`, `description`, `start_date`, `end_date`) 
VALUES (NULL, 'Promo 2023', 'La promo de lannée 2023', '2023-03-15', NULL);



-- Exo 2.3
-- Créez une relation entre un student et un tag :
-- - student : Toto (id 1)
-- - tag : SASS (id inconnu)
-- Note : c'est à vous de retrouver l'id du tag mais vous pouvez l'inscrire en dur dans la requête.

INSERT INTO `student_tag` (`student_id`, `tag_id`) VALUES ('1', '11');



-- Exo 2.4
-- Mettez à jour le tag `HTML` :
-- description : Le HTML est un language de structuration de données.


UPDATE tag SET description = 'Le HTML est un language de structuration de données' WHERE id = 1; 

-- Exo 2.5
-- Mettez à jour le tag `Bash` :
-- nom : Terminal Bash
-- description : Le terminal Bash est l'interface en ligne de commande par défaut sous Linux.


UPDATE tag
SET name = 'Terminal Bash', description = 'Le terminal Bash est linterface en ligne de commande par défaut sous Linux.'
WHERE id = 10

-- Exo 2.6
-- Supprimez la relation entre un student et un tag :
-- - student : Zacharie Evrard
-- - tag : Bash

DELETE FROM student_tag WHERE student_id = 100 AND tag_id = 10; 


-- Exo 2.7
-- Supprimez la relation entre un student et un projet :
-- - student : Arthur Lacombe
-- - projet : Dicta quia at qui

UPDATE student
SET project_id = NULL
WHERE id = 16


-- Exo 2.8
-- Supprimez toutes les relations entre un student et ses tags :
-- - student : Odette Thomas


DELELTE FROM student_tag
WHERE student_id = 99;


-- Exo 2.9
-- Supprimez un student :
-- - student : Odette Thomas
DELETE FROM student 
WHERE id = 99;


-- Exo 2.10
-- Supprimez un projet et toutes les relations avec ses dépendances, c-à-d les relations avec des student et les relations avec des tags :
-- - projet : Ut delectus explicabo.
-- Note : vous devez supprimez les relations avec les dépendances mais pas les dépendances.
-- Autrement dit ne supprimez aucun student ni aucun tag.




