<?php session_start(); // $_SESSION ?>
<?php include_once('config/mysql.php'); ?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Programmation de concerts - Page Genres</title>
    
    <!--Bootstrap css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    
    <!--fichier css-->
    <link rel="stylesheet" href="./style.css?v=<?php echo time();?>">

    <!--Bootstrap java -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    
</head>
<body class="d-flex flex-column min-vh-100 w-auto">
    <div class="container-flex">
        <?php include_once('header.php'); ?>
        
        <?php $id_genre = $_GET['idGenre']; ?>
        
        <div id="genre_name">

            <?php if(isset($_GET['idGenre']) && isset($_GET['genre']) ){
                echo $name_genre = $_GET['genre']; ?> 
            <?php } ?>
        </div>

    <?php
        $reponse = $mysqlC->prepare('SELECT * FROM artistes WHERE idGenre = ?');
        $reponse->execute(array($id_genre));
        //$donnees = $reponse->fetch();
    ?>



    <?php $id = 2;?>
    <?php while ($donnees = $reponse->fetch()) { ?>
        <p id="<?php $x ?>">
        <div id="ARTISTES">
        <?php 
            $description = $donnees['description'];
            $way_image = $donnees['way_img'];
            $name =  $donnees['name'];
        ?>

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


?>
</div>

    <form>
          <!-- Barre de recherche -->
        <div class="container-fluid distance">
            <div class="row h-8 d-flex justify-content-center align-items-center mb-auto">
                <div class="col-md-10">
                    <div class="search input-group">
                        <i class="fa fa-search"></i>
                          <input id="searchbar" onkeyup="// java serch_genres()" type="text" class="form-control" placeholder="Tapez ici">
                          <button class="btn btn-primary">Rechercher</button>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
            <!-- Fin barre de recherche -->
    </form>
    <?php include_once('footer.php'); ?>

</body>
</html>