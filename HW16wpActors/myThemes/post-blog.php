<?php
/* Template Name: Page Blog*/
echo 'Cat ';

if (have_posts ()) {
    while (have_posts ()) {
        the_post ();
        the_title();
        the_content();
        //
    } // конец пока
} // конец, если

?>
