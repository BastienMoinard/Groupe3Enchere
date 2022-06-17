package fr.eni.javaee.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import fr.eni.javaee.bo.Utilisateur;

public class UtilisateurDAOjdbc implements UtilisateurDAO {
	private static final String INSERT="INSERT INTO UTILISATEURS(pseudo, nom, prenom, email, telephone, rue, code_postal, ville, mot_de_passe, credit, administrateur) VALUES(?,?,?,?,?,?,?,?,?,?,?);";
	private static final String SELECTBYEMAIL="SELECT * FROM UTILISATEURS WHERE email = ? ;";
	
	@Override
	public void insert(Utilisateur utilisateur) {
		// TODO Auto-generated method stub
		try {
			Connection cnx = ConnectionProvider.getConnection();
			PreparedStatement pstmt = cnx.prepareStatement(INSERT, PreparedStatement.RETURN_GENERATED_KEYS);
			pstmt.setString(1, utilisateur.getPseudo());
			pstmt.setString(2, utilisateur.getNom());
			pstmt.setString(3, utilisateur.getPrenom());
			pstmt.setString(4, utilisateur.getEmail());
			pstmt.setString(5, utilisateur.getTelephone());
			pstmt.setString(6, utilisateur.getRue());
			pstmt.setString(7, utilisateur.getCodePostale());
			pstmt.setString(8, utilisateur.getVille());
			pstmt.setString(9, utilisateur.getMdp());
			pstmt.setInt(10, utilisateur.getCredit());
			pstmt.setBoolean(11, false);
			pstmt.executeUpdate();
			ResultSet rs = pstmt.getGeneratedKeys();
			if(rs.next())
			{
				utilisateur.setNo_utilisateur(rs.getString(1));
			}
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
    public Utilisateur findByEmail(String email) {
        Utilisateur utilisateur = null;
        // TODO Auto-generated method stub
        try {
            Connection cnx = ConnectionProvider.getConnection();
            PreparedStatement pstmt = cnx.prepareStatement(SELECTBYEMAIL);
            pstmt.setString(1, email);
            System.out.println(email);
            System.out.println(SELECTBYEMAIL);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()) {
            	String no_utilisateur        = rs.getString("no_utilisateur");
            	String pseudo                = rs.getString("pseudo");
            	String nom                   = rs.getString("nom");
            	String prenom                = rs.getString("prenom");
            	String email_utilisateur     = rs.getString("email");
            	String telephone             = rs.getString("telephone");
            	String rue                   = rs.getString("rue");
            	String code_postal          = rs.getString("code_postal");
            	String ville                 = rs.getString("ville");
            	String mot_de_passe          = rs.getString("mot_de_passe");
            	String credit                = rs.getString("credit");
            	String administrateur        = rs.getString("administrateur");
            	utilisateur = new Utilisateur(no_utilisateur, pseudo, nom, prenom, email_utilisateur, telephone, rue, code_postal, ville, mot_de_passe, Integer.parseInt(credit), Boolean.parseBoolean(administrateur));            	
            	System.out.print(utilisateur);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return utilisateur;
    }

}
