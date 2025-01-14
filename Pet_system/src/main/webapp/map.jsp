<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Kakao 지도 시작하기</title>          
<meta name="viewport" content="width=device=width", initial-scale="1">
<link rel="stylesheet" href ="css/bootstrap.css">
<link rel = "stylesheet" href = "css/mapCustom.css">
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
				<li><a href="main.jsp">메인</a></li> 
				<li class = "active"><a href="map.jsp">지도</a></li>
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
	
	<div class="map_wrap">
    <div id="map" style="width:100% ;height:680px ;position:relative;overflow:hidden;"></div> 
    <!-- 지도타입 컨트롤 div 입니다 -->
    <div class="custom_typecontrol radius_border">
        <span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">지도</span>
        <span id="btnSkyview" class="btn" onclick="setMapType('skyview')">스카이뷰</span>
    </div>
    <!-- 지도 확대, 축소 컨트롤 div 입니다 -->
    <div class="custom_zoomcontrol radius_border"> 
        <span onclick="zoomIn()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="확대"></span>  
        <span onclick="zoomOut()"><img src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="축소"></span>
    </div>
	</div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f8db6dc9e7f3599aff3594a4be03aa63"></script>
	<%--맵 그리기 --%>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		function setMapType(maptype) { 
		    var roadmapControl = document.getElementById('btnRoadmap');
		    var skyviewControl = document.getElementById('btnSkyview'); 
		    if (maptype === 'roadmap') {
		        map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);    
		        roadmapControl.className = 'selected_btn';
		        skyviewControl.className = 'btn';
		    } else {
		        map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);    
		        skyviewControl.className = 'selected_btn';
		        roadmapControl.className = 'btn';
		    }
		}

		// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
		function zoomIn() {
		    map.setLevel(map.getLevel() - 1);
		}

		// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
		function zoomOut() {
		    map.setLevel(map.getLevel() + 1);
		}
	</script>
</body>
</html>