<?php

define( 'DB_NAME', 'wordpress' );

define( 'DB_USER', 'userdb' );

define( 'DB_PASSWORD', 'dbpassword' );

define( 'DB_HOST', 'ybendavi.42.fr' );

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
