<!-- <form action="" method="get">
    <label for="isbn">ISBN :</label>
    <input type="text" name="isbn">
    <input type="submit" value="isbn">
</form> -->

<?php

    require('Connexion.php');

    if(isset($_GET["isbn"]) && $_GET["isbn"]!= ""){
        $connexion = new Connexion();
        $livre = $connexion->recupLivre($_GET["isbn"]);
        echo json_encode($livre);
    }else{
        echo "{result:noresponse}";
    }

?>

