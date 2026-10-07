-- The first block demonstrates an illegal GOTO statement.
-- The GOTO attempts to jump from outside an IF statement
-- directly into the body of the IF statement.
--
-- Oracle rejects this with:
-- PLS-00375: illegal GOTO statement;
-- this GOTO cannot branch to label 'INSIDE_IF'
--
-- The corrected version places the GOTO inside the IF block,
-- so the jump to the label is legal.

-- ILLEGAL VERSION
-- SET SERVEROUTPUT ON;
--
-- BEGIN
--     GOTO inside_if;
--
--     IF 1 = 1 THEN
--         <<inside_if>>
--         DBMS_OUTPUT.PUT_LINE('Inside IF block');
--     END IF;
-- END;
-- /


-- CORRECTED VERSION

SET SERVEROUTPUT ON;

BEGIN
    IF 1 = 1 THEN
        GOTO inside_if;
    END IF;

    <<inside_if>>
    DBMS_OUTPUT.PUT_LINE('Inside IF block');

END;
/