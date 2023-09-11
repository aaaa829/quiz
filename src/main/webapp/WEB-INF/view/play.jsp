<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*" %>
    <%
    List<Problem> list = request.getAttribute("problemList");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quizplay</title>
</head>
<body>
	<form action="" method="post">
	問題<br>
	<%=list.getContent() %><br>
	<%=list.getAnswer() %>
	</form>
</body>
</html>