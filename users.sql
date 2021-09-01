CREATE TABLE `users` (
                         `id` int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
                         `username` varchar(255) NOT NULL,
                         `email` varchar(255) NOT NULL,
                         `role` enum('Author','Admin') DEFAULT NULL,
                         `password` varchar(255) NOT NULL,
                         `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                         `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;