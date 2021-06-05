<%-- 
    Document   : get
    Created on : 14 May, 2021, 5:31:44 PM
    Author     : karth
--%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%--<%@page import="com.sun.org.apache.bcel.internal.generic.Select"--%>
<%!  static int count=0; %>
<%! static int count1=0; %>
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
String db = (String) session.getAttribute("db");
session.setAttribute("db",db);
out.println(db);
try{
Class.forName(dbDriver); 
Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);

PreparedStatement psp=con.prepareStatement("select max(quiztopic) from "+db+" ");
ResultSet rsp = psp.executeQuery();
String n = "";

if(rsp.next()){
n = rsp.getString(1);
session.setAttribute("n",n);
}

out.println(n);

if(count==0){
PreparedStatement ps1= con.prepareStatement("select min(qid) from "+db+" where quiztopic= '"+n+"' ");
PreparedStatement ps2= con.prepareStatement("select max(qid) from "+db+" where quiztopic= '"+n+"' ");
ResultSet rs1= ps1.executeQuery();
ResultSet rs2=ps2.executeQuery();
if(rs2.next()){
count1=rs2.getInt(1);
session.setAttribute("max",count1);
}
if(rs1.next()){
count=rs1.getInt(1);
session.setAttribute("min",count);

}
}
if(count>0){
PreparedStatement ps=con.prepareStatement("select * from "+db+" where quiztopic= '"+n+"' and qid= '"+count+"' ");
ResultSet rs=ps.executeQuery();
while(rs.next()){
String question=rs.getString(1);
String option1= rs.getString(2);
String option2= rs.getString(3);
String option3= rs.getString(4);
String option4= rs.getString(5);
session.setAttribute("question",question);
session.setAttribute("option1",option1);
session.setAttribute("option2",option2);
session.setAttribute("option3",option3);
session.setAttribute("option4",option4);
}

}
System.out.print(count);
count++;
session.setAttribute("count",count);
%>
<jsp:forward page = "start.jsp"></jsp:forward>
<%
if(count>((Integer)session.getAttribute("max"))){
count=0;
session.setAttribute("ans",null);
}
con.close();

}catch(Exception e){e.printStackTrace();}

//end of if
%>
