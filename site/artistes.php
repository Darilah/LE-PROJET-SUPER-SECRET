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
<body class="d-flex row flex-column min-vh-100 w-auto">
<?php include_once('login.php'); ?>

    <?php if(isset($_SESSION['LOGGED_USER'])): ?>


    <div class="container-fluid">
    <?php include_once('header.php'); ?>
    
              <!-- input tag -->
        
        <form>
        <h2 id="artiste_name">ARTISTES</h2>
          <!-- Recherche-->
        <div class="container-fluid distance">
            <div class="row h-8 d-flex justify-content-center align-items-center mb-auto">
                <div class="col-md-10">
                    <div class="search input-group">
                        <i class="fa fa-search"></i>
                          <input id="searchbar" onkeyup="search_artiste()" type="text" class="form-control" placeholder="Tapez ici">
                          <button class="btn btn-primary">Rechercher</button>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
 
        </form>

    <div id="ARTISTES">
    <?php

$reponse = $mysqlC->query('SELECT * FROM artistes');
$rep = $mysqlC->query('SELECT * FROM artistes WHERE idArtist=1');
?>

<?php

$donnees = $reponse->fetch();
$donnees_id_un = $rep->fetch(); ?> 

<img id="images_artistes" class="artistes_img" src="<?php echo $donnees_id_un['way_img'];?>"> </img> <br />

<div id="artistes_name">
<a id = "1" class="artistes" href="<?php echo 'fiche_artistes.php?idArtist='.$donnees_id_un['idArtist'].'&name='.$donnees_id_un['name'].'&description='.$donnees_id_un['description'].'&way_img='.$donnees_id_un['way_img'].''?>"> <?php echo $donnees_id_un['name']; ?></a> <br />
</div>
<div id="description_artiste">
<p class="description"> <?php echo $donnees_id_un['description']; ?> </p>
</div>
</div>




<?php $id =2;?>
<?php while ($donnees = $reponse->fetch()){
?>
<p id="<?php $x ?>">
<div id="ARTISTES">

<?php $description = $donnees['description'];
     $way_image = $donnees['way_img'];
     $name =  $donnees['name'];?>

    <img id="images_artistes" class="artistes_img" src="<?php echo $way_image;?>"> </img> <br />


    <div id="artistes_name">
   <a class="artistes" id ="<?php ".$id." ?>" href="<?php echo 'fiche_artistes.php?idArtist='.$id.'&name='.$name.'&description='.$description.'&way_img='.$way_image.'' ?>"><?php echo $name; ?> </a> <br />
   </div>

   <div id="description_artiste">
   <p class="description"> <?php echo $description; ?> </p> <br />
   </div>
   <?php ++$id;?>

   </p>
   </div>
<?php

}

         

$reponse->closeCursor(); // Termine le traitement de la requête
$rep->closeCursor();


?>

</div>
    <!-- linking javascript -->
    <script src="./artistes.js"></script>
    <?php include_once('footer.php');?>
    <?php endif; ?>
</body>
</html>