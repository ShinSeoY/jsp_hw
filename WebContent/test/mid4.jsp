<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String name="";
String err=null;
boolean sex=false;
if(request.getMethod().equals("POST")){
	name= request.getParameter("name");
	sex=(request.getParameter("sex")!=null);
	if (name==null||name.length()==0){
		name=""; err=" 이름을 입력하세요";
	}
	else if(sex==false){
		err=" 성별을 입력하세요";
	}
}

%>
<!DOCTYPE html>
<html>
<head>
<style>
div.name{margin:10px}
div.result{margin:10px}
div.sex{margin:10px}
div.error{background-color: bright-red}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="https://kit.fontawesome.com/68abb170e0.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="POST">
<div class="name">
이름
<div>
<input type="text" name="name" value="<%=name %>"/>
</div>
</div>
<div class="sex">
성별
<div>
<input type="radio" name="sex" value="남자" <%=sex?"checked":""%>/>
남자
</div>
<div>
<input type="radio" name="sex" value="여자"<%=sex?"checked":""%>/>
여자
</div>
</div>
<div class="reusult">
<input type="submit" name="result" value="회원등록"/>
</div>
</form>
<div class="error">
<% if(err!=null){ %>
회원등록 실패:<%=err %>
<%} %>
</div>
<table>
<tr>
<td>이름</td><td><%=name %></td>
</tr>
<tr>
<td>성별</td><td><%=sex?"남자":"여자"%></td>
</tr>
</table>


</body>
</html>