<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device=width", initial-scale="1">
<link rel="stylesheet" href ="css/bootstrap.css">
<link rel = "stylesheet" href="css/custom.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<%--��� �޴� ����--%>
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
				<li><a href="calender.jsp">�޷�</a></li>
				<li class = "active"><a href="info.jsp">����</a>
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
	
	<%--[����] �޴�--%>
	<nav class = "navbar navbar-default">
		<div class = "collapse navbar-collapse" id = "bs-example-navbar-collapse-1">
			<ul class = "nav navbar-nav">
				<li class = "active"><a href = "#">�Ϲ�����</a></li>
				<li><a href = "vaccination.jsp">��������</a></li>
				<li><a href = "raw.jsp">������å</a></li>
				<li><a href = "fna.jsp">F&A</a></li>
			</ul>
		</div>
	</nav>
	
	<%--[����] ���ڵ�� --%>
	<div class="container-fluid" style="min-height: calc(100vh - 136px);">
		<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
			<%--item_1--%>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab">
					<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false">
					Item #1
					</a>
				</div>
				<div id="collapse1" class="panel-collapse collapse" role="tabpanel">
					<div class="panel-body">
					Hello world1
					</div>
				</div>
			</div>
		
			<%--item_2--%>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab">
					<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false">
					Item #2
					</a>
				</div>
				<div id="collapse2" class="panel-collapse collapse" role="tabpanel">
					<div class="panel-body">
					Hello world2
					</div>
				</div>
			</div>

			<%--item_3--%>
			<div class="panel panel-default">
				<div class="panel-heading" role="tab">
					<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="false">
					Item #3
					</a>
				</div>
				<div id="collapse3" class="panel-collapse collapse" role="tabpanel">
					<div class="panel-body">
					Hello world3
				</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>