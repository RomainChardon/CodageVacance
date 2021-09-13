<?php

require("Livre.php");

/**
 * Connexion : Connexion et communication avec la BDD
 */
class Connexion{
    private $bdd;
    
    /**
     * __construct
     *
     * @return void
     */
    function __construct(){
        try {
            $this->bdd = new PDO('mysql:host=localhost; dbname=pretLivre; charset=utf8', "root", "root");
            $this->bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }
    
    /**
     * recupISBN : Cherche l'isbn qui correspond a titre sélèctionné
     *
     * @param  mixed $te
     * @return void
     */
    function recupISBN($te) {
        $requete = $this->bdd->prepare('SELECT isbn FROM livre WHERE titre = "'.$te.'"');
        $requete->execute();

        while ($reponse = $requete->fetch()) {
            $isbn = $reponse['isbn'];
        }

        return $isbn;
    }
    
    /**
     * afficherExemplaire : Affiche tous les exemplaires qui correspond a l'isbn de recupISBN
     *
     * @param  mixed $isbn
     * @return void
     */
    function afficherExemplaire($isbn) {
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

    
    /**
     * titreLivre : Si le GET est = a recherche on met dans $toutLesTitres les titres qui possède la recherche personnalisé
     * Sinon on met tous les titres
     *
     * @param  mixed $titreRecherche
     * @return void
     */
    public function titreLivre($titreRecherche) {
        if($titreRecherche!= NULL) {
            $requete = $this->bdd->prepare('SELECT * FROM livre WHERE titre LIKE "%'.$titreRecherche.'%"');
            $requete->execute();
            
            $toutsLesTitres = array();

            while ($reponse = $requete->fetch()) {

                array_push($toutsLesTitres, new Livre($reponse['isbn'], $reponse['titre'], $reponse['nom'], $reponse['prenom'], $reponse['editeur'], $reponse['format'], $reponse['section'], $reponse['categorie']) );
            }
        } else {
            $requete = $this->bdd->prepare('SELECT * FROM livre');
            $requete->execute();
            
            $toutsLesTitres = array();

            while ($reponse = $requete->fetch()) {

                array_push($toutsLesTitres, new Livre($reponse['isbn'], $reponse['titre'], $reponse['nom'], $reponse['prenom'], $reponse['editeur'], $reponse['format'], $reponse['section'], $reponse['categorie']) );
            }
        }
        return $toutsLesTitres;
    }
}
