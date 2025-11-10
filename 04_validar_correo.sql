CREATE OR REPLACE FUNCTION valida_correo(correo TEXT)
RETURNS bool AS $$
BEGIN
    IF correo LIKE '%@%' THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
$$ LANGUAGE plpgsql;

SELECT valida_correo('usuario@ejemplo.com');
SELECT valida_correo('usuarioejemplo.com');
