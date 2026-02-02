package com.example.repo;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;

import com.example.model.Livre;

public class LivreRepository {
    private final List<Livre> livres = new ArrayList<>();
    private int nextId = 1;

public LivreRepository() {
        create("The Great Gatsby", "F. Scott Fitzgerald");
        create("To Kill a Mockingbird", "Harper Lee");
        create("1984", "George Orwell");
        create("The Catcher in the Rye", "J.D. Salinger");
    }

    public synchronized List<Livre> findAll() {
        livres.sort(Comparator.comparingInt(Livre::getId));
        return new ArrayList<>(livres);
    }

    public synchronized Optional<Livre> findById(int id) {
        return livres.stream().filter(l -> l.getId() == id).findFirst();
    }

    public synchronized Livre create(String titre, String auteur) {
        Livre l = new Livre(nextId++, titre, auteur);
        livres.add(l);
        return l;
    }

    public synchronized boolean update(int id, String titre, String auteur) {
        Optional<Livre> opt = findById(id);
        if (!opt.isPresent()) return false;
        Livre l = opt.get();
        l.setTitre(titre);
        l.setAuteur(auteur);
        return true;
    }

    public synchronized boolean delete(int id) {
        return livres.removeIf(l -> l.getId() == id);
    }
}
