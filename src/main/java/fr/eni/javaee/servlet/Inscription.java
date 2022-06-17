package fr.eni.javaee.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.eni.javaee.bll.UtilisateurManager;
import fr.eni.javaee.bo.Utilisateur;

/**
 * Servlet implementation class ServletInscription
 */
@WebServlet("/inscription")
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pseudo 		= request.getParameter("pseudo");
		String prenom 		= request.getParameter("prenom");
		String nom 			= request.getParameter("nom");
		String email 		= request.getParameter("email");
		String telephone 	= request.getParameter("telephone");
		String rue 			= request.getParameter("rue");
		String codePostale 	= request.getParameter("codePostale");
		String ville 		= request.getParameter("ville");
		String mdp 			= request.getParameter("mdp");
		int credit 			= 0;
		
		//creeUtilisateur(pseudo);
//		request.setAttribute("pseudo", pseudo);
//		request.setAttribute("prenom", prenom);
//		request.setAttribute("nom", nom);
//		request.setAttribute("email", email);
//		request.setAttribute("telephone", telephone);
//		request.setAttribute("rue", rue);
//		request.setAttribute("codePostale", codePostale);
//		request.setAttribute("ville", ville);
//		request.setAttribute("mdp", mdp);
//		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/teste.jsp");
//		rd.forward(request, response);
		Utilisateur utilisateur = new Utilisateur(pseudo, prenom, nom, email, telephone, rue, codePostale, ville, mdp, credit, false);
		UtilisateurManager utilisateurManager = new UtilisateurManager();
		utilisateurManager.ajouterUtilisateur(utilisateur);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/FormulaireConnexion.jsp");
		rd.forward(request, response);
		
	}

}
