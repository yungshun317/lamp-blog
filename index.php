<!DOCTYPE html>
<?php require_once("includes/head_section.php") ?>
    <title>Lamp Blog | Home</title>
</head>
<body>
    <!-- container -->
    <div class="container">
        <!-- navbar -->
        <div class="navbar">
            <div class="logo-div">
                <a href="index.php"><h1>Lamp Blog</h1></a>
            </div>
            <ul>
                <li><a class="active" href="index.php"></a></li>
                <li><a href="#news">News</a></li>
                <li><a href="#contact">Contact</a></li>
                <li><a href="#about">About</a></li>
            </ul>
        </div>

        <!-- Page Layout -->
        <div class="content">
            <h2 class="content-title">Recent Articles</h2>
            <hr>
        </div>

        <!-- footer -->
        <div class="footer">
            <p>ChouQin Info Co. &copy; <?php echo date('Y'); ?></p>
        </div>
    </div>
</body>
</html>
