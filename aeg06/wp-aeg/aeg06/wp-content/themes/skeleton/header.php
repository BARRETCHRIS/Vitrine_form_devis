<!Doctype html>
<html <?php language_attributes(); ?>>
    <head>
       <meta charset="<?php bloginfo( 'charset' ); ?>" />
       <meta name="author" content="Christelle BARRET - Élodie CHAPUIS">
       <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
       <meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- Une icone dans l'onglet : 32x32px format .ico 
	    <link rel="shortcut icon" type="image/x-icon" href="<?php //echo get_template_directory_uri(); ?>/favicon.ico">-->
<!-- une icône pour Apple (iPhone, iPad) : 180 x 180 px au format png 
	    <link rel="apple-touch-icon" href="<?php //echo get_template_directory_uri(); ?>/apple-icon.png"/>-->
        <title>AEG 06 - Un Pro au service de votre habitation.</title>
        <meta name="description" content="AEG 06 - ÉLECTRICITÉ - CLIMATISATION - VENTILATION- PLOMBERIE<br>06 60 42 59 76 - 374 avenue Général de Gaulle - 06 110 LE CANNET">
  
  <?php wp_head(); ?>
    </head>
    <body>
       <header>
<!-- ***** TOP-HEADER DESK ***** -->
            <div class="top-header txt-gold mobile-ghost">            
                <a href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php echo get_template_directory_uri(); ?>/medias/picto-logo/logo-AEG06-nu.png" alt="logo AEG 06 une maison avec un flocon, une ampoule, une hélice et une prise"></a>
                <address> 
                    <span class="merde">06 60 42 59 76</span>
                    <span>374 avenue du Général de Gaulle<br>06110 LE CANNET</span>
                </address>            
            </div>
<!-- ***** FIN TOP-HEADER DESK ***** -->            
<!-- ***** NAVBAR RESPONSIVE AVEC MENU BURGER ***** -->                
            <div class="bg-grey">
            <nav class="navbar  navbar-expand-lg navbar-dark bg-grey txt-light">
                <div class="topheader-mobile desk-ghost">
                    <div class="item-topheader"><img src="<?php echo get_template_directory_uri(); ?>/medias/picto-logo/tel.png" alt="picto tel"></div>
                    <div class="item-topheader"><img src="<?php echo get_template_directory_uri(); ?>/medias/picto-logo/adresse.png" alt="Picto de position"></div>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
    
                    <?php 
                        /* Affiche un menu de navigation
                         * @param array $args arguments
                         */
                        $args = array(
                            'theme_location' => 'primaire',
                            'container' => 'ul',
                            'menu_class' => 'navbar-nav nav-prime',
                        );
                        wp_nav_menu($args);
    //-->  https://developer.wordpress.org/reference/functions/wp_nav_menu/
                    ?>
                        
                </div>
            </nav>
            </div>
<!-- ***** FIN NAVBAR RESPONSIVE AVEC MENU BURGER ***** -->

<!-- ////////////////////////////////////////////////////////// -->
<!-- IMAGE A LA UNE DEPLACER DANS LE TEMPLATE page.php ligne 21 -->
<!-- ////////////////////////////////////////////////////////// -->

<!-- ***** BOTTOM-HEADER MOBILE ***** -->
            <div class="box-headmob desk-ghost">
                <div class="part-headmob">
                    <a href="<?php echo esc_url( home_url( '/' ) ); ?>">
                        <div class="item-headmob"><img src="<?php echo get_template_directory_uri(); ?>/medias/picto-logo/logo-AEG06-nu.png" alt="logo AEG06"></div>
                    </a>
                    <a href="<?php echo esc_url( home_url( '/' ) ); ?>electricite/">
                        <div class="item-headmob bg-hotlight"><img src="<?php echo get_template_directory_uri(); ?>/medias/picto-logo/picto-instal-elec-white@2x.png" alt="prise de courant"></div>
                    </a>
                </div>
                <div class="part-headmob">
                    <a href="<?php echo esc_url( home_url( '/' ) ); ?>climatisation/">
                        <div class="item-headmob bg-hotlight"><img src="<?php echo get_template_directory_uri(); ?>/medias/picto-logo/picto-clim-white@2x.png" alt="climatisation"></div>
                    </a>
                    <a href="<?php echo esc_url( home_url( '/' ) ); ?>plomberie/">
                        <div class="item-headmob"><img src="<?php echo get_template_directory_uri(); ?>/medias/picto-logo/picto-plomberie@2x.png" alt="plomberie"></div>
                    </a>
                </div>
            </div>
           
        
<!-- ***** FIN BOTTOM-HEADER MOBILE ***** -->                     
       </header>
     