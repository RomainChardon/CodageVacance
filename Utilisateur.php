<?php

    class Utilisateur implements JsonSerializable {
        private $id;
        private $nom;
        private $prenom;

        function __construct($_id, $_nom, $_prenom) {
            $this->id = $_id;
            $this->nom = $_nom;
            $this->prenom = $_prenom;
        }

        public function jsonSerialize (){
            return [
                "id" => $this->id,
                "nom" => $this->nom,
                "prenom" => $this->prenom
            ];
        }
    }

?>