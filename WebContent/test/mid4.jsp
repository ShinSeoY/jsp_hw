<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name="";
String err=null;
boolean sex=false;
if(request.getMethod().equals("POST")){
	name= request.getParameter("name");
	if (name==null||name.length()==0){
		name=""; err=" 이름을 입력하세요";
	}
	sex=(request.getParameter("sex")!=null);
	if(sex==false)
		err=" 성별을 입력하세요";

}

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
<form method="POST">
이름
<input type="text" name="name" value="<%=name %>"/>
<input type="radio" name="sex" value="남자" <%=(sex.equals("남자"))?"checked":""%>/>
남자
<input type="radio" name="sex" value="여자"<%=(sex.equals("여자"))?"checked":""%>/>
여자
<div>
<input type="submit" name="result" value="회원등록"/>
</div>
</form>
<% if(err!=null){ %>
회원등록 실패:<%=err %>
<%} %>
<table>
<tr>
<td>이름</td><td><%=name %></td>
</tr>
<tr>
<td>성별</td><td><%=sex %></td>
</tr>
</table>


</body>
</html>