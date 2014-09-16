    <footer>
        <div class="info">
            <div class="container">
                <div class="row">
                  <?php if ($informations) { ?>
                    <div class="col-sm-2 col-md-2 col-lg-2 footer-menu">
                        <h3><?php echo $text_information; ?></h3>
                        <ul>
                            <?php foreach ($informations as $information) { ?>
                            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                            <?php } ?>
                          </ul>
                    </div>
                     <?php } ?> 
                   <div class="footer-menu col-sm-2 col-md-2 col-lg-2">
                        <h3><?php echo $text_service; ?></h3>
                          <ul>
                            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                            <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                            <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                          </ul>
                    </div>
                    <div class="footer-menu col-sm-2 col-md-2 col-lg-2">
                        <h3><?php echo $text_extra; ?></h3>
                        <ul>
                          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                        </ul>
                    </div>
                    <div class="footer-menu col-sm-2 col-md-2 col-lg-2">
                       <h3><?php echo $text_account; ?></h3>
                        <ul>
                          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3 col-md-4 col-lg-4">
                        <h3>Contact details</h3>
                        <div class="row">
                            <div class="col-lg-10">
                                <p class="mail">
                                    <span>Email us:</span>
                                    <a href="mailto:info@thermtec.ie">info@thermtec.ie</a>

                                </p>
                                <p class="call">
                                    <span>Tap to Call Us:</span><a href="tel:+35312544472">
                                01-2544472                              </a>
                                </p>
                                <p class="add">
                                    <span>Address:</span>
                                    Thermtec Energy
                                    <br/>50 Island View
                                    <br/>Malahide
                                    <br/>Co. Dublin
                                    <br/>Ireland
                                    <br/>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="social">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-2 icons">
                        <a class="social-tw" href="https://twitter.com/Thermtec">https://twitter.com/Thermtec</a>
                        <a class="social-in" href="https://www.linkedin.com/pub/thermetc-energy/a2/4b2/684">https://www.linkedin.com/pub/thermetc-energy/a2/4b2/684</a>
                        <a class="social-g" href="https://plus.google.com/102083162345159502411">https://plus.google.com/102083162345159502411</a>
                    </div>
                    <div class="col-md-12 col-lg-7">
                        <p class="company"><?php echo $powered; ?>
                        </p>
                    </div>
                    <div class="col-md-12 col-lg-3">
                    </div>
                </div>
            </div>
        </div>
</body></html>