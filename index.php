<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>OlaMundo</title>
    <link type="text/css" rel="stylesheet" href="css/rcarousel.css" />
    <!-- <link rel="stylesheet" type="text/css" href="css/1140.css"/> -->
    <!-- <link rel="stylesheet" href="css/global.css"> -->
    <link rel="stylesheet" type="text/css" href="css/style_text.css" />
    <link rel="stylesheet" type="text/css" href="css/custom.css" />
    <link href='http://fonts.googleapis.com/css?family=Marko+One' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="blog/wordpress/wp-content/plugins/wti-like-post/css/wti_like_post.css" />
 <link rel="stylesheet" media="screen and (min-width: 600px) and (max-width:1024px)" href="css/ipad.css" />  
   <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="blog/wordpress/wp-content/plugins/wti-like-post/js/wti_like_post.js"></script>    
    <script type="text/javascript" src="js/jquery-easing-1.3.pack.js"></script>
    <script type="text/javascript" src="js/jquery-easing-compatibility.1.2.pack.js"></script>
    <script type="text/javascript" src="js/coda-slider.1.1.1.pack.js"></script>
    <script type="text/javascript" src="js/css3-mediaqueries.js"></script>
    <script type="text/javascript" src="js/jquery.ui.widget.js"></script>
    <script type="text/javascript" src="js/jquery.ui.rcarousel.js"></script>
     <script src = "http://www.youtube.com/player_api"></script> 
   <script>  
   jQuery(function($) {
				function generatePages() {
					var _total, i, _link;
					_total = $( "#carousel" ).rcarousel( "getTotalPages" );
					for ( i = 0; i < _total; i++ ) {
						_link = $( "<a href='#'></a>" );
						
						$(_link)
							.bind("click", {page: i},
								function( event ) {
									$( "#carousel" ).rcarousel( "goToPage", event.data.page );
									event.preventDefault();
								}
							)
							.addClass( "bullet off" )
							.appendTo( "#pages" );
					}					
					// mark first page as active
					$( "a:eq(0)", "#pages" )
						.removeClass( "off" )
						.addClass( "on" )
						.css( "background-image", "url(images/html_slides/page-on.png)" );
				}

				function pageLoaded( event, data ) {
					$( "a.on", "#pages" )
						.removeClass( "on" )
						.css( "background-image", "url(images/html_slides/page-off.png)" );

					$( "a", "#pages" )
						.eq( data.page )
						.addClass( "on" )
						.css( "background-image", "url(images/html_slides/page-on.png)" );
				}
				
				resolution = screen.width
				if (resolution == 768 ) {
				slidewidth = 1024
				}
				else{
				slidewidth = resolution
				}
				 
				$("#carousel").rcarousel({
						visible : 1,
						step : 1,
						speed : 600,
						auto : {
							enabled : true
						},
						width : slidewidth - 66,
						height : 425,
						start : generatePages,
						pageLoaded : pageLoaded
					});



});  //end whole
			
      //onYouTubePlayerAPIReady
    	function floaded() {
       	 player = new YT.Player('player', {
            	videoId: '-cSFPIwMEq4',
            	events: {
                'onStateChange': function (event) {                	
                	if(event.data == -1)
                	{
                		  // alert("load"); 
                	}
                	else if(event.data == 0){
                		 // alert("end"); 
                	}
                	else if(event.data == 1){
                		  // alert('palying');
                		  $("#carousel").mouseenter();
          				  $("#carousel").rcarousel( "option",{auto: {enabled:false}} );
                	}
                	else if(event.data == 2){
                		// alert('stop'); 
          				$("#carousel").rcarousel( "option",{auto: {enabled:true,direction:"next",interval:5000}} );
          				$("#carousel").mouseleave();
                		
                	}
                }
            }
        });
    }
    //end youtupe
    
    </script>
    <script type="text/javascript">   
		var theInt = null;
		var $crosslink, $navthumb;

		var pathname = $(location).attr('href');
		if (pathname) {
			var retval = getParameterByName(pathname);
			if (retval != null) {
				var curclicked = retval;
				
			} else {
				var curclicked = 0;
			}
		}
		function getParameterByName(name) {
			var url = document.URL, count = url.indexOf(name);
			sub = url.substring(count);
			amper = sub.indexOf("&");

			if (amper == "-1") {
				var param = sub.split("=");
				return param[1];
			} else {
				var param = sub.substr(0, amper).split("=");
				return param[1];
			}
		}

		theInterval = function(cur) {
			if ( typeof cur != 'undefined')
				curclicked = cur;
			$crosslink.removeClass("active-thumb");
			$navthumb.eq(curclicked).parent().addClass("active-thumb");
			$(".stripNav ul li a").eq(curclicked).trigger('click');
		};
		$(function() {
			
		resolution = screen.width
		if (resolution == 768 ) {
			$("div.panel").css("width", 1024);
		}
		else{
			$("div.panel").css("width", resolution);
		}
    	// $("div.panel").css("width", 1024);
			
			$("#main-photo-slider").codaSlider();
			$navthumb = $(".nav-thumb");
			$crosslink = $(".cross-link");
			$navthumb.click(function() {
				// alert(document.URL);
				// var url = document.URL
				// alert(url.match(/v\=([a-z0-9]+)/i));
				// stripQueryStringAndHashFromPath($this.parent().attr('href').slice(1) - 1);
				var $this = $(this);
				theInterval($this.parent().attr('href').slice(1) - 1);
				return false;
			});
			theInterval();
		});
		
		function display (id) {
			if($(".div"+id).css("display") == "block"){
				$(".div"+id).css("display", "none");
				$('.minusdiv'+id).css("display", "block");
			}else{
				$(".div"+id).css("display", "block");
				$('.minusdiv'+id).css("display", "none");
				// $('.p1').css("Font-Weight","Bold");
			}
		}
</script>
</head>
<body id="top">
<div class="header ">
    <div class="logo">
        <span class=" logo_a"> <span class="menu_logo"> <img src="images/img/olamundotrans.png" width="130px" height="35px"  /> </span> </span>
    </div>
    <div id="movers-row">
        <div class="main">
            <a href="#1" class="cross-link menu_home">
            <img src="images/img/home1.png" class="menu_icons_square" />
             <span class="nav-thumb menu_tab"> Home </span> </a>
        </div>
        <div class="main">
            <a href="#2" class="cross-link menu_blog"> 
            	 <img src="images/img/Blogt.png" class="menu_icons" />
            	<span  class="nav-thumb menu_tab"> Blog </span> </a>
        </div>
        <div class="main">
            <a href="#3" class="cross-link menu_news">
            	 <img src="images/img/news1.png" class="menu_icons" />
            	 <span  class="nav-thumb menu_tab" > News </span> </a>
        </div>
        <div class="main">
            <a href="#4" class="cross-link menu_stories">
            	 <img src="images/img/stories1.png" class="menu_icons" />
            	 <span class="nav-thumb menu_tab"> Stories </span> </a>
        </div>
        <div class="main">
            <a href="#5" class="cross-link menu_support"> 
            	 <img src="images/img/support1.png" class="menu_icons_square" />
            	<span class="nav-thumb menu_tab"> Support </span> </a>
        </div>
    </div>  </div>
<div id="page-wrap">
    <div class="slider-wrap">
            <div id="main-photo-slider" class="main_content">
                <div class="panelContainer">
                    <div class="panel slide_img" title="Panel 1">
                    	
                   <div>
                   	<img src="images/slider/landing_trans1.png" style="margin-left: auto;margin-right: auto;display: block;margin-top: 30px" />
                   </div>
                    	
                    	
                    	
                    	
                    	
                    	
          <!--               <div >
                            <img src="images/slider/slidetransparent.png"   class="home_img" alt="home_img"   />
                            <a href="http://www.apple.com/itunes/what-is/#store" target="_blank">
                                <img src="images/slider/support3.png"   class="apple_icon" alt="home_img" />
                            </a>
                        </div><br><br><br><br><br><br>
                        <p id="pink_line" ></p>
    -->
<!-- 				<div id="carousel">
					<div id="slide01" class="slide">			
							<span  class="home_paragrah"> 
							 <b>See how it works </b>
							 <br>							 
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
							labore etdolore magna aliqua. Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur
							adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
							minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.							 
							</span>
							<span class="videostyles">
								<iframe   src="http://www.youtube.com/embed/-cSFPIwMEq4" onload="floaded()" title="YouTube video player" id="player" allowfullscreen="" frameborder="0"  ></iframe>
                            </span>
						 
					</div>
					
					<div id="slide02" class="slide">
					<span  class="home_paragrah"> 
							 <b>See how it works </b>
							 <br>							 
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
							labore etdolore magna aliqua. Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur
							adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
							minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.							 
							</span>
							<span class="videostyles">
		                   <img src="images/html_slides/simag1.jpg" class="slide_image" alt="horizontal and vertical carousel" />
							
							</span>
					</div>
					
					<div id="slide03" class="slide">
						<span  class="home_paragrah"> 
							 <b>See how it works </b>
							 <br>							 
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
							labore etdolore magna aliqua. Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur
							adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
							minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.							 
							</span>
							<span class="videostyles">
		                   <img src="images/html_slides/simag2.jpg"  class="slide_image" alt="horizontal and vertical carousel" />
							
							</span>
					</div>
					
					<div id="slide04" class="slide">
						<span  class="home_paragrah"> 
							 <b>See how it works </b>
							 <br>							 
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
							labore etdolore magna aliqua. Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur
							adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
							minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.							 
							</span>
							<span class="videostyles">
		                   <img src="images/html_slides/simag3.jpg" class="slide_image" alt="horizontal and vertical carousel" />
							
							</span>
					</div>
					
					<div id="slide05" class="slide">
						<span  class="home_paragrah"> 
							 <b>See how it works </b>
							 <br>							 
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
							labore etdolore magna aliqua. Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur
							adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
							minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.							 
							</span>
							<span class="videostyles">
		                   <img src="images/html_slides/simag4.jpg" class="slide_image" alt="horizontal and vertical carousel" />
							
							</span>
					</div>
			
				</div> -->
				<!-- <a href="#" id="ui-carousel-next"><span>next</span></a>
				<a href="#" id="ui-carousel-prev"><span>prev</span></a> -->
				<!-- <div id="pages"></div> -->
			<!-- </div>
		</div> -->
                     <!--    <p id="pink_line" ></p>
                        <div id ="about"  class="home_second_paragraph">
                            About Olamundo ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                            et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
                            ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                            nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id
                            est laborumLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                        </div> -->
                    </div>                    
                   <div class="panel slide_img" title="Panel 2">
                        <div class="support">
                       <div class="blog_div1">		
					<?php
					require('blog/wordpress/wp-blog-header.php'); 
					$catid = 
					$args = array(
							'numberposts'	  => '10',
							'orderby'         => 'post_date',
							'order'           => 'DSC',
							'post_type'       => 'post',
							'post_status'     => 'publish',
							'category__not_in'=> array( 7, 8 )
					);
					$posts = get_posts($args );
					foreach ($posts as $post) : start_wp(); ?>
					<div class="post_title">
					<a  href="blog/wordpress/?p=<?php the_ID() ?>"   rel="bookmark" ><?php the_title(); ?></a>
					</div>
					<div class="blog_div1_content">						
					<?php the_excerpt(); ?>					
							<div class="line_div">	
									<div  style="width: auto;float: left">
									<?php the_time('d-m-Y'); ?>
									</div>
									<div  style="float:right;display: inline-block;width: auto">
										<div style="float:left;padding-right: 40px">
										<span style="top:-5px;position: relative">
											<?php comments_number('0', '1', '%'); ?>  
										</span>	
										<span style="position: relative;">
											<!-- <a href="blog/wordpress/?p=<?php the_ID() ?>" id=<?php the_ID() ?>  > -->
										 <img src="images/slider/blog1.png" />
										<!--  </a> -->
										</span>										
										</div>						
										 <?php GetWtiLikePost(); ?>
									</div>	
									<div style="display: none;width: 100%;float: left;text-align: left;" id="replydiv<?php the_ID() ?>">		 
								 	<?php $withcomments = 1; ?>
								 	<?php comments_template('', true); ?>
									</div>
									<p id="pink_line" ></p>
								</div>	
								</div>
								<?php endforeach; ?>	
								</div>
								<div  class="blog_div2">
									<ul class="blog_li" >
										<li class="blog_li_title">
											By Category
										</li>
										<li>
										<a><?php 
										$args  = array(
											  'orderby' => 'name',
											  "hide_empty" => False,
											  'title_li' =>'',
											  'exclude'=> array( 7, 8 )											  
											  );
											  wp_list_categories( $args ); ?> </a></li>											  
									<!-- <?php
									$args  = array(
									  'orderby' => 'name',
									  'parent' => 0,
									  "hide_empty" =>0
									  );
									$categories = get_categories( $args );
									foreach ( $categories as $category ) {?>
										<li>
										 <a class="cat_list" href="../ola-mundo_home-page/blog/single_post.php?cat=<?php echo $category->cat_ID; ?> "> <?php echo $category->name; ?></a>
										 </li>
								<?php	}
									wp_reset_query();
									?> -->
								</ul>	
									<ul class="blog_li">
										<li class="blog_li_secondtitle">
											By Date
										</li>
										<li><?php wp_get_archives(); ?></li>
										</ul>							
									
									<ul class="blog_li">
										<li class="blog_li_secondtitle">
											Links
										</li>
										<li>
											isaac-online.org
										</li>
										<li>
											aacinstitute.org
										</li>
									</ul>
								</div>                      
                        </div>
                    </div>
                    <div class="panel slide_img" title="Panel 3">
                        <div class="wrapper" align="center">
                            <?php $args = array(
							'category'        => '7',
							'orderby'         => 'post_date',
							'order'           => 'DESC',
							'post_type'       => 'post',
							'post_status'     => 'publish',
							); 
							?>
							
							 <div class="news_div1">		
					<?php
					require('blog/wordpress/wp-blog-header.php'); 
					$posts = get_posts($args);
					foreach ($posts as $post) : start_wp(); ?>
					<div class="news_post_title">
					<a  href="blog/wordpress/?p=<?php the_ID() ?>"   rel="bookmark" ><?php the_title(); ?></a>
					</div>
					<div class="blog_div1_content">						
					<?php the_excerpt(); ?>					
							<div class="line_div">	
								<div  style="width: auto;float: left">
									<?php the_time('d-m-Y'); ?>
									</div>
									<p id="pink_line" ></p>
								</div>	
								</div>
								<?php endforeach; ?>	
								</div>
                        </div>
                    </div>
                    <div class="panel slide_img" title="Panel 4">
                        <div class="wrapper" align="center">
                                 <?php $args = array(
							'category'        => '8',
							'orderby'         => 'post_date',
							'order'           => 'DESC',
							'post_type'       => 'post',
							'post_status'     => 'publish',
							); 
							?>
							
							 <div class="news_div1">		
					<?php
					require('blog/wordpress/wp-blog-header.php'); 
					$posts = get_posts($args);
					foreach ($posts as $post) : start_wp(); ?>
					<div class="news_post_title">
					<a  href="blog/wordpress/?p=<?php the_ID() ?>"   rel="bookmark" ><?php the_title(); ?></a>
					</div>
					<div class="blog_div1_content">						
					<?php the_excerpt(); ?>					
							<div class="line_div">
								<div  style="width: auto;float: left">
									<?php the_time('d-m-Y'); ?>
									</div>	
									<p id="pink_line" ></p>
								</div>	
								</div>
								<?php endforeach; ?>	
								</div>
                        </div>
                    </div>
                    <div class="panel slide_img" title="Panel 5" >
                            <div class="support">
                                <br><br>
                                <p class="support_title">
                           Welcome to our Help Center, we’d love to help you !
                                </p>
                                <p>
                                    
                                </p>
                                <form  action="demo_form.asp" method="get">
                                    <input type="text" list="question" class="textbox" autocomplete="on" id="questions"/>
                                    <datalist id="question">

                                        <option>how can i download the application?</option>
                                        <option>how can i download the use manual? </option>
                                        <option>how can i download updates to the application? </option>

                                    </datalist>
                                </form>

                                <div class="sup_div1">
                                    <p class="support_title">
                                        Frequently asked questions:
                                    </p>
                                    <ul class="support_li">
                                        <li >
                                           <a id = "1" onclick = "display(this.id);"> 
                                           	<div class="div1" id="compress_div"><b>-&nbsp;&nbsp;&nbsp;I did not receive the registration SMS</b></div> 
                                           	<div class="minusdiv1" id="expand__div">+&nbsp;&nbsp;&nbsp;I did not receive the registration SMS </div></a>
                                        </li>
                                       
                                        <div class="div1 support_expands" style="display: none">
                                        	 <br>
	                                        the application can be downloaded from Itune via the link we publish ipsum dolor sit amet, 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
											proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, 
											consectetur adipisicing elit,  labore et dolore magna aliqua.aliquip ex ea commodo consequat. 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidata
                                        </div>
                                        <br>
                                        <li>
                                           <a id = "2" onclick = "display(this.id);">
                                           	<div class="div2" id="compress_div" ><b>-&nbsp;&nbsp;How do I register for Olamundo?</b></div>
                                           	 <div class="minusdiv2" id="expand__div" >+ &nbsp;&nbsp;How do I register for Olamundo?</div> </a>
                                        </li>
                                        <div class="div2 support_expands" style="display: none">
                                        	 <br>
	                                        the application can be downloaded from Itune via the link we publish ipsum dolor sit amet, 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
											proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, 
											consectetur adipisicing elit,  labore et dolore magna aliqua.aliquip ex ea commodo consequat. 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidata
                                        </div>
                                         <br>
                                        <li>
                                           <a id = "3" onclick = "display(this.id);">
                                           	<div class="div3" id="compress_div" ><b>-&nbsp;&nbsp;&nbsp;How do I download/install Olamundo?</b></div>
                                           	 <div class="minusdiv3" id="expand__div" >+&nbsp;&nbsp;&nbsp;How do I download/install Olamundo?</div> </a>
                                        </li>
                                        <div class="div3 support_expands" style="display: none">
                                        	<br>
                                        	
	                                        the application can be downloaded from Itune via the link we publish ipsum dolor sit amet, 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
											proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, 
											consectetur adipisicing elit,  labore et dolore magna aliqua.aliquip ex ea commodo consequat. 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidata
                                        </div>
                                         <br>
                                        <li>
                                           <a id = "4" onclick = "display(this.id);"> 
                                           	<div class="div4" id="compress_div" ><b>-&nbsp;&nbsp;&nbsp;How do I add a contact to Olamundo?</b></div>
                                           	 <div class="minusdiv4" id="expand__div" >+&nbsp;&nbsp;&nbsp;How do I add a contact to Olamundo?</div></a>
                                        </li>
                                        <div class="div4 support_expands" style="display: none">
                                        	 <br>
	                                        the application can be downloaded from Itune via the link we publish ipsum dolor sit amet, 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
											proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, 
											consectetur adipisicing elit,  labore et dolore magna aliqua.aliquip ex ea commodo consequat. 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidata
                                        </div>
                                         <br>
                                        <li>
                                           <a id = "5" onclick = "display(this.id);">
                                           	 <div class="div5" id="compress_div" ><b>-&nbsp;&nbsp;&nbsp;What devices can support Olamundo?</b></div>
                                           	 <div class="minusdiv5" id="expand__div" >+&nbsp;&nbsp;&nbsp;What devices can support Olamundo?</div> </a>
                                        </li>
                                        <div class="div5 support_expands" style="display: none">
                                        	 <br>
	                                        the application can be downloaded from Itune via the link we publish ipsum dolor sit amet, 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
											proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, 
											consectetur adipisicing elit,  labore et dolore magna aliqua.aliquip ex ea commodo consequat. 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidata
                                        </div>
                                         <br>
                                        <li>
                                           <a id = "6" onclick = "display(this.id);">
                                           	 <div class="div6" id="compress_div"><b>-&nbsp;&nbsp;When upgrading, do I need to uninstall the old version?</b></div>
                                           	 <div class="minusdiv6" id="expand__div" >+ &nbsp;&nbsp;When upgrading, do I need to uninstall the old version?</div></a>
                                        </li>
                                        <div class="div6 support_expands" style="display: none">
                                        	 <br>
	                                        the application can be downloaded from Itune via the link we publish ipsum dolor sit amet, 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
											proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, 
											consectetur adipisicing elit,  labore et dolore magna aliqua.aliquip ex ea commodo consequat. 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidata
                                        </div>
                                         <br>
                                        <li>
                                           <a id = "7" onclick = "display(this.id);">
                                           	 <div class="div7" id="compress_div" ><b>- &nbsp;&nbsp;Can I still use SIP?</b></div>
                                           	 <div class="minusdiv7" id="expand__div">+ &nbsp;&nbsp;Can I still use SIP?</div> </a>
                                        </li>
                                        <div class="div7 support_expands" style="display: none">
                                        	 <br>
	                                        the application can be downloaded from Itune via the link we publish ipsum dolor sit amet, 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
											proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, 
											consectetur adipisicing elit,  labore et dolore magna aliqua.aliquip ex ea commodo consequat. 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidata
                                        </div>
                                         <br>
                                        <li>
                                           <a id = "8" onclick = "display(this.id);"> 
                                           	<div class="div8" id="compress_div"><b>-&nbsp;&nbsp;&nbsp;I have upgraded to the new version of Olamundo, where are my old Olamundo contacts?</b></div>
                                           	 <div class="minusdiv8" id="expand__div">+&nbsp;&nbsp;&nbsp;I have upgraded to the new version of Olamundo, where are my old Olamundo contacts?</div></a>
                                        </li>
                                        <div class="div8 support_expands" style="display: none">
                                        	 <br>
	                                        the application can be downloaded from Itune via the link we publish ipsum dolor sit amet, 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
											proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, 
											consectetur adipisicing elit,  labore et dolore magna aliqua.aliquip ex ea commodo consequat. 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidata
                                        </div>
                                         <br>
                                        <li>
                                           <a id = "9" onclick = "display(this.id);"> 
                                           	<div class="div9" id="compress_div"><b>-&nbsp;&nbsp;&nbsp;Can I still make free calls, messaging, and group video calls with the new version of Olamundo?</b></div>
                                           	 <div class="minusdiv9" id="expand__div" >+&nbsp;&nbsp;&nbsp;Can I still make free calls, messaging, and group video calls with the new version of Olamundo?</div>  </a>
                                        </li>
                                        <div class="div9 support_expands" style="display: none">
                                        	<br>
	                                        the application can be downloaded from Itune via the link we publish ipsum dolor sit amet, 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
											proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, 
											consectetur adipisicing elit,  labore et dolore magna aliqua.aliquip ex ea commodo consequat. 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidata
                                        </div>
                                         <br>
                                        <li>
                                          <a id = "10" onclick = "display(this.id);"><div class="div10" id="compress_div">
                                          	<b>-&nbsp;&nbsp;&nbsp;How do I upgrade to the new Olamundo</b></div>
                                          	 <div class="minusdiv10" id="expand__div" >+&nbsp;&nbsp;&nbsp;How do I upgrade to the new Olamundo</div>  </a>
                                        </li>
                                        <div class="div10 support_expands" style="display: none">
                                        	<br>
	                                        the application can be downloaded from Itune via the link we publish ipsum dolor sit amet, 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non 
											proident, sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet, 
											consectetur adipisicing elit,  labore et dolore magna aliqua.aliquip ex ea commodo consequat. 
											consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
											dolor in esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidata
                                        </div>
                                    </ul>
                                </div>
                                <div class="sup_div2">
                                    <div style="margin-left:48px">
                                    	<a href="http://www.apple.com/itunes/what-is/#store" target="_blank"><img src="images/slider/support3.png"  class="sup_div2_img1"  alt="temp-thumb" /></a>
                                        <img src="images/slider/support2.png"  class="sup_div2_img2"  alt="temp-thumb"  />                                   
                                        </div>
                                </div>

                             </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
    		function about() {
    		location.reload();
		}
    </script>
	<div class="footer">
		<a  href="#top" > 
	    <img src="images/backImage.png" class="back_image" />
	    </a>
    <img src="images/footer/foot.png" width="100%" height="10px" class="nav-thumb" alt="temp-thumb" />
    <div class="footer_links">
        <ul  class="footer_li_text">
            <li class="footer_text_left">
                <a href="index.php?curclicked=0#about" class="footer_text" onclick="about();" > About</a>
            </li>
            <li>
                <a href="index.php?curclicked=3" class="footer_text"> Stories </a>
            </li>
            <li>
                <a href="#" class="footer_text"> Events </a>
            </li>
            <li>
                <a href="index.php?curclicked=1" class="footer_text"> Blogs </a>
            </li>
            <li>
                <a href="index.php?curclicked=4" class="footer_text"> FAQ </a>
            </li>
            <li>
                <a href="index.php?curclicked=4" class="footer_text"> Support </a>
            </li>
            <li>
                <a href="http://www.apple.com/itunes/what-is/#store" target="_blank" class="footer_text"> Download </a>
            </li>
        </ul>
    </div>
    <div class="footer_social_icons" >
        <ul class="footer_li_img">
            <li>
                <a href="https://accounts.google.com/ServiceLogin?service=oz&continue=https://plus.google.com/?hl%3Den%26gpsrc%3Dgplp0&hl=en" target="_blank"> <img src="images/footer/googleplus.png" class="social_icons" alt="temp-thumb" /></a>
            </li>
            <li>
                <a href="https://www.linkedin.com/uas/login?session_redirect=https%3A%2F%2Fwww%2Elinkedin%2Ecom%2Fsettings%2F" target="_blank"> <img src="images/footer/in.png" class="social_icons"   alt="temp-thumb" /></a>
            </li>
            <li>
                <a href="http://www.youtube.com/" target="_blank"> <img src="images/footer/you.png" class="social_icons"   alt="temp-thumb" /></a>
            </li>
            <li>
                <a href="https://twitter.com/" target="_blank"> <img src="images/footer/twitter.png" class="social_icons"   alt="temp-thumb" /></a>
            </li>
            <li>
                <a href="https://accounts.google.com/ServiceLogin?service=feedburner&continue=http%3A%2F%2Ffeedburner.google.com%2Ffb%2Fa%2Fmyfeeds&gsessionid=rDc9_Tp6FCMPAypL8JPRzA" target="_blank"> <img src="images/footer/rss.png" class="social_icons"   alt="temp-thumb" /></a>
            </li>
            <li>
                <a href="https://www.facebook.com/" target="_blank"> <img src="images/footer/fb.png" class="social_icons"   alt="temp-thumb" /></a>
            </li>
            <li>
                <a href="http://www.apple.com/itunes/what-is/#store" target="_blank"> <img src="images/footer/applestore.png" class="footer_apple_icon"   alt="temp-thumb" /></a>
            </li>
        </ul>
    </div>
<div class="footer_declaration">
    Legal stuff Sunt in culpa qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet.Sunt in culpa
    qui officia deserunt mollit anim id est laborumLorem ipsum dolor sit amet. Sunt in culpa qui officia deserunt rum-
    Lorem ipsum dolor sit amet.Sunt in culpa qui officimollit anim id est laborumLorem ipsum dolor sit amet
</div>
</div>
</body>
</html>