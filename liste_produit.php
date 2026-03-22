<?php
require_once "Singleton.php";  // ← on importe la classe
    //connexion
    $cnx = Singleton::getCnx();
    $sql="select * from produit";
    //preparer la requete("true" ou PDOstm)
    $stm=$cnx->prepare($sql);
    //prendre les données à partir de stm 
    $r=$stm->execute();
    //met les données dans un tableau 
    $etds=$stm->fetchAll();
    //afficher
    //var_dump($etds);
    echo"<table>";
    foreach ($etds as $e) {
        echo"<tr>
        <td>".$e["id_produit"]."</td>
        <td>".$e["nom"]."</td>
        <td>".$e["marque"]."</td>
        <td>".$e["prix"]."</td>
        <td>".$e["memoire"]."</td>
        <td>".$e["ram"]."</td>
        <td>".$e["batterie"]."</td>
        <td>".$e["couleur"]."</td>
        <td>".$e["garantie"]."</td>
        <td>".$e["description"]."</td>
        <td><a href=\"deleteProd.php?id_produit=".$e["id_produit"]."\">delete</a></td>
        </tr>";
    }
    echo"</table>";

?>