<%@page import="java.util.Random"%>
<h1 align="center">Transaction Completed</h1> <br><br>
<h2 align="center">Your Ticket No. is</h2>
<h3 style="color: blue" align="center"><%
Random rr=new Random();
int a=rr.nextInt(3333);
out.println(a);
%></h3><br><br>
<h4 align="center"><a href="http://localhost:8888/home">Click Here to go Home Page</a></h4>