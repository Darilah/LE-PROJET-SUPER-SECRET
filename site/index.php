<?php session_start(); // $_SESSION ?>

<?php 

try
{
	// On se connecte à MySQL
	$db = new PDO('mysql:host=localhost;dbname=projet;charset=utf8', 'root', 'root');
}
catch(Exception $e)
{
	// En cas d'erreur, on affiche un message et on arrête tout
        die('Erreur : '.$e->getMessage());
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenue</title>
    

    <!--Bootstrap css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    
    <!--fichier css-->
    <link rel="stylesheet" href="./style.css">

    <!--Bootstrap java -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    
</head>
<body class="d-flex flex-column min-vh-100 w-auto">
    <div class="container-fluid">

    <?php include_once('header.php'); ?>
        <h1>Bonjour</h1>


    <?php include_once('login.php'); ?>

    </div>

    <?php include_once('footer.php'); ?>

</body>
</html>

