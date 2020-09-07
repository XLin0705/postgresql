CREATE TABLE users
(
    user_id     serial,
    email          VARCHAR(100) NOT NULL,
    first_name     VARCHAR(100) NOT NULL,
    last_name      VARCHAR(100) NOT NULL,
    phone          VARCHAR(50)  NOT NULL,
    address_line1  VARCHAR(200) NOT NULL,
    address_line2  VARCHAR(200) NOT NULL,
    city           VARCHAR(50) NOT NULL,
    state          CHAR(50)      NOT NULL,
    zip            VARCHAR(50)   NOT NULL,
    PRIMARY KEY (user_id),
    CONSTRAINT uniqueemail UNIQUE (email)
);


CREATE TABLE inventory
(
    inventory_id  serial,
    PRIMARY KEY (inventory_id),
    name          VARCHAR(100) NOT NULL,
    description   TEXT,
    quantity      INTEGER      NOT NULL
);

CREATE TABLE recipes
(
    recipe_id serial,
    PRIMARY KEY (recipe_id),
    name                 VARCHAR(100) NOT NULL,
    description          TEXT,
    ingredient 		 TEXT,
    instructions         VARCHAR(200) NOT NULL
);



CREATE TABLE orders
(   order_id serial,
    PRIMARY KEY (order_id),
    user_id INTEGER REFERENCES users(user_id) NOT NULL,
    recipe_id INTEGER REFERENCES recipes(recipe_id) NOT NULL,
    order_time TIMESTAMP
);