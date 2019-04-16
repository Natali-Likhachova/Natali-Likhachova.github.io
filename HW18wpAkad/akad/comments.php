<?php
/**
 * The template for displaying comments
 *
 * This is the template that displays the area of the page that contains both the current comments
 * and the comment form.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package akad
 */

/*
 * If the current post is protected by a password and
 * the visitor has not yet entered the password we will
 * return early without loading the comments.
 */

?>

<div class="wrapper">

<section class="blog__post">
    <?php
    global $post;
    $args = array( 'posts_per_page' => 1);
    $myposts = get_posts( $args );
    foreach( $myposts as $post ){ setup_postdata($post);
        ?>

        <div class="post_box">
            <?php the_post_thumbnail('full')?>
            <p class="post_data">
                <?php the_date('F j, Y')?>
            </p>
            <h3>
                <?php the_title(); ?>
            </h3>
            <p class="post_text">
                <?php the_content(); ?>
            </p>
        </div>
        <?php
    }
    wp_reset_postdata();
    ?>
</section>
</div>
