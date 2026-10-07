SET SERVEROUTPUT ON;

DECLARE 
    v_number NUMBER := 5000;

BEGIN

    IF v_number > 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number ' || v_number || ' is positive.');
    ELSIF v_number < 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number ' || v_number || ' is negative.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number ' || v_number || ' is zero.');
    END IF;

END;