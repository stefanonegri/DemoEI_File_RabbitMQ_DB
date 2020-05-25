DELIMITER $$

CREATE TRIGGER after_employees_update
AFTER UPDATE
ON Employees FOR EACH ROW
BEGIN
        INSERT INTO NotifierEmployee  (EmployeeNumber, insert_time, updateFlag) 
        VALUES(NEW.EmployeeNumber, NOW(), 1);
END$$

DELIMITER ;
