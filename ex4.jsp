<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<b>1차원 배열 성적처리</b> <br>
<%
int a[] = {89, 90 , 99};
String title[] = {"JSP", "HTML", "Java","총점","평균"};

int total = 0;
float average =0;
total = a[0] + a[1] + a[2];
average =total / 3;
%>


 <%= title[0] %> = <%=a[0] %><br>
 <%= title[1] %> = <%=a[1] %><br>
 <%= title[2] %> = <%=a[2] %><br>
<br> 
<br>
 <%= title[3] %> = <%=total %><br>
 <%= title[4] %> = <%=average %>
</body>
</html>