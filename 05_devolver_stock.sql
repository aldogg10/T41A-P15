CREATE OR REPLACE FUNCTION devuelve_stock(cant_min INT)
RETURNS TABLE(id INT, nombre TEXT, stock INT) AS $$
BEGIN
    RETURN QUERY
    SELECT p.id, p.nombre, p.stock
    FROM productos AS p
    WHERE p.stock < cant_min;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM devuelve_stock(5);
