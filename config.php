<?php
session_start();

// Connect to database
$conn = mysqli_connect("localhost", "yungshun", "lucifer317", "lamp_blog");

if (!$conn) {
    die("Error connecting to database: " . mysqli_connect_error());
}

// Define global constants
define('ROOT_PATH', realpath(dirname(__FILE__)));
define('BASE_URL', 'http://localhost/lamp-blog/');
?>