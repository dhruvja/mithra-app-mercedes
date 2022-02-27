CREATE TABLE `mithra`.`services` (
  `id` INT NOT NULL,
  `role` VARCHAR(45) NULL,
  `eta` VARCHAR(45) NULL,
  `workers` VARCHAR(45) NULL,
  `minimum_pay` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `mithra`.`forum` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `message` VARCHAR(45) NULL,
  `hashtag` VARCHAR(45) NULL,
  `created_time` VARCHAR(45) NULL,
  `likes` VARCHAR(45) NULL,
  `reading_time` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

