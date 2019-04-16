<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package news
 */

get_header();
?>

    <section class="top">
	    <?php

	    $image = get_field('post_img');

	    if( !empty($image) ): ?>

            <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />

	    <?php endif; ?>
        <div class="top_text">
            <div class="arrow_box"></div>
            <h1>
	            <?php the_field('post_headline'); ?>
            </h1>
            <div class="post_red-line"></div>
        </div>
    </section>

    <section class="post_main">
	    <?php the_field('post_text'); ?>
    </section>

    <section class="comments">
        <div class="comments__main">
            <div class="misha">
                <p><?php echo get_post_meta($post->ID, 'title', true); ?></p>
                <p><?php echo get_post_meta($post->ID, 'description', true); ?></p>
            </div>

            <h3>
                6 Comments
            </h3>
            <div class="comments_red-line"></div>
            <form action="">
                <label for="comment"></label>
                <input type="text" name="comment" id="comment" class="Your_comments" placeholder="Your comment">
                <button class="comments_btn">
                    submit comment
                </button>
            </form>

            <div class="comment-box">
                <img src="img/post/comments/skokov_icon.png" alt="">
                <div class="comment-box-text">
                    <h4>
                        Skokov   /   2 hours ago   /   replay
                    </h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt
                        ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci
                        tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                    </p>
                </div>
            </div>

            <div class="comment-box">
                <img src="img/post/comments/wernay_icon.png" alt="">
                <div class="comment-box-text">
                    <h4>
                        wernay   /   2 hours ago   /   replay
                    </h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt
                        ut laoreet dolore magna volutpat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit
                        esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et
                        iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla
                        facilisi.
                    </p>
                </div>
            </div>

            <div class="comment-box">
                <img src="img/post/comments/mr._dev_icon.png" alt="">
                <div class="comment-box-text">
                    <h4>
                        mr. dev   /   9 hours ago   /   replay
                    </h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt
                        ut laoreet dolore magna aliquam volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
                        ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure
                        dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla
                        facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril
                        delenit augue duis dolore te feugait nulla facilisi.  Lorem ipsum dolor sit amet, consectetuer
                        adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat
                        volutpat eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue.
                    </p>
                </div>
            </div>

            <div class="comment-box answer">
                <img src="img/post/comments/wernay_icon.png" alt="">
                <div class="comment-box-text">
                    <h4>
                        wernay   /   9 hours ago   /   replay
                    </h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy.
                    </p>
                </div>
            </div>

            <div class="comment-box answer_answer">
                <img src="img/post/comments/mr._dev_icon.png" alt="">
                <div class="comment-box-text">
                    <h4>
                        mr. dev   /   10 hours ago   /   replay
                    </h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt
                        ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci
                        tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
                    </p>
                </div>
            </div>

            <div class="comment-box">
                <img src="img/post/comments/denpro.png" alt="">
                <div class="comment-box-text">
                    <h4>
                        denpro   /   9 hours ago   /   replay
                    </h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt
                        ut laoreet volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit
                        lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in
                        vulputate velit esse molestie consequat.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section class="comment__test">
        <?php comments_template(); ?>
    </section>

<?php
get_footer();
