<%@ page language="java" pageEncoding="utf-8"%>
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
		<div class="cont_container">
			<div class="row">
				<div class="span9">
					<div class="row">
						<ul class="nav nav-tabs wid_300 bg_none bd_none pad_30"
							style="border: none; margin-top: 30px">
							<li class="active pad_0 marg_0 bg_hover"><a href="#news"
								data-toggle="tab" style="">News</a></li>
							<li class="pad_0 marg_0 bg_hover bg_bl"><a href="#category"
								data-toggle="tab" style="">Categories</a></li>
						</ul>

						<br>
						<div id="myTabContent" class="tab-content"
							style="display: flex; justify-content: center;">
							<div class="tab-pane fade active in" id="news"
								style="width: 100% !important;">
								<a href="insert-news.htm"><button type="submit"
										class="btn btn-primary">Thêm bản tin</button></a> <br> <br>
								<table class="table">
									<thead>
										<tr>
											<th style="text-align: center;">ID</th>
											<th style="text-align: center;">Tên bản tin</th>
											<th style="text-align: center;">Trích dẫn</th>
											<th style="text-align: center; width: 100px;">Loại bản
												tin</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="n" items="${admin_news }">
											<tr>
												<td style="text-align: start;">${n.id }</td>
												<td style="text-align: start;">${n.title.trim() }</td>
												<td style="text-align: start;">${n.quote }</td>
												<td style="text-align: center;">${n.cate.name}</td>
												<td class="btn btn-default dis_plex"><a
													href="editN/${n.id }.htm">Sửa </a> <a
													href="deleteN/${n.id  }.htm">Xóa </a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="tab-pane fade in" id="category"
								style="width: 50% !important;">
								<a href="insert-cate.htm"><button type="submit"
										class="btn btn-primary">Thêm Chủ Đề</button></a> <br> <br>
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
											<th style="text-align: center; width: 25%">ID</th>
											<th style="text-align: center;">Tên Chủ Đề</th>
											<th style="text-align: center; width: 25%">Chức năng</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="c" items="${cates }">
											<tr>
												<td style="text-align: center;">${c.id }</td>
												<td>${c.name.trim() }</td>
												<td style="text-align: center;"><a
													style="margin-right: 10px;" href="editC/${c.id }.htm">Sửa</a>
													<button name="idn" id="idn" value="${c.id }"
														onclick="myFunction(${c.id})">Xóa</button></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

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
<script>
	function myFunction(id) {
		//var id = document.getElementById("idn").value;
		
		if (confirm("Do you really want to delete? This will delete all news !")) {
			window.location.href = "deleteC/" + id + ".htm";
		} else {
		}
	}
</script>
</html>