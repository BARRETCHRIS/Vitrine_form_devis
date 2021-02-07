       
       <footer class="txt-gold">
          <div class="wrapper">
            <div class="social">
                  <img src="<?php echo get_template_directory_uri(); ?>/medias/picto-logo/facebook.png" alt="picto facebook or">
                  <img src="<?php echo get_template_directory_uri(); ?>/medias/picto-logo/twitter.png" alt="picto Twitter or">
                  <img src="<?php echo get_template_directory_uri(); ?>/medias/picto-logo/linkedin.png" alt="picto linkdin or">
            </div>
            <div class="footer-mentions">

                    <?php 
                        /* Affiche un menu de navigation
                         * @param array $args arguments
                         */
                        $args = array(
                            'theme_location' => 'secondaire',
                            'container' => 'ul',
                            'menu_class' => 'nav-second',
                        );
                        wp_nav_menu($args);
    //-->  https://developer.wordpress.org/reference/functions/wp_nav_menu/
                    ?>
            </div>
          </div>
          <div class="txt-gold" style="text-align: right;margin: auto 1rem;font-size: 0.8rem;">Design and integration by Elodie CHAPUIS et Christelle BARRET</div>
          <!-- Powered by WordPress with a lot of love <3 -->      
       </footer>
        
<!-- ********** JS ********** -->

        <?php wp_footer(); ?>
    </body>
</html>