<?php
    
    /**
     * Exemplaire : Class des exemplaire
     */
    class Exemplaire {
        private $id;
        private $idUtilisateur;
        private $status;
        
        /**
         * __construct
         *
         * @param  mixed $_id
         * @param  mixed $_idUtilisateur
         * @param  mixed $_status
         * @return void
         */
        function __construct($_id, $_idUtilisateur, $_status) {
            $this->id = $_id;
            $this->idUtilisateur = $_idUtilisateur;
            $this->status = $_status;
        }
    }

?>