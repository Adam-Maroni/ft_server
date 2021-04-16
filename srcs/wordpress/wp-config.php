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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '}{buZp>;L-{h3b:adwv/?NmBN<[L#SFAj[U_C`c;lMSV,uI~5#5S?s3G.mKGkB7N');
define('SECURE_AUTH_KEY',  '||C]K-1U#//;*}w+o84Vr^6dC5= ;u7G=V@+#AEn+wSq|e5tS(^fU6c?H@dXFW~z');
define('LOGGED_IN_KEY',    '29Pl5{+k,[=txR&_TDv[qoNt~c`~n8hqS7PVmNPM@O)u{:|JRB3J(&+-]BeJ_, 2');
define('NONCE_KEY',        'uRYUGXIwOnap1>/<{}t;a7hwumz%%1==9U;_LPKv-[/_11w+Jr]ausH>@A,B-^(3');
define('AUTH_SALT',        '!XjPB)W=q/OQ0`R[4)}vlX=|NzBhf(XoOXOH4Gy$W|=+V#9V<0C>rzNO5|1}D3[r');
define('SECURE_AUTH_SALT', '@^=#<{mI*4t[{`n|P@U<kF-l9/w!u7yl /jFAxN3M@gv9;,Y$*|m|!GNWt!B/p*U');
define('LOGGED_IN_SALT',   ';H^-O+x>Dt?3vhsBg_7*0bm30^fPn %z r|<p<HX)s]F)qM*$Q[w);AR,-bg$9f+');
define('NONCE_SALT',       'b4-}4niT=6+kr+GL0;-f:D3>J<Zf!r@QeOgq=Qfx#kcaq>htnLQ!amNFb-}]%=Vh');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
