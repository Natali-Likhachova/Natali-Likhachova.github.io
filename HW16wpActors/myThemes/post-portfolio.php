<?php
/* Template Name: Page Portfolio*/
echo 'Cat ';
if (have_posts ()) {
    while (have_posts ()) {
        the_post ();
        the_title();
       echo the_content();
        //
    } // конец пока
} // конец, если
get_header(); ?>
<body>

    <header class="header">
        <div class="box">
            <div class="menu">
                <img src="img/blog/header/menu.png" alt="">
            </div>
            <img src="img/blog/header/square_logo.png" class="logo" alt="">
            <div class="social">
                <i class="fa fa-facebook" aria-hidden="true"></i>
                <i class="fa fa-twitter" aria-hidden="true"></i>
                <i class="fa fa-camera-retro" aria-hidden="true"></i>
                <i class="fa fa-flickr" aria-hidden="true"></i>
                <i class="fa fa-google-plus" aria-hidden="true"></i>
                <i class="fa fa-envelope" aria-hidden="true"></i>
            </div>
        </div>
    </header>

    <section class="gallery">
        <div class="gallery_container">
            <div class="gallery_box">
                <img src="img/portfolio/gallery/1.png"  class="image" alt="">
                <div class="middle">
                    <div class="text">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery_box">
                <img src="img/portfolio/gallery/1.png"  class="image" alt="">
                <div class="middle">
                    <div class="text">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery_box">
                <img src="img/portfolio/gallery/2.png"  class="image" alt="">
                <div class="middle">
                    <div class="text">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery_box">
                <img src="img/portfolio/gallery/3.png"  class="image" alt="">
                <div class="middle">
                    <div class="text">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery_box">
                <img src="img/portfolio/gallery/4.png"  class="image" alt="">
                <div class="middle">
                    <div class="text">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery_box">
                <img src="img/portfolio/gallery/5.png"  class="image" alt="">
                <div class="middle">
                    <div class="text">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery_box">
                <img src="img/portfolio/gallery/6.png"  class="image" alt="">
                <div class="middle">
                    <div class="text">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery_box">
                <img src="img/portfolio/gallery/7.png"  class="image" alt="">
                <div class="middle">
                    <div class="text">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery_box">
                <img src="img/portfolio/gallery/8.png"  class="image" alt="">
                <div class="middle">
                    <div class="text">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <section class="gallery-two">
        <div class="gallery-two_container">
            <div class="gallery-two_box">
                <img src="img/portfolio/gallery/1.png"  class="image-two" alt="">
                <div class="middle-two">
                    <div class="text-two">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-two_box">
                <img src="img/portfolio/gallery/1.png"  class="image-two" alt="">
                <div class="middle-two">
                    <div class="text-two">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-two_box">
                <img src="img/portfolio/gallery/2.png"  class="image-two" alt="">
                <div class="middle-two">
                    <div class="text-two">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-two_box">
                <img src="img/portfolio/gallery/3.png"  class="image-two" alt="">
                <div class="middle-two">
                    <div class="text-two">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-two_box">
                <img src="img/portfolio/gallery/4.png"  class="image-two" alt="">
                <div class="middle-two">
                    <div class="text-two">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-two_box">
                <img src="img/portfolio/gallery/5.png"  class="image-two" alt="">
                <div class="middle-two">
                    <div class="text-two">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-two_box">
                <img src="img/portfolio/gallery/6.png"  class="image-two" alt="">
                <div class="middle-two">
                    <div class="text-two">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-two_box">
                <img src="img/portfolio/gallery/7.png"  class="image-two" alt="">
                <div class="middle-two">
                    <div class="text-two">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-two_box">
                <img src="img/portfolio/gallery/8.png"  class="image-two" alt="">
                <div class="middle-two">
                    <div class="text-two">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <section class="gallery-one">
        <div class="gallery-one_container">
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/1.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/1.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/2.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/3.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/4.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/5.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/6.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/7.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/8.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/9.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/110.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/111.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/112.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/113.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/114.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="gallery-one_box">
                <img src="img/portfolio/gallery-one/115.png"  class="image-one" alt="">
                <div class="middle-one">
                    <div class="text-one">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>
    </section>


<?php get_footer(); ?>