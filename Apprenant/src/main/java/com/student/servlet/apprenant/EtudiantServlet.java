package com.student.servlet.apprenant;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

// Définition de la servlet EtudiantServlet pour gérer les informations des étudiants
public class EtudiantServlet extends HttpServlet {

    // Liste pour stocker les objets Contact représentant les étudiants
    private List<Contact> etudiant = new ArrayList<>();

    // Méthode pour gérer les requêtes GET
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Définit l'attribut "etudiant" avec la liste des étudiants pour la requête
        request.setAttribute("etudiant", etudiant);
        // Transfère la requête à la page contacts.jsp
        request.getRequestDispatcher("contacts.jsp").forward(request, response);
        
        // Récupère le paramètre 'action' de la requête
        String action = request.getParameter("action");
        
        // Si l'action est 'delete', appelle la méthode Supprimer
        if ("delete".equals(action)) {
            String nom = request.getParameter("nom");  // Récupère le paramètre 'nom'
            Supprimer(nom);  // Appelle la méthode Supprimer pour supprimer l'étudiant
        }
    }

    // Méthode pour gérer les requêtes POST
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Récupère les différents paramètres de la requête
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String tel = request.getParameter("tel");
        String competence = request.getParameter("competence");
        String email = request.getParameter("email");
        String adresse = request.getParameter("adresse");
        
        // Crée un nouvel objet Contact avec les paramètres récupérés
        Contact conte = new Contact(nom, prenom, tel, competence, email, adresse);
        
        // Ajoute le nouvel objet Contact à la liste des étudiants
        etudiant.add(conte);
        
        // Définit l'attribut "etudiant" avec la liste des étudiants pour la requête
        request.setAttribute("etudiant", etudiant);
        // Transfère la requête à la page contacts.jsp
        request.getRequestDispatcher("contacts.jsp").forward(request, response);
    }

    // Méthode pour fournir une description courte de la servlet
    @Override
    public String getServletInfo() {
        return "Short description";
    }

    // Méthode privée pour supprimer un étudiant de la liste par son nom
    private void Supprimer(String nom) {
        // Itère sur la liste des étudiants
        for (int i = 0; i < etudiant.size(); i++) {
            // Si le nom de l'étudiant correspond au nom fourni, supprime l'étudiant de la liste
            if (etudiant.get(i).getNom().equals(nom)) {
                etudiant.remove(i);
                break;  // Sort de la boucle après avoir supprimé l'étudiant
            }
        }
    }
}
