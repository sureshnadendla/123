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
                 
<!--                   
    <script>
    		function about() {
    		location.reload();
		}
    </script> -->
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