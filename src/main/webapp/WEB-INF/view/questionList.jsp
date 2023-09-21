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
	<div display="flex">
	<h1>問題一覧</h1>
	<div align="center">
	<span style="font-size:20px">目次<br></span>
	<span>[</span>
	<% for(int i = 1 ; i < list.size()+1;i++){ %>
	<a style="text-decoration:none" href="#tb<%=i%>">問題<%=i %></a>
	<% if(i != list.size()){ %><span>/</span><% } %>
	<% } %> 
	<span>]</span>
	</div>
	<br>
	<div align="center">
	<% for(Problem p : list){ %>
	<% if(count/2 == count/3){ %>
	<table class="table" border="2" id="tb<%=count%>" style="background-color:#FFF">
	<%}else{ %>
	<table class="table" border="2" id="tb<%=count%>" style="background-color:#EEE">
	<%} %>
	<tr><th>問題<%=count%></th><td width="480px"><%=p.getContent() %></td></tr>
	<tr><th>　解答選択肢　 </th>
	<td>
	1.<%=p.getAnswer1() %><br>
	2.<%=p.getAnswer2() %><br>
	3.<%=p.getAnswer3() %>
	</td></tr>
	<tr>
	<th>正解番号</th>
	<td><button class="btn" style="display:block">答えを見る</button>
	<span class="ac" style="display:none"><%=p.getChoices() %></span>
	</td></tr>	
	</table>
	<%count++; %>
	<%} %>
	</div>
	<a href="Main">メインメニューへ戻る</a>
	</div>
	<script src="list.js"></script>
</body>
</html>