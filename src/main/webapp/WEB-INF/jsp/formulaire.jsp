<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet">
<title>Formulaire</title>
</head>

    <body>
        <main>
            <!-- titre principal-->
            <div class="titre_Principal">
                <h1>ENI - Enchères</h1>
            </div>
            <!-- Mode sombre-->
            <div>
                <button class="dark" onclick="darkMode()">mode sombre</button>
            </div>
            <script>
                function darkMode() {
                    var element = document.body;
                    element.classList.toggle("dark-mode");
                }
            </script>
            <div class="mon_formulaire">
                <!-- Début du formulaire-->
                <form method="POST" action="<%=request.getContextPath()%>/inscription">
                    <div>
                        <fieldset>
                            <!-- Titre du formulaire -->
                            <div id="legend">
                                <legend>Mon profil</legend>
                                <hr>
                            </div>
                            <!--Première partie du formulaire -->

                            <!--premier champs PSEUDO-->
                            <div>
                                <div class="form_label">
                                    <label for="pseudo"> Pseudo : </label>
                                </div>
                                <div class="champ">
                                    <input class="form_saisie" type="text" name="pseudo" placeholder="Votre pseudo"
                                        autofocus="autofocus" /><br>
                                </div>
                            </div>
                            <!--Premier champs NOM-->
                            <div>
                                <div class="form_label">
                                    <label for="nom"> Nom : </label>
                                </div>
                                <div class="champ">
                                    <input class="form_saisie" type="text" name="nom" placeholder="Votre nom"
                                        autofocus="autofocus" /><br>
                                </div>
                            </div>
                            <!-- Deuxième champs PRENOM-->
                            <div>
                                <div class="form_label">
                                    <label for="Prenom"> Prenom : </label>
                                </div>
                                <div class="champ">
                                    <input class="form_saisie" type="text" name="prenom" placeholder="Votre prenom"
                                        autofocus="autofocus" /><br>
                                </div>
                            </div>
                            <!--Deuxième champs Email-->
                            <div>
                                <div class="form_label">
                                    <label for="email">Votre Email : </label>
                                </div>
                                <div class="champ">
                                    <input class="form_saisie" type="text" name="email"
                                        placeholder="Votre Email" /><br>
                                </div>
                            </div>
                            <!-- Troisième champs TELEPHONE-->
                            <div>
                                <div class="form_label">
                                    <label for="telephone">Téléphone : </label>
                                </div>
                                <div class="champ">
                                    <input class="form_saisie" type="text" name="telephone"
                                        placeholder="Votre téléphone : " /><br>
                                </div>
                            </div>
                            <!--Troisième champs Rue-->
                            <div>
                                <div class="form_label">
                                    <label for="rue"> Rue : </label>
                                </div>
                                <div class="champ">
                                    <input class="form_saisie" type="text" name="rue" placeholder="Votre rue"
                                        autofocus="autofocus" /><br>
                                </div>
                            </div>
                            <!-- Quatrième champs Code postal-->
                            <div>
                                <div class="form_label">
                                    <label for="codePostale"> Code postal : </label>
                                </div>
                                <div class="champ">
                                    <input class="form_saisie" type="text" name="codePostale" placeholder="Votre code postal"
                                        autofocus="autofocus" /><br>
                                </div>
                            </div>
                            <!--Quatrième champs Ville-->
                            <div>
                                <div class="form_label">
                                    <label for="ville"> Ville : </label>
                                </div>
                                <div class="champ">
                                    <input class="form_saisie" type="text" name="ville" placeholder="Votre ville"
                                        autofocus="autofocus" /><br>
                                </div>
                            </div>
                            <!-- Cinquième champs Mot de passe-->
                            <div>
                                <div class="form_label">
                                    <label for="mdp"> Mot de passe : </label>
                                </div>
                                <div class="champ">
                                    <input class="form_saisie" type="password" name="mdp"
                                        placeholder="Votre mot de passe" /><br>
                                </div>
                            </div>


                            <!--Cinquième champs confirmation mot de passe-->
                            <div>
                                <div class="form_label">
                                    <label for="password">Répéter le mot de passe : </label>
                                </div>
                                <div class="champ">
                                    <input class="form_saisie" type="confirmation" name="répéter mot de passe"
                                        placeholder="Répéter le mot mot de passe" /><br>
                                </div>
                            </div>

                            <!-- div bouttons-->
                            <div class="btn">
                                <!--Premier boutton-->
                                <div>
                                    <div id="creer">
                                        <input class="btn_creer" type="submit" value="Envoyer" />
                                    </div>
                                </div>
                                <!--Deuxième boutton-->
                                <div>
                                    <div id="annuler">
                                        <input class="btn_annuler" type="submit" value=" Annuler" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </form>
            </div>
        </main>
    </body>

</html>