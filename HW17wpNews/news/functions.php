<?php
/**
 * news functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package news
 */

if ( ! function_exists( 'news_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function news_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on news, use a find and replace
		 * to change 'news' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'news', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'header-menu' => esc_html__( 'Header Menu', 'news' ),
			'first-burger' => esc_html__( 'first burger', 'news' ),
			'second-burger' => esc_html__( 'second burger', 'news' ),
			'third-burger' => esc_html__( 'third burger', 'news' ),
		) );


		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'news_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'news_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function news_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'news_content_width', 640 );
}
add_action( 'after_setup_theme', 'news_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function news_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'news' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'news' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );

    register_sidebar( array(
        'name'          => esc_html__( 'footer', 'news' ),
        'id'            => 'footer',
        'description'   => esc_html__( 'Add widgets here.', 'news' ),
        'before_widget' => '<section id="%1$s" class="widget %2$s">',
        'after_widget'  => '</section>',
        'before_title'  => '<div class="widget-title">',
        'after_title'   => '</div>',
    ) );
}
add_action( 'widgets_init', 'news_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function news_scripts() {
	wp_enqueue_style('slick.css', get_template_directory_uri() . '/slick/slick.css');
	wp_enqueue_style('slick-theme.css', get_template_directory_uri() . '/slick/slick-theme.css');
	wp_enqueue_style( 'news-style', get_stylesheet_uri() );
    wp_enqueue_style( 'news-google-fonts1', 'https://fonts.googleapis.com/css?family=Damion|Lato:100,300,400,700,900', array(), null);
    wp_enqueue_style( 'news-bootstrap', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' , array(), '4.7.0');
    wp_enqueue_style( 'news-casual', get_template_directory_uri(). '/css/import.css', array(), null);

	wp_enqueue_script( 'news-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );//slick

	wp_enqueue_script( 'news-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );//slick

	wp_enqueue_script('my_js_11', 'http://code.jquery.com/jquery-1.11.0.min.js', array(), null, true);//slick
	wp_enqueue_script('my_js-12', 'http://code.jquery.com/jquery-migrate-1.2.1.min.js', array(), null, true);//slick
	wp_enqueue_script('my_js_113', 'http://code.jquery.com/jquery-1.11.3.min.js', array(), time(), true);//masonry
	wp_enqueue_script('my_js_masonry', 'https://cdnjs.cloudflare.com/ajax/libs/masonry/3.3.2/masonry.pkgd.min.js', array(),time(), true);//masonry


	wp_enqueue_script('slick.min.js', get_template_directory_uri() . '/slick/slick.min.js', array(), null, true);//slick
	wp_enqueue_script('news-imagesloaded', get_template_directory_uri() . '/js/imagesloaded/imagesloaded.pkgd.min.js', array(), time(), true);//masonry


	wp_enqueue_script('js.js', get_template_directory_uri() . '/js/js.js', array(), null, true);//slick
	wp_enqueue_script('news-commonW', get_template_directory_uri() . '/js/commonW.js', array(), time(), true);//masonrytime(),





	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'news_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}




/**
 * I add the code from the lecture "WP Lesson 4"
 */

function news_customize_register( $wp_customize ) {
    $wp_customize->add_section( 'my_super_awesome_section' , array(
        'title'      => __( 'My awesome section name', 'news' ),
        'priority'   => 30,
    ) );

    $wp_customize->add_setting( 'body_bg_color' , array(
        'default'     => '#000000',
        'transport'   => 'refresh',
    ) );

    $wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'body_bg_color', array(
        'label'      => __( 'Body BG Color', 'news' ),
        'section'    => 'my_super_awesome_section',
        'settings'   => 'body_bg_color',
    ) ) );

    $wp_customize->add_setting( 'instagram_url' , array(
        'transport'   => 'refresh',
    ) );

    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'instagram_url', array(
        'label'      => __( 'Instagram url', 'news' ),
        'section'    => 'my_super_awesome_section',
        'settings'   => 'instagram_url',
    ) ) );

    $wp_customize->add_setting( 'instagram_label' , array(
        'default'     => 'Find us on Instagram',
        'transport'   => 'refresh',
    ) );

    $wp_customize->add_control( new WP_Customize_Control( $wp_customize, 'instagram_label', array(
        'label'      => __( 'Instagram label', 'news' ),
        'section'    => 'my_super_awesome_section',
        'settings'   => 'instagram_label',
    ) ) );


}
add_action( 'customize_register', 'news_customize_register' );

function news_customize_css()
{
    ?>
    <style type="text/css">
        body { background: <?php echo get_theme_mod('body_bg_color', '#ffffff'); ?>; }
    </style>
    <?php
}
add_action( 'wp_head', 'news_customize_css');


/**
 * I add the code from the lecture "WP Lesson 4"///wp-kama.ru
 */

// подключаем функцию активации мета блока (my_extra_fields)
add_action('add_meta_boxes', 'my_extra_fields', 1);

function my_extra_fields() {

	global $post;

	if('services.php' == get_post_meta($post->ID, '_wp_page_template', true) ) {

		add_meta_box( 'extra_fields', 'Дополнительные поля', 'extra_fields_box_func', 'page', 'normal', 'high'  );
	}
	if('about.php' == get_post_meta($post->ID, '_wp_page_template', true) ) {

	    add_meta_box( 'about_fields', 'Дополнительные поля', 'about_fields_box_func', 'page', 'normal', 'high'  );
		add_meta_box( 'about_fields_services', 'Services', 'about_fields_box_func_services', 'page', 'normal', 'high'  );
	}
}

// код блока
function extra_fields_box_func($post){
	global $post;
	var_dump(get_post_meta($post->ID, '_wp_page_template', true));
	?>

    <p><label><input type="text" name="extra[title]" value="<?php echo get_post_meta($post->ID, 'title', 1); ?>" style="width:50%" /> ? заголовок страницы03.04 (title)</label></p>

    <p>Описание статьи (description):
        <textarea type="text" name="extra[description]" style="width:100%;height:50px;"><?php echo get_post_meta($post->ID, 'description', 1); ?></textarea>
    </p>

    <p>Видимость поста: <?php $mark_v = get_post_meta($post->ID, 'robotmeta', 1); ?>
        <label><input type="radio" name="extra[robotmeta]" value="" <?php checked( $mark_v, '' ); ?> /> index,follow</label>
        <label><input type="radio" name="extra[robotmeta]" value="nofollow" <?php checked( $mark_v, 'nofollow' ); ?> /> nofollow</label>
        <label><input type="radio" name="extra[robotmeta]" value="noindex" <?php checked( $mark_v, 'noindex' ); ?> /> noindex</label>
        <label><input type="radio" name="extra[robotmeta]" value="noindex,nofollow" <?php checked( $mark_v, 'noindex,nofollow' ); ?> /> noindex,nofollow</label>
    </p>

    <p>Добавляем картинку:
        <input type="text" name="extra[img_1]" value="<?php echo get_post_meta($post->ID, 'img_1', 1); ?>" style="width:50%" />

    </p>

    <p><select name="extra[select]">
			<?php $sel_v = get_post_meta($post->ID, 'select', 1); ?>
            <option value="0">----</option>
            <option value="1" <?php selected( $sel_v, '1' )?> >Выбери меня</option>
            <option value="2" <?php selected( $sel_v, '2' )?> >Нет, меня</option>
            <option value="3" <?php selected( $sel_v, '3' )?> >Лучше меня</option>
        </select> ? выбор за вами</p>

    <input type="hidden" name="extra_fields_nonce" value="<?php echo wp_create_nonce(__FILE__); ?>" />
	<?php
}

// код блока для страницы about
function about_fields_box_func($post){
	global $post;
	?>

    <p><label><input type="text" name="about[about_title]" value="<?php echo get_post_meta($post->ID, 'about_title', 1); ?>" style="width:50%" /> Заголовок страницы</label></p>

    <input type="hidden" name="about_fields_nonce" value="<?php echo wp_create_nonce(__FILE__); ?>" />
	<?php
}

// код блока для страницы about секция services
function about_fields_box_func_services($post){
	global $post;
	?>

    <p>
        Services headline:
        <input type="text" name="about[about_ser_headline]" value="<?php echo get_post_meta($post->ID, 'about_ser_headline', 1); ?>" style="width:100%" />
    </p>

    <p>
        Services subtitle:
        <textarea type="text" name="about[about_ser_subtitle]" style="width:100%;height:50px;"><?php echo get_post_meta($post->ID, 'about_ser_subtitle', 1); ?></textarea>
    </p>

    <div style="width:100%; margin-top: 20px; padding: 15px; ">

            Services box:
        <div style="display: flex; flex-direction: row; justify-content: center; align-items: center;">
            <div style="width:20%; margin: 10px; padding: 15px; outline: 1px solid #000">

                <p>
                    Image services 1:
                    <input type="text" name="about[about_ser_img_1]" value="<?php echo get_post_meta($post->ID, 'about_ser_img_1', 1); ?>" placeholder="Write the path to the picture" style="width:100%;">
                </p>

                <p>
                    Headline box 1:
                    <input type="text" name="about[about_ser_headline_1]" value="<?php echo get_post_meta($post->ID, 'about_ser_headline_1', 1); ?>" style="width:100%;">
                </p>

                <p>
                    Text box 1:
                    <textarea type="text" name="about[about_ser_text_1]" style="width:100%;"><?php echo get_post_meta($post->ID, 'about_ser_text_1', 1); ?>
                </textarea>
                </p>

            </div>

            <div style="width:20%; margin: 10px; padding: 15px; outline: 1px solid #000">

                <p>
                    Image services 2:
                    <input type="text" name="about[about_ser_img_2]" value="<?php echo get_post_meta($post->ID, 'about_ser_img_2', 1); ?>"placeholder="Write the path to the picture" style="width:100%;">
                </p>

                <p>
                    Headline box 2:
                    <input type="text" name="about[about_ser_headline_2]" value="
            <?php echo get_post_meta($post->ID, 'about_ser_headline_2', 1); ?>" style="width:100%;">
                </p>

                <p>
                    Text box 1:
                    <textarea type="text" name="about[about_ser_text_2]" style="width:100%;">
                    <?php echo get_post_meta($post->ID, 'about_ser_text_2', 1); ?>
                </textarea>
                </p>

            </div>

            <div style="width:20%; margin: 10px; padding: 15px; outline: 1px solid #000">

                <p>
                    Image services 3:
                    <input type="text" name="about[about_ser_img_3]" value="
                    <?php echo get_post_meta($post->ID, 'about_ser_img_3', 1); ?>"
                           placeholder="Write the path to the picture" style="width:100%;">
                </p>

                <p>
                    Headline box 3:
                    <input type="text" name="about[about_ser_headline_3]" value="
            <?php echo get_post_meta($post->ID, 'about_ser_headline_3', 1); ?>" style="width:100%;">
                </p>

                <p>
                    Text box 3:
                    <textarea type="text" name="about[about_ser_text_3]" style="width:100%;">
                    <?php echo get_post_meta($post->ID, 'about_ser_text_3', 1); ?>
                </textarea>
                </p>

            </div>

            <div style="width:20%; margin: 10px; padding: 15px; outline: 1px solid #000">

                <p>
                    Image services 4:
                    <input type="text" name="about[about_ser_img_4]" value="
                    <?php echo get_post_meta($post->ID, 'about_ser_img_4', 1); ?>"
                           placeholder="Write the path to the picture" style="width:100%;">
                </p>

                <p>
                    Headline box 4:
                    <input type="text" name="about[about_ser_headline_4]" value="
            <?php echo get_post_meta($post->ID, 'about_ser_headline_4', 1); ?>" style="width:100%;">
                </p>

                <p>
                    Text box 4:
                    <textarea type="text" name="about[about_ser_text_4]" style="width:100%;">
                    <?php echo get_post_meta($post->ID, 'about_ser_text_4', 1); ?>
                </textarea>
                </p>

            </div>
        </div>

    </div>

    <input type="hidden" name="about_src_fields_nonce" value="<?php echo wp_create_nonce(__FILE__); ?>" />
	<?php
}

// включаем обновление полей при сохранении
add_action( 'save_post', 'my_extra_fields_update', 0 );
add_action( 'save_post', 'my_about_fields_update', 0 );
add_action( 'save_post', 'my_about_src_fields_update', 0 );

## Сохраняем данные, при сохранении поста
function my_extra_fields_update( $post_id ){
	// базовая проверка
	if (
		empty( $_POST['extra'] )
		|| ! wp_verify_nonce( $_POST['extra_fields_nonce'], __FILE__ )
		|| wp_is_post_autosave( $post_id )
		|| wp_is_post_revision( $post_id )
	)
		return false;

	// Все ОК! Теперь, нужно сохранить/удалить данные
	$_POST['extra'] = array_map( 'sanitize_text_field', $_POST['extra'] ); // чистим все данные от пробелов по краям
	foreach( $_POST['extra'] as $key => $value ){
		if( empty($value) ){
			delete_post_meta( $post_id, $key ); // удаляем поле если значение пустое
			continue;
		}

		update_post_meta( $post_id, $key, $value ); // add_post_meta() работает автоматически
	}

	return $post_id;
}

## Сохраняем данные, при сохранении страницы about
function my_about_fields_update( $post_id ){
	// базовая проверка
	if (
		empty( $_POST['about'] )
		|| ! wp_verify_nonce( $_POST['about_fields_nonce'], __FILE__ )
		|| wp_is_post_autosave( $post_id )
		|| wp_is_post_revision( $post_id )
	)
		return false;

	// Все ОК! Теперь, нужно сохранить/удалить данные
	$_POST['about'] = array_map( 'sanitize_text_field', $_POST['about'] ); // чистим все данные от пробелов по краям
	foreach( $_POST['about'] as $key => $value ){
		if( empty($value) ){
			delete_post_meta( $post_id, $key ); // удаляем поле если значение пустое
			continue;
		}
		update_post_meta( $post_id, $key, $value ); // add_post_meta() работает автоматически
	}

	return $post_id;
}

## Сохраняем данные, при сохранении страницы about
function my_about_src_fields_update( $post_id ){
	// базовая проверка
	if (
		empty( $_POST['about'] )
		|| ! wp_verify_nonce( $_POST['about_src_fields_nonce'], __FILE__ )
		|| wp_is_post_autosave( $post_id )
		|| wp_is_post_revision( $post_id )
	)
		return false;

	// Все ОК! Теперь, нужно сохранить/удалить данные
	$_POST['about'] = array_map( 'sanitize_text_field', $_POST['about'] ); // чистим все данные от пробелов по краям
	foreach( $_POST['about'] as $key => $value ){
		if( empty($value) ){
			delete_post_meta( $post_id, $key ); // удаляем поле если значение пустое
			continue;
		}

		update_post_meta( $post_id, $key, $value ); // add_post_meta() работает автоматически
	}

	return $post_id;
}





// подключаем функцию активации мета блока (my_extra_fields)
add_action('add_meta_boxes', 'main_extra_fields', 1);

function main_extra_fields() {
	global $post;

	if('about.php' == get_post_meta($post->ID, '_wp_page_template', true) ) {

		add_meta_box( 'main_extra_fields', 'Тестовое поле', 'main_extra_fields_box_func', 'page', 'normal', 'high'  );
	}
}


// код блока
function main_extra_fields_box_func( $post ){
	global $post;
	?>
    <p><input type="text" name="field[field_title]" value="<?php echo get_post_meta($post->ID, 'field_title', 1); ?>" style="width:50%" /></p>

    <p>Описание статьи (description):
        <textarea type="text" name="field[field_description]" style="width:100%;height:50px;"><?php echo get_post_meta($post->ID, 'field_description', 1); ?></textarea>
    </p>

    <p>Описание статьи (description):
        <textarea type="text" name="field[field_des]" style="width:100%;height:50px;"><?php echo get_post_meta($post->ID, 'field_des', 1); ?></textarea>
    </p>

    <input type="hidden" name="main_extra_fields_nonce" value="<?php echo wp_create_nonce(__FILE__); ?>" />
	<?php
}

// включаем обновление полей при сохранении
add_action( 'save_post', 'main_extra_fields_update', 0 );

## Сохраняем данные, при сохранении поста
function main_extra_fields_update( $post_id ){
	// базовая проверка
	if (
		empty( $_POST['field'] )
		|| ! wp_verify_nonce( $_POST['main_extra_fields_nonce'], __FILE__ )
		|| wp_is_post_autosave( $post_id )
		|| wp_is_post_revision( $post_id )
	)
		return false;

	// Все ОК! Теперь, нужно сохранить/удалить данные
	$_POST['field'] = array_map( 'sanitize_text_field', $_POST['field'] ); // чистим все данные от пробелов по краям
	foreach( $_POST['field'] as $key => $value ){
		if( empty($value) ){
			delete_post_meta( $post_id, $key ); // удаляем поле если значение пустое
			continue;
		}

		update_post_meta( $post_id, $key, $value ); // add_post_meta() работает автоматически
	}

	return $post_id;
}






class trueMetaBox {



	function __construct($options) {
		$this->options = $options;
		$this->prefix = $this->options['id'] .'_';
		add_action( 'add_meta_boxes', array( &$this, 'create' ) );
		add_action( 'save_post', array( &$this, 'save' ), 1, 2 );
	}
	function create() {
		foreach ($this->options['post'] as $post_type) {
			if (current_user_can( $this->options['cap'])) {
				add_meta_box($this->options['id'], $this->options['name'], array(&$this, 'fill'), $post_type, $this->options['pos'], $this->options['pri']);
			}
		}
	}
	function fill(){
		global $post; $p_i_d = $post->ID;
		wp_nonce_field( $this->options['id'], $this->options['id'].'_wpnonce', false, true );
		?>
        <table class="form-table"><tbody><?php
		foreach ( $this->options['args'] as $param ) {
			if (current_user_can( $param['cap'])) {
				?><tr><?php
				if(!$value = get_post_meta($post->ID, $this->prefix .$param['id'] , true)) $value = $param['std'];
				switch ( $param['type'] ) {
					case 'text':{ ?>
                        <th scope="row"><label for="<?php echo $this->prefix .$param['id'] ?>"><?php echo $param['title'] ?></label></th>
                        <td>
                            <input name="<?php echo $this->prefix .$param['id'] ?>" type="<?php echo $param['type'] ?>" id="<?php echo $this->prefix .$param['id'] ?>" value="<?php echo $value ?>" placeholder="<?php echo $param['placeholder'] ?>" class="regular-text" /><br />
                            <span class="description"><?php echo $param['desc'] ?></span>
                        </td>
						<?php
						break;
					}
					case 'textarea':{ ?>
                        <th scope="row"><label for="<?php echo $this->prefix .$param['id'] ?>"><?php echo $param['title'] ?></label></th>
                        <td>
                            <textarea name="<?php echo $this->prefix .$param['id'] ?>" type="<?php echo $param['type'] ?>" id="<?php echo $this->prefix .$param['id'] ?>" value="<?php echo $value ?>" placeholder="<?php echo $param['placeholder'] ?>" class="large-text" /><?php echo $value ?></textarea><br />
                            <span class="description"><?php echo $param['desc'] ?></span>
                        </td>
						<?php
						break;
					}
					case 'checkbox':{ ?>
                        <th scope="row"><label for="<?php echo $this->prefix .$param['id'] ?>"><?php echo $param['title'] ?></label></th>
                        <td>
                            <label for="<?php echo $this->prefix .$param['id'] ?>"><input name="<?php echo $this->prefix .$param['id'] ?>" type="<?php echo $param['type'] ?>" id="<?php echo $this->prefix .$param['id'] ?>"<?php echo ($value=='on') ? ' checked="checked"' : '' ?> />
								<?php echo $param['desc'] ?></label>
                        </td>
						<?php
						break;
					}
					case 'select':{ ?>
                        <th scope="row"><label for="<?php echo $this->prefix .$param['id'] ?>"><?php echo $param['title'] ?></label></th>
                        <td>
                            <label for="<?php echo $this->prefix .$param['id'] ?>">
                                <select name="<?php echo $this->prefix .$param['id'] ?>" id="<?php echo $this->prefix .$param['id'] ?>"><option>...</option><?php
									foreach($param['args'] as $val=>$name){
										?><option value="<?php echo $val ?>"<?php echo ( $value == $val ) ? ' selected="selected"' : '' ?>><?php echo $name ?></option><?php
									}
									?></select></label><br />
                            <span class="description"><?php echo $param['desc'] ?></span>
                        </td>
						<?php
						break;
					}
				}
				?></tr><?php
			}
		}
		?></tbody></table><?php
	}
	function save($post_id, $post){
		if ( !wp_verify_nonce( $_POST[ $this->options['id'].'_wpnonce' ], $this->options['id'] ) ) return;
		if ( !current_user_can( 'edit_post', $post_id ) ) return;
		if ( !in_array($post->post_type, $this->options['post'])) return;
		foreach ( $this->options['args'] as $param ) {
			if ( current_user_can( $param['cap'] ) ) {
				if ( isset( $_POST[ $this->prefix . $param['id'] ] ) && trim( $_POST[ $this->prefix . $param['id'] ] ) ) {
					update_post_meta( $post_id, $this->prefix . $param['id'], trim($_POST[ $this->prefix . $param['id'] ]) );
				} else {
					delete_post_meta( $post_id, $this->prefix . $param['id'] );
				}
			}
		}
	}
}

$options = array(
	array( // первый метабокс
		'id'	=>	'meta1', // ID метабокса, а также префикс названия произвольного поля
		'name'	=>	'Доп. настройки 1 - название услуги', // заголовок метабокса
		'post'	=>	array('post'), // типы постов для которых нужно отобразить метабокс
		'pos'	=>	'normal', // расположение, параметр $context функции add_meta_box()
		'pri'	=>	'high', // приоритет, параметр $priority функции add_meta_box()
		'cap'	=>	'edit_posts', // какие права должны быть у пользователя
		'args'	=>	array(
			array(
				'id'			=>	'field_1', // атрибуты name и id без префикса, например с префиксом будет meta1_field_1
				'title'			=>	'Текст', // лейбл поля
				'type'			=>	'text', // тип, в данном случае обычное текстовое поле
				'placeholder'	=>	'плейсхолдер, например введите email', // атрибут placeholder
				'desc'			=>	'пример использования текстового поля ввода в метабоксе', // что-то типа пояснения, подписи к полю
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'terms',
				'title'			=>	'Чекбокс',
				'type'			=>	'checkbox', // чекбокс
				'desc'			=>	'пример чекбокса',
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'textfield',
				'title'			=>	'Текстовое поле',
				'type'			=>	'textarea', // большое текстовое поле
				'placeholder'	=>	'сюда тоже можно забацать плейсхолдер',
				'desc'			=>	'пример использования большого текстового поля ввода в метабоксе',
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'select1',
				'title'			=>	'Выпадающий список',
				'type'			=>	'select', // выпадающий список
				'desc'			=>	'тут тоже можно написать пояснение к полю, значения же задаются через ассоциативный массив',
				'cap'			=>	'edit_posts',
				'args'			=>	array('value_1' => 'Значение 1', '2' => 'Значение 2', 'Значение_3' => 'Значение 3' ) // элементы списка задаются через массив args, по типу value=>лейбл
			)
		)
	),
	array( // второй метабокс
		'id'	=>	'meta2',
		'name'	=>	'Доп. настройки 2',
		'post'	=>	array('post', 'page'), // не только для постов, но и для страниц
		'pos'	=>	'normal',
		'pri'	=>	'high',
		'cap'	=>	'edit_posts',
		'args'	=>	array(
			array(
				'id'			=>	'featured',
				'title'			=>	'На главную',
				'desc'			=>	'Отображать пост на главной странице',
				'type'			=>	'checkbox',
				'cap'			=>	'edit_posts'
			)
		)
	),
	array( // третий метабокс
		'id'	=>	'meta3',
		'name'	=>	'Доп. настройки 3 - изображения ',
		'post'	=>	array('page'), // не только для постов, но и для страниц
		'pos'	=>	'normal',
		'pri'	=>	'high',
		'cap'	=>	'edit_posts',
		'args'	=>	array(
			array(
				'id'			=>	'header_1',
				'title'			=>	'Заголовок 1',
				'type'			=>	'text',
				'placeholder'	=>	'',
				'desc'			=>	'',
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'img_1',
				'title'			=>	'Картинка 1',
				'type'			=>	'text',
				'placeholder'	=>	'',
				'desc'			=>	'',
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'header_2',
				'title'			=>	'Заголовок 2',
				'type'			=>	'text',
				'placeholder'	=>	'',
				'desc'			=>	'',
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'img_2',
				'title'			=>	'Картинка 2',
				'type'			=>	'text',
				'placeholder'	=>	'',
				'desc'			=>	'',
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'header_3',
				'title'			=>	'Заголовок 3',
				'type'			=>	'text',
				'placeholder'	=>	'',
				'desc'			=>	'',
				'cap'			=>	'edit_posts'
			)
		)
	)
);

$options2 = array(
	array( // первый метабокс
		'id'	=>	'meta1', // ID метабокса, а также префикс названия произвольного поля
		'name'	=>	'Доп. настройки 1 - название услуги', // заголовок метабокса
		'post'	=>	array('post'), // типы постов для которых нужно отобразить метабокс
		'pos'	=>	'normal', // расположение, параметр $context функции add_meta_box()
		'pri'	=>	'high', // приоритет, параметр $priority функции add_meta_box()
		'cap'	=>	'edit_posts', // какие права должны быть у пользователя
		'args'	=>	array(
			array(
				'id'			=>	'field_1', // атрибуты name и id без префикса, например с префиксом будет meta1_field_1
				'title'			=>	'Текст', // лейбл поля
				'type'			=>	'text', // тип, в данном случае обычное текстовое поле
				'placeholder'	=>	'плейсхолдер, например введите email', // атрибут placeholder
				'desc'			=>	'пример использования текстового поля ввода в метабоксе', // что-то типа пояснения, подписи к полю
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'terms',
				'title'			=>	'Чекбокс',
				'type'			=>	'checkbox', // чекбокс
				'desc'			=>	'пример чекбокса',
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'textfield',
				'title'			=>	'Текстовое поле',
				'type'			=>	'textarea', // большое текстовое поле
				'placeholder'	=>	'сюда тоже можно забацать плейсхолдер',
				'desc'			=>	'пример использования большого текстового поля ввода в метабоксе',
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'select1',
				'title'			=>	'Выпадающий список',
				'type'			=>	'select', // выпадающий список
				'desc'			=>	'тут тоже можно написать пояснение к полю, значения же задаются через ассоциативный массив',
				'cap'			=>	'edit_posts',
				'args'			=>	array('value_1' => 'Значение 1', '2' => 'Значение 2', 'Значение_3' => 'Значение 3' ) // элементы списка задаются через массив args, по типу value=>лейбл
			)
		)
	),
	array( // второй метабокс
		'id'	=>	'meta2',
		'name'	=>	'Доп. настройки 2',
		'post'	=>	array('post', 'page'), // не только для постов, но и для страниц
		'pos'	=>	'normal',
		'pri'	=>	'high',
		'cap'	=>	'edit_posts',
		'args'	=>	array(
			array(
				'id'			=>	'featured',
				'title'			=>	'На главную',
				'desc'			=>	'Отображать пост на главной странице',
				'type'			=>	'checkbox',
				'cap'			=>	'edit_posts'
			)
		)
	),
	array( // третий метабокс
		'id'	=>	'meta2',
		'name'	=>	'Доп. настройки 3 - изображения ',
		'post'	=>	array('page'), // не только для постов, но и для страниц
		'pos'	=>	'normal',
		'pri'	=>	'high',
		'cap'	=>	'edit_posts',
		'args'	=>	array(
			array(
				'id'			=>	'header_1',
				'title'			=>	'Заголовок 1',
				'type'			=>	'text',
				'placeholder'	=>	'',
				'desc'			=>	'',
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'img_1',
				'title'			=>	'Картинка 1',
				'type'			=>	'text',
				'placeholder'	=>	'',
				'desc'			=>	'',
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'header_2',
				'title'			=>	'Заголовок 2',
				'type'			=>	'text',
				'placeholder'	=>	'',
				'desc'			=>	'',
				'cap'			=>	'edit_posts'
			),
			array(
				'id'			=>	'img_2',
				'title'			=>	'Картинка 2',
				'type'			=>	'text',
				'placeholder'	=>	'',
				'desc'			=>	'',
				'cap'			=>	'edit_posts'
			)
		)
	)
);
//формирование метабоксов для страниц с масива $options
foreach ($options as $option) {
	$truemetabox = new trueMetaBox($option);
}
foreach ($options2 as $option) {
	$truemetabox = new trueMetaBox($option);
}
