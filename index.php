<!-- <form action="" method="get">
    <label for="isbn">ISBN :</label>
    <input type="text" name="isbn">
    <input type="submit" value="isbn">
</form> -->

<?php

    require('Connexion.php');

        $connexion = new Connexion();
        $titre = $connexion->titreLivre();
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
            $livre = $connexion->recupLivre($_GET["list"]);
            echo json_encode($livre);
        }else{
            echo "NoReponse";
        }

?>

