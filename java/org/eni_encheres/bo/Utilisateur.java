package org.eni_encheres.bo;

import java.util.List;

public class Utilisateur {

    //attributs
    private int no_user;
    private String username;
    private String lastname;
    private String firstname;
    private String email;
    private String phone_number;
    private String street;
    private String zip_code;
    private String town;
    private String password;
    private int credit;
    private Boolean administrator;
    private List<Article_Vendu> articles;
    private List<Enchere> encheres;


    //constructeurs
    public Utilisateur() {
    }

    public Utilisateur(int no_user, String username, String lastname, String firstname, String email,
                       String phone_number, String street, String zip_code, String town, String password, int credit,
                       Boolean administrator, List<Article_Vendu> articles,List<Enchere> encheres) {
        this.no_user = no_user;
        this.username = username;
        this.lastname = lastname;
        this.firstname = firstname;
        this.email = email;
        this.phone_number = phone_number;
        this.street = street;
        this.zip_code = zip_code;
        this.town = town;
        this.password = password;
        this.credit = credit;
        this.administrator = administrator;
        this.articles = articles;
        this.encheres = encheres;
    }

    public Utilisateur(int no_user, String username, String lastname, String firstname, String email,
                       String phone_number, String street, String zip_code, String town, String password, int credit,
                       Boolean administrator, List<Article_Vendu> articles) {
        this.no_user = no_user;
        this.username = username;
        this.lastname = lastname;
        this.firstname = firstname;
        this.email = email;
        this.phone_number = phone_number;
        this.street = street;
        this.zip_code = zip_code;
        this.town = town;
        this.password = password;
        this.credit = credit;
        this.administrator = administrator;
        this.articles = articles;
    }

    public Utilisateur(String username, String lastname, String firstname, String email, String phone_number,
                       String street, String zip_code, String town, String password, int credit, Boolean administrator,
                       List<Article_Vendu> articles,List<Enchere> encheres) {
        super();
        this.username = username;
        this.lastname = lastname;
        this.firstname = firstname;
        this.email = email;
        this.phone_number = phone_number;
        this.street = street;
        this.zip_code = zip_code;
        this.town = town;
        this.password = password;
        this.credit = credit;
        this.administrator = administrator;
        this.articles = articles;
        this.encheres = encheres;
    }

    public Utilisateur(String username, String lastname, String firstname, String email,
                       String phone_number, String street, String zip_code, String town, String password, int credit,
                       Boolean administrator) {
        this.username = username;
        this.lastname = lastname;
        this.firstname = firstname;
        this.email = email;
        this.phone_number = phone_number;
        this.street = street;
        this.zip_code = zip_code;
        this.town = town;
        this.password = password;
        this.credit = credit;
        this.administrator = administrator;
    }

    public Utilisateur(int no_user, String username, String lastname, String firstname, String email,
                       String phone_number, String street, String zip_code, String town, String password, int credit,
                       Boolean administrator) {
        this.no_user = no_user;
        this.username = username;
        this.lastname = lastname;
        this.firstname = firstname;
        this.email = email;
        this.phone_number = phone_number;
        this.street = street;
        this.zip_code = zip_code;
        this.town = town;
        this.password = password;
        this.credit = credit;
        this.administrator = administrator;
    }

    public Utilisateur(String username, String password) {
        this.username = username;
        this.password = password;
    }
  
	public Utilisateur(String username, String street, String zip_code, String town, int credit) {
		super();
		this.username = username;
		this.street = street;
		this.zip_code = zip_code;
		this.town = town;
		this.credit = credit;
	}
	

	public Utilisateur(int no_user, String username) {
		this.no_user = no_user;
		this.username = username;
	}

	
	public Utilisateur(String username, List<Article_Vendu> articles) {
		super();
		this.username = username;
		this.articles = articles;
	}

	//getters et setters
    public int getNo_user() {
        return no_user;
    }

    public void setNo_user(int no_user) {
        this.no_user = no_user;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phone_number;
    }

    public void setPhoneNumber(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getZipCode() {
        return zip_code;
    }

    public void setZipCode(String zip_code) {
        this.zip_code = zip_code;
    }

    public String getTown() {
        return town;
    }

    public void setVille(String town) {
        this.town = town;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }

    public Boolean getAdministrator() {
        return administrator;
    }

    public void setAdministrator(Boolean administrator) {
        this.administrator = administrator;
    }

    public List<Article_Vendu> getArticles() {
        return articles;
    }

    public void setArticles(List<Article_Vendu> articles) {
        this.articles = articles;
    }

	public List<Enchere> getEncheres() {
		return encheres;
	}

	public void setEncheres(List<Enchere> encheres) {
		this.encheres = encheres;
	}


}
