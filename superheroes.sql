
CREATE DATABASE superheroes CHARACTER SET utf8mb4;
USE superheroes;

CREATE TABLE creador (
id_creador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre VARCHAR(20) NOT NULL
);


CREATE TABLE personajes (
    id_personaje INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_real VARCHAR(20) NOT NULL,
    personaje VARCHAR(20) NOT NULL,
    inteligencia INT(10) NOT NULL,
    fuerza VARCHAR(10) NOT NULL,
    velocidad INT(11) NOT NULL,
    poder INT(11) NOT NULL,
    aparicion INT(11) NOT NULL,
    ocupacion VARCHAR(30) NULL,
    id_creador INT UNSIGNED NOT NULL,
    FOREIGN KEY (id_creador)
        REFERENCES creador (id_creador)
);


INSERT INTO CREADOR (id_creador,nombre) VALUES (1, 'Marvel');
INSERT INTO CREADOR (id_creador,nombre) VALUES (2, 'DC comics');

insert into personajes VALUES (1, 'Bruce Banner', 'Hulk', 160, '600mil', 75, 98, 1962, 'Fisico Nuclear', 1);
insert into personajes VALUES (2, 'Tony Stark', 'Iron Man', 170, '200mil', 70, 123, 1963, 'Inventor Industrial', 1);
insert into personajes VALUES (3, 'Thor Odinson', 'Thor', 145, 'Infinita', 100, 235, 1962, 'Rey de Asgard', 1);
insert into personajes VALUES (4, 'Barry Allen', 'Flash', 160, '10mil', 120, 435, 1965, 'Cientifico Forensee', 2);
insert into personajes VALUES (5, 'Clark Kent', 'Superman', 165, 'Infinita', 120, 182, 1948, 'Rey de Asgard', 2);

select * from personajes;
update personajes set aparicion = 1938 where id_personaje=5;
delete from personajes where id_personaje=4;
insert into personajes VALUES (6, 'Bruce Banner', 'Hulk', 160, '600mil', 75, 98, 1962, 'Fisico', 3);

