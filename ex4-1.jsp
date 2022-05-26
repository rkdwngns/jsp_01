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
        int[] score = {94, 93, 98};
        String[] F = {"국어", "수학", "영어"};
        int G = 0, A = 0;



        for(int i = 0; i < score.length; i++){
            G += score[i];

        }
        A = G / 3;
        for(int i = 0; i < F.length; i++){
            out.print(F[i]+" = " + score[i]+"<p>");

        }
    %>
    <hr>
    총합 <%=G%>
    평균 <%=A%><p>

</body>
</html>