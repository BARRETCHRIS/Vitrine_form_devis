<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'aeg06-db' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'root' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', '' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'JyhCdr{alfQ+:i;nZXQ>-LRG(u~EgOYOuMblazOagryc,LXY?r|9rHv,B(o?%N(.' );
define( 'SECURE_AUTH_KEY',  'zNl,m1Fv xW!4Dt=,;e_?U!K,#BT`aR~NUT|r6zA^$h{LeUkH6+D2%BU=kRDsi(7' );
define( 'LOGGED_IN_KEY',    '[p/?jn=r3{0=z@h`)GV4cH/$yFG32]&2czXi@b@NP<[U_Jn(JgO,LE9VC#kiFAG&' );
define( 'NONCE_KEY',        '8Ze5P0T*O46F?upj0TsCU)4a:(},}BKTD.}Ride~DB^Z4=61 M%a.{T62k~^uP*w' );
define( 'AUTH_SALT',        'o}8$[f-v{F|Z>TInJ3(5|P*ikckQLvV*dA4QI?Lcz_tm$0X({fYHL8[_b~cqsT_G' );
define( 'SECURE_AUTH_SALT', ',+He9/Uq;o8;v]vkOzsrLPb0sdiX)!^bHP(G0y@KH! PU~C@[ dID)l$$-h ju~X' );
define( 'LOGGED_IN_SALT',   'M]WN:3gww4HU.XSTWHg>U1uFTV&9@!EfRR8B{NOv%%]Y%avF^xR!nru~L%BfB6rP' );
define( 'NONCE_SALT',       'IHjGzlX<uG.1m1Kl!*UA~4NrW%?bW9?42uVGKPhO8D{z|ao9LOaloepGQ8BhKf!3' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'aeg_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');
