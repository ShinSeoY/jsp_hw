<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String name="";
String sex="";
name= request.getParameter("name");
sex=request.getParameter("sex");



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
<input type="text" name="name" value="<%=name %>"/>
<input type="radio" name="sex" value="남자" <%=(sex.equals("남자"))?"checked":""%>/>
남자
<input type="radio" name="sex" value="여자"<%=(sex.equals("여자"))?"checked":""%>/>
여자
<div>
<input type="submit" name="result" value="회원등록"/>
</div>
</form>
<table>
<tr>
<td>이름</td><td>성별</td>
</tr>
<tr>
<td><%=name %></td><td><%=sex %></td>
</tr>
</table>


</body>
</html>