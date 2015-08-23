<?php echo $header; ?>
<?php echo $column_left; ?><?php echo $column_right; ?>


<div class="container-fluid bg-grey">
      <!-- Content Container Begin -->
      <div class="container no-pad-lr bg-dark-grey" id="content-container">
      		<!-- Left Column Begin -->
            <div class="col-sm-2 visible-lg visible-md visible-sm no-pad-lr">
            	<ul class="profile-left-bar">
                	<li class="col-pad-20-20"></li>
                	<li>
                        <a href="<?php echo $link_account_profile; ?>"><i class="fa fa-user fa-2x"></i>
                        <p>My Profile</p></a>
                    </li>
                	<li>
                        <a href="#"><i class="fa fa-envelope fa-2x"></i>
                        <p>My Message</p></a>
                    </li>
                	<li>
                        <a href="my-events.html"><i class="fa fa-calendar fa-2x"></i>
                        <p>My Events</p></a>
                    </li>
                	<li>
                        <a href="#"><i class="fa fa-users fa-2x"></i>
                        <p>My Friends</p></a>
                    </li>
                	<li class="active">
                        <a href="<?php echo $link_clips; ?>"><i class="fa fa-paperclip fa-2x"></i>
                        <p>My Clips</p></a>
                    </li>
                </ul>
            </div>
            <!-- Left Column End -->
            
      		<!-- Right Column Begin -->
            <div class="col-sm-10 col-xs-12 no-pad-lr bg-white">
            	<div class="profile-content">
            	<div class="col-xs-12 col-pad-20-20 bg-grey"></div>
                <div class="col-xs-12 col-pad-20-20">
                    <h4 class="col-xs-12">My Clips</h4>
                    <div class="col-xs-12 col-pad-10-20">
                    <input type="text" class="form-control" placeholder="Search for clips collection" />
                    </div>
                    
                    <div class="col-xs-12 bg-dark-grey hidden">
                    	<h4 class="text-white col-xs-3">Clips</h4>
                    	<h4 class="text-white col-xs-6">Product Details</h4>
                    	<h4 class="text-white col-xs-3">Rating</h4>
                    </div>
                    
                    
                    
                </div>
                
                
                <!-- Upcoming Events Begin -->
                <div class="col-xs-12">
                <?php if ($success) { ?>
                <div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
                <?php } ?>
                	<?php if ($products) { ?>
                      <div class="wishlist-info">
                        <table>
                          <thead class="bg-dark-grey">
                            <tr>
                              <td class="image text-white"><?php echo $column_image; ?></td>
                              <td class="name text-white"><?php echo $column_name; ?></td>
                              <td class="model text-white"><?php echo $column_model; ?></td>
                              <td class="stock text-white"><?php echo $column_stock; ?></td>
                              <td class="price text-white"><?php echo $column_price; ?></td>
                              <td class="action text-white"><?php echo $column_action; ?></td>
                            </tr>
                          </thead>
                          <?php foreach ($products as $product) { ?>
                          <tbody id="wishlist-row<?php echo $product['product_id']; ?>">
                            <tr>
                              <td class="image"><?php if ($product['thumb']) { ?>
                                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                                <?php } ?></td>
                              <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
                              <td class="model"><?php echo $product['model']; ?></td>
                              <td class="stock"><?php echo $product['stock']; ?></td>
                              <td class="price"><?php if ($product['price']) { ?>
                                <div class="price">
                                  <?php if (!$product['special']) { ?>
                                  <?php echo $product['price']; ?>
                                  <?php } else { ?>
                                  <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
                                  <?php } ?>
                                </div>
                                <?php } ?></td>
                              <td class="action"><img src="catalog/view/theme/default/image/cart-add.png" alt="<?php echo $button_cart; ?>" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" />&nbsp;&nbsp;<a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/default/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
                            </tr>
                          </tbody>
                          <?php } ?>
                        </table>
                      </div>
                      <div class="buttons">
                        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
                      </div>
                      <?php } else { ?>
                      <div class="content"><?php echo $text_empty; ?></div>
                      <div class="buttons">
                        <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
                      </div>
                      <?php } ?>
                </div>
                <!-- Upcoming Events End -->
                
                
                </div>
            </div>
            <!-- Right Column End -->
      
      </div>
      <!-- Content Container End -->
    </div>






<!-- Stock Below -->
<div class="container hidden">
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($products) { ?>
  <div class="wishlist-info">
    <table>
      <thead>
        <tr>
          <td class="image"><?php echo $column_image; ?></td>
          <td class="name"><?php echo $column_name; ?></td>
          <td class="model"><?php echo $column_model; ?></td>
          <td class="stock"><?php echo $column_stock; ?></td>
          <td class="price"><?php echo $column_price; ?></td>
          <td class="action"><?php echo $column_action; ?></td>
        </tr>
      </thead>
      <?php foreach ($products as $product) { ?>
      <tbody id="wishlist-row<?php echo $product['product_id']; ?>">
        <tr>
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
          <td class="model"><?php echo $product['model']; ?></td>
          <td class="stock"><?php echo $product['stock']; ?></td>
          <td class="price"><?php if ($product['price']) { ?>
            <div class="price">
              <?php if (!$product['special']) { ?>
              <?php echo $product['price']; ?>
              <?php } else { ?>
              <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
              <?php } ?>
            </div>
            <?php } ?></td>
          <td class="action"><img src="catalog/view/theme/default/image/cart-add.png" alt="<?php echo $button_cart; ?>" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" />&nbsp;&nbsp;<a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/default/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
        </tr>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>