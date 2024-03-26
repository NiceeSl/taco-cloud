CREATE TABLE IF NOT EXISTS Ingredient
(
    id   VARCHAR(4)  NOT NULL PRIMARY KEY,
    name VARCHAR(25) NOT NULL,
    type VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS Taco_Order
(
    id              BIGINT AUTO_INCREMENT PRIMARY KEY,
    delivery_Name   VARCHAR(50) NOT NULL,
    delivery_Street VARCHAR(50) NOT NULL,
    delivery_City   VARCHAR(50) NOT NULL,
    delivery_State  VARCHAR(2)  NOT NULL,
    delivery_Zip    VARCHAR(10) NOT NULL,
    cc_number       VARCHAR(16) NOT NULL,
    cc_expiration   VARCHAR(5)  NOT NULL,
    cc_cvv          VARCHAR(3)  NOT NULL,
    placed_at       TIMESTAMP   NOT NULL
);

CREATE TABLE IF NOT EXISTS Taco
(
    id             BIGINT AUTO_INCREMENT PRIMARY KEY,
    name           VARCHAR(50) NOT NULL,
    taco_order_id  BIGINT      NOT NULL,
    created_at     TIMESTAMP   NOT NULL,
    FOREIGN KEY (taco_order_id) REFERENCES Taco_Order (id)
);

CREATE TABLE IF NOT EXISTS Ingredient_Ref
(
    ingredient VARCHAR(4) NOT NULL,
    taco       BIGINT    NOT NULL,
    taco_key   BIGINT    NOT NULL,
    PRIMARY KEY (ingredient, taco),
    FOREIGN KEY (ingredient) REFERENCES Ingredient (id)
);

insert into INGREDIENT (id, name, type)
values ('FLTO', 'Flour Tortilla', 'WRAP');
insert into INGREDIENT (id, name, type)
values ('COTO', 'Corn Tortilla', 'WRAP');
insert into INGREDIENT (id, name, type)
values ('GRBF', 'Ground Beef', 'PROTEIN');
insert into INGREDIENT (id, name, type)
values ('CARN', 'Carnitas', 'PROTEIN');
insert into INGREDIENT (id, name, type)
values ('TMTO', 'Diced Tomatoes', 'VEGGIES');
insert into INGREDIENT (id, name, type)
values ('LETC', 'Lettuce', 'VEGGIES');
insert into INGREDIENT (id, name, type)
values ('CHED', 'Cheddar', 'CHEESE');
insert into INGREDIENT (id, name, type)
values ('JACK', 'Monterrey Jack', 'CHEESE');
insert into INGREDIENT (id, name, type)
values ('SLSA', 'Salsa', 'SAUCE');
insert into INGREDIENT (id, name, type)
values ('SRCR', 'Sour Cream', 'SAUCE');


-- CREATE SEQUENCE USER_SEQ START WITH 1 INCREMENT BY 1;
