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
String s1 = request.getParameter("text1");
int number = (s1 == null) ? 0 : Integer.parseInt(s1)+1;
%>

<form method="get">
<label>
<input type="text" name="text1" value='<%=number%>' /> 
</label>
<button type="submit" name="++">++</button>

</form>
</body>
</html>