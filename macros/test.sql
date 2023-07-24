{% macro my_query() %}

    drop table if exists films cascade;

    create table films (
        film_id integer,
        title varchar
    );

    insert into films (film_id, title) values
        (1, 'The Godfather'),
        (2, 'The Wizard of Oz'),
        (3, 'Citizen Kane')
    ;

{% endmacro %}