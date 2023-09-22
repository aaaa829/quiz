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
<link rel="stylesheet" href="body.css">
</head>
<body>
	<div id="all" align="center">
	<table border="1" table-layout="fixed">
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
	<tr><th colspan="2">正解：</th><td colspan="4"><%=p.getChoices() %></td></tr>
	</table>
	</div>
	<div align="center">
	<a href="QuizCreate"><button>修正</button></a>
	<a href="CreateCheck"><button>決定</button></a>
	</div>
	<style>
	button{
		height:2em;
		width:10em;
		font-size:20px;
		font-weight:bold;
	}
	table{
		height:60px;
	}
	.td1{
		height:100px;
	}
	#tr1>th{
		min-width:60px;	
		nowrap;
		font-size:15px;
		}
	</style>
</body>
</html>