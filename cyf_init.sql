CREATE TABLE customers (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(50)  NOT NULL,
    email       VARCHAR(120) NOT NULL,
    document    VARCHAR(20)  NOT NULL,
    phone       VARCHAR(30)  NULL,
    address     VARCHAR(200) NULL
)

CREATE TABLE hotel (
    id              SERIAL PRIMARY KEY,
    name            VARCHAR(50)  NOT NULL,
    rooms           INT          NULL ,
    city            VARCHAR(20)  NOT NULL,
    postcode        VARCHAR(20)  NOT NULL,
    phone           VARCHAR(30)  NULL,
    address         VARCHAR(200) NULL,
    pet_friendly    BOOLEAN NOT NULL,
    amenities       VARCHAR(50)  NULL
)

CREATE TABLE rooms (
    id              SERIAL PRIMARY KEY,
    hotel_id        INT REFERENCES hotels(id),
    type            VARCHAR(10)  NULL ,
    postcode        VARCHAR(20)  NOT NULL,
    beds            INT NOT NULL,
    price           MONEY NOT NULL,
    
)

CREATE TABLE Bank_Account (
    id              SERIAL PRIMARY KEY,
    customer_id     INT REFERENCES customers(id),
    Bank_Name       VARCHAR(20)  NOT NULL ,
    Account_Number  VARCHAR(25)  NOT NULL,    
)
CREATE TABLE bookings (
  id               SERIAL PRIMARY KEY,
  customer_id      INT REFERENCES customers(id),
  hotel_id         INT REFERENCES hotels(id),
  checkin_date     DATE NOT NULL,
  nights           INT NOT NULL
);