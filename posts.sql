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
                         `updated_at` timestamp NOT NULL DEFAULT '0000-00-00',
                         FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(1, 1, '5 Habits that can improve your life', '5-habits-that-can-improve-your-life', 0, 'banner.jpg', 'Read every day', 1, '2018-02-03 07:58:02', '2018-02-01 19:14:31'),
(2, 1, 'Second post on LifeBlog', 'second-post-on-lifeblog', 0, 'banner.jpg', 'This is the body of the second post on this site', 0, '2018-02-02 11:40:14', '2018-02-01 13:04:36');