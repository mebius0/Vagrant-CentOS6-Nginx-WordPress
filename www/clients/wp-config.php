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
define('DB_NAME', 'wp_clients');

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
define('AUTH_KEY',         ':msn-|#[cG?r}6ij76=)_cRc^0K_pntQLN&E}itKD<Kq9;<>+(|wJNO$V_Tq+2}1');
define('SECURE_AUTH_KEY',  '6/DOwy`d!^-wwsL-MgMJP{37vNN{*i+gW`|HR/yiIcM1]AZd$cx`e:`|rH*L5WKn');
define('LOGGED_IN_KEY',    'SaS_}P-)0J1_8tl5L>-^(Q]13g-ZO*u]0kBA8KSFes+4O3-rUa)8iU]dK++e|`=N');
define('NONCE_KEY',        ';1nKx.IKIJ9adq_Y_@igt`r@rS%N`0#{sbbAR_gR-e=#v+Z FISKAF>+/G3/c1o0');
define('AUTH_SALT',        '8v_sj!WwhhmPx33sbjN }pJ+XqtvtB)qF2kFG!SY]CThqRSf,#Fcj~-:LS)WN*M4');
define('SECURE_AUTH_SALT', 'y(Lo>|,9Q!<F$K)H5Z|q<X+8m=k(0z>A6PcYNL 1~YL:1:553q C<oFqs_02.)`:');
define('LOGGED_IN_SALT',   '|0ovT@-+{)v940?~f5o;kU.(86l|[}%ARS++oM2edRw[;}x<~5Ho(i}bwF7-SwW{');
define('NONCE_SALT',       'wz661s!W)8&/OaU- 9oh*uC].mn<*~;=T#~5d|iG&;`plN%z.G38-AS-Mh@j5Z|[');

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
