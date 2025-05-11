CREATE TABLE `users`(
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(32) NOT NULL,
    `last_name` VARCHAR(32),
    `username` VARCHAR(32) NOT NULL UNIQUE,
    `password` VARCHAR(32) NOT NULL UNIQUE,
    PRIMARY KEY(`id`)
);

CREATE TABLE `educations`(
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `type` VARCHAR(32),
    `location` VARCHAR(32),
    `year` INT,
    PRIMARY KEY(`id`)
);

CREATE TABLE `companies`(
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `industry` VARCHAR(32),
    `location` VARCHAR(32),
    PRIMARY KEY(`id`)
);

CREATE TABLE `connections_people`(
    `id` INT AUTO_INCREMENT,
    `A_id` INT,
    `B_id` INT,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`A_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`B_id`) REFERENCES `users`(`id`)
);

CREATE TABLE `connections_schools`(
    `id` INT AUTO_INCREMENT,
    `user_id` INT,
    `education_id` INT,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`education_id`) REFERENCES `educations`(`id`)
);

CREATE TABLE `connections_companies`(
    `id` INT AUTO_INCREMENT,
    `user_id` INT,
    `company_id` INT,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`company_id`) REFERENCES `companies`(`id`)
);
