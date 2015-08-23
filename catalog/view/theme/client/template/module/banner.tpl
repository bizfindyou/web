<!-- Banner Container Begin -->
<div class="container-fluid no-pad-lr">
  <?php foreach ($banners as $banner) { ?>
	<?php if ($banner['link']) { ?>
      <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" class="img-full-width" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a>
      <?php } else { ?>
      <img src="<?php echo $banner['image']; ?>" class="img-full-width" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />
  <?php } ?>
  <?php } ?>
      <div class="col-sm-6 col-sm-offset-3 col-xs-12" id="main-search-bar">
          <input class="col-xs-10" name="search" type="text" placeholder="Search products / events / services" value="<?php echo $search; ?>" />
          <div class="col-xs-2 button-main-search text-white text-center" style="cursor:pointer;padding-left:20px;"><i class="fa fa-search fa-3x"></i></div>
      </div>
</div>
<!-- Banner Container End -->



<div id="banner<?php echo $module; ?>" class="banner hidden">
  <?php foreach ($banners as $banner) { ?>
  <?php if ($banner['link']) { ?>
  <div><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></div>
  <?php } else { ?>
  <div><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></div>
  <?php } ?>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#banner<?php echo $module; ?> div:first-child').css('display', 'block');
});

var banner = function() {
	$('#banner<?php echo $module; ?>').cycle({
		before: function(current, next) {
			$(next).parent().height($(next).outerHeight());
		}
	});
}

setTimeout(banner, 2000);
//--></script>