<?php
// Register Custom Navigation Walker
//require_once get_template_directory() . '/class-wp-bootstrap-navwalker.php';


// fonction de mise en file d'attente des scripts
function theme_multipage_scripts(){
	/* La queue pour le HEAD ///////////////////////////////// */
	// ajout du CDN Style Bootstrap
	wp_enqueue_style('bootstrapcss', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css');
	// ajout du CDN FontAwesome
	wp_enqueue_style('fontawesome', 'https://use.fontawesome.com/releases/v5.7.2/css/all.css');
	// charger la feuille de style style.css
	wp_enqueue_style('style', get_stylesheet_uri());


	/* La queue pour le FOOTER ///////////////////////////////// */
	// retirer jQuery
	wp_deregister_script('jquery');	
	// charger le CDN de jQuery
	wp_enqueue_script('jquery','https://code.jquery.com/jquery-3.3.1.min.js','', false, true);
	// charger le CDN Popper
	wp_enqueue_script('popper','https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js','', false, true);
	// ajout du CDN JavaScript Bootstrap
	wp_enqueue_script('bootstrapjs', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js','', false, true);
}

// ajoute des scripts de la file d'attente
add_action('wp_enqueue_scripts','theme_multipage_scripts');
// ajoute le titre de la page
add_theme_support( 'title-tag' );
// ajoute "Image à la une" dans les options des articles
add_theme_support( 'post-thumbnails' );

/* Les fonctionnalités du Back-office ///////////////////////////////// */

// Affiche un menu de navigation
// Displays a navigation menu
register_nav_menus(
	array(
		'primaire' => __('Menu primaire', 'test')
	)
);
register_nav_menus(
	array(
		'secondaire' => __('Menu secondaire', 'test')
	)
);

/*
// Affiche les Widgets
function widget_sidebar(){
	// Sidebar dynamique de droite
	$args = array(
		'name'          => __( 'Sidebar de droite' ),
		'id'            => "sidebar-droite",
		'description'   => 'Une sidebar à droite de la page',
		'class'         => '',
		'before_widget' => '<li id="%1$s" class="widget %2$s">',
		'after_widget'  => "</li>\n",
		'before_title'  => '<h4 class="widgettitle">',
		'after_title'   => "</h4>\n",
	);
	register_sidebar($args);

	// Sidebar dynamique du footer
	$args = array(
		'name'          => __( 'Sidebar du footer' ),
		'id'            => "sidebar-footer",
		'description'   => 'Une sidebar à droite du footer',
		'class'         => '',
		'before_widget' => '<li id="%1$s" class="widget %2$s">',
		'after_widget'  => "</li>\n",
		'before_title'  => '<h2 class="widgettitle">',
		'after_title'   => "</h2>\n",
	);
	register_sidebar($args);
}
add_action('widgets_init', 'widget_sidebar');
*/
//--------------- Login Screen Wallpaper ---------------//	

function login_enqueue_scripts(){
		echo '
			<div class="background-cover"></div>
			<style type="text/css" media="screen">
				.background-cover
					{
						background:url('.get_bloginfo('template_directory').'/medias/images/login-page-background.jpg) no-repeat center center fixed; 
						-webkit-background-size: cover; 
						-moz-background-size: cover; 
						-o-background-size: cover; 
						background-size: cover; 
						position:fixed; 
						top:0; 
						left:0; 
						z-index:10; 
						overflow: hidden; 
						width: 100%; 
						height:100%;
					} 
				#login {z-index:9999; position:relative;}
				/* LOGO */
				.login h1 a	{
					/* La taille du logo par defaut : 84px */
					width:260px !important;  /* on force la taille avec !important */
					height:168px !important; /* de façon à rentrer notre logo */
					background:url('.get_bloginfo('template_directory').'/medias/images/login-page-logo.png) no-repeat center top !important; 
				} 

				/* la couleur du bouton */
				.button, .submit input, .button-secondary {background:#88421D !important; text-shadow: none !important;}
				
				/* la couleur du bouton enfoncé */
				.button:hover, .submit input:hover, .button-secondary:hover {background:#A76726 !important; text-shadow: none !important;}
				
				/* la couleur du bouton enfoncé */
				.button:active, .submit input:active, .button-secondary:active {background:#F0C300 !important; text-shadow: none !important;}



				/* la couleur des liens sous la log-box  */
				.login #nav a, .login #backtoblog a	{color:#fff !important; text-shadow: none !important; }

				/* la couleur des liens au survol sous la log-box */
				.login #nav a:hover, .login #backtoblog a:hover	{color:#FF0000  !important; text-shadow: none !important;}	
				.login #nav, .login #backtoblog {text-shadow: none !important;}
				</style>
		';
	}
	add_action( 'login_enqueue_scripts', 'login_enqueue_scripts' );
?>