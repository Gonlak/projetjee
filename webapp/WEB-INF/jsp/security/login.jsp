<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/styles.css">
<title>Se Connecter</title>
</head>
<body>

	<div class="container-fluid">
		<div class="container">
        <header class="row mt-6">
            <nav class="navbar bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand">ENI-Enchères</a>
                </div>
            </nav>
        </header>
	<!-- formulaire de connexion -->
        <main class="col-10 offset-2">
            <form action="" method="post">
                <div class="row row-form">
                    <div class="col-5">
                        <label for="username">Identifiant :</label>
                    </div>
                    <div class="col-5">
                        <input type="text" name="username" id="username" placeholder="Ninejea">
                    </div> 
                </div>
                <div class="row row-form">
                    <div class="col-5">
                        <label for="username">Mot de passe :</label>
                    </div>
                    <div class="col-5">
                        <input type="text" name="password" id="password">
                    </div>
                </div>
                <div class="row row-form">
                    <div class="col-5">
                        <button type="button" class="btn btn-success">Connexion</button>
                    </div>
                    <div class="col-5">
                        <div class="row">
                            <div class="col-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"> 
                                </div>
                            </div>
                            <div class="col-3">
                                <label class="form-check-label" for="flexCheckDefault">
                                   Se souvenir de moi
                                </label>
                                <a href="#">Mot de passe oublié</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row-form">
                    <button type="button" class="btn btn-success">Créer un compte</button>
                </div>

            </form>
        </main>

    </div>

	</div>

</body>
</html>