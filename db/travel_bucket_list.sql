DROP TABLE cities;
DROP TABLE countries;

CREATE TABLE countries
(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  has_visited BOOLEAN
);

CREATE TABLE cities
(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  has_visited BOOLEAN,
  country_id INT4 REFERENCES countries(id)
);

SELECT * FROM countries;
SELECT * FROM cities;
