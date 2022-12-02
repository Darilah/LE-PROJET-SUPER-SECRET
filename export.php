<?php 
include_once('config/mysql.php');
$req=$mysqlC->prepare("select * from picture where id_picture=? limit 1");
$req->setFetchMode(PDO::FETCH_ASSOC);
$req->execute(array($_GET["id_picture"]));
$tab=$req->fetchAll();
/*$id_picture=
echo $tab[$id_picture]["bin"];*/
echo $tab[0]["bin"];

?>