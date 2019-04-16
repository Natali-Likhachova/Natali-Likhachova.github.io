<?php
/**
 * Template Name: My page template for about page
 */
get_header();
?>

	<section class="news_top">
		<h1>
			<?php echo get_post_meta($post->ID, 'about_title', true);?>
		</h1>
	</section>

	<section class="services">
		<div class="services_text">
			<h2>
				<?php echo get_post_meta($post->ID, 'about_ser_headline', true);?>
			</h2>
			<h3>
				<?php echo get_post_meta($post->ID, 'about_ser_subtitle', true);?>
			</h3>
		</div>
		<div class="services_list">
			<?php
			$srv_img1 = get_post_meta($post->ID, 'about_ser_img_1', true);
			$srv_img2 = get_post_meta($post->ID, 'about_ser_img_2', true);
			$srv_img3 = get_post_meta($post->ID, 'about_ser_img_3', true);
			$srv_img4 = get_post_meta($post->ID, 'about_ser_img_4', true);
			?>
			<div class="services_box">

				<img src="<?php echo get_template_directory_uri().$srv_img1;?>" alt="">

				<h4>
					<?php echo get_post_meta($post->ID, 'about_ser_headline_1', true);?>
				</h4>
				<div class="services_red-line"></div>
				<p class="services_box-text">
					<?php echo get_post_meta($post->ID, 'about_ser_text_1', true);?>
				</p>
			</div>

			<div class="services_box">

				<img src="<?php echo get_template_directory_uri().$srv_img2;?>" alt="">

				<h4>
					<?php echo get_post_meta($post->ID, 'about_ser_headline_2', true);?>
				</h4>
				<div class="services_red-line"></div>
				<p class="services_box-text">
					<?php echo get_post_meta($post->ID, 'about_ser_text_2', true);?>
				</p>
			</div>

			<div class="services_box">

				<img src="<?php echo get_template_directory_uri().$srv_img3;?>" alt="">

				<h4>
					<?php echo get_post_meta($post->ID, 'about_ser_headline_3', true);?>
				</h4>
				<div class="services_red-line"></div>
				<p class="services_box-text">
					<?php echo get_post_meta($post->ID, 'about_ser_text_3', true);?>
				</p>
			</div>

			<div class="services_box">

				<img src="<?php echo get_template_directory_uri().$srv_img4;?>" alt="">

				<h4>
					<?php echo get_post_meta($post->ID, 'about_ser_headline_4', true);?>
				</h4>
				<div class="services_red-line"></div>
				<p class="services_box-text">
					<?php echo get_post_meta($post->ID, 'about_ser_text_4', true);?>
				</p>
			</div>
		</div>

        <div class="field_description">
            <h2>
	            <?php echo get_post_meta($post->ID, 'field_title', true);?>
            </h2>
            <p>
	            <?php echo get_post_meta($post->ID, 'field_description', true);?>
            </p>
            <p>
		        <?php echo get_post_meta($post->ID, 'field_des', true);?>
            </p>
        </div>

	</section>

<?php
get_footer();
