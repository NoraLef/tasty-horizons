<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Accueil</title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <link rel="stylesheet" type="text/css" href="slick/slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="slick/slick/slick-theme.css" />
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
</head>

<body>

    <?php include "header.php";?>


    <!--PAGE ACCEUIL -->
    <div class="a_pageacceuil">
        <h3 class="titreacceuil">Nos Menus</h3>
        <div class="a_carrousel">
            <div class="image-carousel">
                <div class="inner">
                    <img src="Images/burger.jpg">
                    <img src="Images/sushi.jpg">
                    <img src="Images/tacos.jpg">
                    <img src="Images/galette-saumon.JPG">
                </div>
            </div>
        </div>
        <br/>
        <br/>
        <br/>
        <div class="a_notrehistoire">
            <h3 class="titreacceuil">Notre Histoire</h3>
            <div class="titreimage">
                <div class="textens">
                    <p>Dès 2011, une nouvelle aventure se présente, ils achètent le Restaurant du Château des Gipières, connu de nos jours sous le de nom de « L’O des Sources », ce qui leur donne un nouveau challenge et développe l’aspect complémentaire de ces 2 endroits dotés d’une superbe vue panoramique et séparés par seulement 1,5 km. En 2015, ils décident de regrouper les 2 restaurants, toute la partie restauration de Reilhanette déménage à L’O des Sources, ou ils proposent une cuisine simple, gustative et délicatement présentée, développe une cave & bar à vins. Leur avantage, pouvoir travailler sur une gamme de menus variés, avoir la capacité d’accueillir des groupes dans ce « Bistrot Chic » entièrement repensé!</p>
                </div>
                <div class="imagens">
                    <img src="Images/faitmain.jpg">
                </div>
            </div>
        </div>

        <div class="a_trouverajd">
            <h3 class="titreacceuil">Où nous trouver aujourd'hui ?</h3>
            <div class="mapcalendrier">
                <div id="map">
                </div>
                <div id='contcalendar'></div>
            </div>
        </div>
    </div>

    <div class="footer_include">
        <?php include "footer.php" ?>
    </div>

    <!-- JAVA SCRIPT -->

    <script src="Js/JavaScriptGlobal.js" type="text/javascript"></script>
    <script src="Js/JsAcceuil.js" type="text/javascript"></script>
    <script type="text/javascript" src="lib/slick/slick/slick.min.js"></script>
    <script src="Js/carousel.js"></script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=GoogleMapKey&callback=initMap" type="text/javascript"></script>
</body>

</html>
