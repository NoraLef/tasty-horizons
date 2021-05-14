<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="css/style.css" rel="stylesheet" />
    <title>Tasty Horizons - Contact</title>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
</head>

<body>
    <?php include "header.php";?>
    <!-- Entete de la page Contact avec des explications pour le formulaire -->
    <h2 id="h2contact" class="entete">Nous aimerions recevoir de vos nouvelles</h2>
    <p id="paragraphecontact" class="entete">Nous sommes là pour répondre à toutes vos questions <br> sur nos expériences. Ecrivez nous et nous répondrons <br> dès que possible</p>
    <p class="entete" id="champsobligatoires">Les champs indiqués par un * sont obligatoires</p>
    <!-- Formulaire de contact -->
    <div class="formulaire">
        <form method="post" action="<?php echo strip_tags($_SERVER['REQUEST_URI']); ?>">
            <div id="flexForm">
                <div>
                    <div class="inputForm">
                        <label>Nom ou entreprise * :</label><input type="text" placeholder="Entrer votre nom" required name="nom" size="30" />
                    </div>
                    <div class="inputForm">
                        <label>Prénom :</label><input type="text" placeholder="Entrer votre prénom" required name="nom" size="30" />
                    </div>
                    <div class="inputForm">
                        <label>Email * :</label><input type="email" placeholder="Entrer votre email" required name="nom" size="30" />
                    </div>
                </div>
                <div>
                    <div class="inputForm">
                        <label>Objet * :</label><input id="inputobj" type="text" placeholder="Entrer l'objet de votre message" required name="nom" size="30" />
                    </div>
                    <label>Message * :</label>
                    <textarea name="message" placeholder="Entrer votre message" required cols="30" rows="7"></textarea>
                </div>
            </div>
            <label id="labelbouton"><input id="boutonSend" class="boutonEnvoie" type="submit" name="submit" value="Envoyer"/></label>
        </form>
    </div>
    <!-- Map pour la Google Map -->
    <div id="map"></div>
    <div class="footer_include">
        <?php include "footer.php" ?>
    </div>
    <!-- Script js -->
    <script src="script.js">


    </script>
</body>
