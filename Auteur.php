<?php

    class Auteur implements JsonSerializable {
       private $nom;
       private $prenom;
       
       function __construct($_nom, $_prenom) {
           $this->nom = $_nom;
           $this->prenom = $_prenom;
       }

       public function jsonSerialize (){
        return [
            "nom" => $this->nom,
            "prenom" => $this->prenom
        ];
    }
    }

?>