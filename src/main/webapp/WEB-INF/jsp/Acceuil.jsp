<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath() %>/style.css" rel="stylesheet">
<title>Acceuil</title>
    </head>
    <body>
    
        <header>
            <!--Nav bar-->
            <div class="navbar">
                <!-- titre principal-->
                <div class="titre_Principal">
                    <h1>ENI - Enchères</h1>
                </div>
                <div class="boutton_nav">
                    <a class="nav" href="./enchere1.html" alt="connexion">Enchère</a>
                    <a class="nav" href="./enchere.html" alt="connexion">Vendre un article</a>
                    <a class="nav" href="./formulaire.html" alt="connexion">Mon profil</a>
                    <a class="nav" href="./connexion.html" alt="connexion">Déconnexion</a>
                    <button class="dark" onclick="darkMode()">mode sombre</button>
                </div>
            </div>
        </header>
        <main>
            <!-- Mode sombre-->
            <script>
                function darkMode() {
                    var element = document.body;
                    element.classList.toggle("dark-mode");
                }
            </script>
            <div class="mon_formulaire">
                <!-- Début du formulaire-->
                <form>
                    <div>
                        <fieldset>
                            <!-- Titre du formulaire -->
                            <div id="legend">
                                <legend>Mon profil</legend>
                                <hr>
                            </div>
                            <!-- Champ de recherche-->
                            <div class="categorie">
                                <div class="label_cat">
                                    <label for="site-search">Filtres :</label>
                                </div>
                                <div class="input_cat">
                                    <input type="search" id="site-recherche" placeholder="Le nom de l'article contient">
                                </div>
                            </div>
                            <!-- Liste déroulante-->
                            <div class="categorie">
                                <div class="label_cat">
                                    <label for="pet-select">Categorie :</label>
                                </div>
                                <div class="input_cat">
                                    <select name="cat" id="cat">
                                        <option value="">--Choisir une catégorie--</option>
                                </div>
                                <div>
                                    <option valeur="in">Informatique</option>
                                    <option valeur="am">Ameublement</option>
                                    <option valeur="ve">Vêtement</option>
                                    <option valeur="sp">Sport&Loisirs</option>
                                </div>
                            </div>

                            <div class="bloc">
                                <!-- radio-->
                                <div class="bloc_radio">
                                    <div class="radio">
                                        <input type="radio" name="Achat" />
                                        <label for="achat"> Achats </label>
                                    </div>
                                    <div class="radio">
                                        <input type="radio" name="Achat" />
                                        <label for="achat"> Mes ventes </label>
                                    </div>
                                </div>
                                <!--checkbox-->
                                <div class="bloc_checkbox">
                                    <div class="checkbox">
                                        <input type="checkbox" name="enchereOuvertes" />
                                        <label for="enchere"> Enchère ouvertes </label>
                                    </div>
                                    <div class="checkbox">
                                        <input type="checkbox" name="enchereOuvertes" />
                                        <label for="enchere"> Mes enchères en cours </label>
                                    </div>
                                    <div class="checkbox">
                                        <input type="checkbox" name="enchereOuvertes" />
                                        <label for="enchere"> Mes enchères remportées </label>
                                    </div>

                                </div>

                                <div class="bloc_checkbox">
                                    <div class="checkbox">
                                        <input type="checkbox" name="enchereOuvertes" />
                                        <label for="enchere"> Mes ventes en cours </label>
                                    </div>
                                    <div class="checkbox">
                                        <input type="checkbox" name="enchereOuvertes" />
                                        <label for="enchere"> Ventes non débutées </label>
                                    </div>
                                    <div class="checkbox">
                                        <input type="checkbox" name="enchereOuvertes" />
                                        <label for="enchere"> Ventes terminées </label>
                                    </div>
                                </div>
                            </div>
                            <!-- div bouttons-->
                            <div class="btn">
                                <!--Premier boutton-->
                                <div class="btn_enregistrer">
                                    <div id="creer">
                                        <input class="btn_creer" type="submit" value=" Enregistrer" />
                                    </div>
                                </div>

                            </div>
                            <div class="test">
                                <!-- carte d'article-->
                                <div class="carte">
                                    <article>
                                        <!-- Nom de l'article -->
                                        <header class="titre_carte">
                                            <h2>Un article à vendre</h2>
                                            <hr>
                                        </header>
                                        <!-- Image -->
                                        <Div>
                                            <img class="img" src="./personnes-à-la-vente-aux-enchères.webp"
                                                alt="enchère">
                                        </Div>
                                        <hr>
                                        <div class="border">
                                            <!-- Prix-->
                                            <div class="prix">
                                                <div class="marge">
                                                    <div class="carte_label">
                                                        <label for="prix"> Prix : </label>
                                                    </div>
                                                </div>
                                                <div class="marge">
                                                    <input class="carte_saisie" type="text" name="prix"
                                                        placeholder="Nb de points" autofocus="autofocus" /><br>

                                                </div>
                                            </div>
                                            <!-- Date de fin d'enchaire -->
                                            <div class="marge">
                                                <label class="carte_label">
                                                    Fin de l'enchère :
                                                    <input class="carte_saisie" type="date">
                                                </label>
                                            </div>
                                            <!-- Vendeur -->
                                            <div class="marge">
                                                <div class="carte_label">
                                                    <label for="Vendeur"> Vendeur : </label>
                                                </div>
                                                <div>
                                                    <input class="carte_saisie" type="text" name="vendeur"
                                                        autofocus="autofocus" /><br>
                                                </div>
                                            </div>

                                            <!-- Bouton-->
                                            <div>
                                                <input class="btn_enchere" type="submit" value=" Faire une enchère" />
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- carte d'article-->
                                <div class="carte">
                                    <article>
                                        <!-- Nom de l'article -->
                                        <header class="titre_carte">
                                            <h2>Un article à vendre</h2>
                                            <hr>
                                        </header>
                                        <!-- Image -->
                                        <Div>
                                            <img class="img" src="./personnes-à-la-vente-aux-enchères.webp"
                                                alt="enchère">
                                        </Div>
                                        <hr>
                                        <div class="border">
                                            <!-- Prix-->
                                            <div class="prix">
                                                <div class="marge">
                                                    <div class="carte_label">
                                                        <label for="prix"> Prix : </label>
                                                    </div>
                                                </div>
                                                <div class="marge">
                                                    <input class="carte_saisie" type="text" name="prix"
                                                        placeholder="Nb de points" autofocus="autofocus" /><br>

                                                </div>
                                            </div>
                                            <!-- Date de fin d'enchaire -->
                                            <div class="marge">
                                                <label class="carte_label">
                                                    Fin de l'enchère :
                                                    <input class="carte_saisie" type="date">
                                                </label>
                                            </div>
                                            <!-- Vendeur -->
                                            <div class="marge">
                                                <div class="carte_label">
                                                    <label for="Vendeur"> Vendeur : </label>
                                                </div>
                                                <div>
                                                    <input class="carte_saisie" type="text" name="vendeur"
                                                        autofocus="autofocus" /><br>
                                                </div>
                                            </div>

                                            <!-- Bouton-->
                                            <div>
                                                <input class="btn_enchere" type="submit" value=" Faire une enchère" />
                                            </div>
                                        </div>
                                    </article>
                                </div>

                                <!-- carte d'article-->
                                <div class="carte">
                                    <article>
                                        <!-- Nom de l'article -->
                                        <header class="titre_carte">
                                            <h2>Un article à vendre</h2>
                                            <hr>
                                        </header>
                                        <!-- Image -->
                                        <Div>
                                            <img class="img" src="./personnes-à-la-vente-aux-enchères.webp"
                                                alt="enchère">
                                        </Div>
                                        <hr>
                                        <div class="border">
                                            <!-- Prix-->
                                            <div class="prix">
                                                <div class="marge">
                                                    <div class="carte_label">
                                                        <label for="prix"> Prix : </label>
                                                    </div>
                                                </div>
                                                <div class="marge">
                                                    <input class="carte_saisie" type="text" name="prix"
                                                        placeholder="Nb de points" autofocus="autofocus" /><br>

                                                </div>
                                            </div>
                                            <!-- Date de fin d'enchaire -->
                                            <div class="marge">
                                                <label class="carte_label">
                                                    Fin de l'enchère :
                                                    <input class="carte_saisie" type="date">
                                                </label>
                                            </div>
                                            <!-- Vendeur -->
                                            <div class="marge">
                                                <div class="carte_label">
                                                    <label for="Vendeur"> Vendeur : </label>
                                                </div>
                                                <div>
                                                    <input class="carte_saisie" type="text" name="vendeur"
                                                        autofocus="autofocus" /><br>
                                                </div>
                                            </div>

                                            <!-- Bouton-->
                                            <div>
                                                <input class="btn_enchere" type="submit" value=" Faire une enchère" />
                                            </div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </form>
            </div>
        </main>
    </body>

</html>