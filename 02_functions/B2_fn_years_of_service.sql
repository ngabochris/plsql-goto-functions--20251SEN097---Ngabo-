CREATE OR REPLACE FUNCTION fn_years_of_service (
    p_hire_date IN DATE
) RETURN NUMBER IS

begin
    RETURN TRUNC(MONTHS_BETWEEN(SYSDATE, p_hire_date) / 12);
end fn_years_of_service;