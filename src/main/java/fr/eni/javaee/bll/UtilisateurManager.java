package fr.eni.javaee.bll;

import fr.eni.javaee.bo.Utilisateur;
import fr.eni.javaee.dal.DAOFactory;
import fr.eni.javaee.dal.UtilisateurDAO;

public class UtilisateurManager {
	private UtilisateurDAO utilisateurDAO;
	
	public UtilisateurManager() {
		this.utilisateurDAO = DAOFactory.getUtilisateurDAO();
	}
	
	public void ajouterUtilisateur(Utilisateur utilisateur) {
		
		this.utilisateurDAO.insert(utilisateur);
//		return utilisateur;
		
	}
	public Boolean checkMotDePasse(String motdepasse, String email) {
        //Récupérer le mot de passe enregistrer dans la table utilisateur
        Utilisateur utilisateur = returnUtilisateur(email);
        String utilisateurMdp = utilisateur.getMdp();
            if(utilisateurMdp.equals(motdepasse)) {
                return true;
            }else {
                return false;
            }
    }
	public Utilisateur returnUtilisateur(String email) {
        //apeler la methode findByEmail sur la class dao
                Utilisateur utilisateur = this.utilisateurDAO.findByEmail(email);
                return utilisateur;
    }
}
