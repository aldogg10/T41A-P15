CREATE OR REPLACE FUNCTION calcular_descuento(pre_og NUMERIC, porcentaje NUMERIC DEFAULT 0.16)
RETURNS NUMERIC AS $$
BEGIN
    RETURN (pre_og * porcentaje)/100;
END;
$$ LANGUAGE plpgsql;
