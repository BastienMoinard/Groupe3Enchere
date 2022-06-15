package fr.eni.javaee.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import fr.eni.javaee.bo.Utilisateur;

public class UtilisateurDAOjdbc implements UtilisateurDAO {
	private static final String INSERT="INSERT INTO UTILISATEURS(pseudo, nom, prenom, email, telephone, rue, code_postal, ville, mot_de_passe, credit, administrateur) VALUES(?,?,?,?,?,?,?,?,?,?,?);";

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

}
