<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
table {border:1px solid ;border-collapse: collapse; }
td {border:1px solid;padding:4px;}
</style>

<body>
<table>

<% for(int i=2;i<=9;i++){%>
<% if(i%4==2){ %>
<% out.print("<tr>"); %>
<%} %>
<td><% for(int j=1;j<=9;j++){%>
<% out.print(i+" x "+j+" = "+i*j+"<br/>"); %>
<%} %>
</td>
<% if(i%4==1){ %>
<% out.print("</tr>"); %>
<%} %>
<%} %>




</table>



</body>
</html>