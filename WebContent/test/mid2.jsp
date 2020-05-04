<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String num=request.getParameter("num");
	if(num==null)
		num="one";
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="https://kit.fontawesome.com/68abb170e0.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
<input type="radio" name="number" value="one"/>
one
<input type="radio" name="number" value="two"/>
two
<input type="radio" name="number" value="three"/>
three
<label>
<input type="text" name="num" value="<%=num %>"/>
</label>
<label>
<input type="submit" name="result" value="ok"/>
</label>
</form>


</body>
</html>