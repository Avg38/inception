<?php
define( 'DB_NAME', '${WORDPRESS_DB_NAME}');
define( 'DB_USER', '${WORDPRESS_DB_USER}');
define( 'DB_PASSWORD', '${WORDPRESS_DB_PASSWORD}');
define( 'DB_HOST', '${WORDPRESS_DB_HOST}');
define( 'DB_CHARSET', 'utf8');

$stable_prefix = 'wp_';

define( 'WP_DEBUG', false);

if (!defined( 'ABSPATH' )){
	define( 'ABSPATH', __DIR__. '/');
}

require_once ABSPATH . 'wp-settings.php';
?>