CREATE TABLE benevole (
    id serial PRIMARY KEY,
    firstname VARCHAR(32) NOT NULL,
    lastname VARCHAR(32) NOT NULL,
    birthday DATE,
    password VARCHAR ( 50 ) NOT NULL,
    adress VARCHAR(50),
    town VARCHAR(50),
    postal_code VARCHAR(5),
    email VARCHAR ( 255 ) UNIQUE NOT NULL,
    phone VARCHAR ( 10 ) NOT NULL,
    created_on TIMESTAMP NOT NULL DEFAULT NOW(),
    last_login TIMESTAMP DEFAULT NOW()
);

CREATE TABLE preference(
    id serial PRIMARY KEY
);

CREATE TABLE antecedents(
    
);

CREATE TABLE association (
    id serial PRIMARY KEY,
    name VARCHAR(32),
    firstname_contact VARCHAR(32) NOT NULL,
    lastname_contact VARCHAR(32) NOT NULL,
    password VARCHAR ( 50 ) NOT NULL,
    adress VARCHAR(50),
    town VARCHAR(50),
    postal_code VARCHAR(5),
	email VARCHAR ( 255 ) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL DEFAULT NOW(),
    last_login TIMESTAMP DEFAULT NOW()
)

CREATE TABLE animal (
    id serial PRIMARY KEY,
    name VARCHAR(32) NOT NULL,
    species VARCHAR(32),
    breed VARCHAR(32),
    year INTEGER,
    notes TEXT,
	created_on TIMESTAMP NOT NULL DEFAULT NOW(),
    last_login TIMESTAMP DEFAULT NOW()
);

CREATE TABLE request (
    id_benevole INTEGER,
    id_animal INTEGER,
    date DATE
);

CREATE TABLE request (
    id_association INTEGER,
    id_animal INTEGER,
    date DATE
);



CREATE TABLE gift (
	id serial PRIMARY KEY,
	name VARCHAR ( 50 ) NOT NULL,
	summary VARCHAR ( 255 ) NOT NULL,
	quantity INTEGER NOT NULL DEFAULT 1,
	created_on TIMESTAMP NOT NULL DEFAULT NOW(),
    account_id INTEGER NOT NULL
);

CREATE TABLE purchase (
	account_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
	quantity INTEGER NOT NULL DEFAULT 1,
	created_on TIMESTAMP NOT NULL DEFAULT NOW()
);