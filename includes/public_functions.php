<?php

// Return all published posts
function getPublishedPosts() {
    // Use global $conn object in function
    global $conn;
    $sql = "SELECT * FROM posts WHERE published=true";
    $result = mysqli_query($conn, $sql);

    // Fetch all posts as an associative array called $posts
    $posts = mysqli_fetch_all($result, MYSQLI_ASSOC);

    $final_posts = array();
    foreach ($posts as $post) {
        $post['topic'] = getPostTopic($post['id']);
        array_push($final_posts, $post);
    }
    return $final_posts;
}

// Receive a post id and return topic of the post
function getPostTopic($post_id) {
    global $conn;
    $sql = "SELECT * FROM topics WHERE id=
            (SELECT topic_id FROM post_topic WHERE post_id=$post_id) LIMIT 1";
    $result = mysqli_query($conn, $sql);
    $topic = mysqli_fetch_assoc($result);
    return $topic;
}

// Return all posts under a topic
function getPublishedPostsByTopic($topic_id) {
    global $conn;
    $sql = "SELECT * FROM posts ps 
            WHERE ps.id IN 
            (SELECT pt.post_id FROM post_topic pt 
                WHERE pt.topic_id=$topic_id GROUP BY pt.post_id
                HAVING COUNT(1) = 1)";
    $result = mysqli_query($conn, $sql);
    // Fetch all posts as an associative array called $posts
    $posts = mysqli_fetch_all($result, MYSQLI_ASSOC);

    $final_posts = array();
    foreach ($posts as $post) {
        $post['topic'] = getPostTopic($post['id']);
        array_push($final_posts, $post);
    }
    return $final_posts;
}

// Return topic name by topic id
function getTopicNameById($id) {
    global $conn;
    $sql = "SELECT name FROM topics WHERE id=$id";
    $result = mysqli_query($conn, $sql);
    $topic = mysqli_fetch_assoc($result);
    return $topic['name'];
}

?>