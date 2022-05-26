<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> 전역 변수와 지역 변수</h2>
<%!
int global_var = 0;
%>

<% 
int local_var = 0;
out.print("global_var = " + ++global_var + " <Br> ");
out.print("local_var = " + ++local_var + " <p> ");
%>
</body>
</html>