<?php
    
    /**
     * Livre : Class des livre
     */
    class Livre implements JsonSerializable {
        private $isbn;
        private $titre;
        private $nom;
        private $prenom;
        private $editeur;
        private $format;
        private $section;
        private $categorie;
        
        /**
         * __construct
         *
         * @param  mixed $_isbn
         * @param  mixed $_titre
         * @param  mixed $_nom
         * @param  mixed $_prenom
         * @param  mixed $_editeur
         * @param  mixed $_format
         * @param  mixed $_section
         * @param  mixed $_categorie
         * @return void
         */
        function __construct($_isbn, $_titre, $_nom, $_prenom, $_editeur, $_format, $_section, $_categorie) {
            $this->isbn = $_isbn;
            $this->titre = $_titre;
            $this->nom = $_nom;
            $this->prenom = $_prenom;
            $this->editeur = $_editeur;
            $this->format = $_format;
            $this->section = $_section;
            $this->categorie = $_categorie;
        }
        
        /**
         * jsonSerialize
         *
         * @return void
         */
        public function jsonSerialize (){
            return [
                "isbn" => $this->isbn,
                "titre" => $this->titre,
                "nom" => $this->nom,
                "prenom" => $this->prenom,
                "editeur" => $this->editeur,
                "format" => $this->format,
                "section" => $this->section,
                "categorie" => $this->categorie
            ];
        }
    }

?>