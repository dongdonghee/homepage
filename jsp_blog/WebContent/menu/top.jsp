<%@ page contentType="text/html; charset=UTF-8"%>

<%
	String root = request.getContextPath();
	String id = (String) session.getAttribute("id");
	String grade = (String) session.getAttribute("grade");
%>

<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
ul#menu li {
	display: inline;
	margin: 0 auto;
	background-color: #804040;
} 
ul#menu li a {
	background-color: #804040;
	color: #fff;
	pading: 10px 20px;
	text-decoration: none;
	border-radius: 4px 4px 0 0;
}

ul#menu li a:hover {
	background-color: #80ffff;
	color: #804040;
	font-weight: bold; 
}

ul#menu li a:SELECTION {
	background-color: #80ffff;
	color: #804040;
	font-weight: bold;
}

ul#menu li a:CHECKED {
	background-color: #80ffff;
	color: #804040;
	font-weight: bold;
}

.table {
	width: 100%;
}

.table, .td {
	border-style: none;
	padding: 0px;
	background-color: #804040;
}

.img {
	width: 100%;
	height: 100%;
}

li#admin {
	float: right;
	
}

</style>
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css"> 
</head>
<body>
	<!-- 상단 메뉴 -->
	<div>
		<table class="table">
			<tr>
				<td class="td">
					<img src="<%=root%>/images/zz2.gif" class="img">
					<!-- main02번이였음 -->
				</td>
			</tr>

			<tr>
				<td class="td">
					<ul id="menu">
						<li><a href="<%=root%>/index.jsp" class="btn btn-default">홈</a></li> 
						
						<li><a href="<%=root%>/bbs/list.jsp" class="btn btn-default">게시판목록</a></li>
						<li><a href="<%=root%>/bbs/createForm.jsp" class="btn btn-default">게시판생성</a></li>
						<li><a href="<%=root%>/imgbbs/list.jsp" class="btn btn-default">이미지 목록</a></li>
						<li><a href="<%=root%>/imgbbs/createForm.jsp" class="btn btn-default">이미지 생성</a></li>
						<li><a href="<%=root%>/memo/list.jsp" class="btn btn-default">메모 목록</a></li>
						<li><a href="<%=root%>/memo/createForm.jsp" class="btn btn-default">메모 생성</a></li>
						
						 
						<%
							if (id != null && grade.equals("A")) {
						%>
						
						<li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
						<li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a></li> 
						<li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a></li> 
						<li>
						<div class="dropdown">
						<button class="btn1"  type="button" data-toggle="dropdown">ADMINPAGE
						  <span class="caret"></span></button>
						  <ul class="dropdown-menu">
						  
						    <li><a href="<%=root%>/member/logout.jsp" class="btn btn-default">로그아웃</a></li>
						    <li><a href="<%=root%>/admin/list.jsp" class="btn btn-default">회원목록</a></li>
						    
						  </ul>
						  </div>
						
						<%
							}
						%>
						<%
							if (id == null) {
						%> 
						<li><a href="<%=root%>/member/agreement.jsp" class="btn btn-default">회원가입</a></li>
						<li><a href="<%=root%>/member/loginForm.jsp" class="btn btn-default">로그인</a></li>
						<%
							} else if(id != null && grade.equals("H")){
						%>
						<li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
						<li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
						<li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a></li>
						
						<li>
						<div class="dropdown">
						<button class="btn1"  type="button" data-toggle="dropdown">MY FAGE
						  <span class="caret"></span></button>
						  <ul class="dropdown-menu">
						    <li><a href="<%=root%>/member/read.jsp" class="btn btn-default">나의정보</a></li>
						    <li><a href="<%=root%>/member/updateForm.jsp" class="btn btn-default">회원수정</a></li>
						    <li><a href="<%=root%>/member/deleteForm.jsp" class="btn btn-default">회원탈퇴</a></li>
						    <li><a href="<%=root%>/member/logout.jsp" class="btn btn-default">로그아웃</a></li>
						  </ul>
						  </div>
						<%
							}
						%>
					</ul> 
				</td>
			</tr>
		</table>
	</div>
	<!-- 상단 메뉴 끝 -->

	<!-- 내용 시작 -->
	<div style="width: 100%; padding-top: 10px;">