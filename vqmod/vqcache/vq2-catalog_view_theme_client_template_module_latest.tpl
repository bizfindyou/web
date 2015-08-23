<div class="container">

<div class="box hidden">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="
			ms_addToCart
			('<?php echo $product['product_id']; ?>');" class="button" /></div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>

<!-- Header Row Begin -->
<div class="col-xs-12">
    <div class="col-xs-11 header-row-full"><h4>CATEGORIES</h4></div>
    <div class="col-xs-1 plus-sign no-pad-lr"><a href="#"><img class="img-responsive pull-right" src="image/data/plus-sign.jpg" /></a></div>
</div>
<!-- Header Row End -->


<!-- Featured Container Begin -->   
<div class="col-xs-12 no-pad-lr">
    <!-- Featured Block Begin -->
    <div class="col-sm-4 col-pad-10-10">
    	<?php if ($product['thumb']) { ?>
        <a href="<?php echo $product['href']; ?>"><img class="img-full-width" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
        <?php } ?>
        <a href="<?php echo $product['href']; ?>"><h4 class="text-black"><?php echo $product['name']; ?></h4></a>
        <?php if ($product['description']) { ?>
        <?php echo $product['description']; ?>
        <?php } ?>
        
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
    </div>
    <!-- Featured Block End -->
</div>
<!-- Featured Container End -->
</div>