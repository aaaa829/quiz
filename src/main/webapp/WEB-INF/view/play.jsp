<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*,java.util.*" %>
    <%
    List<Problem> list = (List<Problem>)request.getAttribute("problemList");
    Random r = new Random();
    List<Problem> proLists = new ArrayList<Problem>();
	int j = list.size();
    for(int i =0;i< j;i++){ 
		int rand = r.nextInt(list.size());
		proLists.add(list.remove(rand)); 
	} 
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
	<br>
		問題<%=i+1 %><br>
	<%=proLists.get(i).getContent() %><br>
	<%=proLists.get(i).getAnswer1() %><input type="radio" name="1"><br>
	<%=proLists.get(i).getAnswer2() %><input type="radio" name="2"><br>
	<%=proLists.get(i).getAnswer3() %><input type="radio" name="3"><br>
	</div>
	<%} %>
	<button id="btn">決定</button>
	<script src="content.js"></script>
</body>
</html>