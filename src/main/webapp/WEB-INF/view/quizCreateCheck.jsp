<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*,java.util.*"%>
    <%
    Problem p = (Problem)session.getAttribute("create");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
	<p>問題内容<br>
	<%=p.getContent() %></p>
	</div>
	<div>
	<p>
	回答1：<%=p.getAnswer1() %><br>
	回答2：<%=p.getAnswer2() %><br>
	回答3：<%=p.getAnswer3() %>
	</p>
	</div>
	<div><p>正解：<%=p.getChoices() %></p></div>
	<a href="QuizCreate"><button>修正</button></a>
	<a href="Main"><button>決定</button></a>
</body>
</html>