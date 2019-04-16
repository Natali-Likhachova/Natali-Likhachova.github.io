<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HW_16 index</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600|Roboto+Condensed:300,400,400i,700|Roboto:100i,300i,400,400i,500,500i" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <!--<link rel="stylesheet" href="slick/slick.css"/>
    <link rel="stylesheet" href="slick/slick-theme.css"/>-->
    <?php wp_head(); ?>
</head>
<body>


<header class="header">
    <div class="box">

        <nav role="navigation" class="nav">
            <div id="menuToggle">
                <input type="checkbox" />
                <span></span>
                <span></span>
                <span></span>
                <?php wp_nav_menu(array('theme_location'=>'menu', 'menu_class'=>'nav') ); ?>
                <!--<ul id="menu">
                    <li><a href="#">portfolio</a></li>
                    <li><a href="#">clients</a></li>
                    <li><a href="#">news</a></li>
                    <li><a href="#">about me</a></li>
                    <li><a href="#" target="_blank">сontact</a></li>
                </ul>>-->
            </div>
        </nav>

        <img src="<?php bloginfo('template_url')?>/img/blog/header/square_logo.png"class="logo" alt="">
        <div class="social">
            <a href="https://uk-ua.facebook.com/">
                <i class="fa fa-facebook" aria-hidden="true"></i>
            </a>
            <a href="https://twitter.com/">
                <i class="fa fa-twitter" aria-hidden="true"></i>
            </a>
            <a href="https://www.instagram.com/">
                <i class="fa fa-camera-retro" aria-hidden="true"></i>
            </a>
            <a href="https://www.flickr.com/">
                <i class="fa fa-flickr" aria-hidden="true"></i>
            </a>
            <a href="https://plus.google.com/discover">
                <i class="fa fa-google-plus" aria-hidden="true"></i>
            </a>
            <a href="https://www.google.com/intl/ru/gmail/about/">
                <i class="fa fa-envelope" aria-hidden="true"></i>
            </a>
        </div>
    </div>
</header>