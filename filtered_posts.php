<?php include('config.php'); ?>
<?php include('includes/public_functions.php'); ?>
<?php include('includes/head_section.php'); ?>
<?php
    // Get posts under a particular topic
    if (isset($_GET['topic'])) {
        $topic_id = $_GET['topic'];
        $posts = getPublishedPostsByTopic($topic_id);
    }
?>
    <title>Blog | Home</title>
</head>
<body>
<div class="container"></div>
<div class="content"></div>

<?php include( ROOT_PATH . '/includes/footer.php'); ?>
