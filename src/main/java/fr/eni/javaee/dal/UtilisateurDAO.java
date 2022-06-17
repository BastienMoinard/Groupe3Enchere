package fr.eni.javaee.dal;

import fr.eni.javaee.bo.Utilisateur;

public interface UtilisateurDAO {
	
	public void insert (Utilisateur utilisateur);
	
	public Utilisateur findByEmail (String email );

}
