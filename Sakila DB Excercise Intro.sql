use sakila;


## Exploring Actor table


## 1)Display the first and the last names of all actors from the table actor

select first_name, last_name 
from actor;

## 2) How many total reports are there in actor table?

select count(*) as total_actors from actor;

## 3) Find all actors whose last name contain letters GEN

select * from actor
where Last_name like '%gen%';

## 4) Which actors have the first name scarlett

select * from actor
where first_name='Scarlett';

## 5) How many distinct last names are there?

select count(distinct last_name) from actor;


## Exploring City table


## 6) Which cities don't contain 'a' in their name?

select * from city 
where city not like '%a%';

## Exploring Customer table

select * from customer;

## Exploring Film table

select * from film;

## 7) what's the average lentgh of the movies?

select AVG(length) as Average_Length from Film;

## Rounding to 2 decimals

select round(AVG(length),2) as Average_Length from Film;

## 8) Write sql query to find different types of rating.

select distinct rating from film;

## 9) Using IN, display the country_id and country columns of the following countries: 
-- Afghanistan, Bangladesh, and China:

select country_id, country from country
where country in('afghanistan', 'bangladesh', 'china');




