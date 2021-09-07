<?php

    class Livre implements JsonSerializable {
        private $isbn;
        private $titre;
        private $nom;
        private $prenom;
        private $editeur;
        private $format;
        private $section;

        function __construct($_isbn, $_titre, $_nom, $_prenom, $_editeur, $_format, $_section) {
            $this->isbn = $_isbn;
            $this->titre = $_titre;
            $this->nom = $_nom;
            $this->prenom = $_prenom;
            $this->editeur = $_editeur;
            $this->format = $_format;
            $this->section = $_section;
        }

        public function jsonSerialize (){
            return [
                "isbn" => $this->isbn,
                "titre" => $this->titre,
                "nom" => $this->nom,
                "prenom" => $this->prenom,
                "editeur" => $this->editeur,
                "format" => $this->format,
                "section" => $this->section
            ];
        }
    }

?>