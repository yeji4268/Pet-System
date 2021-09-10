<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href ="css/bootstrap.css">
</head>
<body>
	<%--�⺻ �޴� ����--%>
	<%
		String userID = null ; 
		// �α����� �Ǿ����� ��� 
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
				<li><a href="main.jsp">����</a></li> 
				<li><a href="map.jsp">����</a></li>
				<li class = "active"><a href="calender.jsp">�޷�</a></li>
				<li><a href="info.jsp">����</a>
				<li><a href="bbs.jsp">�Խ���</a></li>
			</ul>
			<%
				if(userID == null){
			%>
			<%--�α����� �Ǿ����� ���� ����--%>
			<ul class = "nav navbar-nav navbar-right">
				<li class="dropdown">
  					<a href="#" class="dropdown-toggle"
  						data-toggle="dropdown" role="button" aria-haspopup="true"
  						aria-expanded="false">�����ϱ�<span class="caret"></span></a>
  					<ul class="dropdown-menu">
  						<li><a href="login.jsp">�α���</a></li>
  						<li><a href="join.jsp">ȸ������</a></li>
  					</ul>
  				</li>
			</ul>	
			<%
				} else {
			%>
			<%--�α����� �Ǿ��ִ� ����--%>
			<ul class = "nav navbar-nav navbar-right">
				<li class="dropdown">
  					<a href="#" class="dropdown-toggle"
  						data-toggle="dropdown" role="button" aria-haspopup="true"
  						aria-expanded="false"><%=userID%>��<span class="caret"></span></a>
  					<ul class="dropdown-menu">
  						<li><a href="myPage.jsp">����������</a></li>
  						<li><a href="logoutAction.jsp">�α׾ƿ�</a></li>
  					</ul>
  				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	
	
</body>
</html>