<?php

define( 'DB_NAME', 'wordpress' );

define( 'DB_USER', 'ybendavi' );

define( 'DB_PASSWORD', 'nani' );

define( 'DB_HOST', 'mysql' );

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
