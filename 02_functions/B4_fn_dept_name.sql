CREATE OR REPLACE FUNCTION fn_dept_name (
    p_department_id IN NUMBER
) RETURN VARCHAR2 IS
    v_department_name VARCHAR2(100);
BEGIN
    SELECT department_name
    INTO v_department_name
    FROM Departments
    WHERE department_id = p_department_id;

    RETURN v_department_name;
END fn_dept_name;