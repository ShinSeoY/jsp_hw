<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table { border-collapse: collapse; }
td { border: 1px solid gray; padding:2px 3px; }
</style>

<body>

<table>
<% 

for (int i=1; i <= 9; ++i) { 
     out.println("  <tr>");
     for (int j=2; j <= 9; ++j) {
         out.println("    <td>" + j+" x "+i+" = "+i*j + "</td>");
     }
     out.println("  </tr>");
   }
%>
</table>


</body>
</html>