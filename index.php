<!-- <form action="" method="get">
    <label for="isbn">ISBN :</label>
    <input type="text" name="isbn">
    <input type="submit" value="isbn">
</form> -->

<?php

    require('Connexion.php');

        $connexion = new Connexion();
        $titre = $connexion->titreLivre($_GET['recherche']);
        
        ?>
        <form action="" method="get">
            <input type="text" name="recherche" id="recherche">
            <input type="submit" value="recherche">
        </form>
        <?php
        ?>
        <form action="" method="get">
            <select name="list" id="list">
            <?php
                foreach ($titre as $t ) {
                    echo '<option value="'. $t .'">'. $t .'</option>';
                }
            ?>
            </select>
            <input type="submit" value="requete">
        </form>
        <?php
        if(isset($_GET["list"]) && $_GET["list"]!= ""){
            $isbn = $connexion->recupISBN($_GET["list"]);
            var_dump($isbn);
            $livre = $connexion->afficherExemplaire($isbn);
            echo json_encode($livre);
        }else{
            echo "NoReponse";
        }

?>

