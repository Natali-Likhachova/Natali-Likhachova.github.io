<?php
/**
 * Template Name: My page template for blog page
 */
get_header();
?>

<?php
$newsletter_blog = get_post_meta( $post->ID, 'blog_newsletter_list', true );

?>


    <section class="up_blog">
        <h1>
            blog posts
        </h1>
        <h2 class="up_blog-subtitle">
            <a href="<?php echo home_url()?>">
                home
            </a>
            /
            <a href="<?php echo home_url('/blog')?>">
                blog
            </a>
        </h2>
    </section>

<div class="wrapper">

    <section class="blog__post">
        <?php
        global $post;
        $args = array( 'posts_per_page' => 5);
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
                    <?php the_excerpt(); ?>
                </p>
                <p class="post_text-cnt">
                    <a href="<?php the_permalink(); ?>">
                        continue reading
                        <span>
                            <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                        </span>
                    </a>
                </p>
            </div>
            <?php
        }
        wp_reset_postdata();
        ?>
    </section>

    <?php
        get_sidebar();
    ?>

</div>

    <?php
    if (get_post_meta($post->ID, 'blog_newsletter_show', true ) != 'off') : ?>
        <section class="newsletter">
            <div class="container banner_wr">
                <ul class="banner">
                    <?php
                    foreach ($newsletter_blog as $adv) :
                        $adv_header = $adv['blog_newsletter_list_header'] ? $adv['blog_newsletter_list_header'] : '';
                        $adv_second = $adv['blog_newsletter_list_second_heading'] ? $adv['blog_newsletter_list_second_heading'] : '';
                        $adv_text = $adv['blog_newsletter_list_text'] ? $adv['blog_newsletter_list_text'] : '';
                        ?>
                        <li>
                            <div class="work_together">
                                <h3>
                                    <?php echo $adv_header ;?>
                                </h3>
                                <button class="newsletter_btn">
                                    get in touch
                                </button>
                            </div>
                            <div class="form">
                                <h4>
                                    <?php echo $adv_second ;?>
                                </h4>
                                <p>
                                    <?php echo $adv_text ;?>
                                </p>
                                <form action="">
                                    <label for="email"></label>
                                    <input type="text" name="email" id="email" placeholder="your email">
                                    <button class="form_btn">
                                        send
                                    </button>
                                </form>
                            </div>
                        </li>
                    <?php
                    endforeach;
                    ?>

                </ul>
            </div>
        </section>
    <?php
    endif;
    ?>

<?php
get_footer();
