<?php

require("Livre.php");

class Connexion{
    private $bdd;

    function __construct(){
        try {
            $this->bdd = new PDO('mysql:host=localhost; dbname=test; charset=utf8', "root", "root");
            $this->bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    function recupLivre() {
        $requete = $this->bdd->prepare('SELECT * FROM Livre');
        $requete->execute();
        
        $livres = array();

        while ($reponse = $requete->fetch()) {
            array_push($livres,  new Livre($reponse['isbn'], $reponse['titre'], $reponse['nom'], $reponse['prenom'], $reponse['editeur'], $reponse['format'], $reponse['section']) );
        }
        return $livres;
    }
}
