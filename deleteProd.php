<?php
//verifier les données 
if(isset($_GET["id_produit"])){
    require_once "Singleton.php";  // ← on importe la classe
    try{
        //connexion
        $cnx = Singleton::getCnx();
        //:nom->parametrer
        //nom->colonne
        $rq="DELETE FROM `produit` WHERE id_produit=:id_produit";
        $stm=$cnx->prepare($rq);
        $stm->bindParam(":id_produit",$_GET["id_produit"]);
        $stm->execute();
        echo"supp ok";
        }
        catch(PDOException $e){
            echo "erreur";
        }
    }
?>