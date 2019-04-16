<?php
/**
* Template Name: My page template for main page
*/

get_header();
?>

<?php
$choose_main = get_post_meta( $post->ID, 'main_choose_list', true );
$newsletter_main = get_post_meta( $post->ID, 'main_newsletter_list', true );
/*echo '<pre>';
print_r($sliders_about);
echo '</pre>';*/
?>


    <section class="up_main">
        <h5>
            we’re
        </h5>
        <h1>
            creative agency
        </h1>
        <h6>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
            dolore magna aliqua.
        </h6>
    </section>

    <section class="history_main">
        <img src="<?php bloginfo('template_url')?>/img/index/history_main/Layer_4.png" alt="">
        <div class="history_box">
            <h2>
                HISTORY OF AGENCY
            </h2>
            <p class="history_text">
                Porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non
                numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad
                minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea
                commodi modi tempora incidunt ut labore.
            </p>
            <button class="history_btn">
                read more
            </button>
        </div>
    </section>

    <?php
    if (get_post_meta($post->ID, 'main_choose_show', true ) != 'off') : ?>
        <section class="choose">
            <div class="choose_title">
                <h2>
                    why choose us
                </h2>
                <p class="title_text">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua.
                </p>
            </div>
            <div class="container banner_wr">
                <ul class="banner">
                    <?php
                    foreach ($choose_main as $adv) :
                        $adv_icon = $adv['main_choose_list_upload'] ? $adv['main_choose_list_upload'] : '';
                        $adv_header = $adv['main_choose_list_header'] ? $adv['main_choose_list_header'] : '';
                        $adv_text = $adv['main_choose_list_text'] ? $adv['main_choose_list_text'] : '';
                        ?>
                        <li>
                            <div class="choose_box">
                                <img src="<?php echo $adv_icon ;?>">
                                <h3><?php echo $adv_header ;?></h3>
                            </div>
                            <p><?php echo wp_trim_words( $adv_text, 21, ' ...' );?></p>
                        </li>
                    <?php
                    endforeach;
                    ?>

                </ul>
                <img src="<?php bloginfo('template_url')?>/img/index/choose/1%20(2).png" alt="">
            </div>
        </section>
    <?php
    endif;
    ?>

    <?php
    if (get_post_meta($post->ID, 'main_newsletter_show', true ) != 'off') : ?>
        <section class="newsletter">
            <div class="container banner_wr">
                <ul class="banner">
                    <?php
                    foreach ($newsletter_main as $adv) :
                        $adv_header = $adv['main_newsletter_list_header'] ? $adv['main_newsletter_list_header'] : '';
                        $adv_second = $adv['main_newsletter_list_second_heading'] ? $adv['main_newsletter_list_second_heading'] : '';
                        $adv_text = $adv['main_newsletter_list_text'] ? $adv['main_newsletter_list_text'] : '';
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
