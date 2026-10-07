SELECT fn_annual_salary(50000) AS annual_salary
FROM dual;

SELECT fn_years_of_service(DATE '2020-01-01') AS years_of_service
FROM dual;

SELECT fn_calculate_tax(50000) AS tax
FROM dual;

SELECT fn_calculate_tax(55000) AS tax
FROM dual;

SELECT fn_calculate_tax(65000) AS tax
FROM dual;

SELECT fn_dept_name(6) AS department_name
FROM dual;

SELECT fn_validate_payroll(50000, 2000, 2500) AS validation_result
FROM dual;

SELECT fn_validate_payroll(0, 2000, 2500) AS validation_result
FROM dual;

SELECT fn_validate_payroll(50000, -2000, 2500) AS validation_result
FROM dual;