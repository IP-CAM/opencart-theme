<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
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
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/bootstrap.min.css" />
<linK rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/custom.css" />
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<script type="text/javascript" charset="utf-8">
$(document).on('ready',function() {  
  $('#currency').on('mouseover', function () {      
      $('#currency .currency_div').css('display','block');
  });
   $('.currency_div').on('mouseout', function () {       
      $('#currency .currency_div').css('display','none');
  });

// Hover state for menu 

var removeOpen =  function () {
            $('.open').removeClass('open');
             };
$('.dropdown').on('mouseenter',function() {
  console.log(1);
  $(this).addClass('open');
  $(this).prev('li.dropdown').removeClass('open');        
  $(this).next('li.dropdown').removeClass('open');        
});

$('.no-dropdown').on('mouseenter',removeOpen);     
$('.dropdown-menu').on('mouseleave',removeOpen);  

});   
</script>
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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
<body class="home lang_en">
    <header id="header-container">
        <div id="header">
            <div class="header-top">
                <div class="header-inner">
                  <?php echo $currency; ?>
                  <div class="tm_headerlinkmenu">
                        <div class="tm_headerlinks_inner">
                            <div class="headertoggle_img">&nbsp;</div>
                        </div>
                        <ul class="header_links">
                            <li> <a href="#">My Account</a>
                            </li>
                            <li><a href="#" class="wishlist-total">Wish List (0)</a>
                            </li>
                        </ul>
                    </div>
                    <div class="welcome-links">
                        <div class="links">
                            <span class="account"><a class="my-account" href="index.php?route=account/account">My Account</a>
                            </span>
                            <span class=""><a class="" href="#">OWL Intuition Login</a>
                            </span>
                        </div>
                        <div id="welcome">
                            <?php if ($logged) { ?>
                            <?php  echo $text_logged; ?>                            
                            <?php } else { ?>
                            <a class="log-in" href="./index.php?route=account/login">Login</a> 
                            <a class="register" href="./index.php?route=account/register">Register</a>             
                        </div>
                        <?php } ?>
                    </div>
                    <?php echo $cart; ?>             
                    <div id="search">
                      <div class="button-search"></div>
                      <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
                    </div>
                </div>
            </div> 
        </div>
         <div id="header-bg " class="banner navbar navbar-default" role="banner" style="background: #ffffff !important;height:163px !important;border-bottom: 0.8px solid #5A5959 !important;box-shadow: 3px 2px 2px #ECE2E2 !important;">
            <div class="container">
                <div class="navbar-header">
                    <button id="nav-button" type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                    </button>
                </div>
                <?php if ($logo) { ?>
                  <a class="home-button" href="<?php echo $home; ?>">
                      <img id="logo" class="logo" src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>">
                  </a>
                <?php } ?> 
                <?php if ($categories) { ?>
                <nav id="main-nav" class="collapse navbar-collapse pull-right" role="navigation">
                    <ul id="menu-menu-1" class="nav navbar-nav">
                      <?php foreach ($categories as $category) { ?>
                        <li <?php if ($category['children']) { ?>class="dropdown"<?php } else{?> class="no-dropdown" <?php } ?> >
                          <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                            <?php for ($i = 0; $i < count($category['children']);) { ?>
                            <ul class="dropdown-menu">                            
                               <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                <?php for (; $i < $j; $i++) { ?>
                                <?php if (isset($category['children'][$i])) { ?>
                                <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                                <?php } ?>
                                <?php } ?>
                            </ul>
                            <?php } ?>
                        </li>  
                       <?php } ?>                      
                    </ul>
                </nav>
                <?php  } ?>
            </div>
        </div>        
  </header>           

   