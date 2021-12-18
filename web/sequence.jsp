<%-- 
    Document   : sequence
    Created on : 10 Apr, 2019, 2:54:47 PM
    Author     : Kaizen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="main.css">
        
        <% String value = (String)request.getSession().getAttribute("att1");
        String value1 = (String)request.getSession().getAttribute("att");
        String value2 = (String)request.getSession().getAttribute("att2");

    %>
    
    <title>FASTA/<%=value1%></title>
        <style>
            body {
  margin: 0;
  
  font-family: Arial, Helvetica, sans-serif;
}



#navbar {
  overflow: hidden;
  background-color: #009999;
}

#foot{
    overflow: hidden;
  background-color: #009999;
  position: fixed;
  bottom: 0;
  font-size: 20px;
  color: white;
  width: 100%;
  text-align: center;
  padding: 3px 5px;
}

#navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 12px 60px;
  text-decoration: none;
  font-size: 18px;
}

#navbar a:hover {
    background-color: #66ff00;
  color: black;
}

#navbar a.active {
  background-color: #4CAF50;
  color: white;
}

.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
}

.sticky + .content {
  padding-top: 0px;
}
            </style>
    </head>
      
    <body>
        <div id="navbar">
  <a  href="home.jsp">Home</a>
  <a href="advanced2.jsp">Advanced Search</a>
  <a href="protein.jsp">Interactions</a>
      <a href="normsearch.jsp">Statistics</a>
  <a href="help.jsp">Help</a>
  <a href="contact.jsp">About us</a>
</div>
    
    <div id="foot">
        Copyright (R) MIT School of Bioengineering Sciences and Research
    </div>
        <br><br>
        
        <div id="content">
         <%  %>
        <h1><%=value1%>: <%=value2%> </h1>
        <h1><iframe src="<%=value%>.txt" width="70%" height="300">
</iframe></h1>
        </div>
        <script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>
        
       
    </body>
</html>
