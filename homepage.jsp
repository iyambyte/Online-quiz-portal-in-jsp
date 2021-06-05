<%-- 
    Document   : library
    Created on : 4 M
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>library</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        
           
            
           
        <style>
            .rowdy{
                display: flex;
                align-self: center;
                flex-wrap: wrap;
                justify-content: center;
               
            }
            .columny{
                flex-basis: 33.3%;
                
            }
            .in{
                border: solid black 2px;
                
                
                width: 160px;
                height: 160px;
                font-size: 15px;
                padding-top: 2px;
                
                text-align: center;
                margin-bottom: 20%;
                margin-left: 20%;

            }
            .in:hover{
                
                
               /* width: 190px;
                height: 190px;*/
                border-color: red ;
                transition: 1s;
                font-size: 30px;
                /*padding: 10px;
                padding-top: 2px;*/
                animation-name: example;
                animation-duration: 3ms;
                transform: scale(1.125);

            }
            .navbar{
                position: fixed !important;
                right: 0 !important;
                left: 0 !important;
                top: 0 !important;
                z-index: 1030 !important;
                width:100%

            }
            @keyframes example {
                  from {border-top-color: red;}
                  to {border-top-color: yellow;}
            }
        </style>

    </head>
    <body onload="showAlert()">
        
                                
        
                                        <% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
					%>
				<% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					
					
					%>

                 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">OnlineQuiz</a>
          
            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
              <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                  <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#"><%= session.getAttribute("username") %></a>
                </li>
               
              </ul>
                <form action="logout.jsp" method="post">
                
                  <button type="submit">Logout</button>
              </form>
            </div>
          </nav>
        <br><br><br><br>
        <div class="rowdy">
            
            <div class="columny"><div class="in"><a href="s.jsp"><img src="social.jpeg" width="150px" height="150px"><%session.setAttribute("sub","social");%></a></div></div>
        <div class="columny"><div class="in"><a href="e.jsp"><img src="english.jpg" width="150px" height="150px"><%session.setAttribute("sub","english");%></a></div></div>
        <div class="columny"><div class="in"><a href="m.jsp"><img src="math.jpeg" width="150px" height="150px"><%session.setAttribute("sub","maths");%></a></div></div>
        <div class="columny"><div class="in"><a href="c.jsp"><img src="cse.jpeg" width="150px" height="150px"><%session.setAttribute("sub","cse");%></a></div></div>
        <div class="columny"><div class="in"><a href="sc.jsp"><img src="science.jpeg" width="150px" height="150px"><%session.setAttribute("sub","science");%></a></div></div>
        <div class="columny"><div class="in"><a href="b.jsp"><img src="biology.jpeg" width="150px" height="150px"><%session.setAttribute("sub","biologys");%></a></div></div>
        
        </div>

       
    </body>
</html>