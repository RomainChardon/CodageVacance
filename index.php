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
        $titre = $connexion->titreLivre($_GET['recherche']);
        
       
        if(isset($_GET["list"]) && $_GET["list"]!= ""){
            $isbn = $connexion->recupISBN($_GET["list"]);
            var_dump($isbn);
            $livre = $connexion->afficherExemplaire($isbn);
            echo json_encode($livre);
        }else{
            echo "NoReponse";
        }

?>

