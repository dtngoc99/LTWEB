<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>News</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../assets/css/animate.css">
<link rel="stylesheet" type="text/css" href="../assets/css/font.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/li-scroller.css">
<link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
<link rel="stylesheet" type="text/css"
	href="../assets/css/jquery.fancybox.css">
<link rel="stylesheet" type="text/css" href="../assets/css/theme.css">
<link rel="stylesheet" type="text/css" href="../assets/css/style.css">
<link rel="stylesheet" type="text/css" href="../assets/css/login.css">
</head>
<body>
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
	<div class="container">
		<header id="header">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="header_top">
						<div class="header_top_left">
							<ul class="top_nav">
								<li><a href="../index.htm">Home</a></li>
								<li><a href="#">About</a></li>
								<li>
									<button
										onclick="document.getElementById('id01').style.display='block'"
										style="width: auto;" class="btnLogin">Login</button>
									<div class="container">
										<div id="id01" class="modal">
											<form class="modal-content animate" action="../user/login.htm"
												method="post">
												<div class="imgcontainer">
													<span
														onclick="document.getElementById('id01').style.display='none'"
														class="close" title="Close Modal">&times;</span> <img
														src="../images/padlock.jpg" alt="Avatar" class="avatar">
												</div>
												<div class="cont_container">
													<label for="username"><b>Username</b></label> <input
														type="text" placeholder="Enter Username" name="username"
														required> <br> <label for="password"><b>Password</b></label>
													<input type="password" placeholder="Enter Password"
														name="password" required> <br>
													<button type="submit" name="btnLogin">Login</button>
													<label> <input type="checkbox" checked="checked"
														name="remember"> Remember me
													</label>
												</div>
												<div class="cont_container"
													style="background-color: #f1f1f1">
													<button type="button"
														onclick="document.getElementById('id01').style.display='none'"
														class="cancelbtn">Cancel</button>
													<span class="psw">Forgot <a href="#">password?</a></span>
												</div>
											</form>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="header_top_right">
							<p class="date-part">Saturday, November 7, 2020</p>
						</div>
					</div>
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="header_bottom">
						<div class="logo_area">
							<a href="index.html" class="logo"><img
								src="../images/logo.jpg" alt=""></a>
						</div>
						<div class="add_banner">
							<a href="#"><img src="../images/addbanner_728x90_V1.jpg"
								alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</header>
		<section id="navArea">
			<nav class="navbar navbar-inverse" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav main_nav">
						<li class="active"><a href="../index.htm"><span
								class="fa fa-home desktop-home"></span><span class="mobile-show">Home</span></a></li>
						<c:forEach var="c" items="${cates}">
							<li><a href="../category/${c.id }.htm">${c.name }</a></li>
						</c:forEach>
					</ul>
				</div>
			</nav>
		</section>
		<section id="sliderSection">
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-8">
					<div class="slick_slider">
						<c:forEach var="n" items="${ listNow}">
							<div class="single_iteam">
								<a href="../page/${n.id }.htm"> <img
									src="../images/web/${n.image }" alt=""></a>
								<div class="slider_article">
									<h2>
										<a class="slider_tittle" href="../page/${n.id }.htm">${n.title }</a>
									</h2>
									<p>${n.quote}</p>
								</div>
							</div>
						</c:forEach>

					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<div class="latest_post">
						<h2>
							<span>Latest post</span>
						</h2>
						<div class="latest_post_container">
							<div id="prev-button">
								<i class="fa fa-chevron-up"></i>
							</div>
							<ul class="latest_postnav">
								<c:forEach var="n" items="${ listNow}" begin="1" end="10">
									<li>
										<div class="media">
											<a href="../page/${n.id }.htm" class="media-left"> <img
												alt="" src="../images/web/${n.image }">
											</a>
											<div class="media-body">
												<a href="../page/${n.id }.htm" class="catg_title">${n.title}</a>
											</div>
										</div>
									</li>
								</c:forEach>
							</ul>
							<div id="next-button">
								<i class="fa  fa-chevron-down"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section id="contentSection">
			<div class="fashion">
				<div class="single_post_content">
					<h2>
						<span>${ newses[0].cate.name}</span>
					</h2>
					<ul class="business_catgnav wow fadeInDown">
						<li>
							<figure class="bsbig_fig">
								<a href="../page/${newses[0].id }.htm" class="featured_img">
									<img alt="" src="../images/web/${newses[0].image }">
									<span class="overlay"></span>
								</a>
								<figcaption>
									<a href="../page/${newses[0].id }.htm">${newses[0].title }</a>
								</figcaption>
								<p>${newses[0].quote }</p>
							</figure>
						</li>
					</ul>
					<ul class="spost_nav">
						<c:forEach var="n" items="${newses}">
							<li>
								<div class="media wow fadeInDown">
									<a href="../page/${n.id }.htm" class="media-left"> <img
										alt="" src="../images/web/${n.image }">
									</a>
									<div class="media-body">
										<a href="../page/${n.id }.htm" class="catg_title">${n.title }</a>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</section>
		<footer id="footer">
			<div class="footer_top">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="footer_widget wow fadeInLeftBig">
							<h2>Flick Images</h2>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="footer_widget wow fadeInDown">
							<h2>Tag</h2>
							<ul class="tag_nav">
								<c:forEach var="c" items="${cates}">
									<li><a href="../category/${c.id }.htm">${c.name }</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="footer_widget wow fadeInRightBig">
							<h2>Contact</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							<address>Perfect News,1238 S . 123 St.Suite 25 Town
								City 3333,USA Phone: 123-326-789 Fax: 123-546-567</address>
						</div>
					</div>
				</div>
			</div>
			<div class="footer_bottom">
				<p class="copyright">
					Copyright &copy; 2045 <a href="index.htm">News</a>
				</p>
				<p class="developer">Developed By NT</p>
			</div>
		</footer>
	</div>

	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/wow.min.js"></script>
	<script src="../assets/js/bootstrap.min.js"></script>
	<script src="../assets/js/slick.min.js"></script>
	<script src="../assets/js/jquery.li-scroller.1.0.js"></script>
	<script src="../assets/js/jquery.newsTicker.min.js"></script>
	<script src="../assets/js/jquery.fancybox.pack.js"></script>
	<script src="../assets/js/custom.js"></script>
	<script src="../assets/js/date.js"></script>
	<script src="https://unpkg.com/moment" />
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment-with-locales.min.js"></script>
</body>
</html>