<%-- 
    Document   : quiz
    Created on : 29 Mar, 2021, 1:45:55 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Quiz</title>
         <style type="text/css">
        body{
            background-image:url(cq1.jpg);
            background-size: cover;
            background-position:center ;
            font-family: cursive;
            margin-top: 50px;
        }
        .createqz{
            width:800px;
            background-color:rgba(0,0,0,0.5);
            margin:auto;
            color:white;
            padding:10px 0px 10px 0px;
            text-align: center;
            border-radius: 15px 15px 0px 0px;

        }
        .main{
            
            width:800px;
            margin:auto;
            height:550px;
        }
        form{
            padding:10px;
        }
        #name{
            width:100%;
            height:100px;
        }
        .ques{
            margin-left:25px;
            margin-top: 30px;
            width: 125px;
            color:whitesmoke;
            font-size: 18px;
            font-weight:700;
        }
        .txtqz{
            position: relative;
            left:120px;
            top:-37px;
           
            font-size: 16px;
           
            width: 100%;

	width: 100%;
        }
        td{
            color:whitesmoke;

        }
        .coption{
            margin-left:25px;
            position:relative;
            left:5px;
            top:-37px;
            line-height:150px;
            width:255px;
            border-radius:6px;
            padding:0 22px;
            font-size: 16px;
            color:whitesmoke;
        }
        .cans{
            position:relative;
            left:120px;
            top: -120px;
            line-height:50px;
            width:532px;
            border-radius:6px;
            padding:0 22px;
            font-size: 16px;
            

        }
        button{           
            position:relative;
            left:10px;
            top: -105px;
            line-height:10px;
            
            border-radius:6px;
            padding:14px 70px;
            font-size: 16px;
            
            transition:0.25px;
        }
        button:hover{
            background-color: #5390F5;
            color:white;
        }
            </style>
    </head>
    <body>
         <div class="createqz">
<h1>

          <% 
            try{
            String subject = (String) session.getAttribute("sub");
            out.println(subject);
            session.setAttribute("sub",subject);
            %>:
            <%
            String topic = (String) session.getAttribute("top");
            
            out.println(topic);
            session.setAttribute("top",topic);
            }
            catch(Exception e)
            {
                out.print(e);
            }
            %></h1>
        </div>
        <div class="main" style="background-color:rgba(0,0,0,0.5);">

        <form action="savequiz.jsp">
            
                <div class="ques">
		Question:
            </div><div class="txtqz">
            <textarea rows="10" cols="60" name="question" ></textarea></div>
     <center>  <table border="2">
            <tr><td>Option1:</td><td><input type="text" name="option1" /></td></tr>	
		<tr><td>Option2:</td><td><input type="text" name="option2" /></td></tr>
		<tr><td>Option3:</td><td><input type="text" name="option3" /></td></tr>
		<tr><td>Option4:</td><td><input type="text" name="option4" /></td></tr>
		<tr><td>Correct Answer from the option:></td><td><input type="text" name="answer"/></td></tr></form></table></center>
        <div class="coption">Description:</div>
        <div class="cans"><textarea rows="3" cols="60" name="description"></textarea></div>	
					
            
         <center><button type="submit" >Next</button></center>
        </form>
    </body>
</html>
