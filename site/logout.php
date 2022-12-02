<?php session_start(); ?>

<?php
    if (session_destroy()) {
        include_once('index.php');
    }
?>