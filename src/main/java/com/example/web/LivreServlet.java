package com.example.web;

import com.example.model.Livre;
import com.example.repo.LivreRepository;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/livres")
public class LivreServlet extends HttpServlet {

    private static final String REPO_KEY = "LIVRE_REPO";

    private static final long serialVersionUID = 1L;

    private LivreRepository repo(HttpServletRequest request) {
        ServletContext ctx = request.getServletContext();
        synchronized (ctx) {
            LivreRepository r = (LivreRepository) ctx.getAttribute(REPO_KEY);
            if (r == null) {
                r = new LivreRepository();
                ctx.setAttribute(REPO_KEY, r);
            }
            return r;
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) action = "list";

        switch (action) {
            case "new":
                showForm(request, response, null);
                break;
            case "edit":
                showEdit(request, response);
                break;
            default:
                showList(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) action = "";

        switch (action) {
            case "create":
                create(request, response);
                break;
            case "update":
                update(request, response);
                break;
            case "delete":
                delete(request, response);
                break;
            default:
                response.sendRedirect(request.getContextPath() + "/livres");
                break;
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("livres", repo(request).findAll());
        request.getRequestDispatcher("/WEB-INF/views/livres.jsp").forward(request, response);
    }

    private void showForm(HttpServletRequest request, HttpServletResponse response, Livre livre)
            throws ServletException, IOException {
        request.setAttribute("livre", livre);
        request.getRequestDispatcher("/WEB-INF/views/livre-form.jsp").forward(request, response);
    }

    private void showEdit(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = parseInt(request.getParameter("id"));
        Livre livre = repo(request).findById(id).orElse(null);
        if (livre == null) {
            request.setAttribute("errorMessage", "Livre introuvable (id=" + id + ")");
            request.getRequestDispatcher("/WEB-INF/views/error.jsp").forward(request, response);
            return;
        }
        showForm(request, response, livre);
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String titre = request.getParameter("titre");
        String auteur = request.getParameter("auteur");
        repo(request).create(titre, auteur);
        response.sendRedirect(request.getContextPath() + "/livres");
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = parseInt(request.getParameter("id"));
        String titre = request.getParameter("titre");
        String auteur = request.getParameter("auteur");
        repo(request).update(id, titre, auteur);
        response.sendRedirect(request.getContextPath() + "/livres");
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = parseInt(request.getParameter("id"));
        repo(request).delete(id);
        response.sendRedirect(request.getContextPath() + "/livres");
    }

    private int parseInt(String s) {
        try { return Integer.parseInt(s); }
        catch (Exception e) { return -1; }
    }
}
