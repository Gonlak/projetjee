package org.eni_encheres.bll;


import at.favre.lib.crypto.bcrypt.BCrypt;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.eni_encheres.bll.exception.BLLException;
import org.eni_encheres.bo.Utilisateur;
import org.eni_encheres.dal.DAOFactory;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class SecurityService {
    @Getter
    private static SecurityService instance = new SecurityService();// lazy singleton


    public static SecurityService getInstance() {
        return instance;
    }

    public void addUser(Utilisateur utilisateur) throws BLLException {
        checkAddUtilisateur(utilisateur);
        utilisateur.setPassword(BCrypt.withDefaults().hashToString(12, utilisateur.getPassword().toCharArray()));
        DAOFactory.getUtilisateurDAO().insert(utilisateur);
    }


    public Utilisateur login(String pseudo, String password) throws BLLException {
        checkUtilisateur(pseudo, password);
        Utilisateur utilisateur = DAOFactory.getUtilisateurDAO().selectByUsername(pseudo);
        if(utilisateur == null){
            throw new BLLException("Utilisateur non trouvé!");
        }
        BCrypt.Result result = BCrypt.verifyer().verify(password.toCharArray(), utilisateur.getPassword());
        if(!result.verified){
            throw new BLLException("Le mot de passe est eronné");
        }
        return utilisateur;
    }

    private void checkAddUtilisateur(Utilisateur utilisateur) throws BLLException {
        BLLException bll = new BLLException("Utilisateur non trouvé!");
        checkFiled(utilisateur.getUsername(),"Pseudo",bll);
        checkFiled(utilisateur.getLastname(),"Nom",bll);
        checkFiled(utilisateur.getFirstname(),"Prénom",bll);
        checkFiled(utilisateur.getEmail(),"Email",bll);
        checkFiled(utilisateur.getPhoneNumber(),"Téléphone",bll);
        checkFiled(utilisateur.getStreet(),"Ville",bll);
        checkFiled(utilisateur.getZipCode(),"Code Postale",bll);
        checkFiled(utilisateur.getTown(),"Rue",bll);
        checkFiled(utilisateur.getPassword(),"Mot de passe",bll);
        if (bll.getErreurs().size()>0){
            throw bll;
        }
    }
    private void checkUtilisateur(String pseudo, String password) throws BLLException {
        BLLException bll = new BLLException("Utilisateur non trouvé!");
        checkFiled(pseudo,"Pseudo",bll);
        checkFiled(password,"Mot de passe",bll);
        if (bll.getErreurs().size()>0){
            System.out.println("cc");
            throw bll;
        }
    }
    private void checkFiled(String field, String name, BLLException bll) {
        if(field.isBlank()){
            bll.ajouterErreur("Le champs "+ name +" ne peut pas etre vide!");
        }
    }
}
