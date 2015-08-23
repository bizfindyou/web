<!-- Footer begin -->
    <div class="container-fluid col-pad-30-20 no-pad-lr footer">
    	<div class="container no-pad-lr text-white" id="footer">
            <div class="col-sm-2">
            	<h4>Information</h4>
                <ul>
                	<li><a class="text-white" href="#">About Us</a></li>
                	<li><a class="text-white" href="#">Terms of Use</a></li>
                	<li><a class="text-white" href="#">Your Privacy</a></li>
                	<li><a class="text-white" href="#">FAQ</a></li>
                	<li><a class="text-white" href="#">Testimonials</a></li>
                	<li><a class="text-white" href="#">Contact Us</a></li>
                </ul>
            </div>
            
            <div class="col-sm-4">
            	<h4>Bizfindyou available on App Store</h4>
                <a href="#"><img src="image/data/appstore-apple.png" class="img-responsive" /></a>
            </div>
            
            <div class="col-sm-3">
            	<h4>Tags</h4>
                <a class="tag-block" href="#">Modern</a>
                <a class="tag-block" href="#">Bootstrap</a>
                <a class="tag-block" href="#">HTML 5</a>
                <a class="tag-block" href="#">Metro Style</a>
                <a class="tag-block" href="#">Portfolio</a>
                <a class="tag-block" href="#">Responsive</a>
            </div>
            
            <div class="col-sm-3">
            	<h4>Subscribe to our Newsletter</h4>
                <p>Subscribe to our newsletter and join our 10G subscribers.</p>
                
                <h5>Email*</h5>
                <input class="form-control input-blank" />
                <input type="button" class="btn-blue" value="Subscribe" />
            </div>
        </div>
    </div>
    
        <div class="container-fluid col-pad-20-10 no-pad-lr footer-copyright">
        	<div class="container">
            	<p class="small">© BizFindYou 2015. All Rights Are Reserved | Designed by MooiPixel</p>
            </div>
        </div>
    <!-- Footer end -->



<div class="container text-center hidden">
<?php if ($informations) { ?>
<a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a> | 
<?php } ?>
<a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a> | <a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a>
<br />
<span class="small"><?php echo $powered; ?></span>
</div>
</div>
</div><!-- /o-wrapper -->

<script src="catalog/view/javascript/menu/menu.min.js"></script>
<script src="catalog/view/javascript/menu/menu.initialize.js"></script>
</body></html>