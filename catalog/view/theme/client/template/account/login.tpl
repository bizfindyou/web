<?php echo $header; ?>

<?php echo $column_left; ?><?php echo $column_right; ?>
<div class="container">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  
  
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $content_top; ?>
  
  
  
  
  <!-- Content Container Begin -->
      <div class="container no-pad-lr" id="content-container">
      		<!-- Left Column Begin -->
            <div class="col-xs-8 col-pad-20-50">
            		<div class="col-xs-12 no-pad-lr">
                        <div class="pink-line-divider-full"></div>
                        <h3>Login to BIZFINDYOU</h3>
                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                        <input type="text" name="email" class="form-control" placeholder="Email" value="<?php echo $email; ?>" />
                        <input type="password" name="password" class="form-control" placeholder="Password" value="<?php echo $password; ?>" />
                        <!--p><input type="checkbox" /> Keep me logged in</p-->
                        
                        <input type="submit" value="LOG IN" class="form-control btn-pink" />
                          <?php if ($redirect) { ?>
                          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                          <?php } ?>
                      </form>
                    </div>
                    
            
                <!-- Header Row Begin -->
                <div class="col-xs-12 no-pad-lr">
                    <div class="col-xs-12 line-row-full no-pad-lr"><h4>OR</h4></div>
                </div>
                <!-- Header Row End -->
            
            	<div class="col-xs-12 text-center col-pad-20-50">
                	<h3>Connect your account with</h3>
                    <a href="#" class="btn-login-social btn-login-fb"><i class="fa fa-facebook fa-1"></i> FACEBOOK</a>
                    <a href="#" class="btn-login-social btn-login-twitter"><i class="fa fa-twitter fa-1"></i> TWITTER</a>
                </div>
                
                
            		<div class="col-xs-12 col-pad-20-20 bg-grey text-black">
                        <h3>Forgot Your Password?</h3>
                        <p><a href="<?php echo $forgotten; ?>">Click here to reset your password.</a></p>
                    </div>
                
            </div>
      		<!-- Left Column End -->
            
      		<!-- Right Column Begin -->
            <div class="col-xs-4 col-pad-20-50">
            	<a href="#" class="banner-login"><img src="image/data/banner-login-01.jpg" class="img-full-width" /></a>
            	<a href="#" class="banner-login"><img src="image/data/banner-login-02.jpg" class="img-full-width" /></a>
            
            </div>
      		<!-- Right Column End -->
            
      
      </div>
      <!-- Content Container End -->
  
  
  
  
  
  
  
  
  <!-- Stock below -->
  <div class="hidden">
  <h1><?php echo $heading_title; ?>..</h1>
  <div class="login-content">
    <div class="left">
      <h2><?php echo $text_new_customer; ?></h2>
      <div class="content">
        <p><b><?php echo $text_register; ?></b></p>
        <p><?php echo $text_register_account; ?></p>
        <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a></div>
    </div>
    <div class="right">
      <h2><?php echo $text_returning_customer; ?></h2>
    </div>
  </div>
  </div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>