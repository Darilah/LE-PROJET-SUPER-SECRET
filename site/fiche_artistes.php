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
    <?php $id_artiste = $_GET['idArtist']?>
    
    
<?php if(isset($_GET['idArtist']) && isset($_GET['name']) && isset($_GET['description']) && isset($_GET['way_img']) ){
    ?> 
    <div id="ARTISTES">
    <div id="artistes_name">
 <p><?php echo $name_artiste = $_GET['name']; ?> </p> <br/>
    </div>

    <img id="images_artistes" class="artistes_img" src="<?php echo $_GET['way_img'];?>"> </img> <br />
    
    <div id="description_artiste">
    <p class="description"> <?php echo $descrp = $_GET['description'];?> </p> 
    </div>
 
  <?php
}?>
</div>
</div>
<h1>Prochaines dates : </h1>
 <?php $reponse_concerts = $mysqlC->query('SELECT * FROM artistes A,concerts C, venue V WHERE A.idArtist='.$id_artiste.' AND A.idArtist = C.idArtist AND C.idVenue = V.idVenue');

$donnees_concerts = $reponse_concerts->fetch();?>
<div id="fiche_ARTISTES">

<h1 class="fiche_artistes_name"> <?php echo $donnees_concerts['name']; ?> </h1>

<p class="fiche_artistes_date"> le <?php echo $donnees_concerts['date'];?> à <?php echo $donnees_concerts['hour']?>h </p>
<p class="fiche_artistes_town"><?php echo $donnees_concerts['town'];?>  (<?php echo $donnees_concerts['country'];?>) </p>
<p class="fiche_artistes_address"> <?php echo $donnees_concerts['address']; ?> </p>
<p class="fiche_artistes_capacity"> <?php echo $donnees_concerts['capacity'];?> spectateurs</p>
</div>
<?php
while($donnees_concerts = $reponse_concerts->fetch()){
?>
<div id="fiche_ARTISTES">

<h1 class="fiche_artistes_name"> <?php echo $donnees_concerts['name']; ?> </h1>
<p class="fiche_artistes_date"> le <?php echo $donnees_concerts['date']; ?> à <?php echo $donnees_concerts['hour']?>h </p>
<p class="fiche_artistes_town"><?php echo $donnees_concerts['town'];?>  (<?php echo $donnees_concerts['country'];?>) </p>
<p class="fiche_artistes_address"> <?php echo $donnees_concerts['address']; ?> </p>
<p class="fiche_artistes_capacity"> <?php echo $donnees_concerts['capacity'];?> spectateurs</p>


</div>
<?php
}
?>

<?php $reponse_concerts->closeCursor(); ?> 
</div>
<form>
        <h1>Recherche par villes : </h1>
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
<?php include_once('footer.php');?>
</body>
</html>