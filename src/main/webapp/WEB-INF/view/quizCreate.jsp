<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quizcreate</title>
<link rel="stylesheet" href="body.css">
</head>
<body>
<div id="all">
	<h1>クイズクリエイト</h1>
	<form action="CreateCheck" method="post">
	<div>
	問題内容<br>
	<textarea rows="10" cols="80" name="content" placeholder="ここに問題内容を記入してください" ></textarea>
	</div>
	<div>
	回答<br>
	1,<input type="text" name="answer1" placeholder="1つ目の回答">
	2,<input type="text" name="answer2" placeholder="2つ目の回答">
	3,<input type="text" name="answer3" placeholder="3つ目の回答">
	<br>どの選択肢が正解か選んでください<br>
	1,<input type="radio" name="choices" value="1">
	2,<input type="radio" name="choices" value="2">
	3,<input type="radio" name="choices" value="3">
	
	</div>
	<input type="submit" value="決定">
	</form>
	</div>
</body>
</html>