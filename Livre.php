<?php

    class Livre implements JsonSerializable {
        private $isbn;
        private $titre;
        private $auteur;
        private $editeur;
        private $format;
        private $section;

        function __construct($_isbn, $_titre, $_auteur, $_editeur, $_format, $_section) {
            $this->isbn = $_isbn;
            $this->titre = $_titre;
            $this->auteur = $_auteur;
            $this->editeur = $_editeur;
            $this->format = $_format;
            $this->section = $_section;
        }

        public function jsonSerialize (){
            return [
                "isbn" => $this->isbn,
                "titre" => $this->titre,
                "auteur" => $this->auteur,
                "editeur" => $this->editeur,
                "format" => $this->format,
                "section" => $this->section
            ];
        }
    }

?>