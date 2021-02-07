<?php get_header(); ?>
       <main>
        <?php
          /**
           * Cette page ne fonctionne pas quand le template page.php est crée 
           * et que l'on choisie une page statique dans :
           * Back-office > Menu > Règlages > Lecture > page statique : Accueil
           * Car le template page.php supplante index.php
           *
           *                           oooo$$$$$$$$$$$$oooo
                                    oo$$$$$$$$$$$$$$$$$$$$$$$$o
                                 oo$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o         o$   $$ o$
                 o $ oo        o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o       $$ $$ $$o$
              oo $ $ "$      o$$$$$$$$$    $$$$$$$$$$$$$    $$$$$$$$$o       $$$o$$o$
              "$$$$$$o$     o$$$$$$$$$      $$$$$$$$$$$      $$$$$$$$$$o    $$$$$$$$
                $$$$$$$    $$$$$$$$$$$      $$$$$$$$$$$      $$$$$$$$$$$$$$$$$$$$$$$
                $$$$$$$$$$$$$$$$$$$$$$$    $$$$$$$$$$$$$    $$$$$$$$$$$$$$  """$$$
                 "$$$""""$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     "$$$
                  $$$   o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     "$$$o
                 o$$"   $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$       $$$o
                 $$$    $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$" "$$$$$$ooooo$$$$o
                o$$$oooo$$$$$  $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$   o$$$$$$$$$$$$$$$$$
                $$$$$$$$"$$$$   $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     $$$$""""""""
               """"       $$$$    "$$$$$$$$$$$$$$$$$$$$$$$$$$$$"      o$$$
                          "$$$o     """$$$$$$$$$$$$$$$$$$"$$"         $$$
                            $$$o          "$$""$$$$$$""""           o$$$
                             $$$$o                                o$$$"
                              "$$$$o      o$$$$$$o"$$$$o        o$$$$
                                "$$$$$oo     ""$$$$o$$$$$o   o$$$$""
                                   ""$$$$$oooo  "$$$o$$$$$$$$$"""
                                      ""$$$$$$$oo $$$$$$$$$$
                                              """"$$$$$$$$$$$
                                                  $$$$$$$$$$$$
                                                   $$$$$$$$$$"
                                                    "$$$""  
           */
        ?>

          <?php // boucle WordPress
            if (have_posts()): 
              while(have_posts()):the_post();
          ?>  
          <?php 
           // on teste pour savoir si le titre est différent de "Accueil"
           // Si il est différent on écrit le titre.
           // c'est pour ne pas écrire le titre dans la page d'accueil
           $current_title = get_the_title();
           if($current_title != 'Accueil'){?>

                <h1><?php the_title(); ?></h1>

           <?php } ?>
                
                <?php the_content(); ?>

            <?php endwhile; ?>
          <?php endif; ?>


<!-- ***** FIN FOOTER ***** -->
           
       </main>
       
<?php get_footer(); ?>