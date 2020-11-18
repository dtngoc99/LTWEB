<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Document</title>
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
<link rel="stylesheet" type="text/css" href="../assets/css/admin.css">

<link rel="stylesheet" type="text/css" href="../assets/css/bst.css">
<link rel="stylesheet" type="text/css" href="../assets/css/insert.css">
<style type="text/css">
*[id$=errors] {
	color: red;
	font-style: italic;
	font-size: 14px;
	margin-left: 20px;
	white-space: nowrap;
}

.dis_now {
	display: flex;
}
</style>
</head>
<body>
	<div class="container">
		<header id="header">
			<br>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="header_top">
						<div class="header_top_left">
							<ul class="top_nav">
								<li><a href="../logout.htm">Log out</a></li>
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
	</div>
	<div id="mainBody">
		<div class="container">
			<hr class="soften">
			<h3>Thêm bản tin</h3>
			<hr class="soften" />
			<header>
				<section id="form">
					<div class="row-fluid">
						<div class="span6">
							<form:form class="form-inline" action="../admin/insert-news.htm"
								enctype="multipart/form-data" modelAttribute="news">
								<fieldset>
									<form:input path="id" readonly="true" />
									<div class="control-group">
										<label class="control-label" for="input_1">Title</label>
										<div class="controls dis_now">
											<form:input path="title" class="input-xxlarge"
												style="height: 40px" />
											<form:errors path="title"></form:errors>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="input14">Quote</label>
										<div class="controls dis_now">
											<form:textarea path="quote" class="input-xxlarge" />
											<form:errors path="quote"></form:errors>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="textarea">Content</label>
										<div class="controls dis_now">
											<form:textarea path="news_content" class="input-xxlarge" />
											<form:errors path="news_content"></form:errors>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="select01">News type</label>
										<div class="controls">
											<form:select path="cate.id" items="${ cates}"
												itemLabel="name" itemValue="id"></form:select>
										</div>
									</div>

									<div class="control-group">
										<label class="control-label" for="fileInput1">Image</label>
										<div class="controls dis_now">
											<input class="input-file" id="fileInput1" type="file"
												name="photo" onchange="readFile(this);"> <br> <img
												id="photo" src="#" alt="" />
											<form:errors path="image"></form:errors>
										</div>
									</div>

									<div class="form-actions">
										<button type="submit" class="btn btn-primary" name="btnSave">Save
											changes</button>
										<button class="btn" name="btnReset">Reset</button>
										<button class="btn" name="btnExit">Exit</button>
									</div>
								</fieldset>
							</form:form>
						</div>
					</div>
				</section>
			</header>
		</div>
	</div>
	<script>
		function readFile(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#photo').attr('src', e.target.result).width(200).height(
							200);
				};

				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>
</body>
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/wow.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/slick.min.js"></script>
<script src="../assets/js/jquery.li-scroller.1.0.js"></script>
<script src="../assets/js/jquery.newsTicker.min.js"></script>
<script src="../assets/js/jquery.fancybox.pack.js"></script>
<script src="../assets/js/custom.js"></script>
<script src="../assets/js/date.js"></script>
<script src="../assets/js/setBg.js"></script>
<script src="https://unpkg.com/moment"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment-with-locales.min.js"></script>
</html>