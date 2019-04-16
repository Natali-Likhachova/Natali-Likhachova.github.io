<footer>
    <button id="scroll-btn">
        <i class="fa fa-arrow-up" aria-hidden="true"></i>
    </button>
    <div class="footer_text">
        © <?php echo date('Y')?> SKOKOV - all rights reserved
    </div>
    <div class="footer_social">

        <?php
        dynamic_sidebar('footer');
        ?>

<!--        <a href="https://www.linkedin.com/">-->
<!--            <i class="fa fa-linkedin" aria-hidden="true"></i>-->
<!--        </a>-->
<!--        <div class="footer_red-line"></div>-->
<!--        <a href="https://uk-ua.facebook.com/">-->
<!--            <i class="fa fa-facebook" aria-hidden="true"></i>-->
<!--        </a>-->
<!--        <div class="footer_red-line"></div>-->
<!--        <a href="https://twitter.com/?lang=ru">-->
<!--            <i class="fa fa-twitter" aria-hidden="true"></i>-->
<!--        </a>-->
<!--        <div class="footer_red-line"></div>-->
<!--        <a href="https://www.youtube.com/">-->
<!--            <i class="fa fa-youtube" aria-hidden="true"></i>-->
<!--        </a>-->
    </div>


<!--     I add the code from the lecture "WP Lesson 4"-->


<?php $instagram_url = get_theme_mod('instagram_url'); ?>
    <?php
    if ($instagram_url)
    {?>
        <span><a href="<?php echo $instagram_url; ?>"><?php echo get_theme_mod('instagram_label')?></a></span>
    <?php }
    ?>


<!--    I add the code from the lecture "WP Lesson 4"-->


</footer>

<?php wp_footer(); ?>

</body>
</html>
