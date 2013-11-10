<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_plugins');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'wordpress');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 */
define('AUTH_KEY',         't{e&WEUQS<xF$ThqjMg)sb5O[$FwOG>=/+6?/quzR;x>A|F6H*V-38Y)6X At-^^');
define('SECURE_AUTH_KEY',  '-K}u4bhu(]g06RY_l1}F]W]D#ASpeo]G<bS6*<)?IyP4RgMNma#_?6<sYy$e,n7 ');
define('LOGGED_IN_KEY',    'W+>?b?rX_(cu.K(X{i4?~.!GvVeG[s75m|ctfx3lu>GTgL)1Ul~+|KyWo|CXg6I)');
define('NONCE_KEY',        'J8)Q!+pR,&O-7<|l=C*y-TTsG_^] MHxs4brZ];|guUy8a{BG9*XET/$gcql>-ZT');
define('AUTH_SALT',        '|_#t[*7i_?U0r}W_VT33fm|.O8Dr>V:ZilmCcd`R*lEMH Id.L50TIc{M.D}iO@7');
define('SECURE_AUTH_SALT', 'q|?QBny#{~7aGK(YbJci@FOVc/dstxc#]3ce&nkb|)YA4}dP3{7*~iqLp|v~Rf*m');
define('LOGGED_IN_SALT',   'hL,HOT|%5:H$2I_hAAWZxRmLWr@BNiNhMlK-CXh-+m!%ge?%ZV_i&5wFu8lNy{E;');
define('NONCE_SALT',       'e0kKI@7$O&Gi1z2r4PN0wL^;,tjB~v`m!R|o,%O04_v%1-:h7A(^0-5NQ+6<dy9a');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', 'ja');



/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
