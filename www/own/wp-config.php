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
define('DB_NAME', 'wp_own');

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
define('AUTH_KEY',         '%j)}_P|5oG2SxTW}atM*FDV(a)!4P4Rd[F!UxlF(E{*2ZE2eeU>92)[F-8,+FJ>s');
define('SECURE_AUTH_KEY',  '`yrRBmw?*K+i[*ek%Nm<! |T&t}zsJ2iFxID)5)a#|2/Lq;G*b0%|~B3IBs8?F_d');
define('LOGGED_IN_KEY',    'bSBQ4Ajdm82?ffd&{?pmM7{kN59U-MetuPAd5&!fl15HyBz*OB3V$yi2i01u~eBQ');
define('NONCE_KEY',        'k{T5,C@O(Q1f+7EJN[;:j4@__DyHAUx4QovW|;QW6R^~AcvOQW!l9itjil|O-g>>');
define('AUTH_SALT',        '; ISg!dy+-0jrG.)bl%qZG!m-`pkki<^_|a7<s6-1-Z)xk:.Ev!-6Ib6|R[?48/&');
define('SECURE_AUTH_SALT', 'RH|YDZJ<vxo<w|E/[TyY~#Q%K#:w0usO>]l$yM/D@/V,v,gkUt97a-(1QJ|#J(X4');
define('LOGGED_IN_SALT',   '<tG^-$v0H#UV>hy-|?jM8K+= %:Ss9CRaF&Eg9KnTYfgpMT/QCkn+v~$;ur)MJ5A');
define('NONCE_SALT',       'v6cu:,0:7ZW!ZQX%9pOy)E,bBw%s/y=:5c-ju3:~*glf1r9I]MhXW]<]42#Zq^6y');

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
