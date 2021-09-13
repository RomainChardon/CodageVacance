<?php
    
    /**
     * Utilisateur : Class utilisateur
     */
    class Utilisateur implements JsonSerializable {
        private $id;
        private $nom;
        private $prenom;
        
        /**
         * __construct
         *
         * @param  mixed $_id
         * @param  mixed $_nom
         * @param  mixed $_prenom
         * @return void
         */
        function __construct($_id, $_nom, $_prenom) {
            $this->id = $_id;
            $this->nom = $_nom;
            $this->prenom = $_prenom;
        }
        
        /**
         * jsonSerialize
         *
         * @return void
         */
        public function jsonSerialize (){
            return [
                "id" => $this->id,
                "nom" => $this->nom,
                "prenom" => $this->prenom
            ];
        }
    }

?>