<%-- 
    Document   : normalSearch
    Created on : 19-Oct-2021, 13:36:25
    Author     : Atharva Tikhe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%--<%@page import="com.mysql.jdbc.Connection"%>--%>
<%@page import="java.sql.DriverManager"%>

<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <title>PPI | Search</title>
        
        <!--    STYLESHEETS --------------------------------------------->  
        
        <link rel="stylesheet" href="static/index.css">
        <link rel="stylesheet" href="static/normalSearch.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        
        
        <!--    SCRIPTS --------------------------------------------->  
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous" defer></script>
        <!--<script type="text/javascript" src="static/js/resources/JSmol.GLmol.min.js"></script>--> 
        <script type="text/javascript" src="static/js/normalSearch.js" defer></script>
        <script src="https://cdn.jsdelivr.net/npm/fuse.js/dist/fuse.js"></script>
            <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous" defer></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        
    </head>
    
    <body>
         
<!--        <div id="navbar">
            <a  href="/">Home</a>
            <a href="advanced2.jsp">Advanced Search</a>
            <a href="protein.jsp">Interactions</a>
            <a href="normsearch.jsp">Statistics</a>
            <a href="help.jsp">Help</a>
            <a href="contact.jsp">About us</a>
        </div>-->
        <nav  id="navbar" class="navbar flex mx-5 mb-6">
        <div class="navbar-brand d-flex justify-content-center align-items-center mx-2 flex-wrap gap-3">
            <img src="static/imgs/mitbio-logo.png" alt="MITBIO-logo"/>
            <h5 class="font-size-14"> | Protein - Protein Interaction Web Portal </h5>
        </div>
        <a href="advanced2.jsp">Advanced Search</a>
        <a href="protein.jsp">Interactions</a>
        <a href="normsearch.jsp">Statistics</a>
        <a href="help.jsp">Help</a>
        <a href="contact.jsp">About us</a>
    </nav>
        
<!--       <table>
            <tr>
                <th class="hidden-table" colspan="3" style="border: #cccccc thick outset;   cursor: none; th:hover{background-color: #cccccc;}"> <img src="home3.jpg" style="  background-color: #cccccc; opacity: 1.5; width: 300px; height: 60px;"> </th>
            </tr>
        </table>-->
        
        
        <form action="results" method="post" id="subform">
          <input id="t1" type="text" placeholder="Enter Protein Name..." name="t1">
          <div id="errorBox"></div>
          <button  id="submit" name="submit">Go</button>
        </form>

        <table id="count-table1" style=" padding: 1px; width: 100%; height: 30.5%;   position: fixed; top: 40%;  opacity: 0.75; ">
            <tr>
                <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con =(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi", "root", "abtdbt2213");
                Statement nameQuery = (Statement)con.createStatement();
                
               try{
                    int count = 0;
                    int count1 = 0;
                    int c = 0;
                    String sql= "select proteinA ,count(proteinA) as count1 from main2 group by proteinA;";
                    String sql2 ="select proteinB ,count(proteinB) as count2 from main2 group by proteinB;";                    
                    Statement st= (Statement)con.createStatement();
                    ResultSet rs = st.executeQuery(sql);
                    
            while(rs.next()){
                String a1 = rs.getString(1);
                count = count+1;
            }
                %>
            
                
                
                 <%
                      rs.close();
                    st.close();
                    st= (Statement)con.createStatement();
                     rs = st.executeQuery(sql2);
                     while(rs.next()){
                String a1 = rs.getString(1);
                count1 = count1+1;
            }
                     c = count+count1;
                     %>
                     <th  onclick="javascript:navigate();">Proteins<br><%=c%><br></th>
                 <%
                     rs.close();
                    st.close();
            }
                
            catch(Exception e){
            out.println(e);
                }%>
                     
                     <%    
                try{
                    int count = 0;
                    
                String sql= "select pname  from main2;";
                //String sql2 ="select proteinB ,count(proteinB) as count2 from main2 group by proteinB;";
//                Class.forName("com.mysql.jdbc.Driver");
//                Connection con =(Connection)DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ppi", "root", "abtdbt2213");
            System.out.println("EXECUTE the query");
                    //String query = "select* from main2 where '"+a1+"'=? '"+o+ "' '"+a2+"'=?'"+o2+"' '"+a3+"'=?";
                    System.out.println("Executing the query");
                    //PreparedStatement st = (PreparedStatement) con.prepareStatement(q);
                    Statement st= (Statement)con.createStatement();
                    ResultSet rs = st.executeQuery(sql);
                    //st.setString(1, t1);
                    //st.setString(2, t2);
                   //st.setString(3, t3);
                    //ResultSet rs = st.executeQuery();
                    
            while(rs.next()){
                String a1 = rs.getString(1);
                count = count+1;
            }
                %>
                <th id="protein" onclick="location.href='protein.jsp' " style="align-content: center;">Interactions<br><%=count%><br>
              </th>
            
            <%
                rs.close();
                    st.close();
                     } catch(Exception e){
            out.println(e);
                 }
                %>
                
                 <%
                    
                   try{
                    int count = 0;
                    
                String sql= "select Inhibitor, count(Inhibitor) as count1 from main2 group by Inhibitor;";
                //String sql2 ="select proteinB ,count(proteinB) as count2 from main2 group by proteinB;";
//                Class.forName("com.mysql.jdbc.Driver");
//                Connection con =(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi", "root", "abtdbt2213");
            System.out.println("EXECUTE the query");
                    //String query = "select* from main2 where '"+a1+"'=? '"+o+ "' '"+a2+"'=?'"+o2+"' '"+a3+"'=?";
                    System.out.println("Executing the query");
                    //PreparedStatement st = (PreparedStatement) con.prepareStatement(q);
                    Statement st= (Statement)con.createStatement();
                    ResultSet rs = st.executeQuery(sql);
                    //st.setString(1, t1);
                    //st.setString(2, t2);
                   //st.setString(3, t3);
                    //ResultSet rs = st.executeQuery();
                    
            while(rs.next()){
                String a1 = rs.getString(1);
                count = count+1;
            }
                    
                
                %>
                <th id="inhibitor" onclick="javascript:navigate1();">Inhibitors<br><%=count%><br>
                </th>
            </tr>
           
            
                      
                <%
                    rs.close();
                    st.close();
                        } catch(Exception e){
            out.println(e);
                 }
                  
                  
               
                    %>
                
            
                        
                     <script  language="javascript">
                        
                        
                    function navigate(){
                       
                       
                      var x = "1" ;
                      
                         <% %>
                             window.location.href="statistic.jsp?"+x;  
                   }
                   
                   function navigate1(){
                       var x = "2" ;
                      
                         <% %>
                             window.location.href="statistic.jsp?"+x;  
                   }
                  
                   </script> 
           
                   
               
        </table>
                    
   
                    <table style=" margin: 2em 2em; padding: 1px; width: 80%; height: 18.5%;   position: fixed;  top: 76%;  opacity: 0.85; ">
        <tr>
             <%
               try{
                    int count = 0;
                    
                String sql= "select Disease, count(Disease) as count1 from main2 group by Disease;";
                //String sql2 ="select proteinB ,count(proteinB) as count2 from main2 group by proteinB;";
//                Class.forName("com.mysql.jdbc.Driver");
//                Connection con =(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi", "root", "abtdbt2213");
            System.out.println("EXECUTE the query");
                    //String query = "select* from main2 where '"+a1+"'=? '"+o+ "' '"+a2+"'=?'"+o2+"' '"+a3+"'=?";
                    System.out.println("Executing the query");
                    //PreparedStatement st = (PreparedStatement) con.prepareStatement(q);
                    Statement st= (Statement)con.createStatement();
                    ResultSet rs = st.executeQuery(sql);
                    //st.setString(1, t1);
                    //st.setString(2, t2);
                   //st.setString(3, t3);
                    //ResultSet rs = st.executeQuery();
                    
            while(rs.next()){
                String a1 = rs.getString(1);
                count = count+1;
            }
                    
                
                    %>
                    <th id="disease" onclick="javascript:navigate2();" >Diseases<br><%=count%></th>
                
                <%
                    rs.close();
                    st.close();
                        } catch(Exception e){
            out.println(e);
                 }
%>
<th id="properties" onclick="javascript:navigate3();">Properties<br>54</th>
        </tr>
           
                

    </table>
        
                   
                     <script  language="javascript">
                        
                        
                    function navigate(){
                       
                       
                      var x = "1" ;
                      
                         <% %>
                             window.location.href="statistic.jsp?"+x;  
                   }
                   
                   function navigate1(){
                       var x = "2" ;
                      
                         <% %>
                             window.location.href="statistic.jsp?"+x;  
                   }
                  
                  function navigate2(){
                      
                       var x = "3" ;
                      
                         <% %>
                             window.location.href="statistic.jsp?"+x;  
                  }
                  
                  function navigate3(){
                       var x = "4" ;
                      
                         <% %>
                             window.location.href="statistic.jsp?"+x;  
                  }
                   </script>     
                    
        <footer id="foot"> <small>&copy; Copyright 2021, MIT School of Bioengineering Sciences and Research, Pune</small> </footer>          
    </body>
</html>