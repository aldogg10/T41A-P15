CREATE OR REPLACE FUNCTION dia_de_semana(fecha DATE)
RETURNS TEXT
LANGUAGE plpgsql
AS $$
DECLARE
    resultado TEXT;
BEGIN
    SELECT TO_CHAR(fecha, 'TMDay')
    INTO resultado;

    RETURN resultado;
END;
$$;

SELECT dia_de_semana('2025-11-09');
