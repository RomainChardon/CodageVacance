<!-- <form action="" method="get">
    <label for="isbn">ISBN :</label>
    <input type="text" name="isbn">
    <input type="submit" value="isbn">
</form> -->

<?php

    require('Connexion.php');

        $connexion = new Connexion();
        $livre = $connexion->recupLivre();
        echo json_encode($livre);

?>

