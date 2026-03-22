<?php
//verifier les données 
if(isset($_POST["nom"],$_POST["marque"],$_POST["prix"],$_POST["ram"],$_POST["memoire"],$_POST["batterie"],$_POST["couleur"],$_POST["garantie"],$_POST["description"])){
    require_once "Singleton.php";  // ← on importe la classe
    try{
    //connexion
    $cnx = Singleton::getCnx();
    //:nom->parametrer
    //nom->colonne
    $rq="INSERT INTO `produit`(`id_produit`, `nom`, `marque`, `prix`, `memoire`, `ram`, `batterie`, `couleur`, `garantie`, `description`) VALUES (NULL,:nom,:marque,:prix,:memoire,:ram,:batterie,:couleur,:garantie,:description)";
    $stm=$cnx->prepare($rq);
    $stm->bindParam(":nom",$_POST["nom"]);
    $stm->bindParam(":marque",$_POST["marque"]);
    $stm->bindParam(":prix",$_POST["prix"]);
    $stm->bindParam(":memoire",$_POST["memoire"]);
    $stm->bindParam(":ram",$_POST["ram"]);
    $stm->bindParam(":batterie",$_POST["batterie"]);
    $stm->bindParam(":couleur",$_POST["couleur"]);
    $stm->bindParam(":garantie",$_POST["garantie"]);
    $stm->bindParam(":description",$_POST["description"]);
    $stm->execute();
    echo"insertion ok";
    }
    catch(PDOException $e){
        echo "erreur";
    }

}
?>