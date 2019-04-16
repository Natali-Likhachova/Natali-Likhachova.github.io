<?php
/**
 * Template Name: My page template for news page
 */
get_header();
?>


    <section class="news_top">
        <h1>
            News
        </h1>
    </section>

    <section class="more_news">
        <form action="">
            <label for="textbox"></label>
            <input type="text" name="textbox" id="textbox">
            <button class="more_news_btn">
                <i class="fa fa-search" aria-hidden="true"></i>
            </button>
        </form>
        <div class="news_list">
            <div class="news_list_left">
                <div class="news-ft">
                    <img src="<?php bloginfo('template_url')?>/img/index/news/1.png" alt="">
                    <div class="news-ft_text">
                        <div class="arrow_box-ft"></div>
                        <h3>
                            Why financial
                            institutions need
                            a new IT model
                        </h3>
                        <div class="news_red-line"></div>
                        <p class="news-ft_text-main">
                            Why old IT models are unlikely to
                            deliver the competitive edge that
                            banks, insurers and wealth
                            management firms need from
                            technology
                        </p>
                        <p class="news-ft_text-data">
                            09.03.2014
                        </p>
                    </div>
                </div>
                <div class="news-sc">
                    <img src="<?php bloginfo('template_url')?>/img/index/news/2.png" alt="">
                    <div class="news-sc_text">
                        <div class="arrow_box-sc"></div>
                        <h3>
                            Reimagining IT
                            for an
                            omnichannel
                            world
                        </h3>
                        <div class="news_red-line"></div>
                        <p class="news-sc_text-main">
                            The technology that powers retail is
                            evolving rapidly. Retailers and their IT
                            groups will have to rise to stay ahead.
                        </p>
                        <p class="news-sc_text-data">
                            08.20.2014
                        </p>
                    </div>
                </div>
            </div>
            <div class="news_list_right">
                <div class="news-th">
                    <img src="<?php bloginfo('template_url')?>/img/index/news/3.png" alt="">
                    <div class="news-th_text">
                        <div class="arrow_box-th"></div>
                        <h3>
                            Reimagining IT
                            for an
                            omnichannel
                            world
                        </h3>
                        <div class="news_red-line"></div>
                        <p class="news-th_text-main">
                            The technology that powers retail is
                            evolving rapidly. Retailers and their IT
                            groups will have to rise to stay ahead.
                        </p>
                        <p class="news-th_text-data">
                            08.20.2014
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="news_list">
            <div class="news_list_left">
                <div class="news-ft">
                    <img src="<?php bloginfo('template_url')?>/img/news/news/1.png" alt="">
                    <div class="news-ft_text">
                        <div class="arrow_box-ft"></div>
                        <h3>
                            Why financial
                            institutions need
                            a new IT model
                        </h3>
                        <div class="news_red-line"></div>
                        <p class="news-ft_text-main">
                            Why old IT models are unlikely to
                            deliver the competitive edge that
                            banks, insurers and wealth
                            management firms need from
                            technology
                        </p>
                        <p class="news-ft_text-data">
                            09.03.2014
                        </p>
                    </div>
                </div>
                <div class="news-sc">
                    <img src="<?php bloginfo('template_url')?>/img/news/news/2.png" alt="">
                    <div class="news-sc_text">
                        <div class="arrow_box-sc"></div>
                        <h3>
                            Reimagining IT
                            for an
                            omnichannel
                            world
                        </h3>
                        <div class="news_red-line"></div>
                        <p class="news-sc_text-main">
                            The technology that powers retail is
                            evolving rapidly. Retailers and their IT
                            groups will have to rise to stay ahead.
                        </p>
                        <p class="news-sc_text-data">
                            08.20.2014
                        </p>
                    </div>
                </div>
            </div>
            <div class="news_list_right">
                <div class="news-th">
                    <img src="<?php bloginfo('template_url')?>/img/news/news/3.png" alt="">
                    <div class="news-th_text">
                        <div class="arrow_box-th"></div>
                        <h3>
                            Reimagining IT
                            for an
                            omnichannel
                            world
                        </h3>
                        <div class="news_red-line"></div>
                        <p class="news-th_text-main">
                            The technology that powers retail is
                            evolving rapidly. Retailers and their IT
                            groups will have to rise to stay ahead.
                        </p>
                        <p class="news-th_text-data">
                            08.20.2014
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <button class="show_more">
            show more
        </button>
    </section>

<?php
get_footer();