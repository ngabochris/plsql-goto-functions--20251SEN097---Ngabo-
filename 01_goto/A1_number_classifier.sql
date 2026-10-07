SET serveroutput ON;

DECLARE
    v_number NUMBER := 5000;
BEGIN

    IF v_number > 0 THEN
        GOTO positive_number;
    ELSIF v_number < 0 THEN
        GOTO negative_number;
    ELSE
        GOTO zero_number;
    END IF;

    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE('The number ' || v_number || ' is positive.');
    GOTO end_label;

    <<negative_number>>
    DBMS_OUTPUT.PUT_LINE('The number ' || v_number || ' is negative.');
    GOTO end_label;

    <<zero_number>>
    DBMS_OUTPUT.PUT_LINE('The number ' || v_number || ' is zero.');
    GOTO end_label;

    <<end_label>>
    NULL;
END;