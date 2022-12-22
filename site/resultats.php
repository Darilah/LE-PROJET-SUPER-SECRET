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
    <?php 

$conn = mysqli_connect("localhost", "root", "root", "projet");


$query = $_GET['recherche'];

$sql = "SELECT * FROM artistes WHERE name LIKE '%$query%'";
$result = mysqli_query($conn, $sql);


if (mysqli_num_rows($result) > 0) {
  while($row = mysqli_fetch_assoc($result)) { ?>
    <div id="fiche_ARTISTES">
    <?php echo $row['name']; ?> </p> <br/>
    </div>

    <img id="images_artistes" class="artistes_img" src="<?php echo $row['way_img'];?>"> </img> <br />
    
    <div id="description_artiste">
    <p class="description"> <?php echo $row['description'];?> </p> 
    </div>
    <?php
  }
} else {
  echo "Aucun resultat trouve";
}

?> 


    <h1>Prochaines dates : </h1>
    <?php 
    $conn = mysqli_connect("localhost", "root", "root", "projet");


    $query = $_GET['recherche'];
    $sql = "SELECT COUNT(*) as nbArt FROM artistes as A,concerts as C, venue as V WHERE A.name LIKE '%$query%' AND A.idArtist = C.idArtist AND C.idVenue = V.idVenue";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);

    if(isset($_GET['page'])){
      $numPage = $_GET['page'];
    }else{
      $numPage = 1;
    }
    $nbArt = $row['nbArt'];
    $Page = 5;
    $nbPage = ceil($nbArt/$Page);
    $numPage = 1;

    $sql = "SELECT * FROM artistes as A,concerts as C, venue as V WHERE A.name LIKE '%$query%' AND A.idArtist = C.idArtist AND C.idVenue = V.idVenue LIMIT ".(($numPage-1)*$Page).", $Page" ;
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
      while($row = mysqli_fetch_assoc($result)) { ?>
        <div id="fiche_ARTISTES">

        <h1 class="fiche_artistes_name"> <?php echo $row['name']; ?> </h1>
        
        <p class="fiche_artistes_date"> le <?php echo $row['date'];?> à <?php echo $row['hour']?>h </p>
        <p class="fiche_artistes_town"><?php echo $row['town'];?>  (<?php echo $row['country'];?>) </p>
        <p class="fiche_artistes_address"> <?php echo $row['address']; ?> </p>
        <p class="fiche_artistes_capacity"> <?php echo $row['capacity'];?> spectateurs</p>
        </div>
      <?php
  }
  } else {
    echo "Aucun resultat trouve";
  }

  for($i=1; $i<= $nbPage; $i++){
    echo "<a href=\"resultats.php?page=$i\">$i</a> /";
  }
?> 

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