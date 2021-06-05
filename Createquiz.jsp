

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher home</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
            <style>
        
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
.imgmaths{
    background-image:url(math.jpeg) no-repeat;
    background-size:cover;
    
}
.imgscience{
    background-image:url(sceience.jpeg);
    
}
body{
    
    background-size: cover;
    background-position:bottom ;
    font-family: cursive;
     background: #560059;
        color: #eeeeee;
 background-image:url(cq1.jpg);
}
.menu-bar{
    background-color: #ba68c8;
        
   
     
}
.menu-bar ul{
    display:inline-flex;
    list-style:none;
    color:rgb(243, 227, 9);
   
}
.menu-bar ul li{
    width:180px;
    margin:10px;
    padding:10px;
    
}
.menu-bar ul li a{
    text-decoration:none;
    color:khaki;
}
.active, .menu-bar ul li:hover{
    background-color:initial;
    border-radius:3px;
}
.menu-bar .fa{
    margin-right:8px;
}

.purple-border textarea {
    border: 1px solid #ba68c8;
}
.purple-border .form-control:focus {
    border: 1px solid #ba68c8;
    box-shadow: 0 0 0 0.2rem rgba(186, 104, 200, .25);
}

.green-border-focus .form-control:focus {
    border: 1px solid #8bc34a;
    box-shadow: 0 0 0 0.2rem rgba(139, 195, 74, .25);
}
  .container {
        padding: 20px;
      }
      button,
      button::after {
        -webkit-transition: all 0.3s;
        -moz-transition: all 0.3s;
        -o-transition: all 0.3s;
        transition: all 0.3s;
      }
      button {
         float: left;
        background: none;
        border: 4px solid #fff;
        border-radius: 10px;
        color: #fff;
        display: block;
        font-family: cursive;
        font-size: 1.6em;
        font-weight: bold;
        margin: 5px auto;
        padding: 1.5em 3em;
        position: relative;
        text-transform: uppercase;
      }
      button::before,
      button::after {
        background: #fff;
        content: '';
        position: absolute;
        z-index: -1;
      }
      button:hover {
        color: #29f2e4;
      }
      .button1::after {
        height: 0;
        left: 0;
        top: 0;
        width: 100%;
      }
      .button1:hover:after {
        height: 100%;
      }
      .button2::after {
        height: 100%;
        left: 0;
        top: 0;
        width: 0;
      }
      .button2:hover:after {
        width: 100%;
      }
       .button3::after {
        height: 0;
        left: 50%;
        top: 50%;
        width: 0;
      }
      .button3:hover:after {
        height: 100%;
        left: 0;
        top: 0;
        width: 100%;
      }
      .pink-textarea textarea.md-textarea:focus:not([readonly]) {
  border-bottom: 1px solid #f48fb1;
  box-shadow: 0 1px 0 0 #f48fb1;
}
.active-pink-textarea.md-form label.active {
  color: #f48fb1;
}
.active-pink-textarea.md-form textarea.md-textarea:focus:not([readonly])+label {
  color: #f48fb1;
}


.amber-textarea textarea.md-textarea:focus:not([readonly]) {
  border-bottom: 1px solid #ffa000;
  box-shadow: 0 1px 0 0 #ffa000;
}
.active-amber-textarea.md-form label.active {
  color: #ffa000;
}
.active-amber-textarea.md-form textarea.md-textarea:focus:not([readonly])+label {
  color: #ffa000;
}


.active-pink-textarea-2 textarea.md-textarea {
  border-bottom: 1px solid #f48fb1;
  box-shadow: 0 1px 0 0 #f48fb1;
}
.active-pink-textarea-2.md-form label.active {
  color: #f48fb1;
}
.active-pink-textarea-2.md-form label {
  color: #f48fb1;
}
.active-pink-textarea-2.md-form textarea.md-textarea:focus:not([readonly])+label {
  color: #f48fb1;
}


.active-amber-textarea-2 textarea.md-textarea {
  border-bottom: 1px solid #ffa000;
  box-shadow: 0 1px 0 0 #ffa000;
}
.active-amber-textarea-2.md-form label.active {
  color: #ffa000;
}
.active-amber-textarea-2.md-form label {
  color: #ffa000;
}
.active-amber-textarea-2.md-form textarea.md-textarea:focus:not([readonly])+label {
  color: #ffa000;
}
.round2 {
  border: 2px solid red;
  border-radius: 8px;
}
.wrapper {
        margin: 80px auto;
        text-align: center;
        width: 100%;
        position: relative;
      }
      .but {
        padding: 15px 100px;
        margin: 10px 4px;
        color:#29f2e4;
        font-family: cursive;
        text-transform: uppercase;
        text-align: center;
        position: relative;
        text-decoration: none;
        display: inline-block;
        
      }
      .but {
        border: 1px solid transparent;
        -webkit-transition: all 0.4s cubic-bezier(.5, .10, 0, 1);
        transition: all 0.4s cubic-bezier(.5, .10, 0, 1);
      }
      .but::before {
        content: '';
        position: absolute;
        left: 0px;
        bottom: 0px;
        z-index: -1;
        width: 0%;
        height: 1px;
        background: #003177;
        box-shadow: inset 0px 0px 0px #b6cdef;
        display: block;
        -webkit-transition: all 0.4s cubic-bezier(.5, .24, 0, 1);
        transition: all 0.4s cubic-bezier(.5, .24, 0, 1)
      }
      .but:hover::before {
        width: 100%;
         
      }
      .but::after {
        content: '';
        position: absolute;
        right: 0px;
        top: 0px;
        z-index: -1;
        width: 0%;
        height: 1px;
        background: #a9c1e8;
        -webkit-transition: all 0.4s cubic-bezier(.7, .25, 0, 1);
        transition: all 0.4s cubic-bezier(.7, .25, 0, 1)
      }
      .but:hover::after {
        width: 100%;
      }
      .but:hover {
        border-left: 1px solid #b6cdef;
        border-right: 1px solid #6098FF;
       background-color: #F4ECC2;
        border-radius: 35px 35px 35px 35px;
      }
 .main{
            
            width:750px;
            margin:auto;
            height:420px;
             border-radius: 25px 25px 25px 25px;
        }
         form{
            padding:100px;
        }
    </style>  
    </head>
    <body>
          
          <% 
            try{
          %>
           <div class="menu-bar">
        <ul>
          
            <li class="fa fa-home" style="text-align:left;"><a class='active'>Teacher's Home</a></li>
            <li class="fa fa-book" style="text-align:left;"><a href="#">
            <%
            String subject = (String) session.getAttribute("subject");
            out.println("Subject:"+subject);
            %>
            </a></li>
       
        <li class="fa fa-question" style="text-align:right;"><i class="active"></i><a href="#">
            
                    <%
            String y = (String) session.getAttribute("username");
            out.print("Teacher:"+y);
            %>
             </a>
        </li>
        <li></li>
        <li></li>
        <li></li>
         <li class="fa fa-phone" style="text-align:left;"><a href="index.html">Contact Us</a></li>
          <li class="fa fa-out" style="text-align:left;"><a href="logout.jsp">Logout</a></li>
                
                <%
            //String x = (String) session.getAttribute("finished");
            //out.println(x);
            
            if(subject.equals("science")){
                session.setAttribute("s", "quizques");
            }
            else if(subject.equals("maths")){
                session.setAttribute("s","quizquem");
            }
            else if(subject.equals("cse")){
                session.setAttribute("s","quizquec");
            }
            else if(subject.equals("social")){
                session.setAttribute("s","quizqueso");
            }
            else if(subject.equals("biology")){
                session.setAttribute("s","quizqueb");
            }
            else if(subject.equals("english")){
                session.setAttribute("s","quizquee");
            }
            else{
                out.println("Entered the wrong subject Name: ONLY 6 SUBJECTS ALLOWED");
            }
            }
            catch(Exception e){
                out.println(e);
            }
        %>
        
         </ul>
          </div>
        <form action="store.jsp" method="Get">
            
            <center>
                
                 <div class="main" style="background-color:rgba(0,0,0,0.5);">
                     <h1 style='color:yellow;'>Welcome To Quiz Portal</h1>
                 <table style="border:3px dashed darkmagenta;">
>
                    <tr>
                        <td >
              
                        Enter a Quiz topic:</td><td>
                            <br> <input type="text" name="topic" style=' border-radius: 35px 35px 35px 35px;width:190px'></td></tr>
                    </div>
            </div>
               
               <tr>
                   <td>
               Enter the Quiz End Date and Time: </td><td><input type="datetime-local" name="date" style=' border-radius: 35px 35px 35px 35px;'></td></tr>
               <tr><td> Enter the duration of quiz in seconds: 
                   </td><td> <input type="text" name="qtime" style=' border-radius: 35px 35px 35px 35px; width:190px'></td></tr>
                         
                  
           
                       
                        
                               
                        
        
              
                        <div class="wrapper">
                            <tr><td colspan="2">
                            <center>  <a href="store.jsp" class="but">Create Quiz</a></td></tr></center>
                              </table>
                        
                         <a href="views_marks.jsp" class="but">View Student Marks</a>
                         <a href="newstudent.html" class="but">Add Students</a>
                        </div>
                       
                       
                       
      
                   
               </div>
            
           </center>
        </form>
    </body>
</html>
