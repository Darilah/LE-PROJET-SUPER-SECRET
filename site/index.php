<?php session_start(); // $_SESSION ?>
<?php include_once('config/mysql.php'); ?>

<!DOCTYPE html>
<html lang = "fr" class="fontawesome-i2svg-active fontawesome-i2svg-complete">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenue</title>
    

    <!--Font-Awesome-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></script>

    <!--JQUERY-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!--Bootstrap css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    
    <!--fichier css-->
    <link rel="stylesheet" href="./style.css">

    <!--Bootstrap java -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>

    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />


</head>

<body class="d-flex row flex-column min-vh-100 w-auto ">
    <?php include_once('header.php'); ?>
    <div class="container-fluid">
        <?php include_once('login.php'); ?>
        <section class="my-2 p-2 container-fluid ">
        <!--Titre-->
        <div class="row justify-content-center">
            <div class="col-xl-5 col-lg-5">
                <h1>TROUVEZ VOTRE PROCHAIN CONCERT EN QUELQUES MINUTES!</h1>
                <h5 class="text-white bold">Pour une experience inoubliable</h5>
            </div>
        </div>
        <!--Titre-->

        <!-- Recherche-->
        <div class="container-fluid distance">
            <div class="row h-8 d-flex justify-content-center align-items-center mb-auto">
                <div class="col-md-10">
                    <div class="search input-group">
                        <i class="fa fa-search"></i>
                          <input type="text" class="form-control" placeholder="Tapez ici">
                          <button class="btn btn-primary">Rechercher</button>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
        <!-- Recherche-->


        <!--Carousel-->
        <section class="text-center container-fluid ">
        <div class="row justify-content-center distance">
            <div class="col-md-8">
                <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="10000">
                            <img src="./imagessite/image1.jpg" class="d-block w-100" alt="concert image">
                        </div>
                        <div class="carousel-item" data-bs-interval="2000">
                            <img src="./imagessite/image2.jpg" class="d-block w-100" alt="concert image">
                        </div>
                        <div class="carousel-item" data-bs-interval="3000">
                            <img src="./imagessite/image3.jpg" class="d-block w-100" alt="concert image">
                        </div>
                        <div class="carousel-item" data-bs-interval="3000">
                            <img src="./imagessite/image4.jpg" class="d-block w-100" alt="concert image">
                        </div>
                        <div class="carousel-item">
                            <img src="./imagessite/image5.jpg" class="d-block w-100" alt="concert image">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
        <!--Carousel-->

        <!--Texte-->
        <div class="row justify-content-center mt-5">
            <div class="col-xl-5 col-lg-5">
                <h4 class="bold text-decoration-underline text-info">LES PROCHAINS CONCERTS LES PLUS ATTENDUS!</h4>
            </div>
        </div>
        <!--Texte-->

    <!-- random -->
    <?php
   srand(floor(time() / (60*60*24)));
   $valeurrand=rand() % 4; 
    ?>
   
    <!-- random -->
    
    <!-- Photo -->


    <!--Photo-->

    <!--Featurettes-->
    <div id="ARTISTES">
 
            <?php $reponse = $mysqlC->query('SELECT * FROM artistes where idArtist='. $valeurrand.'');?>
            <?php $donnees = $reponse->fetch();?> 

<?php
   srand(floor(time() / (60*60*24)));
   $valeurrand=1+rand() % 4; 
    ?>

        
        <?php 
        $reponse = $mysqlC->query('SELECT * FROM artistes where idArtist='. $valeurrand.'');
        if ($donnees = $reponse->fetch())

{ ?>       

        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-7">
            <button class="bg-transparent border-0"><h1 class="text-white"><?php echo $donnees['name']; ?></h1></button>
            <p class="lead"><?php echo $donnees['tour']; ?></p>
            </div>
            <div class="col-4">
            <div class="img-responsive pull-right" width="250px" height="250px">
            <button class="bg-transparent border-0"><img src="<?php echo $donnees['way_img'];?>"> </img></button></div>
            </div>
        </div>
        <?php
    }
$reponse->closeCursor(); // Termine le traitement de la requête
 
?>

</div> 

<?php
   srand(floor(time() / (60*60*24)));
   $valeurrand=2+rand() % 4; 
    ?>

<?php 
        $reponse = $mysqlC->query('SELECT * FROM artistes where idArtist='. $valeurrand.'');
        if ($donnees = $reponse->fetch())

{ ?>         

        <hr class="featurette-divider">
        <div class="row featurette gauche">
            <div class="col-7 order-md-2">
                <button class="bg-transparent border-0"><h1 class="text-white"><?php echo $donnees['name']; ?></h1></button>
                <p class="lead"><?php echo $donnees['tour']; ?></p>
            </div>
            <div class="col-4 order-md-1">
            <div class="img-responsive pull-right" width="250px" height="250px">
            <button class="bg-transparent border-0"><img src="<?php echo $donnees['way_img'];?>"> </img></button></div>
            </div>
        </div>

<?php
    }
$reponse->closeCursor(); // Termine le traitement de la requête
 
?>
</div> 

<?php
   srand(floor(time() / (60*60*24)));
   $valeurrand=3+rand() % 4; 
    ?>

<?php 
        $reponse = $mysqlC->query('SELECT * FROM artistes where idArtist='. $valeurrand.'');
        if ($donnees = $reponse->fetch())

{ ?>         

        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-7">
            <button class="bg-transparent border-0"><h1 class="text-white"><?php echo $donnees['name']; ?></h1></button>
            <p class="lead"><?php echo $donnees['tour']; ?></p>
            </div>
            <div class="col-4">
            <div class="img-responsive pull-right" width="250px" height="250px">
            <button class="bg-transparent border-0"><img src="<?php echo $donnees['way_img'];?>"> </img></button></div>
            </div>
        </div>
        <hr class="featurette-divider">
<?php
    }
$reponse->closeCursor(); // Termine le traitement de la requête
 
?>
</div> 

    <!--Featurettes-->
    
    <!--Qui sommes nous ?-->
        <!--<div class="bg-image row" style="background-image: url('https://media.istockphoto.com/id/1219163188/fr/photo/cadre-dimage-carr%C3%A9-de-rectangle-avec-le-graphique-de-couleur-de-n%C3%A9on-de-deux-tons-sur-le.jpg?s=170667a&w=0&k=20&c=PmS8Wk_RVKPLYfkpiO4a5FmffLYaop6hHRH5rO6f4Ko='); background-size: 3500px 150px;">--> 
        <div class="row justify-content-center mt-5">
        <div class="col-xl-5 col-lg-5 distance">
            <h4 class="bold text-decoration-underline text-info ">QUI SOMMES NOUS?</h4>
            <p class="lead">Nous sommes des étudiantes qui aiment la musique et trouvent que c’est une super idée de faire un site pour programmer les concerts !</p>
        </div>
        </div>  
        </div>
    <!--Qui sommes nous ?-->

    </div>

    </div>

    <?php include_once('footer.php'); ?>
</body>
</html>