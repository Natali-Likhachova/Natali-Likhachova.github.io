<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 *
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

<header class="header">
    <nav id="site-navigation" aria-label="Menu">
        <div class="header__logo">
            <a href="<?php echo home_url()?>">
                <?php  bloginfo('name')?>.
            </a>
        </div>
        <input type="checkbox" id="hmt" class="hidden-menu-ticker">
        <label class="btn-menu" for="hmt">
            <img src="<?php bloginfo('template_url')?>/img/index/header/menu.png" alt="">
        </label>


        <?php
        wp_nav_menu( array(
            'theme_location' =>  'header-menu',
            'container' => false,
            'menu_class' => 'menu_false',
        ));
        ?>
</header>