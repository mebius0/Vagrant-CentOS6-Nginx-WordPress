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
define('DB_NAME', 'wp_themes');

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
define('AUTH_KEY',         'rJL8(h+s~nX-|Ql$kdWrj{2wXeKr/fjl{x22IWC8 ERsxh_|P 7Z$D_$,xDWR#q|');
define('SECURE_AUTH_KEY',  'b}/Jvthu34Ojt-elr}a3 4Bp`DQ%t/&R4-5)sBG,Wrk,O<t7:7(bsyAu*(2(aave');
define('LOGGED_IN_KEY',    'dH8T9s`!3B9P.qg*Edk`9pw~L-T2W<bUEGAaIk3R|i9-WT-j8:(t;Z7EhFLZD5/5');
define('NONCE_KEY',        '#.yA_+{q~O-.Z4FjbTsOojwCT:T|U*I&uKXnna.vgwn@A)1:<?>U5#RHYd6[_fRx');
define('AUTH_SALT',        'd|kYuR+I_0{n<y0IA]6[Bp$NN(@pSs-uwKz=r`@=;zt?Vp&Em({oe~tLlJ_ah-=T');
define('SECURE_AUTH_SALT', 'N{7]j^mH62i<jy,X2X+:]X_fY1fd[CK2?CO`|^Ll~.ak)G+JLttA)kNUeNup(U 9');
define('LOGGED_IN_SALT',   'SI*+q@nm&^jZ_c|MQ|jwTaei>@66ei^K8j:_YX9R8g2Mg@`8g;fBZXJEr^<xT,)g');
define('NONCE_SALT',       'C$HC/VEDA`W#ku|Q3ZP}Xo9~a$tXg}A[ 9*%5k)QGxcBo>7.LK ((DMp(0vjIPKU');

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
