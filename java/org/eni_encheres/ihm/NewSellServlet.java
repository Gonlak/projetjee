package org.eni_encheres.ihm;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.eni_encheres.bll.Article_VenduManager;
import org.eni_encheres.bll.CategorieManager;
import org.eni_encheres.bll.RetraitManager;
import org.eni_encheres.bll.SecurityService;
import org.eni_encheres.bll.exception.BLLException;
import org.eni_encheres.bo.Article_Vendu;
import org.eni_encheres.bo.Categorie;
import org.eni_encheres.bo.Retrait;
import org.eni_encheres.bo.Utilisateur;

import java.io.IOException;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import java.util.List;

import org.eni_encheres.bll.CategorieManager;
import org.eni_encheres.bo.Categorie;


@WebServlet("/nouvelle-vente")
public class NewSellServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Utilisateur utilisateurC = (Utilisateur) session.getAttribute("utilisateurC");
        request.setAttribute("utilisateurC", utilisateurC);

		List<Categorie> categories = CategorieManager.getInstance().getAllCategorie();
		request.setAttribute("categories", categories);
		request.getRequestDispatcher("/WEB-INF/jsp/pages/new_sell.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            Utilisateur utilisateurC = (Utilisateur) session.getAttribute("utilisateurC");

            if (request.getParameter("deco") != null) {
                session.setAttribute("utilisateurC", null);
                SecurityService.getInstance().cookieCDelete(response);
                response.sendRedirect(request.getContextPath());
                return;
            }

            String article = request.getParameter("article");
            String description = request.getParameter("description");
            int categoriePara = Integer.parseInt(request.getParameter("categorie"));
            String photo = request.getParameter("photo");
            int miseaprix = Integer.parseInt(request.getParameter("miseaprix"));
            String debutenchere = request.getParameter("debutenchere");
            if (debutenchere.isBlank()) {
                debutenchere = "2000-01-01";
            }
            String finenchere = request.getParameter("finenchere");
            if (finenchere.isBlank()) {
                finenchere = "2000-01-01";
            }
            String street = request.getParameter("street");
            String zipcode = request.getParameter("zipcode");
            String town = request.getParameter("town");

            Categorie categorie = CategorieManager.getInstance().getCategorie(categoriePara);

            Article_Vendu article_vendu = new Article_Vendu(article, description, LocalDate.parse(debutenchere), LocalDate.parse(finenchere), miseaprix, 0, 1, utilisateurC, categorie);
            Article_VenduManager.getInstance().addArticle(article_vendu);

            if (article_vendu.getNo_article() > 0) {
                Retrait retrait = new Retrait(article_vendu, street, zipcode, town);
                RetraitManager.getInstance().addRetrait(retrait);
            }

            response.sendRedirect(request.getContextPath());

        } catch (BLLException e) {
            request.setAttribute("erreurs", e.getErreurs());
            doGet(request, response);
        }
    }
}
