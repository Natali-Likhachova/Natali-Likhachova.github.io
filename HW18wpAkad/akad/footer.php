<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package akad
 */

?>

<footer class="footer">
    <div class="footer_left">
        <?php
        wp_nav_menu( array(
            'theme_location' =>  'footer-menu',
            'container' => false,
            'menu_class' => 'menu_false',
        ));
        ?>
    </div>
    <div class="footer_right">
        <p>
            Created by akhouad <?php echo date('Y')?>. All Rights Reserved
        </p>
        <div class="footer_social">
            <?php
            dynamic_sidebar('footer');
            ?>
        </div>
    </div>

</footer>

<?php wp_footer(); ?>

</body>
</html>
