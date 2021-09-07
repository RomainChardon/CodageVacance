<?php

require("Livre.php");

class Connexion{
    private $bdd;

    function __construct(){
        try {
            $this->bdd = new PDO('mysql:host=localhost; dbname=pretLivre; charset=utf8', "root", "root");
            $this->bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    function recupLivre($te) {
        $req = $this->bdd->prepare('SELECT isbn FROM livre WHERE titre = "'.$te.'"');
        $req->execute();

        while ($rep = $req->fetch()) {
            $isbn = $rep['isbn'];
        }

        $requete = $this->bdd->prepare('SELECT * FROM livre INNER JOIN exemplaire 
        ON livre.isbn= exemplaire.isbn 
        WHERE statut= "disponible"
        AND livre.isbn = ?
        ORDER BY titre');
        $requete->bindParam(1, $isbn);
        $requete->execute();
        
        $livres = array();
        while ($reponse = $requete->fetch()) {
            array_push($livres,  new Livre($reponse['isbn'], $reponse['titre'], $reponse['nom'], $reponse['prenom'], $reponse['editeur'], $reponse['format'], $reponse['section'], $reponse['categorie']) );
        }
        return $livres;
    }



    public function titreLivre() {
        $requete = $this->bdd->prepare('SELECT titre FROM livre');
        $requete->execute();
        
        $toutsLesTitres = array();

        while ($reponse = $requete->fetch()) {

            array_push($toutsLesTitres, $reponse['titre']);
        }
        
        return $toutsLesTitres;
    }
}
