<?php

    class Exemplaire {
        private $id;
        private $idUtilisateur;
        private $status;

        function __construct($_id, $_idUtilisateur, $_status) {
            $this->id = $_id;
            $this->idUtilisateur = $_idUtilisateur;
            $this->status = $_status;
        }
    }

?>