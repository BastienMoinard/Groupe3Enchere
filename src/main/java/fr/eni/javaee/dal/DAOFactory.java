package fr.eni.javaee.dal;

public class DAOFactory {
	
	public static UtilisateurDAO getUtilisateurDAO() 
	{	
		return new UtilisateurDAOjdbc();		
	}
	
}
