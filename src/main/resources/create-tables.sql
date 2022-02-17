CREATE TABLE ab_address
(
    address_id BIGSERIAL,
    country VARCHAR(50) NOT NULL,
    city VARCHAR(30),
    district VARCHAR(30),
    house VARCHAR(10) NOT NULL,
    apartment VARCHAR(10)
);

CREATE TABLE ab_user
(
    user_id BIGSERIAL,
    phone_number VARCHAR(15) NOT NULL,
    passport_id VARCHAR(20) NOT NULL,
    password VARCHAR(255) NOT NULL,
    login VARCHAR(20) NOT NULL,
    question VARCHAR(50) NOT NULL,
    answer VARCHAR(50) NOT NULL,
    name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    birthday DATE NOT NULL,
    email VARCHAR(50) NOT NULL,
    session_key SMALLINT NOT NULL,
    address_id BIGINT NOT NULL,
    FOREIGN KEY (address_id) REFERENCES ab_address (address_id)
);