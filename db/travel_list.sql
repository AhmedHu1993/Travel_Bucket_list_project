DROP TABLE sights;
DROP TABLE cities;
DROP TABLE countries;
DROP TABLE continents;

CREATE TABLE continents
(
    id SERIAL8 primary key,
    name VARCHAR(255)
);

CREATE TABLE countries
(
  id SERIAL8 primary key,
  name VARCHAR(255),
  continent_id INT8 REFERENCES continents(id)
);

CREATE TABLE cities
(
  id SERIAL8 primary key,
  name VARCHAR(255),
  country_id INT8 REFERENCES countries(id) ON DELETE CASCADE,
  visited BOOLEAN
);

CREATE TABLE sights
(
  id SERIAL8 primary key,
  name VARCHAR(255),
  city_id INT8 REFERENCES cities(id) ON DELETE CASCADE
);
