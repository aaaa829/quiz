<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*,java.util.*" %>
    <%
    List<Problem> list = (List<Problem>)session.getAttribute("problemList");
    System.out.println(proLists.size());
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quizplay</title>
</head>
<body>
	<%for(int i= 0;i < proLists.size();i++){%>
	 <% if(i==0){ %>
	 <div class="cont">
	<%}else{ %>
	<div class="cont" style="display:none">
	<%} %>
	<br>問題<%=i+1 %><br>
	<%=proLists.get(i).getContent() %><br>
	<%=proLists.get(i).getAnswer1() %><input type="radio" name="choices<%=i %>" value="1"><br>
	<%=proLists.get(i).getAnswer2() %><input type="radio" name="choices<%=i %>" value="2"><br>
	<%=proLists.get(i).getAnswer3() %><input type="radio" name="choices<%=i %>" value="3"><br>
	<p class="ans" style="display:none">正解は<%=proLists.get(i).getChoices() %></p> 
	<button style="display:block">決定</button>
	<button id="btn" style="display:none">次へ</button>
	</div>
	<%} %>
	<script src="content.js"></script>
</body>
</html>