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
// 2차원 점수배열 선언과 생성 및 초기화
int a[][] ={{89, 92, 95},{81, 82, 97}};

//학생별 총점, 평군 1차원 배열 선언과 생성
int total[] = new int [2]; 		//총점
float average[] = new float[2]; //평균 
 
// 성적 처리 - 학생 별 총점, 평균 계산 
for(int i = 0; i < a.length; i++){  //모든 행을 탐색
	for(int j = 0; j < a[i].length; j++){ //모든 칸을 탐색
		total[i] = total[i] + a[i][j]; // 해당 줄의 모든 칸에 들어있는 값을 누적합계 
	}								// total[0] dms 0번 줄(학생1)의 총점 계산 total[1]=1번 줄(학생2)의 총점
	average[i] = total[i] / 3;
}
//성적 처리 결과 출력 - 학생별 점수, 총점, 평균 => 화면표시
for(int i = 0; i <2; i++) {
	for(int j = 0; j < 3; j++){
%>
	<%=a[i][j] %>&nbsp;&nbsp;&nbsp; 
	<!-- 배열에 들어있는 데이터를 화면에 출력, 2번째 for문에 따른 반복 -->
<%
	}
%>
	<%=total[i] %> &nbsp;&nbsp;&nbsp; <%=average[i] %><br>
	<!-- total 배열에 들어있는 각 줄의 총점, average 배열에 들어있는 각 줄의 평균
			첫번 째 for문에 따른 반복 2회-->
<% 
}
%>
</body>
</html>