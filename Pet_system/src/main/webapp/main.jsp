<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device=width", initial-scale="1">
<link rel="stylesheet" href ="css/bootstrap.css">
<link rel = "stylesheet" href="css/custom.css">
<title>Pet System</title>
<script>
	//자세히 보기 - 토글 버튼 
	function toggleText() {
	  var text = document.getElementById("info");
	  if (text.style.display === "none") {
	    text.style.display = "block";
	  } else {
	    text.style.display = "none";
	  }
	}
	//이메일 복사
	function copy_to_clipboard() {    
		  var copyText = document.getElementById('emailCopy');
		  copyText.select();
		  copyText.setSelectionRange(0, 99999);
		  document.execCommand("Copy");
		  alert('이메일이 복사되었습니다. ');
		}

</script>
</head>
<body>
	<%
		String userID = null ; 
		// 로그인이 되어있을 경우 
		if (session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
	%>
	<nav class = "navbar navbar-default">
		<div class = "navbar-header">
			<button type = "button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded = "false">
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
			</button>
			<a class = "navbar-brand" href="main.jsp">Pet System</a>
		</div>
		<div class = "collapse navbar-collapse" id = "bs-example-navbar-collapse-1">
			<ul class = "nav navbar-nav">
				<li class = "active"><a href="main.jsp">메인</a></li> 
				<li><a href="map.jsp">지도</a></li>
				<li><a href="calender.jsp">달력</a></li>
				<li><a href="info.jsp">정보</a>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<%
				if(userID == null){
			%>
			<%--로그인이 되어있지 않은 상태--%>
			<ul class = "nav navbar-nav navbar-right">
				<li class="dropdown">
  					<a href="#" class="dropdown-toggle"
  						data-toggle="dropdown" role="button" aria-haspopup="true"
  						aria-expanded="false">접속하기<span class="caret"></span></a>
  					<ul class="dropdown-menu">
  						<li><a href="login.jsp">로그인</a></li>
  						<li><a href="join.jsp">회원가입</a></li>
  					</ul>
  				</li>
			</ul>	
			<%
				} else {
			%>
			<%--로그인이 되어있는 상태--%>
			<ul class = "nav navbar-nav navbar-right">
				<li class="dropdown">
  					<a href="#" class="dropdown-toggle"
  						data-toggle="dropdown" role="button" aria-haspopup="true"
  						aria-expanded="false"><%=userID%>님<span class="caret"></span></a>
  					<ul class="dropdown-menu">
  						<li><a href="myPage.jsp">마이페이지</a></li>
  						<li><a href="logoutAction.jsp">로그아웃</a></li>
  					</ul>
  				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class = "container">
		<%--사이트 정보--%>
		<div class = "jumbotron">
			<div class = "container">
				<h1>웹 사이트 소개</h1>
				<p>JSP 게시판 웹 사이트입니다.</p>
				<p id = 'info' style = 'display:none'>
					디자인 템플릿 : BootStrap<br>
					관리자 이메일 : 
        			<input id="emailCopy" value="yeji4268@naver.com" readonly>
        			<button onclick="copy_to_clipboard()"><img src="https://blog.kakaocdn.net/dn/N1wUc/btqIl7XZtKM/b44qX9Six1vczz2ISWj4LK/img.png" alt="복사하기"></button>
    			</p>
				<button type = 'button' onclick = "toggleText()">자세히 알아보기</button>
			</div>
		</div>

	</div>
	<script src = "https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
	<script src = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>