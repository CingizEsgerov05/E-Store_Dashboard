CREATE SEQUENCE Customers_Seq
    START WITH 1
    INCREMENT BY 1
    NOMAXVALUE;
    
CREATE OR REPLACE TRIGGER Customers_Trigger
BEFORE INSERT ON Customers_PB
FOR EACH ROW
BEGIN
    SELECT Customers_Seq.NEXTVAL INTO :NEW.CustomerID FROM DUAL;
END;
/

CREATE OR REPLACE PROCEDURE PopulateCustomers AS
BEGIN
    FOR i IN 1..10000 LOOP
        INSERT INTO Customers_PB (FirstName, LastName, Phone, Email, Address)
        VALUES (
            CASE MOD(i, 5)
                WHEN 0 THEN 'Ali'
                WHEN 1 THEN 'Leyla'
                WHEN 2 THEN 'Kamran'
                WHEN 3 THEN 'Aygun'
                ELSE 'Elchin'
            END,
            CASE MOD(i, 3)
                WHEN 0 THEN 'Huseynov'
                WHEN 1 THEN 'Aliyev'
                ELSE 'Mammadov'
            END,
            '+994 5' || FLOOR(DBMS_RANDOM.VALUE(0, 5)) || ' ' || LPAD(FLOOR(DBMS_RANDOM.VALUE(0, 10000000)), 7, '0'),
            'customer' || i || '@example.com',
            FLOOR(DBMS_RANDOM.VALUE(0, 100)) || ' Sample St., Baku'
        );
    END LOOP;
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001, 'Error in PopulateCustomers: ' || SQLERRM);
END PopulateCustomers;
/

EXEC PopulateCustomers;

select * from customers_pb