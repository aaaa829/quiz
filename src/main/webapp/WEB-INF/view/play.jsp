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
</head>
<body>
<form action="Result" method="post">
	<%for(int i= 0;i < list.size();i++){%>
	 <% if(i==0){ %>
	 <div class="cont">
	<%}else{ %>
	<div class="cont" style="display:none">
	<%} %>
	<br>問題<%=i+1 %><br>
	<%=list.get(i).getContent() %><br>
	<%=list.get(i).getAnswer1() %><input type="radio" name="choices<%=i %>" value="1"><br>
	<%=list.get(i).getAnswer2() %><input type="radio" name="choices<%=i %>" value="2"><br>
	<%=list.get(i).getAnswer3() %><input type="radio" name="choices<%=i %>" value="3"><br>
	<p class="ans" style="display:none">正解は<%=list.get(i).getChoices() %></p> 
	<button type="button" style="display:block">決定</button>
	<button type="button" style="display:none">次へ</button>
	</div>
	<%} %>
<button type="submit" id="end" style="display:none" >ゲームを終了</button>
</form>
	<script src="content.js"></script>
</body>
</html>