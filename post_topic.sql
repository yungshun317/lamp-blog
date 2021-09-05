CREATE TABLE `post_topic` (
    `id` int(11),
    `post_id` int(11) PRIMARY KEY,
    `topic_id` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;