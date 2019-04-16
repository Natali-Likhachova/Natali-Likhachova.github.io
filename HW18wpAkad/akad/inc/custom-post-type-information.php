<?php
// Register Custom Post Type
function custom_post_type_information() {
    $labels = array(
        'name'                  => 'Information',//начало ошибки
        'singular_name'         => 'Information',
        'menu_name'             => 'Information',
        'add_new_item'          => 'Add new',
        'add_new'               => 'Add new',
        'new_item'              => 'New',
        'edit_item'             => 'Edit',
        'update_item'           => 'Refresh',
        'view_item'             => 'View',
        'view_items'            => 'View all',
    );

    $rewrite = array(
        'slug'                  => 'information',
        'with_front'            => true,
        'pages'                 => false,
        'feeds'                 => false,
    );
    $args = array(
        'label'                 => 'Information',
        'labels'                => $labels,
        'supports'              => array( 'title', 'editor', 'excerpt', 'thumbnail', 'custom-fields', ),
        'hierarchical'          => false,
        'public'                => true,
        'show_ui'               => true,
        'show_in_menu'          => true,
        'menu_position'         => 6,
        'menu_icon'             => 'dashicons-megaphone',
        'show_in_admin_bar'     => true,
        'show_in_nav_menus'     => true,
        'can_export'            => true,
        'has_archive'           => false,
        'exclude_from_search'   => true,
        'publicly_queryable'    => true,
        'query_var'             => 'information',
        'rewrite'               => $rewrite,
    );
    register_post_type( 'artbt_information', $args );
}
add_action( 'init', 'custom-post-type-information', 0 );//конец ошибки