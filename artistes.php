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
    <link rel="stylesheet" href="./style.css"> 
    
    <!--Bootstrap java -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
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
           <!-- Alt-J -->
    <?php 
$req=$mysqlC->prepare("select * from artistes where idArtist=1"); /*faire une boucle sql pour les numéros*/
$req->setFetchMode(PDO::FETCH_ASSOC);
$idArtiste = isset($_GET['idArtist']);
$req->execute(array($idArtiste));
$tab=$req->fetchAll();?>
<img class ="images_artistes" src="export.php?id_picture=1"/> 
<div class="artistes_name"> <?php echo $tab[0]["name"];?></div>
<div class="description_artiste"> <?php echo $tab[0]["description"];?>
</div>

          <!-- Angèle -->
    <?php 
$req=$mysqlC->prepare("select * from artistes where idArtist=2"); /*faire une boucle sql pour les numéros*/
$req->setFetchMode(PDO::FETCH_ASSOC);
$idArtiste = isset($_GET['idArtist']);
$req->execute(array($idArtiste));
$tab=$req->fetchAll();?>
<img class ="images_artistes" src="export.php?id_picture=2"/> 
<div class="artistes_name"> <?php echo $tab[0]["name"];?></div>
<div class="description_artiste"> <?php echo $tab[0]["description"];?>
<a id="rechercher_button" href="fiche_artistes.php" value="Voir la fiche artiste">Voir la fiche artiste</a>
</div>
<br>
<!-- Beabadoobee -->
<?php 
$req=$mysqlC->prepare("select * from artistes where idArtist=3"); /*faire une boucle sql pour les numéros*/
$req->setFetchMode(PDO::FETCH_ASSOC);
$idArtiste = isset($_GET['idArtist']);
$req->execute(array($idArtiste));
$tab=$req->fetchAll();?>
<img class ="images_artistes" src="export.php?id_picture=3"/> 
<div class="artistes_name"> <?php echo $tab[0]["name"];?></div>
<div class="description_artiste"> <?php echo $tab[0]["description"];?></div>
<!-- Harry Styles -->
<?php 
$req=$mysqlC->prepare("select * from artistes where idArtist=4"); /*faire une boucle sql pour les numéros*/
$req->setFetchMode(PDO::FETCH_ASSOC);
$idArtiste = isset($_GET['idArtist']);
$req->execute(array($idArtiste));
$tab=$req->fetchAll();?>
<img class ="images_artistes" src="export.php?id_picture=4"/> 
<div class="artistes_name"> <?php echo $tab[0]["name"];?></div>
<div class="description_artiste"> <?php echo $tab[0]["description"];?></div>
<!-- Lomepal -->
<?php 
$req=$mysqlC->prepare("select * from artistes where idArtist=5"); /*faire une boucle sql pour les numéros*/
$req->setFetchMode(PDO::FETCH_ASSOC);
$idArtiste = isset($_GET['idArtist']);
$req->execute(array($idArtiste));
$tab=$req->fetchAll();?>
<img class ="images_artistes" src="export.php?id_picture=5"/> 
<div class="artistes_name"> <?php echo $tab[0]["name"];?></div>
<div class="description_artiste"> <?php echo $tab[0]["description"];?></div>
<!-- The 1975 -->
<?php 
$req=$mysqlC->prepare("select * from artistes where idArtist=6"); /*faire une boucle sql pour les numéros*/
$req->setFetchMode(PDO::FETCH_ASSOC);
$idArtiste = isset($_GET['idArtist']);
$req->execute(array($idArtiste));
$tab=$req->fetchAll();?>
<img class ="images_artistes" src="export.php?id_picture=6"/> 
<div class="artistes_name"> <?php echo $tab[0]["name"];?></div>
<div class="description_artiste"> <?php echo $tab[0]["description"];?></div>
</div>
    <?php include_once('footer.php');?>
</body>
</html>