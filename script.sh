#! /bin/bash


# echo "Мой секрет: POSTGRES_DB это $POSTGRES_DB"

docker exec pgdb_container psql -d $POSTGRES_DB -U $POSTGRES_USER \
-c 'CREATE TABLE author (
    author_id SERIAL PRIMARY KEY,
    name_author VARCHAR(50)
);

CREATE TABLE genre (
    genre_id SERIAL PRIMARY KEY,
    name_genre VARCHAR(30)
);

CREATE TABLE book (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    author_id INT NOT NULL,
    genre_id INT,
    price DECIMAL(8, 2),
    amount INT,
    FOREIGN KEY (author_id)
        REFERENCES author (author_id)
        ON DELETE CASCADE,
    FOREIGN KEY (genre_id)
        REFERENCES genre (genre_id)
        ON DELETE SET NULL
);

CREATE TABLE city (
    city_id SERIAL PRIMARY KEY,
    name_city VARCHAR(30),
    days_delivery INT
);

CREATE TABLE client (
    client_id SERIAL PRIMARY KEY,
    name_client VARCHAR(50),
    city_id INT,
    email VARCHAR(30),
    FOREIGN KEY (city_id) REFERENCES city (city_id)
);

CREATE TABLE buy(
    buy_id SERIAL PRIMARY KEY,
    buy_description VARCHAR(100),
    client_id INT,
    FOREIGN KEY (client_id) REFERENCES client (client_id)
);

CREATE TABLE buy_book (
    buy_book_id SERIAL PRIMARY KEY,
    buy_id INT,
    book_id INT,
    amount INT,
    FOREIGN KEY (buy_id) REFERENCES buy (buy_id),
    FOREIGN KEY (book_id) REFERENCES book (book_id)
);

CREATE TABLE step (
    step_id SERIAL PRIMARY KEY,
    name_step VARCHAR(30)
);

CREATE TABLE buy_step (
    buy_step_id SERIAL PRIMARY KEY,
    buy_id INT,
    step_id INT,
    date_step_beg DATE,
    date_step_end DATE,
    FOREIGN KEY (buy_id) REFERENCES buy (buy_id),
    FOREIGN KEY (step_id) REFERENCES step (step_id)
);'