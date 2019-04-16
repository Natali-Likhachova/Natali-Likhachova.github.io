<footer class="footer_post" id="footer">
    <div class="partners">
        <img src="<?php bloginfo('template_url')?>/img/post/footer_post/1.png" alt="">
        <img src="<?php bloginfo('template_url')?>/img/post/footer_post/2.png" alt="">
        <img src="<?php bloginfo('template_url')?>/img/post/footer_post/3.png" alt="">
        <img src="<?php bloginfo('template_url')?>/img/post/footer_post/4.png" alt="">
    </div>
    <div class="created">
        <h3>
            Created by 2ndself.com, with
            <i class="fa fa-heart" aria-hidden="true"></i>
        </h3>
        <h4>
            exclusive for theuncreativelab.com
        </h4>
        <h5>
            © 2014 Square. All Rights Reserved.
        </h5>
    </div>
    <?php if ( is_active_sidebar( 'footer' ) ) : ?>
        <div id="footer-widget-area" class="footer-widget-area" role="complementary">
            <?php dynamic_sidebar( 'footer' ); ?>
        </div><!-- #primary-sidebar -->
    <?php endif; ?>
</footer>

<!--<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="slick/slick.min.js"></script>
<script src="js/js.js"></script>-->
<?php wp_footer(); ?>
</body>
</html>