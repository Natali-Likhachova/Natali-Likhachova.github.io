<?php
/**
 * Template Name: My page template for services page
 */
get_header();
?>

	<section class="first__burger">
        <div id="main-navigation">

                <input type="checkbox" id="hamburger"/>
                <label class="menuicon" for="hamburger">
                    <span></span>
                </label>
                <div class="menu">
                    <nav>
	                    <?php
	                    wp_nav_menu( array(
		                    'theme_location' =>  'first-burger',
		                    'container' => false,
		                    'menu_class' => 'menu_false',
	                    ));
	                    ?>
                    </nav>
                </div>
            </div>
    </section>

<!--	<section class="second__burger">-->
<!--        <input id="burger" type="checkbox" />-->
<!---->
<!--        <label for="burger">-->
<!--            <span></span>-->
<!--            <span></span>-->
<!--            <span></span>-->
<!--        </label>-->
<!---->
<!--        <nav>-->
<!--	        --><?php
//	        wp_nav_menu( array(
//		        'theme_location' =>  'second-burger',
//		        'container' => false,
//		        'menu_class' => 'menu_false',
//	        ));
//	        ?>
<!--        </nav>-->
<!---->
<!---->
<!---->
<!---->
<!--    </section>-->

<!--	<section class="third__burger">-->
<!--        <input id="burger" type="checkbox" />-->
<!---->
<!--        <label for="burger">-->
<!--            <span></span>-->
<!--            <span></span>-->
<!--            <span></span>-->
<!--        </label>-->
<!---->
<!--        <nav>-->
<!--			--><?php
//			wp_nav_menu( array(
//				'theme_location' =>  'third-burger',
//				'container' => false,
//				'menu_class' => 'menu_false',
//			));
//			?>
<!--        </nav>-->
<!---->
<!--    </section>-->

	<section class="fourth__burger"></section>

	<section class="fifth__burger"></section>

	<section class="sixth__burger"></section>

    <section class="slider">
        <div class="carousel">
            <div class="sl__slide">
	            <?php

	            $image = get_field('slider_img_1');

	            if( !empty($image) ): ?>

                    <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

	            <?php endif; ?>
                <div class="sl__text">
                    <i class="fa fa-compress" aria-hidden="true"></i>
                    <div class="info">
                        <div class="info_main">
                            <h2>
	                            <?php the_field('slide_headline_1'); ?>
                            </h2>
                            <h3>
	                            <?php the_field('slide_subtitle_1'); ?>
                            </h3>
                            <p class="info_text">
	                            <?php the_field('slide_text_1'); ?>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sl__slide">
	            <?php

	            $image = get_field('slider_img_2');

	            if( !empty($image) ): ?>

                    <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

	            <?php endif; ?>
                <div class="sl__text">
                    <i class="fa fa-compress" aria-hidden="true"></i>
                    <div class="info">
                        <div class="info_main">
                            <h2>
			                    <?php the_field('slide_headline_2'); ?>
                            </h2>
                            <h3>
			                    <?php the_field('slide_subtitle_2'); ?>
                            </h3>
                            <p class="info_text">
			                    <?php the_field('slide_text_2'); ?>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sl__slide">
	            <?php

	            $image = get_field('slider_img_3');

	            if( !empty($image) ): ?>

                    <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

	            <?php endif; ?>
                <div class="sl__text sl__text_s">
                    <i class="fa fa-compress" aria-hidden="true"></i>
                    <div class="info">
                        <div class="info_main">
                            <h2>
			                    <?php the_field('slide_headline_3'); ?>
                            </h2>
                            <h3>
			                    <?php the_field('slide_subtitle_3'); ?>
                            </h3>
                            <p class="info_text">
			                    <?php the_field('slide_text_3'); ?>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </section>

    <section class="scroll">
        <div class="scroll__text">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
            ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
            fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
            mollit anim id est laborum.
        </div>

<!--        <button id="scroll-btn">Up</button>-->
    </section>

    <div class="swd">
        <?php
        $zagol1=get_post_meta($post->ID, 'meta3_header_1', true);
        $descr1=get_post_meta($post->ID, 'meta3_header_2', true);
        $img1=get_post_meta($post->ID, 'img_1', true);
        ?>
        <h2>
            <?php
            echo $zagol1;
            ?>
        </h2>
        <p>
	        <?php
	        echo $descr1;
	        ?>
        </p>
        <h3>
            <?php echo get_post_meta($post->ID, 'meta3_header_3', true);?>
        </h3>
        <p>
	        <?php echo get_post_meta($post->ID, 'title', true);?>
        </p>
        <p>
            Здесь должна быть картинка)))
            <img src="<?php echo get_template_directory_uri().$img1;?> " alt="">
            <img src="<?php bloginfo('template_url')?>/img/services%20page/masonry/Без%20названия%20(1).jpg" alt="">
        </p>
    </div>

    <section id="galleryW">

        <div class="item-masonry sizer4">
	        <?php

	        $image = get_field('gallery_foto_1');

	        if( !empty($image) ): ?>

                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

	        <?php endif; ?>
            <div class="cover-item-gallery">
                <a href="">
	                <?php the_field('gallery_text_1'); ?>
                </a>
            </div>
        </div>

        <div class="item-masonry sizer4">
		    <?php

		    $image = get_field('gallery_foto_2');

		    if( !empty($image) ): ?>

                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		    <?php endif; ?>
            <div class="cover-item-gallery">
                <a href="">
				    <?php the_field('gallery_text_2'); ?>
                </a>
            </div>
        </div>

        <div class="item-masonry sizer4">
		    <?php

		    $image = get_field('gallery_foto_3');

		    if( !empty($image) ): ?>

                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		    <?php endif; ?>
            <div class="cover-item-gallery">
                <a href="">
				    <?php the_field('gallery_text_3'); ?>
                </a>
            </div>
        </div>

        <div class="item-masonry sizer4">
		    <?php

		    $image = get_field('gallery_foto_4');

		    if( !empty($image) ): ?>

                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		    <?php endif; ?>
            <div class="cover-item-gallery">
                <a href="">
				    <?php the_field('gallery_text_4'); ?>
                </a>
            </div>
        </div>

        <div class="item-masonry sizer4">
		    <?php

		    $image = get_field('gallery_foto_5');

		    if( !empty($image) ): ?>

                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		    <?php endif; ?>
            <div class="cover-item-gallery">
                <a href="">
				    <?php the_field('gallery_text_5'); ?>
                </a>
            </div>
        </div>

        <div class="item-masonry sizer4">
		    <?php

		    $image = get_field('gallery_foto_6');

		    if( !empty($image) ): ?>

                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		    <?php endif; ?>
            <div class="cover-item-gallery">
                <a href="">
				    <?php the_field('gallery_text_6'); ?>
                </a>
            </div>
        </div>

        <div class="item-masonry sizer4">
		    <?php

		    $image = get_field('gallery_foto_7');

		    if( !empty($image) ): ?>

                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		    <?php endif; ?>
            <div class="cover-item-gallery">
                <a href="">
				    <?php the_field('gallery_text_7'); ?>
                </a>
            </div>
        </div>

        <div class="item-masonry sizer4">
		    <?php

		    $image = get_field('gallery_foto_8');

		    if( !empty($image) ): ?>

                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		    <?php endif; ?>
            <div class="cover-item-gallery">
                <a href="">
				    <?php the_field('gallery_text_8'); ?>
                </a>
            </div>
        </div>

        <div class="item-masonry sizer4">
		    <?php

		    $image = get_field('gallery_foto_9');

		    if( !empty($image) ): ?>

                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		    <?php endif; ?>
            <div class="cover-item-gallery">
                <a href="">
				    <?php the_field('gallery_text_9'); ?>
                </a>
            </div>
        </div>

        <div class="item-masonry sizer4">
		    <?php

		    $image = get_field('gallery_foto_10');

		    if( !empty($image) ): ?>

                <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

		    <?php endif; ?>
            <div class="cover-item-gallery">
                <a href="">
				    <?php the_field('gallery_text_10'); ?>
                </a>
            </div>
        </div>


    </section>

<?php
get_footer();
