<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="container hidden">
<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
</div>

<div class="container-fluid bg-grey">
      <!-- Content Container Begin -->
      <div class="container no-pad-lr bg-dark-grey" id="content-container">
      		<!-- Left Column Begin -->
            <div class="col-sm-2 visible-lg visible-md visible-sm no-pad-lr">
            	<ul class="profile-left-bar">
                	<li class="col-pad-20-20"></li>
                	<li class="active">
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
                	<li>
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
                    
                    <div class="col-xs-12">
                    	<div class="col-sm-7 col-xs-12">
                        	<div class="col-sm-6">
                            	<a href="<?php echo $this->url->link('seller/account-profile', '', 'SSL'); ?>"><img class="img-full-width col-pad-20-20" src="<?php echo $seller['avatar']; ?>" /></a>
                            </div>
                            <div class="col-sm-6">
                            	<h2><?php echo $seller['ms.nickname']; ?></h2>
                                <h4 class="text-grey"><i class="fa fa-map-marker text-red"></i> Petaling Jaya, Selangor</h4>
                                <h4 class="text-grey">Following <span class="text-red">15</span></h4>
                                <h4 class="text-grey">Followers <span class="text-red">28</span></h4>
                                <a href="<?php echo $this->url->link('seller/account-profile', '', 'SSL'); ?>" class="form-control btn-submit bg-red">Update Profile</a>
                            </div>
                        </div>
                    	<div class="col-sm-5 col-xs-12">
                            <div class="col-pad-10-10"></div>
                        	<h4>RECENTLY VISITED</h4>
                            <img src="image/data/myprofile/profile-visited-01.jpg" class="col-xs-4 no-pad-lr" />
                            <img src="image/data/myprofile/profile-visited-02.jpg" class="col-xs-4 no-pad-lr" />
                            <img src="image/data/myprofile/profile-visited-03.jpg" class="col-xs-4 no-pad-lr" />
                        </div>
                    </div>
                    
                    <div class="col-xs-12">
                    	<div id="my-profile-content">
                            <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
                                <li class="active"><a href="#profile" data-toggle="tab">Profile</a></li>
                                <li><a href="#activity-log" data-toggle="tab">Activity Log</a></li>
                                <li><a href="#stats" data-toggle="tab">Stats</a></li>
                                <li><a href="#quicknavi" data-toggle="tab">Quick Navigation</a></li>
                            </ul>
                        </div>
                    	<div class="col-xs-12">
                            <div id="my-tab-content" class="tab-content">
                                <div class="tab-pane active" id="profile">
                                    
                        		<div class="col-sm-6 col-xs-12">
                                	<div class="col-pad-10-10"></div>
                                    <p class="col-sm-6 text-grey">Name</p>
                                    <p class="col-sm-6"><?php echo $seller['ms.nickname']; ?></p>
                                    
                                	<div class="grey-line-divider"></div>
                                    
                                    <p class="col-sm-6 text-grey">Username</p>
                                    <p class="col-sm-6">username</p>
                                    
                                	<div class="grey-line-divider"></div>
                                    
                                    <p class="col-sm-6 text-grey">Password</p>
                                    <p class="col-sm-6">*******</p>
                                    
                                	<div class="grey-line-divider"></div>
                                    
                                    <p class="col-sm-6 text-grey">Member since</p>
                                    <p class="col-sm-6"><?php echo $seller['date_created']; ?></p>
                                    
                                	<div class="grey-line-divider"></div>
                                    
                                    <p class="col-sm-6 text-grey">Date of birth</p>
                                    <p class="col-sm-6">05/07/1987</p>
                                    
                                	<div class="grey-line-divider"></div>
                                    
                                    <p class="col-sm-6 text-grey">Place of birth</p>
                                    <p class="col-sm-6">Malaysia</p>
                                    
                                    
                                    
                                	<div class="col-xs-12 col-pad-20-20">
                                    <h4>Contact Information</h4></div>
                                    
                                    <p class="col-sm-6 text-grey">Email</p>
                                    <p class="col-sm-6">user@email.com</p>
                                    
                                	<div class="grey-line-divider"></div>
                                    
                                    <p class="col-sm-6 text-grey">Skype</p>
                                    <p class="col-sm-6">userskpye012</p>
                                    
                                	<div class="grey-line-divider"></div>
                                    
                                    <p class="col-sm-6 text-grey">Phone</p>
                                    <p class="col-sm-6">012 345678</p>
                                    
                                	<div class="grey-line-divider"></div>
                                    
                                    <p class="col-sm-6 text-grey">Web</p>
                                    <p class="col-sm-6"></p>
                                    
                                	<div class="grey-line-divider"></div>
                                    
                                    <p class="col-sm-6 text-grey">Facebook</p>
                                    <p class="col-sm-6"></p>
                                    
                                	<div class="grey-line-divider"></div>
                                    
                                    <p class="col-sm-6 text-grey">Twitter</p>
                                    <p class="col-sm-6"></p>
                                    
                                	<div class="grey-line-divider"></div>
                                    
                                    <p class="col-sm-6 text-grey">Google+</p>
                                    <p class="col-sm-6"></p>
                                    
                                    
                                    <div class="col-xs-12 col-pad-20-20"></div>
                                  </div>
                                    
                        		<div class="col-sm-6 col-xs-12">
                                	<div class="col-pad-10-10"></div>
                               		<h4 style="font-weight:bold;" class="text-red">MY SELF-SUMMARY</h4>

									<?php echo $seller['ms.description']; ?>
                                </div>
                                  
                                </div>
                                <!--Tab Pane End -->
                                <div class="tab-pane" id="activity-log">
                                    
                                    <!-- Orders -->
                                    <!--h2><?php echo $ms_account_dashboard_orders; ?></h2-->
                                    <table class="list">
                                        <thead>
                                            <tr>
                                                <td><?php echo $ms_account_orders_id; ?></td>
                                                <?php if (!$this->config->get('msconf_hide_customer_email')) { ?>
                                                    <td><?php echo $ms_account_orders_customer; ?></td>
                                                <?php } ?>
                                                <td style="width: 40%"><?php echo $ms_account_orders_products; ?></td>
                                                <td><?php echo $ms_date_created; ?></td>
                                                <td><?php echo $ms_account_orders_total; ?></td>
                                                <td><?php echo $ms_account_orders_view; ?></td>
                                            </tr>
                                        </thead>
                                        
                                        <tbody>
                                        <?php if (isset($orders) && $orders) { ?>
                                            <?php foreach ($orders as $order) { ?>
                                            <tr>
                                                <td><?php echo $order['order_id']; ?></td>
                                                <?php if (!$this->config->get('msconf_hide_customer_email')) { ?>
                                                    <td><?php echo $order['customer']; ?></td>
                                                <?php } ?>
                                                <td class="left products">
                                                <?php foreach ($order['products'] as $p) { ?>
                                                <p>
                                                    <span class="name"><?php if ($p['quantity'] > 1) { echo "{$p['quantity']} x "; } ?> <a href="<?php echo $this->url->link('product/product', 'product_id=' . $p['product_id'], 'SSL'); ?>"><?php echo $p['name']; ?></a></span>
                                                    <?php foreach ($p['options'] as $option) { ?>
                                                    <br />
                                                    &nbsp;<small> - <?php echo $option['name']; ?>:<?php echo $option['value']; ?></small>
                                                    <?php } ?>
                                                    <span class="total"><?php echo $this->currency->format($p['seller_net_amt'], $this->config->get('config_currency')); ?></span>
                                                </p>
                                                <?php } ?>
                                                </td>
                                                <td><?php echo $order['date_created']; ?></td>
                                                <td><?php echo $order['total']; ?></td>
                                                <td><a href="<?php echo $this->url->link('seller/account-order/viewOrder', 'order_id=' . $order['order_id']); ?>" class="ms-button ms-button-view"></a></td>
                                            </tr>
                                            <?php } ?>
                                        <?php } else { ?>
                                            <tr>
                                                <td class="center" colspan="6"><?php echo $ms_account_orders_noorders; ?></td>
                                            </tr>
                                        <?php } ?>
                                        </tbody>
                                    </table>
                                </div>
                                <!--Tab Pane End -->
                                <div class="tab-pane" id="stats">
                                    <div class="stats col-pad-20-20">
                                        <p><span><?php echo $ms_account_dashboard_balance; ?>:</span> <span><?php echo $seller['balance']; ?></span></p>
                                        <p><span><?php echo $ms_account_dashboard_total_sales; ?>:</span> <span><?php echo $seller['total_sales']; ?></span></p>
                                        <p><span><?php echo $ms_account_dashboard_total_earnings; ?>:</span> <span><?php echo $seller['total_earnings']; ?></span></p>
                                        <p><span><?php echo $ms_account_dashboard_sales_month; ?>:</span> <span><?php echo $seller['sales_month']; ?></span></p>
                                        <p><span><?php echo $ms_account_dashboard_earnings_month; ?>:</span> <span><?php echo $seller['earnings_month']; ?></span></p>	
                                    </div>
                                </div>
                                <!--Tab Pane End -->
                                <div class="tab-pane" id="quicknavi">
                                	<div class="ms-account-dashboard">
                                	<div class="nav col-pad-20-20">
                                        <a href="<?php echo $this->url->link('seller/account-profile', '', 'SSL'); ?>">
                                            <img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-profile.png" />
                                            <span><?php echo $ms_account_dashboard_nav_profile; ?></span>
                                        </a>
                                
                                        <a href="<?php echo $this->url->link('seller/account-product/create', '', 'SSL'); ?>">
                                            <img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-bag-plus.png" />
                                            <span><?php echo $ms_account_dashboard_nav_product; ?></span>
                                        </a>
                                
                                        <a href="<?php echo $this->url->link('seller/account-product', '', 'SSL'); ?>">
                                            <img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-bag.png" />
                                            <span><?php echo $ms_account_dashboard_nav_products; ?></span>
                                        </a>
                                        
                                        <a href="<?php echo $this->url->link('seller/account-order', '', 'SSL'); ?>">
                                            <img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-cart-96.png" />
                                            <span><?php echo $ms_account_dashboard_nav_orders; ?></span>
                                        </a>
                                        
                                        <a href="<?php echo $this->url->link('seller/account-transaction', '', 'SSL'); ?>">
                                            <img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-book-96.png" />
                                            <span><?php echo $ms_account_dashboard_nav_balance; ?></span>
                                        </a>
                                        
                                        <?php if ($this->config->get('msconf_allow_withdrawal_requests')) { ?>
                                        <a href="<?php echo $this->url->link('seller/account-withdrawal', '', 'SSL'); ?>">
                                            <img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-dollar.png" />
                                            <span><?php echo $ms_account_dashboard_nav_payout; ?></span>
                                        </a>
                                        <?php } ?>
                                        
                                        <a href="<?php echo $this->url->link('seller/account-stats', '', 'SSL'); ?>">
                                            <img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-stats.png" />
                                            <span><?php echo $ms_account_stats; ?></span>
                                        </a>
                                    </div>
                                    </div>
                                </div>
                                <!--Tab Pane End -->
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- Right Column End -->
      
      </div>
      <!-- Content Container End -->
    </div>


<div class="ms-account-dashboard container-fluid no-pad-lr hidden">
	<?php echo $content_top; ?>
	<h1><?php echo $ms_account_dashboard_heading; ?></h1>
	
	<?php if (isset($success) && ($success)) { ?>
		<div class="success"><?php echo $success; ?></div>
	<?php } ?>
	
	<div class="overview">
		<h3><?php echo $ms_account_dashboard_overview; ?></h3>
		<img src="<?php echo $seller['avatar']; ?>" /><br />
		<span class="nickname"><?php echo $seller['ms.nickname']; ?></span>
		<p><span><?php echo $ms_date_created; ?>:</span> <span><?php echo $seller['date_created']; ?></span></p>
		<p><span><?php echo $ms_account_dashboard_seller_group; ?>:</span> <span><?php echo $seller['seller_group']; ?></span></p>
		<p>
			<span><?php echo $ms_account_dashboard_listing; ?>:</span>
			
			<span>
			<?php echo $this->currency->getSymbolLeft(); ?><?php echo isset($seller['commission_rates'][MsCommission::RATE_LISTING]['flat']) ? $this->currency->format($seller['commission_rates'][MsCommission::RATE_LISTING]['flat'], $this->config->get('config_currency'), '', FALSE) : '0' ?><?php echo $this->currency->getSymbolRight(); ?>
			+ <?php echo isset($seller['commission_rates'][MsCommission::RATE_LISTING]['percent']) ? $seller['commission_rates'][MsCommission::RATE_LISTING]['percent'] : '0'; ?>%
			</span>
		</p>
		
		<p>
			<span><?php echo $ms_account_dashboard_sale; ?>:</span>
			
			<span>
			<?php echo $this->currency->getSymbolLeft(); ?><?php echo isset($seller['commission_rates'][MsCommission::RATE_SALE]['flat']) ? $this->currency->format($seller['commission_rates'][MsCommission::RATE_SALE]['flat'], $this->config->get('config_currency'), '', FALSE) : '0' ?><?php echo $this->currency->getSymbolRight(); ?>
			+ <?php echo isset($seller['commission_rates'][MsCommission::RATE_SALE]['percent']) ? $seller['commission_rates'][MsCommission::RATE_SALE]['percent'] : '0'; ?>%
			</span>
		</p>
		
		<p>
			<span><?php echo $ms_account_dashboard_royalty; ?>:</span>
			
			<span>
			<?php echo isset($seller['commission_rates'][MsCommission::RATE_SALE]['percent']) ? 100 - $seller['commission_rates'][MsCommission::RATE_SALE]['percent'] : '100'; ?>% - 
			<?php echo $this->currency->getSymbolLeft(); ?><?php echo isset($seller['commission_rates'][MsCommission::RATE_SALE]['flat']) ? $this->currency->format($seller['commission_rates'][MsCommission::RATE_SALE]['flat'], $this->config->get('config_currency'), '', FALSE) : '0' ?><?php echo $this->currency->getSymbolRight(); ?>
			</span>
		</p>
	</div>
	
	<div class="stats">
		<h3><?php echo $ms_account_dashboard_stats; ?></h3>
		<p><span><?php echo $ms_account_dashboard_balance; ?>:</span> <span><?php echo $seller['balance']; ?></span></p>
		<p><span><?php echo $ms_account_dashboard_total_sales; ?>:</span> <span><?php echo $seller['total_sales']; ?></span></p>
		<p><span><?php echo $ms_account_dashboard_total_earnings; ?>:</span> <span><?php echo $seller['total_earnings']; ?></span></p>
		<p><span><?php echo $ms_account_dashboard_sales_month; ?>:</span> <span><?php echo $seller['sales_month']; ?></span></p>
		<p><span><?php echo $ms_account_dashboard_earnings_month; ?>:</span> <span><?php echo $seller['earnings_month']; ?></span></p>	
	</div>
	
	<div class="nav">
		<h3><?php echo $ms_account_dashboard_nav; ?></h3>
		<a href="<?php echo $this->url->link('seller/account-profile', '', 'SSL'); ?>">
			<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-profile.png" />
			<span><?php echo $ms_account_dashboard_nav_profile; ?></span>
		</a>

		<a href="<?php echo $this->url->link('seller/account-product/create', '', 'SSL'); ?>">
			<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-bag-plus.png" />
			<span><?php echo $ms_account_dashboard_nav_product; ?></span>
		</a>

		<a href="<?php echo $this->url->link('seller/account-product', '', 'SSL'); ?>">
			<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-bag.png" />
			<span><?php echo $ms_account_dashboard_nav_products; ?></span>
		</a>
		
		<a href="<?php echo $this->url->link('seller/account-order', '', 'SSL'); ?>">
			<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-cart-96.png" />
			<span><?php echo $ms_account_dashboard_nav_orders; ?></span>
		</a>
		
		<a href="<?php echo $this->url->link('seller/account-transaction', '', 'SSL'); ?>">
			<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-book-96.png" />
			<span><?php echo $ms_account_dashboard_nav_balance; ?></span>
		</a>
		
		<?php if ($this->config->get('msconf_allow_withdrawal_requests')) { ?>
		<a href="<?php echo $this->url->link('seller/account-withdrawal', '', 'SSL'); ?>">
			<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-dollar.png" />
			<span><?php echo $ms_account_dashboard_nav_payout; ?></span>
		</a>
		<?php } ?>
		
		<a href="<?php echo $this->url->link('seller/account-stats', '', 'SSL'); ?>">
			<img src="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/image/ms-stats.png" />
			<span><?php echo $ms_account_stats; ?></span>
		</a>
	</div>
	<!-- Orders -->
	<h2><?php echo $ms_account_dashboard_orders; ?></h2>
	<table class="list">
		<thead>
			<tr>
				<td><?php echo $ms_account_orders_id; ?></td>
				<?php if (!$this->config->get('msconf_hide_customer_email')) { ?>
					<td><?php echo $ms_account_orders_customer; ?></td>
				<?php } ?>
				<td style="width: 40%"><?php echo $ms_account_orders_products; ?></td>
				<td><?php echo $ms_date_created; ?></td>
				<td><?php echo $ms_account_orders_total; ?></td>
				<td><?php echo $ms_account_orders_view; ?></td>
			</tr>
		</thead>
		
		<tbody>
		<?php if (isset($orders) && $orders) { ?>
			<?php foreach ($orders as $order) { ?>
			<tr>
				<td><?php echo $order['order_id']; ?></td>
				<?php if (!$this->config->get('msconf_hide_customer_email')) { ?>
					<td><?php echo $order['customer']; ?></td>
				<?php } ?>
				<td class="left products">
				<?php foreach ($order['products'] as $p) { ?>
				<p>
					<span class="name"><?php if ($p['quantity'] > 1) { echo "{$p['quantity']} x "; } ?> <a href="<?php echo $this->url->link('product/product', 'product_id=' . $p['product_id'], 'SSL'); ?>"><?php echo $p['name']; ?></a></span>
                    <?php foreach ($p['options'] as $option) { ?>
                    <br />
                    &nbsp;<small> - <?php echo $option['name']; ?>:<?php echo $option['value']; ?></small>
                    <?php } ?>
                    <span class="total"><?php echo $this->currency->format($p['seller_net_amt'], $this->config->get('config_currency')); ?></span>
				</p>
				<?php } ?>
				</td>
				<td><?php echo $order['date_created']; ?></td>
				<td><?php echo $order['total']; ?></td>
				<td><a href="<?php echo $this->url->link('seller/account-order/viewOrder', 'order_id=' . $order['order_id']); ?>" class="ms-button ms-button-view"></a></td>
			</tr>
			<?php } ?>
		<?php } else { ?>
			<tr>
				<td class="center" colspan="6"><?php echo $ms_account_orders_noorders; ?></td>
			</tr>
		<?php } ?>
		</tbody>
	</table>
	
	<div class="buttons">
		<div class="left">
			<a href="<?php echo $link_back; ?>" class="button">
				<span><?php echo $button_back; ?></span>
			</a>
		</div>
	</div>
	
	<?php echo $content_bottom; ?>
</div>

<?php echo $footer; ?>
