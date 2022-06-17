package fr.eni.javaee.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.eni.javaee.bll.UtilisateurManager;
import fr.eni.javaee.bo.Utilisateur;

/**
 * Servlet implementation class connexion
 */
@WebServlet("/connexion")
public class connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String motdepasse 	= request.getParameter("motDePasse");
		String email 		= request.getParameter("email");
		
		UtilisateurManager utilisateurManager = new UtilisateurManager();
		Boolean motDePasseTrue = utilisateurManager.checkMotDePasse(motdepasse, email);
		if(motDePasseTrue) {
			HttpSession session = request.getSession();
			Utilisateur utilisateur = utilisateurManager.returnUtilisateur(email);
			session.setAttribute("utilisateur", utilisateur);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp/Acceuil.jsp");
			rd.forward(request, response);
		}
	}

}
