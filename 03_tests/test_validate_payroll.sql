SELECT employee_id,
       basic_salary,
       allowances,
       tax,
       fn_validate_payroll(basic_salary, allowances, tax) AS validation_result
FROM Payroll;