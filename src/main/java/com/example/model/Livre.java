package com.example.model;

import java.io.Serializable;

public class Livre implements Serializable {
    private int id;
    private String titre;
    private String auteur;
    private String imagePath; // Optional field for book cover image
    private static final long serialVersionUID = 1L;


    public Livre() {}

    public Livre(int id, String titre, String auteur) {
        this.id = id;
        this.titre = titre;
        this.auteur = auteur;
        this.imagePath = getDefaultImage(titre); // Auto-assign default image
    }

    public Livre(int id, String titre, String auteur, String imagePath) {
        this.id = id;
        this.titre = titre;
        this.auteur = auteur;
        this.imagePath = imagePath != null && !imagePath.isEmpty() ? imagePath : getDefaultImage(titre);
    }

    // Generate default image based on title
    private static String getDefaultImage(String titre) {
        if (titre == null) return "/images/default-book.jpg";
        titre = titre.toLowerCase();
        if (titre.contains("gatsby")) return "/images/gatsby.jpg";
        if (titre.contains("mockingbird")) return "/images/mockingbird.jpg";
        if (titre.contains("1984")) return "/images/1984.jpg";
        if (titre.contains("catcher")) return "/images/catcher.jpg";
        return "/images/default-book.jpg";
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getTitre() { return titre; }
    public void setTitre(String titre) { this.titre = titre; }

    public String getAuteur() { return auteur; }
    public void setAuteur(String auteur) { this.auteur = auteur; }

    public String getImagePath() { 
        return imagePath != null && !imagePath.isEmpty() ? imagePath : getDefaultImage(titre);
    }
    public void setImagePath(String imagePath) { 
        this.imagePath = imagePath != null && !imagePath.isEmpty() ? imagePath : getDefaultImage(titre);
    }
}
