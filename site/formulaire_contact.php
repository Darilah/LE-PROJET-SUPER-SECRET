<?php
include_once('config/mysql.php'); 
$postData = $_POST;

if (!isset($postData['email']) || !isset($postData['message']))
{
	echo('Il faut un email et un message pour soumettre le formulaire.');
    return;
}	

$email = $postData['email'];
$comment = $postData['message'];

try { 
    $mysqlC->beginTransaction(); // commencer les instructions qui seront envoyées seulement si on ne détecte pas d'erreur
    $sql = "INSERT INTO `form` (`email`, `comment`) VALUES (:email, :comment)";
    $res = $mysqlC->prepare($sql);
    $exec = $res->execute(array(":email"=>$email,":comment"=>$comment));
    $mysqlC->commit();
}

catch(PDOException $e) {
    $mysqlC->rollBack(); // s'il y a une erreur, les données ne seront pas envoyées dans la bdd
    echo "Erreur : " . $e->getMessage();
}

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Programmation de concerts - Formulaire reçu</title>
    <!--Bootstrap css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    
    <!--fichier css-->
    <link rel="stylesheet" href="./style.css?v=<?php echo time();?>">

    <!--Bootstrap java -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container">

    <?php include_once('header.php'); ?>
        <h1>Message bien reçu !</h1>
        
        <div class="card">
            
            <div class="card-body">
                <h5 class="card-title">Rappel de vos informations</h5>
                <p class="card-text"><b>Email</b> : <?php echo($email); ?></p>
                <p class="card-text"><b>Message</b> : <?php echo strip_tags($comment); ?></p>
            </div>
        </div>
    </div>

    <?php include_once('footer.php'); ?>
</body>
</html>