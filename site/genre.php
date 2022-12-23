<?php session_start(); // $_SESSION ?>
<?php include('config/mysql.php'); ?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Programmation de concerts - Genres</title>
    
    <!--Bootstrap css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
    
    <!--fichier css-->
    <link rel="stylesheet" href="./style.css?v=<?php echo time();?>">

    <!--Bootstrap java -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    
</head>

<body class="d-flex row flex-column min-vh-100 w-auto ">
    <?php include_once('login.php'); ?>

    <?php if(isset($_SESSION['LOGGED_USER'])): ?>
    <?php include_once('header.php'); ?>

    <div class="container-fluid">

    

    <form>
        <h2 id="artiste_name">GENRES</h2>
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

    <!-- Différentes images de genres -->

    <?php
        $rep1 = $mysqlC->query('SELECT * FROM genre WHERE idGenre=1');
        $rep2 = $mysqlC->query('SELECT * FROM genre WHERE idGenre=2');
        $rep3 = $mysqlC->query('SELECT * FROM genre WHERE idGenre=3');
        $rep4 = $mysqlC->query('SELECT * FROM genre WHERE idGenre=4');
        $rep5 = $mysqlC->query('SELECT * FROM genre WHERE idGenre=5');
        $rep6 = $mysqlC->query('SELECT * FROM genre WHERE idGenre=6');

        $genre1 = $rep1->fetch();
        $genre2 = $rep2->fetch();
        $genre3 = $rep3->fetch();
        $genre4 = $rep4->fetch();
        $genre5 = $rep5->fetch();
        $genre6 = $rep6->fetch();
    ?>

    <!-- Récupération des données dans des variables -->

    <div class="text-genre">
    <div class="pop">
            <h1><a href="<?php echo 'fiche_genre.php?idGenre='.$genre1['idGenre'].'&genre='.$genre1['genre'].''?>"> <?php echo $genre1['genre']; ?></a></h1>
    </div>
    <div class="rock">
            <h1><a href="<?php echo 'fiche_genre.php?idGenre='.$genre2['idGenre'].'&genre='.$genre2['genre'].''?>"> <?php echo $genre2['genre']; ?></a></h1>
    </div>
    <div class="rap">
            <h1><a href="<?php echo 'fiche_genre.php?idGenre='.$genre3['idGenre'].'&genre='.$genre3['genre'].''?>"> <?php echo $genre3['genre']; ?></a></h1>
    </div>

    <div class="electro">
            <h1><a href="<?php echo 'fiche_genre.php?idGenre='.$genre4['idGenre'].'&genre='.$genre4['genre'].''?>"> <?php echo $genre4['genre']; ?></a></h1>
    </div>
    <div class="indie">
            <h1><a href="<?php echo 'fiche_genre.php?idGenre='.$genre5['idGenre'].'&genre='.$genre5['genre'].''?>"> <?php echo $genre5['genre']; ?></a></h1>
    </div>
    <div class="punk">
            <h1><a href="<?php echo 'fiche_genre.php?idGenre='.$genre6['idGenre'].'&genre='.$genre6['genre'].''?>"> <?php echo $genre6['genre']; ?></a></h1>
    </div>
    </div>

    


    </div>



    <?php include_once('footer.php'); ?>
    <?php endif; ?>

</body>
</html>