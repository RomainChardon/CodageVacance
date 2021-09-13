<!--  Formulaire de séléction rapide pour les test.

        ?>
        <form action="" method="get">
            <input type="text" name="recherche" id="recherche">
            <input type="submit" value="recherche">
        </form>
        
        
        <form action="" method="get">
            <select name="list" id="list">


                foreach ($titre as $t ) {
                    echo '<option value="'. $t .'">'. $t .'</option>';
                }

                
            </select>
            <input type="submit" value="requete">
        </form>
-->

<?php

    require('Connexion.php');

        $connexion = new Connexion();
        
        
       
        if(isset($_GET["list"]) && $_GET["list"]!= ""){
            $isbn = $connexion->recupISBN($_GET["list"]);
            $livre = $connexion->afficherExemplaire($isbn);
            echo "{livres:".json_encode($livre)."}";
        }else{
            $titre = $connexion->titreLivre($_GET['recherche']);
            echo "{livres:".json_encode($titre)."}";
        }

?>

