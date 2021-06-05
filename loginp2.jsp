<%-- 
    Document   : loginp2
    Created on : 8 May, 2021, 5:28:26 PM
    Author     : karth
--%>

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
        <%
           String dbDriver = "com.mysql.jdbc.Driver"; 
        String dbURL = "jdbc:mysql:// localhost:3306/"; 
        // Database connection
        String dbName="school";
        String disableSSL="?useSSL=false";
        String dbUsername = "root"; 
        String dbPassword = "KamalMySQL25@"; 
        %>
<%
String username=request.getParameter("uname");
System.out.print(username);
String userpass=request.getParameter("pwd");
String sub = request.getParameter("sub");
boolean status=false;
try{

Class.forName(dbDriver); 
Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword); 

PreparedStatement ps=con.prepareStatement("select * from teacher_login where username=? and password=? ");
ps.setString(1,username);
ps.setString(2,userpass);
ResultSet rs=ps.executeQuery();
status=rs.next();
if(status){
System.out.print("hi");
username=rs.getString(1);
session.setAttribute("username",String.valueOf(username));
session.setAttribute("islogin","plz sign in first");
session.setAttribute("subject",String.valueOf(sub));
%>
<jsp:forward page="Createquiz.jsp"></jsp:forward>
<%
}
else{
System.out.print("hi");
request.setAttribute("Error","Sorry! Username or Password Error. plz Enter Correct Detail or Register");
session.setAttribute("Loginmsg","plz sign in first");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
}

catch(Exception e){
e.printStackTrace();
}

%>
