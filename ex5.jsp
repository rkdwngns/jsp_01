<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int a[][] ={{89, 92, 95},{81, 82, 97}};
int total[] = new int [2];
float average[] = new float[2];

total[0] = a[0][0] + a[0][1] + a[0][2];
total[1] = a[1][0] + a[1][1] + a[1][2];
average[0] = total[0] /3;
average[1] = total[1] /3;
%>

1행 1열([0][0]) = <%=a[0][0] %><br>
1행 2열([0][1]) = <%=a[0][1] %><br>
1행 3열([0][2]) = <%=a[0][2] %><br>
학생 1 총점 =<%=total[0] %> 평균 = <%= average[0] %><p>

2행 1열([1][0]) = <%=a[1][0] %><br>
2행 2열([1][1]) = <%=a[1][1] %><br>
2행 3열([1][2]) = <%=a[1][2] %><br>
학생 2 총점 =<%=total[1] %> 평균 = <%= average[1] %>
</body>
</html>