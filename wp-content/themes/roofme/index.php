<?php get_header()?>

    <div class="container body">
      <?php 
            while ( have_posts() ) {
                the_post(); 
                get_template_part('partials/content', 'index');
            } // end while
        ?>
    </div>
    
<?php get_footer()?>
