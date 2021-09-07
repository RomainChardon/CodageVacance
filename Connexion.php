<?php

require("Livre.php");
require("Auteur.php");

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

    function recupLivre($isbn) {
        $requete = $this->bdd->prepare('SELECT * FROM livre WHERE isbn=:isbn');
        $requete->bindParam(':isbn', $isbn);
        $requete->execute();

        $livres = array();

        while ($reponse = $requete->fetch()) {
            $auteur = new Auteur($reponse['nom'], $reponse['prenom']);
            array_push($livres, new Livre($reponse['isbn'], $reponse['titre'], $auteur, $reponse['editeur'], $reponse['format'], $reponse['section']));
        }
        return $livres;
    }
}
