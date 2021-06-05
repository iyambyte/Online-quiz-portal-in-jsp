<%@page import="java.io.PrintWriter"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>


<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Login Form</title>
<link rel="stylesheet" type="text/css" href="style.css">
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
    <body>
        
                                        <%   
                                        PrintWriter put = response.getWriter();
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
                    <a class="nav-link disabled" href="#"></a>
                </li>
              </ul>
              <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
              </form>
            </div>
          </nav>
        <br><br><br><br>
                        <h1> Invalid Login Credentials!!!....</h1></br>
                    <h2> Click New User? sign up or go back and try again!..</h2>
          <form action="loginprocess.jsp" method="GET">
          <p>User Name</p>
          <input type="text" name="uname" placeholder="Enter your Student user id" size="25"><br><br>
          <p>Password</p>  
          <input type="password" name="pwd" placeholder="Enter your password" size="25"><br><br>
           <button type="submit">Submit</button><br><br>
            <h4><a href="newteacher.html" >New user? Sign up!</a></h4>
        </form>
</body></html>