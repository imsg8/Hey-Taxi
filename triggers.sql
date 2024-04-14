-- Trigger#1 to keep track of new users in the new_user_addition table

CREATE TRIGGER add_user_to_new_user_addition
AFTER INSERT ON USERS
FOR EACH ROW
BEGIN
    INSERT INTO new_user_addition (USER_ID, EMAIL, PHONE_NUMBER, ROLE, REGISTRATION_DATE)
    VALUES (NEW.USER_ID, NEW.EMAIL, NEW.PHONE_NUMBER, NEW.ROLE, NOW());
END;
/

-- Trigger#2 to add to the admin table whenever a new user who is an admin registers

CREATE TRIGGER add_admin_to_admin_table
AFTER INSERT ON USERS
FOR EACH ROW
BEGIN
    IF NEW.ROLE = 'admin' THEN
        INSERT INTO ADMIN (admin_ID, passwd) VALUES (NEW.USER_ID, NEW.PASSWD);
    END IF;
END;
/
