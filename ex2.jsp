<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! 
int su1 = 1;
int su2 = 10;
%>

<%
int result = 0;
int temp = 0;
String msg = null;

if( su1 >= su2){
	msg = "덧셈";
	result = su1 + su2;
}else {
	temp = su1;
	su1 = su2;
	su2 = temp;
	msg = "뺄셈";
	result = su1 - su2;
}
%>
<!-- 표현식(expression) -->
수1 = <%=su1 %><Br>
수2 = <%=su2 %><Br> 
연산(<%=msg %>) 결과 = <%=result %> 
</body>
</html>