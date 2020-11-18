<%@ page language="java" pageEncoding="utf-8"%>
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
<link rel="stylesheet" type="text/css" href="../assets/css/login.css">
</head>

<body>
	<ul>
		<li>

			<div class="container">
				<div id="id01" class="modal" style="display: block">
					<form class="modal-content " action="../admin/index.htm"
						method="post">
						<div class="imgcontainer">
							<span
								onclick="document.getElementById('id01').style.display='none'"
								class="close" title="Close Modal">&times;</span> <img
								src="../images/padlock.jpg" alt="Avatar" class="avatar">
						</div>
						<div class="cont_container">
							<label for="username"><b>Username</b></label> <input type="text"
								placeholder="Enter Username" name="username" required> <br>
							<label for="password"><b>Password</b></label> <input
								type="password" placeholder="Enter Password" name="password"
								required> <br>
							<button type="submit" name="btnLogin">Login</button>
							<label> <input type="checkbox" checked="checked"
								name="remember"> Remember me
							</label>
						</div>
						<div class="cont_container" style="background-color: #f1f1f1">
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
<script src="https://unpkg.com/moment" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment-with-locales.min.js"></script>
</html>