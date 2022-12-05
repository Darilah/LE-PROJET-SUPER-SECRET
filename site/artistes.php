<?php session_start();
include('config/mysql.php'); ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Programmation de concerts - Page ARTISTES</title>
    <!--Bootstrap css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    
    <!--fichier css-->
    <link rel="stylesheet" href="./style.css?v=<?php echo time();?>" type="text/css" media="screen"> 
    
    <!--Bootstrap java -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<!--JQUERY-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js%22%3E"></script>

</head>
<body class="d-flex flex-column min-vh-100">
    <div class="container-flex">

    <?php include_once('header.php'); ?>

              <!-- input tag -->
        
        <form>
        <h2 id="artiste_name">ARTISTES</h2>
        <input id="searchbar" type="text"name="search" placeholder="Search artistes..">
        <input id="rechercher_button" type="submit" name="submit" class="submit" value="Rechercher"> 
        </form>

    <!-- ordered list -->
  
    <div id="ARTISTES">
    <?php

$reponse = $mysqlC->query('SELECT * FROM artistes');
$rep = $mysqlC->query('SELECT * FROM artistes where idArtist=1');
?>

<?php

$donnees = $reponse->fetch();
$donnees_id_un = $rep->fetch();
echo $donnees_id_un['name']; ?> <br />
<?php echo $donnees_id_un['description']; ?>
<img src="<?php echo $donnees_id_un['way_img'];?>"> </img> <br />
<?php while ($donnees = $reponse->fetch())

{

?>

    <p>

   <?php echo $donnees['name']; ?><br />
   <?php echo $donnees['description']; ?><br />
   <img src="<?php echo $donnees['way_img'];?>"> </img> <br />


   </p>

<?php

}

         

$reponse->closeCursor(); // Termine le traitement de la requête


?>
</div>
    <?php include_once('footer.php');?>
</body>
</html>