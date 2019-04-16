<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'akad');

/** MySQL database username */
define('DB_USER', 'user_bd');

/** MySQL database password */
define('DB_PASSWORD', '1111');

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
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'rwYYf5h$aEesD yE1|:-k&3-d0hdO$e-WXC&JKeY+?Tiwc0X}sIz3?9UMy]xgb]+');
define('SECURE_AUTH_KEY',  '?h_`6M_g6-z,-WO$TA#x3m)+ZWt(s`>27%7^[RN+@NpLNAI9,j&f@[H[EW;!+4+g');
define('LOGGED_IN_KEY',    ';c)1r9jead-(j^V+P>r61Vwn4+@yO160JohX~PW>JY=;mKA(tMjbeQ?LgBBq|^L;');
define('NONCE_KEY',        '83%p-EcwA;^1{J2)ddC}S)yu|~pH(TG4-S J5[Jy|Z-R?py,{L3}XN/q?jjlt-8>');
define('AUTH_SALT',        'Df{jlwrk~8tET(F8ZZit#~~52fBJ=>+}c]T3|_--e|R;-N%^d%[X-t6`jwX8FDf|');
define('SECURE_AUTH_SALT', 'zhk`lY,]cFqBljE^L8[cDf/R,iMH**c9f7)Y|VYq;b<|Rnu3UDYl+lY__-RNZ.ld');
define('LOGGED_IN_SALT',   'U0(6=ESC?DjD4d?V7#hRClLPT*z/g-/8m.8/_0|[a-#CbBG,I/**ePXID6Y-%X|*');
define('NONCE_SALT',       'N5GQVT+lMO|C:Vn|!-OZ1+ma8v1*s2C(zL_#4[=SvX_u|H%cKC^vi?u;hN2j^+I6');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
