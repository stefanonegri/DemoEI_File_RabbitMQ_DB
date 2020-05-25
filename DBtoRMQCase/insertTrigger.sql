DELIMITER $$

CREATE TRIGGER after_employees_insert
AFTER INSERT
ON Employees FOR EACH ROW
BEGIN
        INSERT INTO NotifierEmployee  (EmployeeNumber, insert_time, insertFlag) 
        VALUES(NEW.EmployeeNumber, NOW(), 1);
END$$

DELIMITER ;
