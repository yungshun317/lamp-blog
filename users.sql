CREATE TABLE `users` (
                         `id` int(11) AUTO_INCREMENT PRIMARY KEY NOT NULL,
                         `username` varchar(255) NOT NULL,
                         `email` varchar(255) NOT NULL,
                         `role` enum('Author','Admin') DEFAULT NULL,
                         `password` varchar(255) NOT NULL,
                         `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                         `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Awa', 'info@codewithawa.com', 'Admin', 'mypassword', '2018-01-08 12:52:58', '2018-01-08 12:52:58');