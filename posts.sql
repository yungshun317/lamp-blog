CREATE TABLE `posts` (
                         `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
                         `user_id` int(11) DEFAULT NULL,
                         `title` varchar(255) NOT NULL,
                         `slug` varchar(255) NOT NULL UNIQUE,
                         `views` int(11) NOT NULL DEFAULT '0',
                         `image` varchar(255) NOT NULL,
                         `body` text NOT NULL,
                         `published` tinyint(1) NOT NULL,
                         `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                         `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
                         FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1