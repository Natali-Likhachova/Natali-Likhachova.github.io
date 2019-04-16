<?php
/**
 * Template Name: My page template for about us page
 */
get_header();
?>

<?php
$sliders_about = get_post_meta( $post->ID, 'about_slider_list', true );
$advaced_about = get_post_meta( $post->ID, 'about_advansed_list', true );
$information_about = get_post_meta( $post->ID, 'about_information_list', true );
$team_about = get_post_meta( $post->ID, 'about_team_list', true );
$clients_about = get_post_meta( $post->ID, 'about_clients_list', true );
$newsletter_about = get_post_meta( $post->ID, 'about_newsletter_list', true );
/*echo '<pre>'
print_r($sliders_about);
echo '</pre>';*/
?>

    <section class="up_about">
        <h1>
            about us
        </h1>
        <h2 class="up_about-subtitle">
            <a href="<?php echo home_url()?>">
                home
            </a>
                /
            <a href="<?php echo home_url('/about-us')?>">
                about
            </a>
        </h2>
    </section>

    <?php
    if (get_post_meta($post->ID, 'about_information_show', true ) != 'off') : ?>
        <section class="information">
            <div class="container banner_wr">
                <ul class="banner">
                    <?php
                    foreach ($information_about as $adv) :
                        $adv_header = $adv['about_information_list_header'] ? $adv['about_information_list_header'] : '';
                        $adv_subtitle = $adv['about_information_list_subtitle'] ? $adv['about_information_list_subtitle'] : '';
                        $adv_text = $adv['about_information_list_text'] ? $adv['about_information_list_text'] : '';
                        ?>
                        <li>
                            <h3><?php echo $adv_header ;?></h3>
                            <h4><?php echo $adv_subtitle ;?></h4>
                            <p><?php echo $adv_text;?></p>
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
    if (get_post_meta($post->ID, 'about_advansed_show', true ) != 'off') : ?>
        <section class="benefits">
            <div class="benefits_title">
                <h2>
                    some benefits
                </h2>
                <p class="title_text">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua.
                </p>
            </div>
            <div class="container banner_wr">
                <ul class="banner">
                    <?php
                    foreach ($advaced_about as $adv) :
                        $adv_icon = $adv['about_slider_list_upload'] ? $adv['about_slider_list_upload'] : '';
                        $adv_header = $adv['about_advansed_list_header'] ? $adv['about_advansed_list_header'] : '';
                        $adv_text = $adv['about_advansed_list_text'] ? $adv['about_advansed_list_text'] : '';
                        ?>
                        <li>
                            <div class="banner_box">
                                <img src="<?php echo $adv_icon ;?>">
                                <h3><?php echo $adv_header ;?></h3>
                            </div>
                            <p><?php echo wp_trim_words( $adv_text, 21, ' ...' );?></p>
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
    if (get_post_meta($post->ID, 'about_team_show', true ) != 'off') : ?>
        <section class="team">
            <div class="team_title">
                <h2>
                    THE DREAM TEAM
                </h2>
                <p class="title_text">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua.
                </p>
            </div>
            <div class="container banner_wr">
                <ul class="banner">
                    <?php
                    foreach ($team_about as $adv) :
                        $adv_icon = $adv['about_team_list_upload'] ? $adv['about_team_list_upload'] : '';
                        ?>
                        <li>
                            <img src="<?php echo $adv_icon ;?>">
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

    <section class="bar">
        <div class="bar_text">
            <p>
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod
            </p>
            <button class="bar_btn">
                read more
            </button>
        </div>
    </section>

    <main>
        <?php
        if ($sliders_about && (get_post_meta($post->ID, 'about_slider_show', true ) != 'off')) : ?>
            <section class="camera_container">
                <div id="camera" class="camera_wrap">
                    <?php
                    foreach ($sliders_about as $slider) :
                        $slide_header = $slider['about_slider_list_header'] ? $slider['about_slider_list_header'] : '';
                        $slider_upload = $slider['about_slider_list_upload'] ? $slider['about_slider_list_upload'] : '';
                        ?>

                        <div data-src="<?php echo $slider_upload ; ?>">
                            <div class="camera_caption fadeIn">
                                <div class="container">
                                    <div class="row">
                                        <div class="preffix_6 grid_6"><?php echo $slide_header; ?></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php
                    endforeach;
                    ?>

                </div>
            </section>
        <?php
        endif;
        ?>
    </main>

    <section class="top">
        <div class="top__carousel">
            <div class="top__carousel-box">
                <input type="radio" name="slides" id="radio-1" checked>
                <input type="radio" name="slides" id="radio-2">
                <input type="radio" name="slides" id="radio-3">
                <ul class="slides">
                    <li class="slide">
                        <img src="<?php bloginfo('template_url')?> /img/about/carousel/Layer_13.png" alt="">
                        <p>
                        <h2>
                            Quisque iaculis lorem vestibulum eros vehicula, non congue elit dictum. Donec mollis
                            aliquet lorem, eu porttitor sapien semper in. Duis ac erat luctus, gravida lectus sit amet,
                            consectetur orci. Suspendisse libero mauris.
                        </h2>
                        <button class="carousel_btn">
                            john doe
                        </button>
                        </p>
                    </li>
                    <li class="slide">
                        <img src="<?php bloginfo('template_url')?> /img/about/carousel/Layer_13.png" alt="">
                        <p>
                        <h2>
                            Quisque iaculis lorem vestibulum eros vehicula, non congue elit dictum. Donec mollis
                            aliquet lorem, eu porttitor sapien semper in. Duis ac erat luctus, gravida lectus sit amet,
                            consectetur orci. Suspendisse libero mauris.
                        </h2>
                        <button class="carousel_btn">
                            john doe
                        </button>
                        </p>
                    </li>
                    <li class="slide">
                        <img src="<?php bloginfo('template_url')?> /img/about/carousel/Layer_13.png" alt="">
                        <p>
                        <h2>
                            Quisque iaculis lorem vestibulum eros vehicula, non congue elit dictum. Donec mollis
                            aliquet lorem, eu porttitor sapien semper in. Duis ac erat luctus, gravida lectus sit amet,
                            consectetur orci. Suspendisse libero mauris.
                        </h2>
                        <button class="carousel_btn">
                            john doe
                        </button>
                        </p>
                    </li>
                </ul>
                <div class="slidesNavigation">
                    <label for="radio-1" id="dotForRadio-1"></label>
                    <label for="radio-2" id="dotForRadio-2"></label>
                    <label for="radio-3" id="dotForRadio-3"></label>
                </div>
            </div>
        </div>
        <div class="top__clients">

            <?php
            if (get_post_meta($post->ID, 'about_team_show', true ) != 'off') : ?>
                <div class="clients">
                    <div class="container banner_wr">
                        <ul class="banner">
                            <?php
                            foreach ($clients_about as $adv) :
                                $adv_icon = $adv['about_clients_list_upload'] ? $adv['about_clients_list_upload'] : '';
                                ?>
                                <li>
                                    <img src="<?php echo $adv_icon ;?>">
                                </li>
                            <?php
                            endforeach;
                            ?>
                        </ul>
                    </div>
                </div>
            <?php
            endif;
            ?>

        </div>
    </section>

    <?php
    if (get_post_meta($post->ID, 'about_newsletter_show', true ) != 'off') : ?>
        <section class="newsletter">
            <div class="container banner_wr">
                <ul class="banner">
                    <?php
                    foreach ($newsletter_about as $adv) :
                        $adv_header = $adv['about_newsletter_list_header'] ? $adv['about_newsletter_list_header'] : '';
                        $adv_second = $adv['about_newsletter_list_second_heading'] ? $adv['about_newsletter_list_second_heading'] : '';
                        $adv_text = $adv['about_newsletter_list_text'] ? $adv['about_newsletter_list_text'] : '';
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