CREATE TABLE productos(
  id int PRIMARY KEY,
  nombre TEXT,
  precio NUMERIC(10,2),
  stock INT
);

CREATE TABLE departamento(
  id int PRIMARY KEY,
  empleados INT
);
