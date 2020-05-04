<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String s = request.getParameter("dan");
int dan = (s==null)?0:Integer.parseInt(s);
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
<input type="text" name="dan" value="<%=dan %>"/>
<input type="submit" name="result" value="단"/>
</form>
<table>
<% for(int i=1;i<10;i++){ %>
<tr>
<%= dan+"*"+i+"="+(dan*i) %></br>
</tr>
<%} %>
</table>

</body>
</html>