<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*,java.util.*"%>
    <%
    List<Problem> list = (List<Problem>)request.getAttribute("problemList");
    int count = 1;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>questionlist</title>
</head>
<body>
	<% for(Problem p : list){ %>
	<div>
	<p>問題<%=count%>.<%=p.getContent() %></p>
	<p>　解答選択肢</p>
	<p>　1.<%=p.getAnswer1() %></p>
	<p>　2.<%=p.getAnswer2() %></p>
	<p>　3.<%=p.getAnswer3() %></p>
	</div>
	<%count++; %>
	<%} %>
</body>
</html>