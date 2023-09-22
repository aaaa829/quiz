<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.*,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
<link rel="stylesheet" href="body.css">
</head>
<body>
<div id="all">
	<h1>結果発表</h1>

	<span class="p1">今回あなたは</span>
	<span class="ans">${count.count}</span>
	<span class="p1">問正解しました！</span>
	<br><a href="index.jsp">戻る</a>
</div>
	<style>
.p1 {
	font-size: 20px;
	font-weight: bold;
}

.ans {
	font-size: 40px;
	color: red;
	font-weight: bold;
	animation:3s linear infinite rotation1;
}

@keyframes rotation1{
  0%{ transform:rotate(0);}
  100%{ transform:rotate(360deg); }
}
</style>
</body>
</html>