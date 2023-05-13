use mavenmovies;
-- WEEK 2- MANDATORY PROJECT
-- 1.write a sql query to count the number of character except the spaces for each actor return first 10 actors name length along with their name

select  concat(first_name,' ',last_name )name , length(concat(first_name,last_name))length_name from actor
where actor_id < 11;

-- 2.list all oscar awards (actor who received oscar awards) with their full names and length of their names 

select awards, concat(first_name,' ',last_name )full_name , length(concat(first_name,' ',last_name))length_fullname from actor_award
where awards ="Oscar";

-- 3.find the actors who have acted in the the film "frost head"

select first_name ,last_name ,title from actor
inner join film_actor on actor.actor_id = film_actor.actor_id
inner join film_text on film_text.film_id = film_actor.film_id
where title='Frost head';

-- 4.pull all films acted by actor "will wilson"

select first_name ,last_name ,title from actor
inner join film_actor on actor.actor_id = film_actor.actor_id
inner join film_text on film_text.film_id = film_actor.film_id
where first_name = "will" and last_name ="wilson";

-- 5.pull all the films where where were rented and return in the month of may 

select rental_date, return_date ,title from rental
inner join inventory on rental.inventory_id = inventory.inventory_id
inner join film on inventory.film_id = film.film_id
where month(rental_date) = 5 and month(return_date) = 5;

-- 6.pull all the films with 'comedy' category

select title , name from category 
inner join film_category on film_category.category_id = category.category_id
inner join film_text on film_category.film_id = film_text.film_id
where name ='comedy';

