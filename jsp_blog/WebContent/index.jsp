<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<% 
	String id = (String)session.getAttribute("id");
	String grade = (String)session.getAttribute("grade");
	String str = null;
	if(id==null){
		str="반갑습니다 로그인을 해주세요";
	} else{
		str="안녕하세요 "+id+"님 ^_^";
	}
	String title = "H O M E ";
	if(id!=null && grade.equals("A")){
	   title="관리자 페이지"; 
	} 
%> 

<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 
*{ 
  font-size: 24px; 
} 
.img1
{
	width:1000px;
	height:400px;	
}

</style>  
<link href="<%=root%>/css/style.css" rel="Stylesheet" type="text/css">
</head> 
<body leftmargin="0" topmargin="0">
<jsp:include page="./menu/top.jsp"/>
<div class="content">
<DIV class="title"><%=title %></DIV>
</div>

<DIV class="content">  
	<h1><%=str %></h1>
	<img src="./images/hh2.gif" class="img1"> 
	<br>
	<br> 
	<% if(id==null){ %> 
		<input type="button" value="로그인" class="button" onclick="location.href='member/loginForm.jsp'">
	<% } else{ %>
		<input type="button" value="로그아웃" class="button" onclick="location.href='member/logout.jsp'">
	<%   } %>
	<jsp:include page="/menu/bottom.jsp"/>
</DIV>
    


</body>
 
</html> 