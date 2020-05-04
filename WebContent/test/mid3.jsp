<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String num=request.getParameter("number");
if (num==null)
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
<input type="radio" name="number" value="one" <%=(num.equals("one"))?"checked":""%>/>
one
<input type="radio" name="number" value="two"<%=(num.equals("two"))?"checked":""%>/>
two
<input type="radio" name="number" value="three"<%=(num.equals("three"))?"checked":""%>/>
three
<div>
<select name="num"/>
<option value="one" <%=(num.equals("one"))?"selected":""%> />one</option>
<option value="two" <%=(num.equals("two"))?"selected":""%>/>two</option>
<option value="three" <%=(num.equals("three"))?"selected":""%>/>three</option>
</select>

</div>
<div>
<input type="submit" name="result" value="ok"/>
</div>
</form>


</body>
</html>