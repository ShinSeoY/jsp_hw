<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
String N=request.getParameter("number");
String num = (N==null)?"one":N;
String number = request.getParameter("number");
%>
<form>
<select name="number">
<option value ="one"<%="one".equals(number) ? "selected" : "" %>>one</option>
<option value ="two"<%="two".equals(number) ? "selected" : "" %>>two</option>
<option value ="three"<%="three".equals(number) ? "selected" : "" %>>three</option>
</select>
<div>
<input type ="text" name="num" value='<%=num %>' readonly/>
</div>
<div>
<button type="submit" name="ok">ok</button>
</div>
</form>

</body>
</html>