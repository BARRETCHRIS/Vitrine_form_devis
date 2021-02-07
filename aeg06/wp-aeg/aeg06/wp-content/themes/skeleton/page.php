<?php get_header(); ?>
       <main>


          <?php // boucle WordPress
            if (have_posts()): 
              while(have_posts()):the_post();
          ?>  
          <?php // Image à la une
                // on récupère l'id de l'image
                $idImageALaUne = get_post_thumbnail_id();
                // on récupère le lien vers cette image à partir de son id (ci-dessus)
                $imgSrc = wp_get_attachment_url($idImageALaUne);
                // pour l'afficher voir plus bas
              ?>
              
               
<!-- ***** IMAGE A LA UNE  ***** -->
            <div class="img-header mobile-ghost">
                <!-- Image à la une : on l'affiche -->
                <img src="<?php echo $imgSrc; ?>" alt="">
            </div>
<!-- ***** FIN IMAGE A LA UNE  ***** -->
                
                <?php // ici on affiche le contenu de la bdd
                    the_content(); 
                ?>

            <?php endwhile; ?>
          <?php endif; ?>


<!-- ***** FIN FOOTER ***** -->
           
       </main>
       
<?php get_footer(); ?>