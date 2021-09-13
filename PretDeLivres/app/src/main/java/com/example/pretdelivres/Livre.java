package com.example.pretdelivres;

import java.util.ArrayList;

/**
 * Classe métier du Livre
 */
public class Livre {
    private String isbnLivre;
    private String titreLivre;
    private String editeur;
    private String format;
    private String categorie;
    private Auteur auteurLivre;
    private ArrayList<Exemplaire> exemplaireLivre;

    public Livre(String isbnLivre, String titreLivre, String editeur, String format, String categorie, Auteur auteurLivre, ArrayList<Exemplaire> exemplaireLivre) {
        this.isbnLivre = isbnLivre;
        this.titreLivre = titreLivre;
        this.editeur = editeur;
        this.format = format;
        this.categorie = categorie;
        this.auteurLivre = auteurLivre;
        this.exemplaireLivre = exemplaireLivre;
    }

    public Livre(String titreLivre) {
        this.titreLivre = titreLivre;
    }

    public String getTitreLivre() {
        return titreLivre;
    }

    public String getIsbnLivre() {
        return isbnLivre;
    }

    public String getEditeur() {
        return editeur;
    }

    public String getFormat() {
        return format;
    }

    public String getCategorie() {
        return categorie;
    }

    public Auteur getAuteurLivre() {
        return auteurLivre;
    }

    public ArrayList<Exemplaire> getExemplaireLivre() {
        return exemplaireLivre;
    }
}
