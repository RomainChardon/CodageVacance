package com.example.pretdelivres;

public class Exemplaire {
    private String idExemplaire;
    private String statutExemplaire;

    public Exemplaire(String idExemplaire, String statutExemplaire) {
        this.idExemplaire = idExemplaire;
        this.statutExemplaire = statutExemplaire;
    }

    public String getIdExemplaire() {
        return idExemplaire;
    }

    public String getStatutExemplaire() {
        return statutExemplaire;
    }
}
