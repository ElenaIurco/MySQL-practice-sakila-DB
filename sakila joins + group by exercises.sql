/* 1) Use `INNER JOIN` to display the first and last names, as well as the address, of each staff member. Use the tables `staff` and `address` */

  select staff.first_name, staff.last_name, address.address
  from staff
  inner join address
  on staff.address_id = address.address_id;

  ## ok ##
  
/* 2) Use `INNER JOIN` to display the total amount rung up by each staff member in August of 2005. Use tables `staff` and `payment`. */

select sum(amount) as total_amount, staff.first_name, staff.last_name
from payment
inner join staff
on payment.staff_id = staff.staff_id
where payment_date like '2005-08-%'
group by payment.staff_id;

select a.first_name,
		 a.last_name,
         sum(b.amount) as tot_amount
from staff as a
     inner join
     payment as b
     on a.staff_id = b.staff_id
where month(payment_date) = 8 and year(payment_date) = 2005
group by a.first_name, a.last_name;

select * from payment;
## ok ##


/* 3) Write a query  to find the employee_id,name(last_name) along with their manager_id and name(last_name).*/
 
 select staff.staff_id as employee_id, staff.last_name as name, store.manager_staff_id as manager_id
 from store
 inner join staff
 on store.store_id = staff.store_id
 group by staff_id;
 
 ## ok ##
 
 

/* 4) List each film and the number of actors who are listed for that film. Use tables `film_actor` and `film`. Use inner join. */

select film.title, count(actor_id)
from film
inner join film_actor
on film.film_id = film_actor.film_id
group by film.title;

## ok ##


/* 5) Write a query to get the department name and number of employees in the department. */

## department missing ##

/* 6) How many copies of the film `Hunchback Impossible` exist in the inventory system? */

select count(inventory.film_id) 
from inventory
join film
on film.film_id = inventory.film_id
where inventory.film_id = (select film_id from film
where title = 'hunchback impossible%');

## ok ##

select title, film_id from film
where title like 'hunchback impossible%';



/* 7) Using the tables `payment` and `customer` and the `INNER JOIN` command, list the total paid by each customer. List the customers
 alphabetically by last name: */

select sum(amount) as total_paid, customer.last_name, customer.first_name
from payment
inner join customer
on customer.customer_id = payment.customer_id
group by customer.Customer_id
order by customer.last_name;

## ok ##

/* 8) Which actor has appeared in the most films? */

select actor.first_name, actor.last_name, count(film_id) as no_of_films
from actor
join film_actor
on actor.actor_id = film_actor.actor_id
group by film_actor.actor_id
order by no_of_films desc
limit 1;


## ok ## Gina Degeneres 42 films ##