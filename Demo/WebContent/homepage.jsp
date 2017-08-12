<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Homepage</title>
</head>
<body>
	<%
	
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		
		if(session.getAttribute("user")==null)
		{
			response.sendRedirect("login.jsp");
			
		}
	
	%>
	<h1>Homepage</h1>
	
	<iframe width="560" height="315" src="https://www.youtube.com/embed/ZkgTns8-XLk" frameborder="0" allowfullscreen></iframe>
	
	<form action="Logout">
		<input type="submit" value="Logout">
	</form>
</body>
</html>