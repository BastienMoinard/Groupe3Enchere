<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/style.css">
<title>Formulaire De Connexion</title>
    </head>

    <body>
        <main id="main">
            <div class="titre_Principal">
                <h1> ENI - Enchères </h1>
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

            <div class="mon_fomulaire">
                <form id="form" name="formulaire" action="<%=request.getContextPath() %>/connexion" method="post">
                    <fieldset>
                        <div id="legend">
                            <legend>Vos information personnelles</legend>
                            <hr>
                        </div>
                        <div id="saisie">
                            <div class="form1">
                                <div class="form_label">
                                    <label for="nom"> email : </label>
                                </div>
                                <div class="form_id">
                                    <input class="saisie" type="text" name="email" placeholder="Votre email"
                                        autofocus="autofocus" /><br>
                                </div>
                            </div>
                            <div class="form2">
                                <div class="form_password">
                                    <label for="paswword"> Mot de passe : </label>
                                </div>
                                <div class="form_input">
                                    <input class="champ_saisie" type="password" name="motDePasse"
                                        placeholder="Votre mot de passe" /><br>
                                </div>
                            </div>
                        </div>
                        <div id="connexion">
                            <input class="btn1" type="submit" value=" Connexion" />
                        </div>
                        <div class="case">
                            <div class="souvenir">
                                <input id="souvenir" type="checkbox" name="souvenir" />
                                <label for="souvenir"> Se souvenir de moi </label>
                            </div>
                            <div class="mdp_oublie">
                                <a href="#">Mot de passe oublié</a>
                            </div>
                        </div>
                </form>
                <form action="<%=request.getContextPath() %>/FormulaireInscription">
                  <div id="compte">
                      <input class="btn2" type="submit"  value="Créer un compte" />
                  </div>
                </form>
              </fieldset>
            </div>
        </main>
    </body>
</html>