CREATE OR REPLACE FUNCTION contar_empleados(p_id INT)
RETURNS INT AS $$
DECLARE
  total INT;
BEGIN
    SELECT empleados INTO total
    FROM departamento
    WHERE id = p_id;
    
    IF total IS NULL THEN
        RETURN 0;
    ELSE
        RETURN total;
    END IF;
END;
$$ LANGUAGE plpgsql;

SELECT contar_empleados(1);
