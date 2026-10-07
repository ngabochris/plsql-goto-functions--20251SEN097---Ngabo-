CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary IN NUMBER
) RETURN NUMBER IS

BEGIN 
    IF p_salary <= 50000 THEN
        RETURN p_salary * 5 / 100;
    ELSIF p_salary <= 60000 THEN
        RETURN p_salary * 10 / 100;
    ELSE
        RETURN p_salary * 15 / 100;
    END IF;
END fn_calculate_tax;