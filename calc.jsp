<%-- 
    Document   : calc
    Created on : 18 May, 2021, 7:00:17 PM
    Author     : karth
--%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%-- <%@page import="com.sun.org.apache.bcel.internal.generic.Select"%>--%>
<%! static int count1=0; %>

<%! static int total=0; %>
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
                     String ans = "";
                     if((String)request.getParameter("radio")!=null){
                                   System.out.println("lauda");
               			  ans =(String)request.getParameter("radio");
  							System.out.println("ans on set "+ans);
               			  //session.setAttribute("ans",ans);
                    	
                    } %>
<%
 
String db = (String) session.getAttribute("db");
if(session.getAttribute("count")!=null){
String name=(String)session.getAttribute("n");
//String ans= (String)session.getAttribute("ans");
out.print(ans);
Integer count=(Integer)session.getAttribute("count");
System.out.println(count);
try{
if(count1==0)
{
count1=count-1;

Class.forName(dbDriver); 
Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
PreparedStatement ps=con.prepareStatement("select ans from "+db+" where quiztopic='"+name+"' and qid='"+count1+"' ");
ResultSet rs=ps.executeQuery();
int qid = count1;
String sql = "Insert into ans value ('"+ans+"','"+qid+"') ";
PreparedStatement ps5 = con.prepareStatement(sql);
ps5.executeUpdate();
if(rs.next()){
String ans1=rs.getString(1);
System.out.println("ans1 on c10= "+ans1);
System.out.println("ans on get1= "+ans);
if(ans1.equals(ans)){
total=total+1;
System.out.println("total="+total);
out.print(total);
}

}

con.close();
}



else{
count1=count-2;
System.out.print("count at get1: "+count);

Class.forName(dbDriver); 
Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
int qid = count1;
PreparedStatement ps=con.prepareStatement("select ans from "+db+" where quiztopic='"+name+"' and qid='"+count1+"' ");
String sql = "Insert into ans value ('"+ans+"','"+qid+"') ";

PreparedStatement ps5 = con.prepareStatement(sql);
ps5.executeUpdate();
ResultSet rs=ps.executeQuery();
if(rs.next()){
String ans1=rs.getString(1);
System.out.println("ans1="+ans1);
System.out.println("ans on get1="+ans);
if(ans1.equals(ans)){
total=total+1;
System.out.println("total="+total);

}

}
con.close();
}
if(count>((Integer)session.getAttribute("max")))
{
Integer max=(Integer)session.getAttribute("max");
Class.forName(dbDriver); 
Connection con = DriverManager.getConnection(dbURL + dbName + disableSSL, dbUsername, dbPassword);
PreparedStatement ps=con.prepareStatement("select ans from "+db+" where quiztopic='"+name+"' and qid='"+max+"' ");
ResultSet rs=ps.executeQuery();
if(rs.next()){
String ans1=rs.getString(1);
System.out.println("ans1 on c1="+ans1);
String ans2=(String) session.getAttribute("ans");
System.out.println("ans on get1="+ans2);
if(ans1.equals(ans2)){
total=total+1;
System.out.println("total="+total);
}

}

con.close();
session.setAttribute("total",total);
total=0;

%>
<jsp:forward page="result.jsp"></jsp:forward>
<%  
}

}catch(Exception e){
out.print(e);
}

}
%>
<jsp:forward page="get.jsp"></jsp:forward>
