<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div class="container"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="col-sm-6">
  <h2><?php echo $text_my_account; ?></h2>
  <div class="content">
    <ul>
      <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
      <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
      <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
  </div>
  <div class="col-sm-6">
  <h2><?php echo $text_my_orders; ?></h2>
  <div class="content">
    <ul>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
      <?php if ($reward) { ?>
      <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
      <?php } ?>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
      <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>
    </ul>
  </div>
  </div>

				<div class="col-xs-12">
				<h2><?php echo $ms_account_seller_account; ?></h2>
				<div class="content">
					<ul class="ms-sellermenu <?php if ($this->config->get('msconf_graphical_sellermenu')) { ?>graphical<?php } ?>">
							<?php if ($ms_seller_created && $this->MsLoader->MsSeller->getStatus($this->customer->getId()) == MsSeller::STATUS_ACTIVE) { ?>
								<li>
									<a href="<?php echo $this->url->link('seller/account-dashboard', '', 'SSL'); ?>">
										<?php if($this->config->get('msconf_graphical_sellermenu')) { ?>
											<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-graph-96.png" />
										<?php } ?>
										<?php echo $ms_account_dashboard; ?>
									</a>
								</li>
							<?php } ?>

							<li>
								<a href="<?php echo $this->url->link('seller/account-profile', '', 'SSL'); ?>">
									<?php if($this->config->get('msconf_graphical_sellermenu')) { ?>
										<?php if ($ms_seller_created) { ?>
										<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-profile-96.png" />
										<?php } else { ?>
										<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-profile-plus-96.png" />
										<?php } ?>
									<?php } ?>
									<?php echo $ms_seller_created ? $ms_account_sellerinfo : $ms_account_sellerinfo_new; ?>
								</a>
							</li>
							
							<?php if ( ($ms_seller_created) && ( ($this->MsLoader->MsSeller->getStatus($this->customer->getId()) == MsSeller::STATUS_ACTIVE) || ($this->config->get('msconf_allow_inactive_seller_products')) ) ) { ?>
								<li>
									<a href="<?php echo $this->url->link('seller/account-product/create', '', 'SSL'); ?>">
										<?php if($this->config->get('msconf_graphical_sellermenu')) { ?>
											<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-bag-plus-96.png" />
										<?php } ?>
										<?php echo $ms_account_newproduct; ?>
									</a>
								</li>
								<li>
									<a href="<?php echo $this->url->link('seller/account-product', '', 'SSL'); ?>">
										<?php if($this->config->get('msconf_graphical_sellermenu')) { ?>
											<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-bag-96.png" />
										<?php } ?>
										<?php echo $ms_account_products; ?>
									</a>
								</li>
							<?php } ?>
							<?php if ($ms_seller_created && $this->MsLoader->MsSeller->getStatus($this->customer->getId()) == MsSeller::STATUS_ACTIVE) { ?>
								<li>
									<a href="<?php echo $this->url->link('seller/account-order', '', 'SSL'); ?>">
										<?php if($this->config->get('msconf_graphical_sellermenu')) { ?>
											<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-cart-96.png" />
										<?php } ?>
										<?php echo $ms_account_orders; ?>
									</a>
								</li>
								<li>
									<a href="<?php echo $this->url->link('seller/account-transaction', '', 'SSL'); ?>">
										<?php if($this->config->get('msconf_graphical_sellermenu')) { ?>
											<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-book-96.png" />
										<?php } ?>
										<?php echo $ms_account_transactions; ?>
									</a>
								</li>
								<?php if ($this->config->get('msconf_allow_withdrawal_requests')) { ?>
									<li>
										<a href="<?php echo $this->url->link('seller/account-withdrawal', '', 'SSL'); ?>">
											<?php if($this->config->get('msconf_graphical_sellermenu')) { ?>
												<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-dollar-96.png" />
											<?php } ?>
											<?php echo $ms_account_withdraw; ?>
										</a>
									</li>
								<?php } ?>
									<li>
										<a href="<?php echo $this->url->link('seller/account-stats', '', 'SSL'); ?>">
											<?php if($this->config->get('msconf_graphical_sellermenu')) { ?>
												<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-stats-96.png" />
											<?php } ?>
											<?php echo $ms_account_stats; ?>
										</a>
									</li>
							<?php } ?>
					</ul>
				</div>
				</div>
			
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?> 