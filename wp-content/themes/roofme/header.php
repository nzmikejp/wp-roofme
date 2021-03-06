<!DOCTYPE html>
<html lang="en">

<head>
  <!-- meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Bootstrap UI Kit">
  <meta name="keywords" content="ui kit">
  <meta name="author" content="UIdeck">

  <title>Roof Me Roofing Ltd</title>

  <!-- CSS Files -->
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/main.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/animate.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/owl.carousel.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/owl.theme.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/responsive.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/style.css">

  <!-- Fonts icons -->
  <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/css/font-awesome.min.css">
  <?php wp_head()?>
</head>

<body>

  <!-- Page Wrapper Start -->
  <div class="wrapper">
    <!-- Nav -->
    <nav class="navbar navbar-toggleable-md navbar-light bg-black">
      <div class="container">
        <div class="nav-wrapper">
          <a class="navbar-brand" href="index.html"><img src="<?php echo get_template_directory_uri()?>//img/hero-2.jpg" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar4" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fa fa-bars"></i>
          </button>
        </div>
        <div class="collapse navbar-collapse justify-content-end" id="navbar4">
          
          <?php wp_nav_menu( array(
            'theme_location' => 'main-menu',
            'container' => 'ul',
            'menu_class' => 'navbar-nav'
          ) ); ?>

          <form class="form-inline hidden-md-down">
            <div class="top_search_con">
              <input class="form-control mr-sm-2" placeholder="Search Here ..." type="text">
              <span class="top_search_icon"><i class="fa fa-search"></i></span>
            </div>
          </form>
        </div>
      </div>
    </nav>