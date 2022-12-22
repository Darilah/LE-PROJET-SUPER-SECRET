<?php
// Connexion à la base de données
$host = "localhost";
$user = "root";
$password = "root";
$dbname = "projet";

$conn = mysqli_connect($host, $user, $password, $dbname);

// Vérifier la connexion
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Récupérer l'identifiant du concert et l'identifiant de l'utilisateur à partir de l'URL (si vous utilisez la méthode GET) ou du corps de la requête (si vous utilisez la méthode POST)
$concert_id = $_GET['concert_id'];
$user_id = $_GET['user_id'];

// Vérifier si l'utilisateur a déjà ajouté ce concert en tant que favori
$sql = "SELECT * FROM favoris WHERE idConcert = '$concert_id' AND idUser = '$user_id'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
// Si l'utilisateur a déjà ajouté ce concert en tant que favori, supprimer cette ligne de la table "favoris"
$sql = "DELETE FROM favoris WHERE idConcert = '$concert_id' AND idUser = '$user_id'";
if (mysqli_query($conn, $sql)) {
echo "Le concert a été supprimé de vos favoris.";
} else {
echo "Erreur lors de la suppression du concert de vos favoris: " . mysqli_error($conn);
}
} else {
// Si l'utilisateur n'a pas encore ajouté ce concert en tant que favori, ajouter une ligne à la table "favoris"
$sql = "INSERT INTO favoris (idConcert, idUser) VALUES ('$concert_id', '$user_id')";
if (mysqli_query($conn, $sql)) {
echo "Le concert a été ajouté à vos favoris.";
} else {
echo "Erreur lors de l'ajout du concert à vos favoris: " . mysqli_error($conn);
}
}

// Fermer la connexion à la base de données
mysqli_close($conn);
?>