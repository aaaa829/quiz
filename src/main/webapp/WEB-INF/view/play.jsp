<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*,java.util.*" %>
    <%
    List<Problem> list = (List<Problem>)session.getAttribute("problemList");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quizplay</title>
<link rel="stylesheet" href="body.css">
</head>
<body>
<div id="all">
<form action="Result" method="post">
	<%for(int i= 0;i < list.size();i++){%>
	 <% if(i==0){ %>
	 <div class="cont">
	<%}else{ %>
	<div class="cont" style="display:none">
	<%} %>
<table border="1">
	<tr><th width="60px">問題<%=i+1 %></th>
	<td width="720px"><%=list.get(i).getContent() %></td></tr>
	<tr>
	<th>選択肢</th>
	<td colspan="2">1,<%=list.get(i).getAnswer1() %><input type="radio" name="choices<%=i %>" value="1"><br>
	2,<%=list.get(i).getAnswer2() %><input type="radio" name="choices<%=i %>" value="2"><br>
	3,<%=list.get(i).getAnswer3() %><input type="radio" name="choices<%=i %>" value="3"></td>
	</tr>
	<tr>
	<th>正解</th>
	<td>
	<span class="ans" style="display:none"><%=list.get(i).getChoices() %></span>
	</td></tr>
	</table>
	<button type="button" style="display:block">決定</button>
	<button type="button" style="display:none">次へ</button>
	</div>
	<%} %>
<button type="submit" id="end" style="display:none" >ゲームを終了</button>
</form>
	<script src="content.js"></script>
</div>
<footer><a href="Main">メインメニューへ戻る</a></footer>
</body>
</html>