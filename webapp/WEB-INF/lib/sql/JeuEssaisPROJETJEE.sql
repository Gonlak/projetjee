-- Insertion des catégories
INSERT INTO CATEGORIES (libelle) VALUES ('Informatique');
INSERT INTO CATEGORIES (libelle) VALUES ('Ameublement');
INSERT INTO CATEGORIES (libelle) VALUES ('Vêtement');
INSERT INTO CATEGORIES (libelle) VALUES ('Sport&Loisirs');

-- Insertion des utilisateurs
INSERT INTO UTILISATEURS (pseudo, nom, prenom, email, telephone, rue, code_postal, ville, mot_de_passe, credit, administrateur) VALUES ('johndoe', 'Doe', 'John', 'johndoe@example.com', '0606060606', '1 rue des Lilas', '75001', 'Paris', '$2a$12$mfypOTdig5AQl8xZqIn5xunYNlfVdWKHT.YG7pACUZWpuh5YUGufK', 1000, 0);
INSERT INTO UTILISATEURS (pseudo, nom, prenom, email, telephone, rue, code_postal, ville, mot_de_passe, credit, administrateur) VALUES ('janedoe', 'Doe', 'Jane', 'janedoe@example.com', '0707070707', '2 rue des Roses', '75002', 'Paris', '$2a$12$mfypOTdig5AQl8xZqIn5xunYNlfVdWKHT.YG7pACUZWpuh5YUGufK', 1200, 0);
INSERT INTO UTILISATEURS (pseudo, nom, prenom, email, telephone, rue, code_postal, ville, mot_de_passe, credit, administrateur) VALUES ('paulsmith', 'Smith', 'Paul', 'paulsmith@example.com', '0808080808', '3 rue des Tulipes', '75003', 'Paris', '$2a$12$mfypOTdig5AQl8xZqIn5xunYNlfVdWKHT.YG7pACUZWpuh5YUGufK', 900, 0);
INSERT INTO UTILISATEURS (pseudo, nom, prenom, email, telephone, rue, code_postal, ville, mot_de_passe, credit, administrateur) VALUES ('emilyjones', 'Jones', 'Emily', 'emilyjones@example.com', '0909090909', '4 rue des Orchidées', '75004', 'Paris', '$2a$12$mfypOTdig5AQl8xZqIn5xunYNlfVdWKHT.YG7pACUZWpuh5YUGufK', 1100, 0);
INSERT INTO UTILISATEURS (pseudo, nom, prenom, email, telephone, rue, code_postal, ville, mot_de_passe, credit, administrateur) VALUES ('admin', 'Ad', 'Mine', 'admin@example.com', '0123456789', '1 rue des Admin', '29000', 'Quimper', '$2a$12$mfypOTdig5AQl8xZqIn5xunYNlfVdWKHT.YG7pACUZWpuh5YUGufK', 1200, 1);


-- Insertion des articles vendus
-- Informatique
INSERT INTO ARTICLES_VENDUS (nom_article, description, date_debut_encheres, date_fin_encheres, prix_initial, prix_vente, no_utilisateur, no_categorie, etat_vente) VALUES ('Ordinateur portable', 'Ordinateur portable performant', '2023-05-01', '2023-05-10', 500, 700, 1, 1, 1);
INSERT INTO ARTICLES_VENDUS (nom_article, description, date_debut_encheres, date_fin_encheres, prix_initial, prix_vente, no_utilisateur, no_categorie, etat_vente) VALUES ('Souris sans fil', 'Souris sans fil confortable', '2023-05-01', '2023-05-08', 20, 30, 2, 1, 1);
INSERT INTO ARTICLES_VENDUS (nom_article, description, date_debut_encheres, date_fin_encheres, prix_initial, prix_vente, no_utilisateur, no_categorie, etat_vente) VALUES ('Clavier mécanique', 'Clavier mécanique RGB', '2023-05-01', '2023-05-09', 80, 100, 3, 1, 0);

-- Ameublement
INSERT INTO ARTICLES_VENDUS (nom_article, description, date_debut_encheres, date_fin_encheres, prix_initial, prix_vente, no_utilisateur, no_categorie, etat_vente) VALUES ('Canapé', 'Canapé d''angle convertible', '2023-05-01', '2023-05-10', 400, 550, 4, 2, 1);
INSERT INTO ARTICLES_VENDUS (nom_article, description, date_debut_encheres, date_fin_encheres, prix_initial, prix_vente, no_utilisateur, no_categorie, etat_vente) VALUES ('Table basse', 'Table basse en bois', '2023-05-01', '2023-05-08', 80, 110, 1, 2, 0);
INSERT INTO ARTICLES_VENDUS (nom_article, description, date_debut_encheres, date_fin_encheres, prix_initial, prix_vente, no_utilisateur, no_categorie, etat_vente) VALUES ('Chaise', 'Chaise design', '2023-05-01', '2023-05-09', 50, 70, 2, 2, 1);

-- Vêtement
INSERT INTO ARTICLES_VENDUS (nom_article, description, date_debut_encheres, date_fin_encheres, prix_initial, prix_vente, no_utilisateur, no_categorie, etat_vente) VALUES ('Manteau', 'Manteau d''hiver chaud', '2023-05-01', '2023-05-10', 80, 120, 3, 3, 1);
INSERT INTO ARTICLES_VENDUS (nom_article, description, date_debut_encheres, date_fin_encheres, prix_initial, prix_vente, no_utilisateur, no_categorie, etat_vente) VALUES ('Robe', 'Robe élégante', '2023-05-01', '2023-05-08', 40, 60, 4, 3, 1);
INSERT INTO ARTICLES_VENDUS (nom_article, description, date_debut_encheres, date_fin_encheres, prix_initial, prix_vente, no_utilisateur, no_categorie, etat_vente) VALUES ('Chemise', 'Chemise en coton', '2023-05-01', '2023-05-09', 30, 45, 1, 3, 0);

-- Sport & Loisirs
INSERT INTO ARTICLES_VENDUS (nom_article, description, date_debut_encheres, date_fin_encheres, prix_initial, prix_vente, no_utilisateur, no_categorie, etat_vente) VALUES ('Vélo', 'Vélo de course', '2023-05-01', '2023-05-10', 300, 400, 2, 4, 1);
INSERT INTO ARTICLES_VENDUS (nom_article, description, date_debut_encheres, date_fin_encheres, prix_initial, prix_vente, no_utilisateur, no_categorie, etat_vente) VALUES ('Tapis de yoga', 'Tapis de yoga épais', '2023-05-01', '2023-05-08', 20, 30, 3, 4, 1);
INSERT INTO ARTICLES_VENDUS (nom_article, description, date_debut_encheres, date_fin_encheres, prix_initial, prix_vente, no_utilisateur, no_categorie, etat_vente) VALUES ('Ballon de football', 'Ballon de football taille 5', '2023-05-01', '2023-05-09', 15, 20, 4, 4, 0);
INSERT INTO ARTICLES_VENDUS (nom_article, description, date_debut_encheres, date_fin_encheres, prix_initial, prix_vente, no_utilisateur, no_categorie, etat_vente) VALUES ('Ballon crever', 'Ballon de football', '2023-05-01', '2023-05-13', 123, 20, 4, 4, 2);


-- Insertion des enchères
-- Informatique
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (2, 1, '2023-05-02', 550);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (3, 1, '2023-05-03', 650);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (4, 1, '2023-05-05', 700);

INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (1, 2, '2023-05-04', 25);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (3, 2, '2023-05-05', 40);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (4, 2, '2023-05-07', 30);

INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (1, 3, '2023-05-06', 85);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (2, 3, '2023-05-08', 95);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (4, 3, '2023-05-09', 100);

-- Ameublement
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (1, 4, '2023-05-03', 180);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (2, 4, '2023-05-06', 220);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (3, 4, '2023-05-08', 400);

INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (4, 5, '2023-05-04', 300);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (3, 5, '2023-05-05', 350);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (2, 5, '2023-05-06', 400);

INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (4, 6, '2023-05-10', 120);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (3, 6, '2023-05-11', 135);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (1, 6, '2023-05-12', 140);

-- Vêtement
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (1, 7, '2023-05-03', 100);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (2, 7, '2023-05-05', 120);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (4, 7, '2023-05-08', 140);

INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (2, 8, '2023-05-04', 50);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (3, 8, '2023-05-06', 60);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (1, 8, '2023-05-10', 70);

INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (2, 9, '2023-05-02', 35);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (4, 9, '2023-05-03', 40);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (3, 9, '2023-05-09', 45);

-- Sport & Loisirs
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (1, 10, '2023-05-05', 350);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (4, 10, '2023-05-06', 400);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (3, 10, '2023-05-09', 450);

INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (2, 11, '2023-05-03', 25);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (4, 11, '2023-05-05', 35);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (1, 11, '2023-05-08', 50);

INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (3, 12, '2023-05-04', 90);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (1, 12, '2023-05-06', 120);
INSERT INTO ENCHERES (no_utilisateur, no_article, date_enchere, montant_enchere) VALUES (2, 12, '2023-05-10', 150);


-- Insertion des retraits
INSERT INTO RETRAITS (no_article, rue, code_postal, ville) VALUES (1, '1 rue des Lilas', '75001', 'Paris');
INSERT INTO RETRAITS (no_article, rue, code_postal, ville) VALUES (2, '2 rue des Roses', '75002', 'Paris');
INSERT INTO RETRAITS (no_article, rue, code_postal, ville) VALUES (3, '1 rue des Lilas', '75001', 'Paris');
INSERT INTO RETRAITS (no_article, rue, code_postal, ville) VALUES (4, '2 rue des Roses', '75002', 'Paris');
INSERT INTO RETRAITS (no_article, rue, code_postal, ville) VALUES (5, '1 rue des Lilas', '75001', 'Paris');
INSERT INTO RETRAITS (no_article, rue, code_postal, ville) VALUES (6, '2 rue des Roses', '75002', 'Paris');