CREATE TABLE `aeg06-test`.`customer` (
 `c_id` INT(11) NOT NULL AUTO_INCREMENT ,
 `c_type` BOOLEAN NOT NULL DEFAULT FALSE ,
 `c_pro` BOOLEAN NOT NULL DEFAULT TRUE , 
 `entreprise_id` INT(11) NOT NULL ,
 `c_prostatus` BOOLEAN NOT NULL DEFAULT TRUE ,
 `c_account` BOOLEAN NOT NULL DEFAULT FALSE , 
 `c_function` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL , 
 `c_firstname` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL ,
 `c_lastname` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , 
 `c_civility` CHAR(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL ,
 `c_address` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL ,
 `c_cp` VARCHAR(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL ,
 `c_city` VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL , 
 `c_phone` VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL ,
 `c_email` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL ,
 `c_password` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL ,
 `c_creation` DATETIME NOT NULL , PRIMARY KEY (`c_id`(11))) ENGINE = InnoDB CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;
);