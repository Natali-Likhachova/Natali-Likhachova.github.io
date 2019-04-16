<?php
/**
 * Template Name: My page template for home page
 */
get_header();
?>


    <section class="index_top">
        <div class="index_top_text">
            <h1>
                <?php the_title();?>
            </h1>
            <h3>
	            <?php
                if (have_posts()){
                    while (have_posts()){
                        the_post();
	                    the_content();
                    }
                }
                ?>
            </h3>

            <div class="index_top_btn">
                <button class="index_button">
                    Get started
                </button>
                <button class="index_button">
                    Learn more
                </button>
            </div>
        </div>
    </section>

    <section class="services">
        <div class="services_text">
            <h2>
	            <?php the_field('services_headline'); ?>
            </h2>
            <h3>
	            <?php the_field('services_subtitle'); ?>
            </h3>
        </div>
        <div class="services_list">
            <div class="services_box">

	            <?php

	            $image = get_field('srv_img_1');

	            if( !empty($image) ): ?>

                    <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

	            <?php endif; ?>


                <h4>
	                <?php the_field('headline_box_1'); ?>
                </h4>
                <div class="services_red-line"></div>
                <p class="services_box-text">
	                <?php the_field('text_box_1'); ?>
                </p>
            </div>

            <div class="services_box">

		        <?php

		        $image = get_field('srv_img_2');

		        if( !empty($image) ): ?>

                    <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		        <?php endif; ?>


                <h4>
			        <?php the_field('headline_box_2'); ?>
                </h4>
                <div class="services_red-line"></div>
                <p class="services_box-text">
			        <?php the_field('text_box_2'); ?>
                </p>
            </div>

            <div class="services_box">

		        <?php

		        $image = get_field('srv_img_3');

		        if( !empty($image) ): ?>

                    <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		        <?php endif; ?>


                <h4>
			        <?php the_field('headline_box_3'); ?>
                </h4>
                <div class="services_red-line"></div>
                <p class="services_box-text">
			        <?php the_field('text_box_3'); ?>
                </p>
            </div>

            <div class="services_box">

		        <?php

		        $image = get_field('srv_img_4');

		        if( !empty($image) ): ?>

                    <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		        <?php endif; ?>


                <h4>
			        <?php the_field('headline_box_4'); ?>
                </h4>
                <div class="services_red-line"></div>
                <p class="services_box-text">
			        <?php the_field('text_box_4'); ?>
                </p>
            </div>

            <div class="services_box">

		        <?php

		        $image = get_field('srv_img_5');

		        if( !empty($image) ): ?>

                    <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		        <?php endif; ?>


                <h4>
			        <?php the_field('headline_box_5'); ?>
                </h4>
                <div class="services_red-line"></div>
                <p class="services_box-text">
			        <?php the_field('text_box_5'); ?>
                </p>
            </div>

            <div class="services_box">

		        <?php

		        $image = get_field('srv_img_6');

		        if( !empty($image) ): ?>

                    <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		        <?php endif; ?>


                <h4>
			        <?php the_field('headline_box_6'); ?>
                </h4>
                <div class="services_red-line"></div>
                <p class="services_box-text">
			        <?php the_field('text_box_6'); ?>
                </p>
            </div>

            <div class="services_box">

		        <?php

		        $image = get_field('srv_img_7');

		        if( !empty($image) ): ?>

                    <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		        <?php endif; ?>


                <h4>
			        <?php the_field('headline_box_7'); ?>
                </h4>
                <div class="services_red-line"></div>
                <p class="services_box-text">
			        <?php the_field('text_box_7'); ?>
                </p>
            </div>

            <div class="services_box">

		        <?php

		        $image = get_field('srv_img_8');

		        if( !empty($image) ): ?>

                    <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		        <?php endif; ?>


                <h4>
			        <?php the_field('headline_box_8'); ?>
                </h4>
                <div class="services_red-line"></div>
                <p class="services_box-text">
			        <?php the_field('text_box_8'); ?>
                </p>
            </div>
        </div>

    </section>

    <section class="contact">
        <h2>
	        <?php the_field('contact_label'); ?>
        </h2>
        <button class="contact_btn">
            Contact Us
        </button>
    </section>

    <section class="about-us">
        <div class="about-us_top">
            <h2>
	            <?php the_field('about__headline'); ?>
            </h2>
            <h3>
	            <?php the_field('about__subtitle'); ?>
            </h3>
        </div>
        <div class="about-us_bottom">
            <div class="bottom_up">
                <div class="do">
                    <h4>
	                    <?php the_field('What_we_do_headline'); ?>
                    </h4>
                    <div class="about-us_red-line"></div>
	                <?php the_field('what_we_do_text'); ?>
                </div>

                <div class="our-clients">
                    <div class="our-clients_header">
                        <h4>
                            our clients
                        </h4>
                        <div class="about-us_red-line"></div>
                    </div>

                    <div class="our-clients_carousel">
                            <?php

                            $image = get_field('clients_logo_1');

                            if( !empty($image) ): ?>

                                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

                            <?php endif; ?>
                        <!---->
                            <?php

                            $image = get_field('clients_logo_2');

                            if( !empty($image) ): ?>

                                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

                            <?php endif; ?>
                        <!---->
                            <?php

                            $image = get_field('clients_logo_3');

                            if( !empty($image) ): ?>

                                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

                            <?php endif; ?>
                        <!---->
                            <?php

                            $image = get_field('clients_logo_4');

                            if( !empty($image) ): ?>

                                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

                            <?php endif; ?>
                        <!---->
                            <?php

                            $image = get_field('clients_logo_5');

                            if( !empty($image) ): ?>

                                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

                            <?php endif; ?>
                        <!---->
                            <?php

                            $image = get_field('clients_logo_6');

                            if( !empty($image) ): ?>

                                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

                            <?php endif; ?>
                    </div>
                </div>
            </div>
            <div class="bottom_end">
                <div class="our-team">
                    <div class="our-team_header">
                        <h4>
                            our team
                        </h4>
                        <div class="about-us_red-line"></div>
                    </div>
                    <div class="our-team_team">
                        <figure class="img-hover-text">
	                        <?php

	                        // vars
	                        $hero = get_field('team');

	                        if( $hero ): ?>
                                <div id="hero">
                                    <img src="<?php echo $hero['member_foto_1']; ?>" alt="" />
                                    <figcaption>
                                        <h6>
	                                        <?php echo $hero['member_name_1']; ?>
                                        </h6>
                                        <div class="hover-line"></div>
                                        <p class="hover_text_first">
	                                        <?php echo $hero['position_in_the_company_1']; ?>
                                        </p>
                                        <p class="hover_text_second">
	                                        <?php echo $hero['position_in_team_1']; ?>
                                        </p>
                                    </figcaption>
	                        <?php endif; ?>

                        </figure>
                        <figure class="img-hover-text">
	                        <?php

	                        // vars
	                        $hero = get_field('team');

	                        if( $hero ): ?>
                            <div id="hero">
                                <img src="<?php echo $hero['member_foto_2']; ?>" alt="" />
                                <figcaption>
                                    <h6>
				                        <?php echo $hero['member_name_2']; ?>
                                    </h6>
                                    <div class="hover-line"></div>
                                    <p class="hover_text_first">
				                        <?php echo $hero['position_in_the_company_2']; ?>
                                    </p>
                                    <p class="hover_text_second">
				                        <?php echo $hero['position_in_team_2']; ?>
                                    </p>
                                </figcaption>
		                        <?php endif; ?>

                        </figure>
                        <figure class="img-hover-text">
		                    <?php

		                    // vars
		                    $hero = get_field('team');

		                    if( $hero ): ?>
                            <div id="hero">
                                <img src="<?php echo $hero['member_foto_3']; ?>" alt="" />
                                <figcaption>
                                    <h6>
					                    <?php echo $hero['member_name_3']; ?>
                                    </h6>
                                    <div class="hover-line"></div>
                                    <p class="hover_text_first">
					                    <?php echo $hero['position_in_the_company_3']; ?>
                                    </p>
                                    <p class="hover_text_second">
					                    <?php echo $hero['position_in_team_3']; ?>
                                    </p>
                                </figcaption>
			                    <?php endif; ?>

                        </figure>
                        <figure class="img-hover-text">
		                    <?php

		                    // vars
		                    $hero = get_field('team');

		                    if( $hero ): ?>
                            <div id="hero">
                                <img src="<?php echo $hero['member_foto_4']; ?>" alt="" />
                                <figcaption>
                                    <h6>
					                    <?php echo $hero['member_name_4']; ?>
                                    </h6>
                                    <div class="hover-line"></div>
                                    <p class="hover_text_first">
					                    <?php echo $hero['position_in_the_company_4']; ?>
                                    </p>
                                    <p class="hover_text_second">
					                    <?php echo $hero['position_in_team_4']; ?>
                                    </p>
                                </figcaption>
			                    <?php endif; ?>

                        </figure>
                        <figure class="img-hover-text">
		                    <?php

		                    // vars
		                    $hero = get_field('team');

		                    if( $hero ): ?>
                            <div id="hero">
                                <img src="<?php echo $hero['member_foto_5']; ?>" alt="" />
                                <figcaption>
                                    <h6>
					                    <?php echo $hero['member_name_5']; ?>
                                    </h6>
                                    <div class="hover-line"></div>
                                    <p class="hover_text_first">
					                    <?php echo $hero['position_in_the_company_5']; ?>
                                    </p>
                                    <p class="hover_text_second">
					                    <?php echo $hero['position_in_team_5']; ?>
                                    </p>
                                </figcaption>
			                    <?php endif; ?>

                        </figure>
                        <figure class="img-hover-text">
		                    <?php

		                    // vars
		                    $hero = get_field('team');

		                    if( $hero ): ?>
                            <div id="hero">
                                <img src="<?php echo $hero['member_foto_6']; ?>" alt="" />
                                <figcaption>
                                    <h6>
					                    <?php echo $hero['member_name_6']; ?>
                                    </h6>
                                    <div class="hover-line"></div>
                                    <p class="hover_text_first">
					                    <?php echo $hero['position_in_the_company_6']; ?>
                                    </p>
                                    <p class="hover_text_second">
					                    <?php echo $hero['position_in_team_6']; ?>
                                    </p>
                                </figcaption>
			                    <?php endif; ?>

                        </figure>
                        <figure class="img-hover-text">
		                    <?php

		                    // vars
		                    $hero = get_field('team');

		                    if( $hero ): ?>
                            <div id="hero">
                                <img src="<?php echo $hero['member_foto_7']; ?>" alt="" />
                                <figcaption>
                                    <h6>
					                    <?php echo $hero['member_name_7']; ?>
                                    </h6>
                                    <div class="hover-line"></div>
                                    <p class="hover_text_first">
					                    <?php echo $hero['position_in_the_company_7']; ?>
                                    </p>
                                    <p class="hover_text_second">
					                    <?php echo $hero['position_in_team_7']; ?>
                                    </p>
                                </figcaption>
			                    <?php endif; ?>

                        </figure>
                        <figure class="img-hover-text">
		                    <?php

		                    // vars
		                    $hero = get_field('team');

		                    if( $hero ): ?>
                            <div id="hero">
                                <img src="<?php echo $hero['member_foto_8']; ?>" alt="" />
                                <figcaption>
                                    <h6>
					                    <?php echo $hero['member_name_8']; ?>
                                    </h6>
                                    <div class="hover-line"></div>
                                    <p class="hover_text_first">
					                    <?php echo $hero['position_in_the_company_8']; ?>
                                    </p>
                                    <p class="hover_text_second">
					                    <?php echo $hero['position_in_team_8']; ?>
                                    </p>
                                </figcaption>
			                    <?php endif; ?>

                        </figure>
                        <figure class="img-hover-text">
		                    <?php

		                    // vars
		                    $hero = get_field('team');

		                    if( $hero ): ?>
                            <div id="hero">
                                <img src="<?php echo $hero['member_foto_9']; ?>" alt="" />
                                <figcaption>
                                    <h6>
					                    <?php echo $hero['member_name_9']; ?>
                                    </h6>
                                    <div class="hover-line"></div>
                                    <p class="hover_text_first">
					                    <?php echo $hero['position_in_the_company_9']; ?>
                                    </p>
                                    <p class="hover_text_second">
					                    <?php echo $hero['position_in_team_9']; ?>
                                    </p>
                                </figcaption>
			                    <?php endif; ?>

                        </figure>
                        <figure class="img-hover-text">
		                    <?php

		                    // vars
		                    $hero = get_field('team');

		                    if( $hero ): ?>
                            <div id="hero">
                                <img src="<?php echo $hero['member_foto_10']; ?>" alt="" />
                                <figcaption>
                                    <h6>
					                    <?php echo $hero['member_name_10']; ?>
                                    </h6>
                                    <div class="hover-line"></div>
                                    <p class="hover_text_first">
					                    <?php echo $hero['position_in_the_company_10']; ?>
                                    </p>
                                    <p class="hover_text_second">
					                    <?php echo $hero['position_in_team_10']; ?>
                                    </p>
                                </figcaption>
			                    <?php endif; ?>

                        </figure>
                        <figure class="img-hover-text">
		                    <?php

		                    // vars
		                    $hero = get_field('team');

		                    if( $hero ): ?>
                            <div id="hero">
                                <img src="<?php echo $hero['member_foto_11']; ?>" alt="" />
                                <figcaption>
                                    <h6>
					                    <?php echo $hero['member_name_11']; ?>
                                    </h6>
                                    <div class="hover-line"></div>
                                    <p class="hover_text_first">
					                    <?php echo $hero['position_in_the_company_11']; ?>
                                    </p>
                                    <p class="hover_text_second">
					                    <?php echo $hero['position_in_team_11']; ?>
                                    </p>
                                </figcaption>
			                    <?php endif; ?>

                        </figure>
                        <figure class="img-hover-text">
		                    <?php

		                    // vars
		                    $hero = get_field('team');

		                    if( $hero ): ?>
                            <div id="hero">
                                <img src="<?php echo $hero['member_foto_12']; ?>" alt="" />
                                <figcaption>
                                    <h6>
					                    <?php echo $hero['member_name_12']; ?>
                                    </h6>
                                    <div class="hover-line"></div>
                                    <p class="hover_text_first">
					                    <?php echo $hero['position_in_the_company_12']; ?>
                                    </p>
                                    <p class="hover_text_second">
					                    <?php echo $hero['position_in_team_12']; ?>
                                    </p>
                                </figcaption>
			                    <?php endif; ?>

                        </figure>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="what-we-do">

	    <?php

	    $image = get_field('what_img');

	    if( !empty($image) ): ?>

            <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

	    <?php endif; ?>

        <h2>
	        <?php the_field('what_headline'); ?>
        </h2>
        <h3>
	        <?php the_field('what_text'); ?>
        </h3>
    </section>

    <section class="news">
        <div class="news_header">
            <h2>
	            <?php the_field('news_headline'); ?>
            </h2>
            <p class="news_header_text">
	            <?php the_field('news_subtitle'); ?>
            </p>
        </div>
        <div class="news_list">

	        <?php
	        global $post;
	        $args = array( 'posts_per_page' => 1);
	        $myposts = get_posts( $args );
	        foreach( $myposts as $post ){ setup_postdata($post);
		        ?>

                <div class="news_list_left">
                    <div class="news-ft">
                        <img src="<?php bloginfo('template_url')?>/img/index/news/1.png" alt="">
                        <div class="news-ft_text">
                            <div class="arrow_box-ft"></div>
	                        <?php the_post_thumbnail('full')?>
                            <a href="<?php the_permalink(); ?>">
                                <h3>
			                        <?php the_title(); ?>
                                </h3>
                            </a>
                            <div class="news_red-line"></div>
                            <p class="news-ft_text-main">
	                            <?php the_excerpt(); ?>
                            </p>
                            <p class="news-ft_text-data">
	                            <?php the_date('F j, Y')?>
                            </p>
                        </div>
                    </div>
                    <div class="news-sc">
                        <img src="<?php bloginfo('template_url')?>/img/index/news/2.png" alt="">
                        <div class="news-sc_text">
                            <div class="arrow_box-sc"></div>
	                        <?php the_post_thumbnail('full')?>
                            <a href="<?php the_permalink(); ?>">
                                <h3>
			                        <?php the_title(); ?>
                                </h3>
                            </a>
                            <div class="news_red-line"></div>
                            <p class="news-sc_text-main">
	                            <?php the_excerpt(); ?>
                            </p>
                            <p class="news-sc_text-data">
	                            <?php the_date('F j, Y')?>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="news_list_right">
                    <div class="news-th">
                        <img src="<?php bloginfo('template_url')?>/img/index/news/3.png" alt="">
                        <div class="news-th_text">
                            <div class="arrow_box-th"></div>
	                        <?php the_post_thumbnail('full')?>
                            <a href="<?php the_permalink(); ?>">
                                <h3>
			                        <?php the_title(); ?>
                                </h3>
                            </a>
                            <div class="news_red-line"></div>
                            <p class="news-th_text-main">
	                            <?php the_excerpt(); ?>
                            </p>
                            <p class="news-th_text-data">
	                            <?php the_date('F j, Y')?>
                            </p>
                        </div>
                    </div>
                </div>
		        <?php
	        }
	        wp_reset_postdata();
	        ?>

        </div>
        <div class="blog__post">
		    <?php
		    global $post;
		    $args = array( 'posts_per_page' => 5);
		    $myposts = get_posts( $args );
		    foreach( $myposts as $post ){ setup_postdata($post);
			    ?>

                <div class="post_box">
				    <?php the_post_thumbnail('full')?>
                    <a href="<?php the_permalink(); ?>">
                        <h3>
                            <?php the_title(); ?>
                        </h3>
                    </a>
                    <p class="post_text">
					    <?php the_excerpt(); ?>
                    </p>
                    <p class="post_data">
		                <?php the_date('F j, Y')?>
                    </p>
                </div>
			    <?php
		    }
		    wp_reset_postdata();
		    ?>
        </div>
    </section>

    <section class="feedback">
        <div class="feedback_left">
            <div class="left_text">
                <h3>
	                <?php the_field('feedback_headline_left'); ?>
                </h3>
                <p class="left_text-thank">
	                <?php the_field('feedback_subtitle_left'); ?>
                </p>
                <div class="feedback_red-line"></div>
            </div>
            <div class="our_contact">
                <div class="our_contact-item">
	                <?php

	                $image = get_field('contact_img_1');

	                if( !empty($image) ): ?>

                        <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

	                <?php endif; ?>
                    <p class="our_contact-item-text">
	                    <?php the_field('contact_text_1'); ?>
                    </p>
                </div>
                <div class="our_contact-item">
	                <?php

	                $image = get_field('contact_img_2');

	                if( !empty($image) ): ?>

                        <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

	                <?php endif; ?>
                    <p class="our_contact-item-text">
	                    <?php the_field('contact_text_2'); ?>
                    </p>
                </div>
                <div class="our_contact-item">
	                <?php

	                $image = get_field('contact_img_3');

	                if( !empty($image) ): ?>

                        <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

	                <?php endif; ?>
                    <p class="our_contact-item-text">
	                    <?php the_field('contact_text_3'); ?>
                    </p>
                </div>
            </div>
        </div>
        <div class="feedback_right">
            <div class="right_text">
                <h3>
	                <?php the_field('feedback_headline_right'); ?>
                </h3>
                <div class="feedback_red-line"></div>
                <p class="right_text_instructions">
	                <?php the_field('feedback_subtitle_right'); ?>
                </p>
            </div>
	        <?php the_field('form'); ?>
        </div>
    </section>

<?php
get_footer();
