CREATE TABLE IF NOT EXISTS committees (
  id INT(11) NOT NULL,
  num INT(2) UNIQUE NOT NULL,
  speeches INT(11) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS schools (
  id INT(11) NOT NULL,
  name VARCHAR(45) UNIQUE NOT NULL,
  speeches INT(11) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS delegates (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  committee INT(11) NOT NULL,
  school INT(11) NOT NULL,
  speeches INT(11) NOT NULL,
  FOREIGN KEY (committee) REFERENCES committees(id),
  FOREIGN KEY (school) REFERENCES schools(id),
  PRIMARY KEY (id)
);