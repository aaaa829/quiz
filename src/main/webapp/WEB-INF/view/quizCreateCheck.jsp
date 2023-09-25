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
<link rel="stylesheet" href="quizcreatecheck.css">
<link rel="stylesheet" href="body.css">
</head>
<body>
	<div id="all" align="center">
	<table	border="1">
	<tr><th colspan="6">問題内容</th>
	</tr>
	<tr>
	<td class="td1" colspan="6"><%=p.getContent() %></td>
	</tr>
	<tr id="tr1">
	<th>回答1：</th><td><%=p.getAnswer1() %></td>
	<th>回答2：</th><td><%=p.getAnswer2() %></td>
	<th>回答3：</th><td><%=p.getAnswer3() %></td>
	</tr>
	<tr><th>正解：</th><td colspan="5"><%=p.getChoices() %></td></tr>
	</table>
	<a href="QuizCreate"><button>修正</button></a>
	<a href="CreateCheck"><button>決定</button></a>
	</div>
		<footer>	<a href="Main">メインメニューへ戻る</a></footer>
</body>
</html>