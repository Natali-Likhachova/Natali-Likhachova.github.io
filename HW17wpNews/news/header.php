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
                <?php  bloginfo('name')?>
            </a>
        </div>
        <label for="toggle-mobile-menu" aria-label="Menu">&#9776;</label>
        <input id="toggle-mobile-menu" type="checkbox" />

        <?php
        wp_nav_menu( array(
                'theme_location' =>  'header-menu',
                'container' => false,
                'menu_class' => 'menu_false',
        ));
        ?>

        <!--<ul id="main-menu">
            <li>
                <a href="#">
                    Home
                </a>
            </li>
            <li>
                <a href="#">
                    Services
                </a>
            </li>
            <li>
                <a href="#">
                    About us
                </a>
            </li>
            <li>
                <a href="#">
                    News
                </a>
            </li>
            <li>
                <a href="#">
                    Contact
                </a>
            </li>
        </ul>-->
    </nav>
</header>
