CREATE TABLE `topics` (
    `id` int(11),
    `name` varchar(255),
    `slug` varchar(255) PRIMARY KEY
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'Inspiration', 'inspiration'),
(2, 'Motivation', 'motivation'),
(3, 'Diary', 'diary');