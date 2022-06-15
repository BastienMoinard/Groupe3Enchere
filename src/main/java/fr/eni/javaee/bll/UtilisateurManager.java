package fr.eni.javaee.bll;

import fr.eni.javaee.bo.Utilisateur;
import fr.eni.javaee.dal.DAOFactory;
import fr.eni.javaee.dal.UtilisateurDAO;

public class UtilisateurManager {
	private UtilisateurDAO utilisateurDAO;
	
	public UtilisateurManager() {
		this.utilisateurDAO = DAOFactory.getUtilisateurDAO();
	}
	
	public Utilisateur ajouterUtilisateur(Utilisateur utilisateur) {
		
		this.utilisateurDAO.insert(utilisateur);
		return utilisateur;
		
	}
}
