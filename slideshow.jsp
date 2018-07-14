<%@page language="java" contentType="text/html" session="true" pageEncoding="UTF-8" %>
	<head><!-- ========================meta data==========================-->
		<title>SlideShow | HTML5 | CSS3 | JavaScript </title>
		<meta http-equiv="Content-Type" content="text/html" charset="UTF-8"/>
		<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
		<link rel="stylesheet" href="statics/css/slideshow.css" type="text/css"/>
		<script src="statics/JS/slideshow.js" type="text/javascript"></script>
	</head>
	
	<body><!-- ================== Visible Content===========================-->
		<main>
		<div class ="slideshow">
		<div class="MySlides fade" style="display:block">
			<!-- <div class="SlideNumber">1 / 4</div> -->
			<div><img src="statics/images/1.jpg" type="image/jpg" ></div>
			<div class="Caption"> </div>
		</div>
		<div class="MySlides fade">
			<!-- <div class="SlideNumber">2 / 4</div> -->
			<div><img src="statics/images/2.jpg"  type="image/jpg" ></div>
			<div class="Caption"> </div>
		</div>
		<div class="MySlides fade">
			<!-- <div class="SlideNumber">3 / 4</div> -->
			<div><img src="statics/images/3.jpg" type="image/jpg" ></div>
			<div class="Caption"> </div>
		</div>
		<div class="MySlides fade">
			<!-- <div class="SlideNumber">4 / 4</div> -->
			<div><img src="statics/images/4.jpg" type="image/jpg"></div>
			<div class="Caption"> </div>
		</div>		
		<A class="prev" onclick="SwapSlides(-1)">&#10094</A>
		<A class="next" onclick="SwapSlides(+1)">&#10095</A>
	</div>
	<br/>
	<!--<div class="dots">
		<span class="dot" onclick="currentSlide(1)"></span>
		<span class="dot" onclick="currentSlide(2)"></span>
		<span class="dot" onclick="currentSlide(3)"></span>
		<span class="dot" onclick="currentSlide(4)"></span>
	</div>--> <!-- ==============Slideshow Ends Here============-->
	</main>
