<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<!-- Bootstrap Begin -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<!-- Latest compiled and minified JavaScript -->
<!--script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script-->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<!-- Bootstrap End -->
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/client/stylesheet/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/client/stylesheet/fonts.css">
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/client/stylesheet/stylesheet.css" />
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/menu/style.css" />
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/client/stylesheet/style.css" />

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<!--script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script-->
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>

				<script type="text/javascript"> if (!window.console) console = {log: function() {}}; var config_language = <?php echo $dt_language; ?>; </script>
			
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>
<!-- /c-menu slide-left -->
<nav id="c-menu--slide-left" class="c-menu c-menu--slide-left">
  <button class="c-menu__close text-right"><i class="fa fa-times fa-2x"></i></button>
  <ul class="c-menu__items">
  
			   <?php if(isset($zmenu) && $zmenu) { ?>
			   		<?php if($is_oc2) { ?>
			   			<div class="container"><?php echo $zmenu; ?></div>
			   		<?php } else { ?>
			       		<?php echo $zmenu; ?>
			       	<?php } ?>
			    <?php } else if ($categories)
			 { ?>
    <li class="c-menu__item"><a href="#" class="c-menu__link">Home</a></li>
    
    <?php foreach ($categories as $category) { ?>
    <li class="c-menu__item"><a href="<?php echo $category['href']; ?>" class="c-menu__link"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li class="c-menu__item"><a href="<?php echo $category['children'][$i]['href']; ?>" class="c-menu__link"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
    
  <?php } ?>
  </ul>
</nav>
<!-- /c-menu slide-left -->
<div id="o-wrapper" class="o-wrapper">
<div id="c-mask" class="c-mask"></div><!-- /c-mask -->
      <!-- Fixed navbar begin -->
	
			   <?php if(isset($zmenu) && $zmenu) { ?>
			   		<?php if($is_oc2) { ?>
			   			<div class="container"><?php echo $zmenu; ?></div>
			   		<?php } else { ?>
			       		<?php echo $zmenu; ?>
			       	<?php } ?>
			    <?php } else if ($categories)
			 { ?>
      <div class="hidden visible-xs">
        <nav class="navbar navbar-default">
          <div class="container-fluid no-pad-lr">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              	<div class="top-social">
              	</div>
              <a class="navbar-brand" href="<?php echo $home; ?>"><img class="img-responsive center-block" src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="<?php echo $home; ?>">Home</a></li>
                <li class="active"><a href="<?php echo $account; ?>">Member Login</a></li>
                <li class="active"><a href="<?php echo $register; ?>">Register</a></li>
                
                <?php foreach ($categories as $category) { ?>
                <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                  <?php if ($category['children']) { ?>
                  <div>
                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                    <ul>
                      <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                      <?php for (; $i < $j; $i++) { ?>
                      <?php if (isset($category['children'][$i])) { ?>
                      <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                      <?php } ?>
                      <?php } ?>
                    </ul>
                    <?php } ?>
                  </div>
                  <?php } ?>
                </li>
                <?php } ?>
                
                
              </ul>
            </div><!--/.nav-collapse -->
          </div>
        </nav>
        </div>
	<?php } ?>
      <!-- Fixed navbar end -->
      
<div class="container-fluid no-pad-lr">


<!-- Desktop NavBar Begin -->
<div class="container no-pad-lr col-pad-10-10 hidden visible-lg visible-md visible-sm" id="navbar-header">
  <div class="col-sm-4" id="navbar-header">
      <button id="c-button--slide-left" class="c-button"><i class="fa fa-bars fa-1"></i></button> &nbsp;&nbsp;
      <a href="#"><i class="fa fa-home fa-4"></i></a>
  </div>
  <div class="col-sm-4">
  <?php if ($logo) { ?>
      <a href="<?php echo $home; ?>"><img class="img-responsive center-block" src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
  <?php } ?>
  </div>
  <div class="col-sm-4" id="navbar-header-right text-right">
      <a href="<?php echo $wishlist; ?>" id="wishlist-total"><img src="image/data/clips-full.jpg" /> <?php echo $text_wishlist; ?></a> &nbsp;&nbsp; 
      <?php if (!$logged) { ?>
        <?php echo $text_welcome; ?>
      <?php } else { ?>
        <?php echo $text_logged; ?>
      <?php } ?>
      
  <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  </div>
</div>
<!-- Desktop NavBar End -->

<div class="container">
<div id="header" class="hidden">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
</div>

			   <?php if(isset($zmenu) && $zmenu) { ?>
			   		<?php if($is_oc2) { ?>
			   			<div class="container"><?php echo $zmenu; ?></div>
			   		<?php } else { ?>
			       		<?php echo $zmenu; ?>
			       	<?php } ?>
			    <?php } else if ($categories)
			 { ?>
<div id="menu" class="hidden">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>
<?php } ?>
<div class="container no-pad-lr">
<?php if ($error) { ?>
    
    <div class="warning" style="width:97.3%;"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    
<?php } ?>
<div id="notification" style="width:97.3%;"></div>
</div>
</div>
