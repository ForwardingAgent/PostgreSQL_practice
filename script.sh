#! /bin/bash


# echo "Мой секрет: POSTGRES_DB это $POSTGRES_DB"

docker exec pgdb_container psql -d $POSTGRES_DB -U $POSTGRES_USER \
-c "CREATE TABLE author (
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
);
INSERT INTO author (author_id, name_author)
VALUES (1, 'Булгаков М.А.'),
    (2, 'Достоевский Ф.М.'),
    (3, 'Есенин С.А.'),
    (4, 'Пастернак Б.Л.'),
    (5, 'Лермонтов М.Ю.');

INSERT INTO genre(genre_id, name_genre)
VALUES (1, 'Роман'),
    (2, 'Поэзия'),
    (3, 'Приключения');

INSERT INTO book (book_id, title, author_id, genre_id, price, amount)
VALUES  (1, 'Мастер и Маргарита', 1, 1, 670.99, 3),
        (2, 'Белая гвардия ', 1, 1, 540.50, 5),
        (3, 'Идиот', 2, 1, 460.00, 10),
        (4, 'Братья Карамазовы', 2, 1, 799.01, 2),
        (5, 'Игрок', 2, 1, 480.50, 10),
        (6, 'Стихотворения и поэмы', 3, 2, 650.00, 15),
        (7, 'Черный человек', 3, 2, 570.20, 6),
        (8, 'Лирика', 4, 2, 518.99, 2);

INSERT INTO city(city_id, name_city, days_delivery)
VALUES (1, 'Москва', 5),
    (2, 'Санкт-Петербург', 3),
    (3, 'Владивосток', 12);

INSERT INTO client(client_id, name_client, city_id, email)
VALUES (1, 'Баранов Павел', 3, 'baranov@test'),
    (2, 'Абрамова Катя', 1, 'abramova@test'),
    (3, 'Семенонов Иван', 2, 'semenov@test'),
    (4, 'Яковлева Галина', 1, 'yakovleva@test');

INSERT INTO buy (buy_id, buy_description, client_id)
VALUES (1, 'Доставка только вечером', 1),
    (2, NULL, 3),
    (3, 'Упаковать каждую книгу по отдельности', 2),
    (4, NULL, 1);

INSERT INTO buy_book(buy_id, book_id, amount)
VALUES (1, 1, 1),
    (1, 7, 2),
    (1, 3, 1),
    (2, 8, 2),
    (3, 3, 2),
    (3, 2, 1),
    (3, 1, 1),
    (4, 5, 1);

INSERT INTO step(step_id, name_step)
VALUES (1, 'Оплата'),
    (2, 'Упаковка'),
    (3, 'Транспортировка'),
    (4, 'Доставка');

INSERT INTO buy_step(buy_step_id, buy_id, step_id, date_step_beg, date_step_end)
VALUES (1, 1, 1, '2020-02-20', '2020-02-20'),
    (2, 1, 2, '2020-02-20', '2020-02-21'),
    (3, 1, 3, '2020-02-22', '2020-03-07'),
    (4, 1, 4, '2020-03-08', '2020-03-08'),
    (5, 2, 1, '2020-02-28', '2020-02-28'),
    (6, 2, 2, '2020-02-29', '2020-03-01'),
    (7, 2, 3, '2020-03-02', NULL),
    (8, 2, 4, NULL, NULL),
    (9, 3, 1, '2020-03-05', '2020-03-05'),
    (10, 3, 2, '2020-03-05', '2020-03-06'),
    (11, 3, 3, '2020-03-06', '2020-03-10'),
    (12, 3, 4, '2020-03-11', NULL),
    (13, 4, 1, '2020-03-20', NULL),
    (14, 4, 2, NULL, NULL),
    (15, 4, 3, NULL, NULL),
    (16, 4, 4, NULL, NULL);

SELECT * FROM book;"