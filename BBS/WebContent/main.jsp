<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name='viewport' content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>BoB Airport</title>
</head>
<style>
body{
	background-image:url('images/8.jpg');
	background-image:no-repeat;
	background-size: contain;
}
</style>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">BoB Airport</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="main.jsp">메인 페이지</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
				if(userID == null){		
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class = "dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="ture"
						aria-expanded="false">접속하기<span class = "caret"></span></a>
					<ul class = "dropdown-menu">
						<li><a href = "login.jsp">로그인</a></li>
						<li><a href = "join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%
				}else{
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class = "dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="ture"
						aria-expanded="false">회원관리<span class = "caret"></span></a>
					<ul class = "dropdown-menu">
						<li><a href = "logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class = "container">
		<div class = "jumbotron">
			<div class = "container">
				<h1>BoB Airport</h1>
				<p></br>BoB AirPort는 최고의 안전과,</br></br> 최고의 동방 항공 허브,</br></br> 최고의 서비스를 제공하며 글로벌 1위 공항으로 발돋움합니다.</br></br></p>
				<p><a class = "btn btn-primary btn-pull" href="#" role = "button">자세히 알아보기</a></p>
			</div>
		</div>
	</div>
	<div class = "container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
  			<!-- Indicators -->
  			<ol class="carousel-indicators">
   				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
   				<li data-target="#myCarousel" data-slide-to="1"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src = "images/6.jpg" alt="Los Angeles" style="width:100%;">
					<div class="carousel-caption">
						<h3>Los Angeles</h3>
						<p>LA is always so much fun!</p>
					</div>	
				</div>
				<div class = "item">
					<img src = "images/7.jpg" alt="Chicago" style="width:100%;">
					<div class="carousel-caption">
						<h3>Chicago</h3>
						<p>Thank you, Chicago!</p>
					</div>
				</div>
			</div>
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
				<span class="sr-only">Next</span>
				</a>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>