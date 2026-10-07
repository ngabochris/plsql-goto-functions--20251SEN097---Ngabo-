SET serveroutput ON;

DECLARE
    salary NUMBER := 50000;

BEGIN

    IF salary < 50000 THEN
        GOTO low_salary;
    ELSIF salary < 60000 THEN
        GOTO average_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('The salary ' || salary || ' is considered low.');
    GOTO end_label;

    <<average_salary>>
    DBMS_OUTPUT.PUT_LINE('The salary ' || salary || ' is considered average.');
    GOTO end_label;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('The salary ' || salary || ' is considered high.');
    GOTO end_label;

    <<end_label>>
    NULL;
END;