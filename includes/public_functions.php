<?php

// Return all published posts
function getPublishedPosts() {
    // Use global $conn object in function
    global $conn;
    $sql = "SELECT * FROM posts WHERE published=true";
    $result = mysqli_query($conn, $sql);

    // Fetch all posts as an associative array called $posts
    $posts = mysqli_fetch_all($result, MYSQLI_ASSOC);

    return $posts;
}

?>