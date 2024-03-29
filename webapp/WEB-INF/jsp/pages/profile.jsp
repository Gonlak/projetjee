<%@ page import="org.eni_encheres.bo.Utilisateur"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
/*  Utilisateur utilisateurC = (Utilisateur) request.getAttribute("utilisateurC"); */
Utilisateur utilisateur = (Utilisateur) request.getAttribute("utilisateur");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/css/styles.css">
<title>Profil utilisateur</title>
</head>
<body>
	<header class="container-fluid row">
		<%@ include file="/WEB-INF/jsp/parts/header.jsp"%>
	</header>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 text-center">
				<h1>Mon profil</h1>
			</div>
		</div>
		<main>
			<!-- Section Affichage profil -->
			<div class="row mt-3">
				<div class="float-start col"></div>
				<div class="float-none col-2">
					<div class="row col-sm">
						<div class="col">
							<p>Pseudo :</p>
						</div>
						<div class="col">
							<p><%=utilisateur.getUsername()%>
							</p>
						</div>
					</div>
					<div class="row col-sm">
						<div class="col">
							<p>Nom :</p>
						</div>
						<div class="col">
							<p><%=utilisateur.getLastname()%>
							</p>
						</div>
					</div>
					<div class="row col-sm">

						<div class="col">
							<p>Prénom :</p>
						</div>
						<div class="col">
							<p><%=utilisateur.getFirstname()%>
							</p>
						</div>

					</div>
					<div class="row col-sm">

						<div class="col">
							<p>Email :</p>
						</div>
						<div class="col">
							<p><%=utilisateur.getEmail()%>
							</p>
						</div>

					</div>
					<div class="row col-sm">

						<div class="col">
							<p>Téléphone :</p>
						</div>
						<div class="col">
							<p><%=utilisateur.getPhoneNumber()%>
							</p>
						</div>

					</div>
					<div class="row col-sm">

						<div class="col">
							<p>Rue :</p>
						</div>
						<div class="col">
							<p><%=utilisateur.getStreet()%>
							</p>
						</div>

					</div>
					<div class="row col-sm">

						<div class="col">
							<p>Code Postal :</p>
						</div>
						<div class="col">
							<p><%=utilisateur.getZipCode()%>
							</p>
						</div>

					</div>
					<div class="row col-sm">

						<div class="col">
							<p>Ville :</p>
						</div>
						<div class="col">
							<p><%=utilisateur.getTown()%>
							</p>
						</div>

					</div>

					<%
					if (utilisateurC != null && utilisateurC.getUsername().equals(utilisateur.getUsername())) {
					%>
					<div class="text-center">
						<a class="btn btn-success"
							href="<%=request.getContextPath()%>/modification">Modifier</a>
					</div>
					<%
					}
					%>

				</div>
				<div class="float-end col"></div>
			</div>

		</main>
	</div>
</body>
</html>