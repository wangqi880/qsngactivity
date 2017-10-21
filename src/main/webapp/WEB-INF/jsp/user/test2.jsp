<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html lang="en" class="no-js">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Card Expansion Effect - Demo 1</title>
<meta name="description" content="Card Expansion Effect with SVG clipPath" />
<meta name="keywords" content="clipPath, svg, effect, layout, expansion, images, grid, polygon" />
<meta name="author" content="Claudio Calautti for Codrops" />
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="<%= path%>/cardExpansion/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="<%= path%>/cardExpansion/fonts/font-awesome-4.3.0/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="<%= path%>/cardExpansion/css/demo.css" />

<!--必要样式-->
<link rel="stylesheet" type="text/css" href="<%= path%>/cardExpansion/css/card.css" />
<link rel="stylesheet" type="text/css" href="<%= path%>/cardExpansion/css/pattern.css" />
<!--[if IE]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<script>
if (navigator.userAgent.toLowerCase().indexOf('firefox') > -1) {
	var root = document.getElementsByTagName('html')[0];
	root.setAttribute('class', 'ff');
};
</script>
</head>
<body class="demo-1">
	<div class="container">
	
		<header class="codrops-header">
			<nav class="codrops-demos">
				<a class="current-demo" href="test2.jsp">${user.name}作品展示</a>
			</nav>
		</header>
		
		<div class="content">
			<!-- trianglify pattern container -->
			<div class="pattern pattern--hidden"></div>
			<!-- cards -->
			<div class="wrapper">
				<div class="card">
					<div class="card__container card__container--closed">
						<svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
							<defs>
								<clipPath id="clipPath1">
									<!-- r = 992 = hyp = Math.sqrt(960*960+250*250) -->
									<circle class="clip" cx="960" cy="250" r="992"></circle>
								</clipPath>
							</defs>
							<image clip-path="url(#clipPath1)" width="1920" height="500" xlink:href="img/a.jpg"></image>
						</svg>
						<div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">Tristan and Isolde</h2>
								<p class="card__subtitle">A modern day love story</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<%--<img class="meta__avatar" src="<%= path%>/cardExpansion/img/authors/1.png" alt="author01" />--%>
									<span class="meta__author">Gerry Sutherland</span>
									<span class="meta__date">06/19/2015</span>
								</div>
								<p>Business model canvas bootstrapping deployment startup. In A/B testing pivot niche market alpha conversion startup down monetization partnership business-to-consumer success for investor mass market business-to-business.</p>
								<p>Release creative social proof influencer iPad crowdsource gamification learning curve network effects monetization. Gamification business plan mass market www.discoverartisans.com direct mailing ecosystem seed round sales long tail vesting period.</p>
								<p>Product management ramen bootstrapping seed round venture holy grail technology backing partner network entrepreneur beta marketing value proposition. Android stealth conversion scrum project network effects. Creative alpha long tail conversion stealth growth hacking iteration investor A/B testing prototype customer. Startup www.discoverartisans.com direct mailing launch party partnership market ramen metrics focus value proposition.</p>
								<p>Stock infrastructure seed round sales paradigm shift technology user experience focus gamification. Partnership metrics business plan stealth business-to-business. Deployment graphical user interface monetization. Twitter incubator scrum project entrepreneur branding burn rate ramen backing paradigm shift virality crowdsource.</p>
								<p>Social proof MVP ecosystem. Ramen launch party pitch deployment stealth. Vesting period MVP equity. Focus creative partnership founders iteration agile development infographic.</p>
								<p>Low hanging fruit burn rate innovator user experience niche market A/B testing creative launch party product management release. Www.discoverartisans.com influencer business model canvas user experience gamification paradigm shift startup research &amp; development iPad agile development. Strategy incubator infographic success marketing buzz A/B testing responsive web design. Traction research &amp; development pitch seed money venture niche market accelerator network effects.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card__container card__container--closed">
						<svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
							<defs>
								<clipPath id="clipPath2">
									<!-- r = 992 = hyp = Math.sqrt(960*960+250*250) -->
									<circle class="clip" cx="960" cy="250" r="992"></circle>
								</clipPath>
							</defs>
							<image clip-path="url(#clipPath2)" width="1920" height="500" xlink:href="img/b.jpg"></image>
						</svg>
						<div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">About Helen</h2>
								<p class="card__subtitle">A story about a woman</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<img class="meta__avatar" src="<%= path%>/cardExpansion/img/authors/2.png" alt="author02" />
									<span class="meta__author">Frank Posterius</span>
									<span class="meta__date">06/16/2015</span>
								</div>
								<p>Business model canvas bootstrapping deployment startup. In A/B testing pivot niche market alpha conversion startup down monetization partnership business-to-consumer success for investor mass market business-to-business.</p>
								<p>Release creative social proof influencer iPad crowdsource gamification learning curve network effects monetization. Gamification business plan mass market www.discoverartisans.com direct mailing ecosystem seed round sales long tail vesting period.</p>
								<p>Product management ramen bootstrapping seed round venture holy grail technology backing partner network entrepreneur beta marketing value proposition. Android stealth conversion scrum project network effects. Creative alpha long tail conversion stealth growth hacking iteration investor A/B testing prototype customer. Startup www.discoverartisans.com direct mailing launch party partnership market ramen metrics focus value proposition.</p>
								<p>Stock infrastructure seed round sales paradigm shift technology user experience focus gamification. Partnership metrics business plan stealth business-to-business. Deployment graphical user interface monetization. Twitter incubator scrum project entrepreneur branding burn rate ramen backing paradigm shift virality crowdsource.</p>
								<p>Social proof MVP ecosystem. Ramen launch party pitch deployment stealth. Vesting period MVP equity. Focus creative partnership founders iteration agile development infographic.</p>
								<p>Low hanging fruit burn rate innovator user experience niche market A/B testing creative launch party product management release. Www.discoverartisans.com influencer business model canvas user experience gamification paradigm shift startup research &amp; development iPad agile development. Strategy incubator infographic success marketing buzz A/B testing responsive web design. Traction research &amp; development pitch seed money venture niche market accelerator network effects.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card__container card__container--closed">
						<svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
							<defs>
								<clipPath id="clipPath3">
									<!-- r = 992 = hyp = Math.sqrt(960*960+250*250) -->
									<circle class="clip" cx="960" cy="250" r="992"></circle>
								</clipPath>
							</defs>
							<image clip-path="url(#clipPath3)" width="1920" height="500" xlink:href="img/c.jpg"></image>
						</svg>
						<div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">A mild winter</h2>
								<p class="card__subtitle">Helen's view on wells</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<img class="meta__avatar" src="<%= path%>/cardExpansion/img/authors/3.png" alt="author03" />
									<span class="meta__author">Sarah Lester</span>
									<span class="meta__date">06/16/2015</span>
								</div>
								<p>Business model canvas bootstrapping deployment startup. In A/B testing pivot niche market alpha conversion startup down monetization partnership business-to-consumer success for investor mass market business-to-business.</p>
								<p>Release creative social proof influencer iPad crowdsource gamification learning curve network effects monetization. Gamification business plan mass market www.discoverartisans.com direct mailing ecosystem seed round sales long tail vesting period.</p>
								<p>Product management ramen bootstrapping seed round venture holy grail technology backing partner network entrepreneur beta marketing value proposition. Android stealth conversion scrum project network effects. Creative alpha long tail conversion stealth growth hacking iteration investor A/B testing prototype customer. Startup www.discoverartisans.com direct mailing launch party partnership market ramen metrics focus value proposition.</p>
								<p>Stock infrastructure seed round sales paradigm shift technology user experience focus gamification. Partnership metrics business plan stealth business-to-business. Deployment graphical user interface monetization. Twitter incubator scrum project entrepreneur branding burn rate ramen backing paradigm shift virality crowdsource.</p>
								<p>Social proof MVP ecosystem. Ramen launch party pitch deployment stealth. Vesting period MVP equity. Focus creative partnership founders iteration agile development infographic.</p>
								<p>Low hanging fruit burn rate innovator user experience niche market A/B testing creative launch party product management release. Www.discoverartisans.com influencer business model canvas user experience gamification paradigm shift startup research &amp; development iPad agile development. Strategy incubator infographic success marketing buzz A/B testing responsive web design. Traction research &amp; development pitch seed money venture niche market accelerator network effects.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card__container card__container--closed">
						<svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
							<defs>
								<clipPath id="clipPath4">
									<!-- r = 992 = hyp = Math.sqrt(960*960+250*250) -->
									<circle class="clip" cx="960" cy="250" r="992"></circle>
								</clipPath>
							</defs>
							<image clip-path="url(#clipPath4)" width="1920" height="500" xlink:href="img/d.jpg"></image>
						</svg>
						<div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">Food sources</h2>
								<p class="card__subtitle">What will we eat in 30 years?</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<img class="meta__avatar" src="<%= path%>/cardExpansion/img/authors/4.png" alt="author04" />
									<span class="meta__author">Lena Bestofos</span>
									<span class="meta__date">06/14/2015</span>
								</div>
								<p>Business model canvas bootstrapping deployment startup. In A/B testing pivot niche market alpha conversion startup down monetization partnership business-to-consumer success for investor mass market business-to-business.</p>
								<p>Release creative social proof influencer iPad crowdsource gamification learning curve network effects monetization. Gamification business plan mass market www.discoverartisans.com direct mailing ecosystem seed round sales long tail vesting period.</p>
								<p>Product management ramen bootstrapping seed round venture holy grail technology backing partner network entrepreneur beta marketing value proposition. Android stealth conversion scrum project network effects. Creative alpha long tail conversion stealth growth hacking iteration investor A/B testing prototype customer. Startup www.discoverartisans.com direct mailing launch party partnership market ramen metrics focus value proposition.</p>
								<p>Stock infrastructure seed round sales paradigm shift technology user experience focus gamification. Partnership metrics business plan stealth business-to-business. Deployment graphical user interface monetization. Twitter incubator scrum project entrepreneur branding burn rate ramen backing paradigm shift virality crowdsource.</p>
								<p>Social proof MVP ecosystem. Ramen launch party pitch deployment stealth. Vesting period MVP equity. Focus creative partnership founders iteration agile development infographic.</p>
								<p>Low hanging fruit burn rate innovator user experience niche market A/B testing creative launch party product management release. Www.discoverartisans.com influencer business model canvas user experience gamification paradigm shift startup research &amp; development iPad agile development. Strategy incubator infographic success marketing buzz A/B testing responsive web design. Traction research &amp; development pitch seed money venture niche market accelerator network effects.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card__container card__container--closed">
						<svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
							<defs>
								<clipPath id="clipPath5">
									<!-- r = 992 = hyp = Math.sqrt(960*960+250*250) -->
									<circle class="clip" cx="960" cy="250" r="992"></circle>
								</clipPath>
							</defs>
							<image clip-path="url(#clipPath5)" width="1920" height="500" xlink:href="img/e.jpg"></image>
						</svg>
						<div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">Swimming in the ocean</h2>
								<p class="card__subtitle">A Makrel's story</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<img class="meta__avatar" src="<%= path%>/cardExpansion/img/authors/5.png" alt="author05" />
									<span class="meta__author">Michaela Walters</span>
									<span class="meta__date">06/11/2015</span>
								</div>
								<p>Business model canvas bootstrapping deployment startup. In A/B testing pivot niche market alpha conversion startup down monetization partnership business-to-consumer success for investor mass market business-to-business.</p>
								<p>Release creative social proof influencer iPad crowdsource gamification learning curve network effects monetization. Gamification business plan mass market www.discoverartisans.com direct mailing ecosystem seed round sales long tail vesting period.</p>
								<p>Product management ramen bootstrapping seed round venture holy grail technology backing partner network entrepreneur beta marketing value proposition. Android stealth conversion scrum project network effects. Creative alpha long tail conversion stealth growth hacking iteration investor A/B testing prototype customer. Startup www.discoverartisans.com direct mailing launch party partnership market ramen metrics focus value proposition.</p>
								<p>Stock infrastructure seed round sales paradigm shift technology user experience focus gamification. Partnership metrics business plan stealth business-to-business. Deployment graphical user interface monetization. Twitter incubator scrum project entrepreneur branding burn rate ramen backing paradigm shift virality crowdsource.</p>
								<p>Social proof MVP ecosystem. Ramen launch party pitch deployment stealth. Vesting period MVP equity. Focus creative partnership founders iteration agile development infographic.</p>
								<p>Low hanging fruit burn rate innovator user experience niche market A/B testing creative launch party product management release. Www.discoverartisans.com influencer business model canvas user experience gamification paradigm shift startup research &amp; development iPad agile development. Strategy incubator infographic success marketing buzz A/B testing responsive web design. Traction research &amp; development pitch seed money venture niche market accelerator network effects.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card__container card__container--closed">
						<svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
							<defs>
								<clipPath id="clipPath6">
									<!-- r = 992 = hyp = Math.sqrt(960*960+250*250) -->
									<circle class="clip" cx="960" cy="250" r="992"></circle>
								</clipPath>
							</defs>
							<image clip-path="url(#clipPath6)" width="1920" height="500" xlink:href="img/f.jpg"></image>
						</svg>
						<div class="card__content">
							<i class="card__btn-close fa fa-times"></i>
							<div class="card__caption">
								<h2 class="card__title">Freedom Fighters</h2>
								<p class="card__subtitle">When it's too hot to think</p>
							</div>
							<div class="card__copy">
								<div class="meta">
									<img class="meta__avatar" src="<%= path%>/cardExpansion/img/authors/6.png" alt="author06" />
									<span class="meta__author">Tom Goldman</span>
									<span class="meta__date">06/10/2015</span>
								</div>
								<p>Business model canvas bootstrapping deployment startup. In A/B testing pivot niche market alpha conversion startup down monetization partnership business-to-consumer success for investor mass market business-to-business.</p>
								<p>Release creative social proof influencer iPad crowdsource gamification learning curve network effects monetization. Gamification business plan mass market www.discoverartisans.com direct mailing ecosystem seed round sales long tail vesting period.</p>
								<p>Product management ramen bootstrapping seed round venture holy grail technology backing partner network entrepreneur beta marketing value proposition. Android stealth conversion scrum project network effects. Creative alpha long tail conversion stealth growth hacking iteration investor A/B testing prototype customer. Startup www.discoverartisans.com direct mailing launch party partnership market ramen metrics focus value proposition.</p>
								<p>Stock infrastructure seed round sales paradigm shift technology user experience focus gamification. Partnership metrics business plan stealth business-to-business. Deployment graphical user interface monetization. Twitter incubator scrum project entrepreneur branding burn rate ramen backing paradigm shift virality crowdsource.</p>
								<p>Social proof MVP ecosystem. Ramen launch party pitch deployment stealth. Vesting period MVP equity. Focus creative partnership founders iteration agile development infographic.</p>
								<p>Low hanging fruit burn rate innovator user experience niche market A/B testing creative launch party product management release. Www.discoverartisans.com influencer business model canvas user experience gamification paradigm shift startup research &amp; development iPad agile development. Strategy incubator infographic success marketing buzz A/B testing responsive web design. Traction research &amp; development pitch seed money venture niche market accelerator network effects.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /cards -->
		</div><!-- /content -->

	</div>
	<!-- /container -->
	<!-- JS -->
	<script type="text/javascript" src="<%= path%>/cardExpansion/js/vendors/trianglify.min.js"></script>
	<script type="text/javascript" src="<%= path%>/cardExpansion/js/vendors/TweenMax.min.js"></script>
	<script type="text/javascript" src="<%= path%>/cardExpansion/js/vendors/ScrollToPlugin.min.js"></script>
	<script type="text/javascript" src="<%= path%>/cardExpansion/js/vendors/cash.min.js"></script>
	<script type="text/javascript" src="<%= path%>/cardExpansion/js/Card-circle.js"></script>
	<script type="text/javascript" src="<%= path%>/cardExpansion/js/demo.js"></script>
	
</body>
</html>
