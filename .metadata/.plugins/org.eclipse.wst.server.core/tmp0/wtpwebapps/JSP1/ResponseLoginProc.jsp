<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<%
		request.setCharacterEncoding("EUC-KR");
		
		String dbid = "aaa";
		String dbpass = "1234";
		
		String id= request.getParameter("id");
		String pass = request.getParameter("pass");
		
		if(dbid.equals(id) && dbpass.equals(pass)){
			
			//db아이디와 resId, dbpass아 
			response.sendRedirect("ResponseMain.jsp?id="+id);
		}else{
			%>	
		<script>
			alert("아이디 패스워드 일치x");
			history.go(-1);
		</script>
		<% }%>
			
		
</body>
</html>