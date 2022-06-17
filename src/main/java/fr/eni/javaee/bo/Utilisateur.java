package fr.eni.javaee.bo;

public class Utilisateur {
	private String no_utilisateur;
	private String pseudo;
	private String prenom;
	private String nom;
	private String email;
	private String telephone;
	private String rue;
	private String codePostale;
	private String ville;
	private String mdp;
	private int credit;
	private boolean administrateur = false;
	
	
	public Utilisateur(String no_utilisateur, String pseudo, String prenom, String nom, String email, String telephone,
            String rue, String codePostale, String ville, String mdp, int credit, boolean administrateur) {
        super();
        this.no_utilisateur = no_utilisateur;
        this.pseudo = pseudo;
        this.prenom = prenom;
        this.nom = nom;
        this.email = email;
        this.telephone = telephone;
        this.rue = rue;
        this.codePostale = codePostale;
        this.ville = ville;
        this.mdp = mdp;
        this.credit = credit;
        this.administrateur = administrateur;
	}

	public Utilisateur(String pseudo, String prenom, String nom, String email, String telephone, String rue,
			String codePostale, String ville, String mdp, int credit, boolean administrateur) {
		super();
		this.pseudo = pseudo;
		this.prenom = prenom;
		this.nom = nom;
		this.email = email;
		this.telephone = telephone;
		this.rue = rue;
		this.codePostale = codePostale;
		this.ville = ville;
		this.mdp = mdp;
		this.credit = credit;
		this.administrateur = administrateur;
	}
	
	public String getNo_utilisateur() {
		return no_utilisateur;
	}
	
	public void setNo_utilisateur(String no_utilisateur) {
		this.no_utilisateur = no_utilisateur;
	}
	public String getPseudo() {
		return pseudo;
	}
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getRue() {
		return rue;
	}
	public void setRue(String rue) {
		this.rue = rue;
	}
	public String getCodePostale() {
		return codePostale;
	}
	public void setCodePostale(String codePostale) {
		this.codePostale = codePostale;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	public boolean isAdministrateur() {
		return administrateur;
	}
	public void setAdministrateur(boolean administrateur) {
		this.administrateur = administrateur;
	}
	
}
