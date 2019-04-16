<?php
/**
 * Initialize the custom Meta Boxes. 
 */
add_action( 'admin_init', 'custom_meta_boxes' );

/**
 * Meta Boxes demo code.
 *
 * You can find all the available option types in demo-theme-options.php.
 *
 * @return    void
 * @since     2.0
 */
function custom_meta_boxes() {
  
  /**
   * Create a custom meta boxes array that we pass to 
   * the OptionTree Meta Box API Class.
   */



  $blog_page = array(
        'id'          => 'blog_page_box',
        'title'       => 'Blog page settings',
        'desc'        => '',
        'pages'       => array( 'page' ),
        'context'     => 'normal',
        'priority'    => 'high',
        'fields'      => array(
            array(
                'label'       => 'Newsletter',
                'id'          => 'blog_newsletter_tab',
                'type'        => 'tab'
            ),
            array(
                'label'       => 'Show newsletter',
                'id'          => 'blog_newsletter_show',
                'type'        => 'on-off',
                'desc'        => 'Show or not on the blog page',
                'std'         => 'on'
            ),
            array(
                'id'          => 'blog_newsletter_list',
                'label'       => 'newsletter',
                'desc'        => '',
                'std'         => '',
                'type'        => 'list-item',
                'condition'   => 'blog_newsletter_show:is(on)',
                'settings'    => array(
                    array(
                        'id'          => 'blog_newsletter_list_header',
                        'label'       => 'Write a headline',
                        'desc'        => '',
                        'type'        => 'text',
                    ),
                    array(
                        'id'          => 'blog_newsletter_list_second_heading',
                        'label'       => 'Write a headline',
                        'desc'        => '',
                        'type'        => 'text',
                    ),
                    array(
                        'id'          => 'blog_newsletter_list_text',
                        'label'       => 'Write the description text',
                        'desc'        => '',
                        'type'        => 'textarea',
                    ),
                )
            ),
        )
    );

  $about_page = array(
        'id'          => 'about_page_box',
        'title'       => 'About page settings',
        'desc'        => '',
        'pages'       => array( 'page' ),
        'context'     => 'normal',
        'priority'    => 'high',
        'fields'      => array(
            array(
                'label'       => 'Information',
                'id'          => 'about_information_tab',
                'type'        => 'tab'
            ),
            array(
                'label'       => 'Show information',
                'id'          => 'about_information_show',
                'type'        => 'on-off',
                'desc'        => 'Show or not on the main page',
                'std'         => 'on'
            ),
            array(
                'id'          => 'about_information_list',
                'label'       => 'Information',
                'desc'        => '',
                'std'         => '',
                'type'        => 'list-item',
                'condition'   => 'about_information_show:is(on)',
                'settings'    => array(
                    array(
                        'id'          => 'about_information_list_header',
                        'label'       => 'Write a headline',
                        'desc'        => '',
                        'type'        => 'text',
                    ),
                    array(
                        'id'          => 'about_information_list_subtitle',
                        'label'       => 'Write a subtitle',
                        'desc'        => '',
                        'type'        => 'text',
                    ),
                    array(
                        'id'          => 'about_information_list_text',
                        'label'       => 'Write the description text',
                        'desc'        => '',
                        'type'        => 'textarea',
                    ),
                )
            ),
            array(
                'label'       => 'Slider',
                'id'          => 'about_slider_tab',
                'type'        => 'tab'
            ),
            array(
                'label'       => 'Show Gallery',
                'id'          => 'about_slider_show',
                'type'        => 'on-off',
                'desc'        => 'Show or not the slider on the about page',
                'std'         => 'on'
            ),
            array(
                'id'          => 'about_slider_list',
                'label'       => 'Slider',
                'desc'        => '',
                'std'         => '',
                'type'        => 'list-item',
                'condition'   => 'about_slider_show:is(on)',
                'settings'    => array(
                    array(
                        'id'          => 'about_slider_list_header',
                        'label'       => 'Write a headline',
                        'desc'        => '',
                        'type'        => 'text',
                    ),
                    array(
                        'id'          => 'about_slider_list_upload',
                        'label'       => 'Download slide',
                        'desc'        => '',
                        'type'        => 'upload',
                    ),
                )
            ),
            array(
                'label'       => 'Benefits',
                'id'          => 'about_advansed_tab',
                'type'        => 'tab'
            ),
            array(
                'label'       => 'Show benefits',
                'id'          => 'about_advansed_show',
                'type'        => 'on-off',
                'desc'        => 'Show or not on the about page',
                'std'         => 'on'
            ),
            array(
                'id'          => 'about_advansed_list',
                'label'       => 'Benefits',
                'desc'        => '',
                'std'         => '',
                'type'        => 'list-item',
                'condition'   => 'about_advansed_show:is(on)',
                'settings'    => array(
                    array(
                        'id'          => 'about_slider_list_upload',
                        'label'       => 'Download slide',
                        'desc'        => '',
                        'type'        => 'upload',
                    ),
                    array(
                        'id'          => 'about_advansed_list_header',
                        'label'       => 'Write a headline',
                        'desc'        => '',
                        'type'        => 'text',
                    ),
                    array(
                        'id'          => 'about_advansed_list_text',
                        'label'       => 'Write the description text',
                        'desc'        => '',
                        'type'        => 'textarea',
                    ),
                )
            ),
            array(
                'label'       => 'Team',
                'id'          => 'about_team_tab',
                'type'        => 'tab'
            ),
            array(
                'label'       => 'Show team',
                'id'          => 'about_team_show',
                'type'        => 'on-off',
                'desc'        => 'Show or not on the about page',
                'std'         => 'on'
            ),
            array(
                'id'          => 'about_team_list',
                'label'       => 'Team',
                'desc'        => '',
                'std'         => '',
                'type'        => 'list-item',
                'condition'   => 'about_team_show:is(on)',
                'settings'    => array(
                    array(
                        'id'          => 'about_team_list_upload',
                        'label'       => 'Download slide',
                        'desc'        => '',
                        'type'        => 'upload',

                    ),

                )
            ),
            array(
                'label'       => 'Clients',
                'id'          => 'about_clients_tab',
                'type'        => 'tab'
            ),
            array(
                'label'       => 'Show clients',
                'id'          => 'about_clients_show',
                'type'        => 'on-off',
                'desc'        => 'Show or not on the about page',
                'std'         => 'on'
            ),
            array(
                'id'          => 'about_clients_list',
                'label'       => 'Clients',
                'desc'        => '',
                'std'         => '',
                'type'        => 'list-item',
                'condition'   => 'about_clients_show:is(on)',
                'settings'    => array(
                    array(
                        'id'          => 'about_clients_list_upload',
                        'label'       => 'Download slide',
                        'desc'        => '',
                        'type'        => 'upload',

                    ),

                )
            ),
            array(
                'label'       => 'Newsletter',
                'id'          => 'about_newsletter_tab',
                'type'        => 'tab'
            ),
            array(
                'label'       => 'Show newsletter',
                'id'          => 'about_newsletter_show',
                'type'        => 'on-off',
                'desc'        => 'Show or not on the about page',
                'std'         => 'on'
            ),
            array(
                'id'          => 'about_newsletter_list',
                'label'       => 'newsletter',
                'desc'        => '',
                'std'         => '',
                'type'        => 'list-item',
                'condition'   => 'about_newsletter_show:is(on)',
                'settings'    => array(
                    array(
                        'id'          => 'about_newsletter_list_header',
                        'label'       => 'Write a headline',
                        'desc'        => '',
                        'type'        => 'text',
                    ),
                    array(
                        'id'          => 'about_newsletter_list_second_heading',
                        'label'       => 'Write a headline',
                        'desc'        => '',
                        'type'        => 'text',
                    ),
                    array(
                        'id'          => 'about_newsletter_list_text',
                        'label'       => 'Write the description text',
                        'desc'        => '',
                        'type'        => 'textarea',
                    ),
                )
            ),


        )
    );

  $main_page = array(
        'id'          => 'main_page_box',
        'title'       => 'Main page settings',
        'desc'        => '',
        'pages'       => array( 'page' ),
        'context'     => 'normal',
        'priority'    => 'high',
        'fields'      => array(
            array(
                'label'       => 'Choose',
                'id'          => 'main_choose_tab',
                'type'        => 'tab'
            ),
            array(
                'label'       => 'Show choose',
                'id'          => 'main_choose_show',
                'type'        => 'on-off',
                'desc'        => 'Show or not on the main page',
                'std'         => 'on'
            ),
            array(
                'id'          => 'main_choose_list',
                'label'       => 'Choose',
                'desc'        => '',
                'std'         => '',
                'type'        => 'list-item',
                'condition'   => 'main_choose_show:is(on)',
                'settings'    => array(
                    array(
                        'id'          => 'main_choose_list_upload',
                        'label'       => 'Download slide',
                        'desc'        => '',
                        'type'        => 'upload',
                    ),
                    array(
                        'id'          => 'main_choose_list_header',
                        'label'       => 'Write a headline',
                        'desc'        => '',
                        'type'        => 'text',
                    ),
                    array(
                        'id'          => 'main_choose_list_text',
                        'label'       => 'Write the description text',
                        'desc'        => '',
                        'type'        => 'textarea',
                    ),
                )
            ),
            array(
                'label'       => 'Newsletter',
                'id'          => 'main_newsletter_tab',
                'type'        => 'tab'
            ),
            array(
                'label'       => 'Show newsletter',
                'id'          => 'main_newsletter_show',
                'type'        => 'on-off',
                'desc'        => 'Show or not on the main page',
                'std'         => 'on'
            ),
            array(
                'id'          => 'main_newsletter_list',
                'label'       => 'newsletter',
                'desc'        => '',
                'std'         => '',
                'type'        => 'list-item',
                'condition'   => 'main_newsletter_show:is(on)',
                'settings'    => array(
                    array(
                        'id'          => 'main_newsletter_list_header',
                        'label'       => 'Write a headline',
                        'desc'        => '',
                        'type'        => 'text',
                    ),
                    array(
                        'id'          => 'main_newsletter_list_second_heading',
                        'label'       => 'Write a headline',
                        'desc'        => '',
                        'type'        => 'text',
                    ),
                    array(
                        'id'          => 'main_newsletter_list_text',
                        'label'       => 'Write the description text',
                        'desc'        => '',
                        'type'        => 'textarea',
                    ),
                )
            ),
        )
    );


  $my_meta_box = array(
    'id'          => 'demo_meta_box',
    'title'       => __( 'Demo Meta Box', 'theme-text-domain' ),
    'desc'        => '',
    'pages'       => array( 'post' ),
    'context'     => 'normal',
    'priority'    => 'high',
    'fields'      => array(
      array(
        'label'       => __( 'Conditions', 'theme-text-domain' ),
        'id'          => 'demo_conditions',
        'type'        => 'tab'
      ),
      array(
        'label'       => __( 'Show Gallery', 'theme-text-domain' ),
        'id'          => 'demo_show_gallery',
        'type'        => 'on-off',
        'desc'        => sprintf( __( 'Shows the Gallery when set to %s.', 'theme-text-domain' ), '<code>on</code>' ),
        'std'         => 'off'
      ),
      array(
        'label'       => '',
        'id'          => 'demo_textblock',
        'type'        => 'textblock',
        'desc'        => __( 'Congratulations, you created a gallery!', 'theme-text-domain' ),
        'operator'    => 'and',
        'condition'   => 'demo_show_gallery:is(on),demo_gallery:not()'
      ),
      array(
        'label'       => __( 'Gallery', 'theme-text-domain' ),
        'id'          => 'demo_gallery',
        'type'        => 'gallery',
        'desc'        => sprintf( __( 'This is a Gallery option type. It displays when %s.', 'theme-text-domain' ), '<code>demo_show_gallery:is(on)</code>' ),
        'condition'   => 'demo_show_gallery:is(on)'
      ),
      array(
        'label'       => __( 'More Options', 'theme-text-domain' ),
        'id'          => 'demo_more_options',
        'type'        => 'tab'
      ),
      array(
        'label'       => __( 'Text', 'theme-text-domain' ),
        'id'          => 'demo_text',
        'type'        => 'text',
        'desc'        => __( 'This is a demo Text field.', 'theme-text-domain' )
      ),
      array(
        'label'       => __( 'Textarea', 'theme-text-domain' ),
        'id'          => 'demo_textarea',
        'type'        => 'textarea',
        'desc'        => __( 'This is a demo Textarea field.', 'theme-text-domain' )
      )
    )
  );
  
  /**
   * Register our meta boxes using the 
   * ot_register_meta_box() function.
   */
    if ( function_exists( 'ot_register_meta_box' ) )
        ot_register_meta_box( $my_meta_box );
    $post_id = isset( $_GET['post'] ) ? $_GET['post'] : ( isset( $_POST['post_ID'] ) ? $_POST['post_ID'] : 0 );
    $template_file = get_post_meta($post_id, '_wp_page_template', TRUE);
    if ( $template_file == 'about.php' ){
        ot_register_meta_box( $about_page );
    }
    if ( $template_file == 'main-page.php' ){
        ot_register_meta_box( $main_page );
    }
    if ( $template_file == 'blog.php' ){
        ot_register_meta_box( $blog_page );
    }



}