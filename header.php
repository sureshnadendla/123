<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 * @package WordPress
 * @subpackage Twenty_Twelve
 * @since Twenty Twelve 1.0
 */
?><!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width" />
<title><?php wp_title( '|', true, 'right' ); ?></title>
<link href='http://fonts.googleapis.com/css?family=Marko+One' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

<link rel="profile" href="http://gmpg.org/xfn/11" />
<!-- <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" /> -->

<?php // Loads HTML5 JavaScript file to add support for HTML5 elements in older IE versions. ?>
<!--[if lt IE 9]>
<script src="<?php echo get_template_directory_uri(); ?>/js/html5.js" type="text/javascript"></script>
<![endif]-->
<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<table class="header_content" width="100%" cellpadding="0" cellspacing="0">
			<tr>
			<td width="45%" class="post_header">				    
			<img src="<?php bloginfo('template_directory'); ?>/images/olamundotrans.png" width="130px" height="35px" class="blog_logo" title="" alt="" />
			</td>		
			<td class="post_menu_home"><span>
		    <img src="<?php bloginfo('template_directory'); ?>/images/home1.png" class="menu_icons_square" title="" alt="" />
			<a class=" post_header_links" href="../../index.php?curclicked=0">Home</a>
			</span></td>
			<td class="post_menu_blog"> <span>
		    <img src="<?php bloginfo('template_directory'); ?>/images/Blogt.png" class="menu_icons" title="" alt="" />
			<a class="post_header_links" href="../../index.php?curclicked=1">Blog</a>
			</span>
			</td>
			<td  class="post_menu_news"> <span>
			<img src="<?php bloginfo('template_directory'); ?>/images/news1.png" class="menu_icons" title="" alt="" />
			<a class="post_header_links" href="../../index.php?curclicked=2">News</a>
			</span></td>
			<td class="post_menu_stories"><span>
			<img src="<?php bloginfo('template_directory'); ?>/images/stories1.png" class="menu_icons" title="" alt="" />
			<a class="post_header_links" href="../../index.php?curclicked=3">Stories</a>
			</span> </td>
			<td class="post_menu_support"> <span>
			<img src="<?php bloginfo('template_directory'); ?>/images/support1.png" class="menu_icons_square" title="" alt="" />
			<a class="post_header_links" href="../../index.php?curclicked=4">Support</a>
			</span></td>
		</tr>
			<tr>
			<td width="45%"></td><td ></td>
			<td id="blog" ><img src="<?php bloginfo('template_directory'); ?>/images/iconuparrowsmallwhite.png" class="cross-link" alt="" />
			</td>
			<!-- <td id="news" ><img src="<?php bloginfo('template_directory'); ?>/images/iconuparrowsmallwhite.png" class="cross-link" alt="" />
			</td>
			<td id="stories" ><img src="<?php bloginfo('template_directory'); ?>/images/iconuparrowsmallwhite.png" class="cross-link" alt="" />
			</td> -->	
			</tr>
			
		</table>
		
<div id="page" class="hfeed site">
	<div id="main" class="wrapper">