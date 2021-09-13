package com.example.pretdelivres;

public class Auteur {

    private String nomAuteur;
    private String prenomAuteur;

    public Auteur(String nomAuteur, String prenomAuteur) {
        this.nomAuteur = nomAuteur;
        this.prenomAuteur = prenomAuteur;
    }

    public String getNomAuteur() {
        return nomAuteur;
    }

    public String getPrenomAuteur() {
        return prenomAuteur;
    }
}
