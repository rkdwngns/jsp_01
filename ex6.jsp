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
// 계좌 번호와 잔액 정보를 가짐
class Account {
	String account_no = null; // 계좌 번호
	int balance = 0; // 잔 액
	
//계좌번호를 매개 변수로 받아들이는 생성자
Account(String account_no ){
	this.account_no = account_no;
		}
//예금 프로세스
int deposit(int amount){ //입금액 amount를 매개변수(파라미터)로 받음
	balance = balance + amount;
	return balance;
}
//출금 프로세스 
int patment(int amount) { 
	if(balance >= amount){
	balance -= amount;
	return balance;
	}else{
		return balance;
	} 	}
}
%>
<%
// 입금,출금,잔액에 대한 변수선언 초기화
int deposit_don = 0; 	//입금
int payment_don = 0; 	//출금
int balance = 0; 		//잔액

Account account = new Account("0215"); //인스턴스(복제품) account을 만듬 
								//매개변수로 계좌번호 "0215" 저장
out.print("*계좌번호 : " + account.account_no + "<br>");
out.print("*초기잔액 : " + account.balance + "<br>");
//5000원 입금 프로세스
deposit_don = 5000;
account.deposit(deposit_don);
out.print(deposit_don +"*입금 후 잔액 : " + account.balance + "<br>");
//3000원 출금 프로세스

payment_don = 8000;
if(account.balance >= payment_don) {
	account.patment(payment_don);
	out.print(payment_don + "*출금 후 잔액 : " + account.balance + "<br>");
}else{ 
	out.print(payment_don+ "출금 진행중 잔액 부족으로 출금할 수 없습니다. <p>");
}
//또 한번 3000원 출금
payment_don = 2000;
if(account.balance >= payment_don) {
	account.patment(payment_don);
	out.print(payment_don + "*출금 후 잔액 : " + account.balance + "<br>");
}else{ 
	out.print(payment_don+ "출금 진행중 잔액 부족으로 출금할 수 없습니다. <p>");
}
%>
</body>
</html>