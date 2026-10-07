CREATE OR REPLACE FUNCTION fn_annual_salary(
    p_monthly_salary IN NUMBER
) RETURN NUMBER IS

BEGIN
    RETURN p_monthly_salary * 12;
END fn_annual_salary;