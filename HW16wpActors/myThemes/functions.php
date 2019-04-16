<?php

    /*add_filter('show_admin_bar', '__return_false');

    define('Q_THEME_ROOT', get_template_directory_uri());
    define('Q_CSS_DIR', Q_THEME_ROOT . '/css');
    define('Q_JS_DIR', Q_THEME_ROOT . '/js');

    add_action('wp_enqueue_scripts', function (){
        wp_enqueue_style('slick', Q_CSS_DIR . '/slick.css');
        wp_enqueue_style('slick-theme.css', Q_CSS_DIR . 'styles.css');
        wp_enqueue_style('theme', get_template_directory_uri());

        wp_deregister_script('jquery');
        wp_enqueue_script('jquery-1.11.0.min.js', get_template_directory_uri() . 'http://code.jquery.com/jquery-1.11.0.min.js');
        wp_enqueue_script('jquery-migrate-1.2.1.min.js', get_template_directory_uri() . 'http://code.jquery.com/jquery-migrate-1.2.1.min.js');
        wp_enqueue_script('slick', Q_JS_DIR . 'slick.min.js');
        wp_enqueue_script('js', Q_JS_DIR . 'js.js');
    });*/


function theme_name_scripts() {
    wp_enqueue_style('slick.css', get_template_directory_uri() . '/slick/slick.css');
    wp_enqueue_style('slick-theme.css', get_template_directory_uri() . '/slick/slick-theme.css');
    wp_enqueue_style('style', get_stylesheet_uri());

//    wp_deregister_script('jquery');
//    wp_enqueue_script('jquery-1.11.0.min.js', get_template_directory_uri() . 'http://code.jquery.com/jquery-1.11.0.min.js');
//    wp_enqueue_script('jquery-migrate-1.2.1.min.js', get_template_directory_uri() . 'http://code.jquery.com/jquery-migrate-1.2.1.min.js');
    wp_enqueue_script('my_js_11', 'http://code.jquery.com/jquery-1.11.0.min.js', array(), null, true);
    wp_enqueue_script('my_js-12', 'http://code.jquery.com/jquery-migrate-1.2.1.min.js', array(), null, true);

    wp_enqueue_script('slick.min.js', get_template_directory_uri() . '/slick/slick.min.js', array(), null, true);
    wp_enqueue_script('js.js', get_template_directory_uri() . '/js/js.js', array(), null, true);


}

/*
-==-
 */
/**
 * Register our sidebars and widgetized areas.
 *
 */
function arphabet_widgets_init() {

    register_sidebar( array(
        'name'          => 'Footer',
        'id'            => 'footer',
        'before_widget' => '<div>',
        'after_widget'  => '</div>',
        'before_title'  => '<h2 class="rounded">',
        'after_title'   => '</h2>',
    ) );

}
add_action( 'widgets_init', 'arphabet_widgets_init' );


function my_themes_customize_register($wp_customize){
    $wp_customize->add_section( 'section_header' , array(
        'title'      => __( 'Test', 'myThemes' ),
        'priority'   => 30,
    ) );

    $wp_customize->add_setting( 'header_textcolor' , array(
        'default'   => '#000000',
        'transport' => 'refresh',
    ) );

    $wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'header_textcolor', array(
        'label'      => __( 'Header Color', 'myThemes' ),
        'section'    => 'section_header',
        'settings'   => 'header_textcolor',
    ) ) );

}


add_action( 'customize_register', 'my_themes_customize_register' );

function actors_customize_css()
{
    ?>
    <style type="text/css">
        h1 { color: <?php echo get_theme_mod('header_color', '#000000'); ?>; }
    </style>
    <?php
}
add_action( 'wp_head', 'actors_customize_css');
/*
-==-
 */

add_action('wp_enqueue_scripts', 'theme_name_scripts');// https://wp-kama.ru/hook/wp_enqueue_scripts


add_theme_support( 'post-thumbnails' );//Подключаю миниатюру с https://wp-kama.ru/function/add_theme_support   (post-thumbnails)

//HeaderMenu
/*if ( has_nav_menu('header-menu')){
    wp_nav_menu([
        'theme_location' => 'header-menu',
    ]);
}else{

}*/

//$menu = wp_nav_menu([
    //'theme_location' => 'footer=menu',
    //'fallback_cb' => null,
   // 'echo' => false
//]);

//if ($menu){
    //Что-то если надо
    //echo $menu;
    //Что-то если надо
//}else{
//Выводим что нужно вместо заглушки
//}

register_nav_menu('header-menu', 'Верхняя область');





