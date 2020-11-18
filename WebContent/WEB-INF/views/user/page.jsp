<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>NewsFeed | Pages | Single Page</title>
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
<!--[if lt IE 9]>
<script src="../assets/js/html5shiv.min.js"></script>
<script src="../assets/js/respond.min.js"></script>
<![endif]-->
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
											<form class="modal-content animate"
												action="../user/login.htm" method="post">
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
							<p class="date-part">Friday, December 05, 2045</p>
						</div>
					</div>
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="header_bottom">
						<div class="logo_area">
							<a href="../index.htm" class="logo"><img
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
		<section id="newsSection">
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="latest_newsarea">
						<span>Latest News</span>
						<ul id="ticker01" class="news_sticker">
							<c:forEach var="n" items="${listNow }" begin="0" end="4">
								<li><a href="../page/${n.id }.htm"><img
										src="../images/web/${n.image }" alt="">${n.title }</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<section id="contentSection">
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-8">
					<div class="left_content">
						<div class="single_page">
							<!-- <ol class="breadcrumb">
								<li><a href="../index.htm">Home</a></li>
								<li><a href="#">Technology</a></li>
								<li class="active">Mobile</li>
							</ol> -->
							<h1>${news.title}</h1>
							<div class="post_commentbox">
								<a href="#"><i class="fa fa-user"></i>Wpfreeware</a> <span><i
									class="fa fa-calendar"></i>6:49 AM</span> <a href="#"><i
									class="fa fa-tags"></i>news.cate.name</a>
							</div>
							<div class="single_page_content">
								<img class="img-center" src="../images/web/${news.image}" alt="">
								<p>${news.news_content }</p>
								<br>
							</div>
							<div class="related_post">
								<h2>
									Related Post <i class="fa fa-thumbs-o-up"></i>
								</h2>
								<ul class="spost_nav wow fadeInDown animated">
									<c:forEach var="n" items="${listNow }" begin="0" end="7">
										<li>
											<div class="media">
												<a class="media-left" href="../page/${n.id }.htm"> <img
													src="../images/web/${n.image }" alt="">
												</a>
												<div class="media-body">
													<a class="catg_title" href="../page/${n.id }.htm">${n.title }</a>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<nav class="nav-slit">
					<a class="prev" href="#"> <span class="icon-wrap"><i
							class="fa fa-angle-left"></i></span>
						<div>
							<h3>City Lights</h3>
							<img src="../images/post_img1.jpg" alt="" />
						</div>
					</a> <a class="next" href="#"> <span class="icon-wrap"><i
							class="fa fa-angle-right"></i></span>
						<div>
							<h3>Street Hills</h3>
							<img src="../images/post_img1.jpg" alt="" />
						</div>
					</a>
				</nav>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<aside class="right_content">
						<div class="single_sidebar">
							<h2>
								<span>Popular Post</span>
							</h2>
							<ul class="spost_nav">
								<c:forEach var="n" items="${listNow}" begin="0" end="10">
									<li>
										<div class="media wow fadeInDown">
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
						</div>
					</aside>
				</div>
			</div>
		</section>
		<footer id="footer">
			<div class="footer_top">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="footer_widget wow fadeInLeftBig">
							<h2>Flickr Images</h2>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4">
						<div class="footer_widget wow fadeInDown">
							<h2>Tag</h2>
							<ul class="tag_nav">
								<c:forEach var="c" items="${cates }">
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
					Copyright &copy; 2045 <a href="../index.htm">News</a>
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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment-with-locales.min.js"></script>
</body>
</html>