CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_basic_salary IN NUMBER,
    p_allowance IN NUMBER,
    p_tax IN NUMBER
) RETURN VARCHAR2 IS
    e_invalid_payroll EXCEPTION;
BEGIN 
    IF p_basic_salary <= 0 OR p_allowance < 0 OR p_tax < 0 THEN
        RAISE e_invalid_payroll;
    END IF;

    RETURN 'VALID';

    EXCEPTION
        WHEN e_invalid_payroll THEN
            RETURN 'Invalid payroll: Salary must be greater than zero, and allowance and tax cannot be negative.';
        WHEN OTHERS THEN
            RETURN 'An unexpected error occurred: ' || SQLERRM;

END fn_validate_payroll;