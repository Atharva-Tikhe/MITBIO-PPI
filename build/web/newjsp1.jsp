<%-- 
    Document   : new2
    Created on : 24 Jul, 2019, 12:02:30 AM
    Author     : Kaizen
--%>

<%--<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main.css">
   
        <style>
            #navbar {
  overflow: hidden;
  background-color: #009999;
  position: fixed;
  width: 100%;
}
body{
           
           margin: 0;
  
  font-family: Arial, Helvetica, sans-serif;
            background-position-y: 50px;
            
        }
#foot{
    overflow: hidden;
  background-color: #009999;
  position: fixed;
  bottom: 0;
  font-size: 18px;
  color: white;
  width: 100%;
  text-align: center;
  padding: 2px 5px;
}

#navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 12px 60px;
  text-decoration: none;
  font-family: Arial, Helvetica, sans-serif;
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

 .tab {
                float: left;
                border: 1px solid #ccc;
                position: fixed;
                color: white;
                border: none;
                outline: none;
                cursor: pointer;
                width: 250px;
                top: 56.8%;
                height: 180px;
               left: 1.3%;



            }
            p:hover{
                background-color: lime;
            }
            h1{
                
                position: fixed;
                display: inline-block;
                top: 7%;
                left: 24.5%;
                color: darkblue;
                font-size: 28px;
            
            }
            h2{
                position: fixed;
                display: inline-block;
                top: 110px;
                left: 920px;
                color: darkblue;
                font-size: 25px;

            }
           
            .v1{
                border-left: 4px solid #009999;;
                height: 676px;
                position: fixed;
                left: 277px;

                top: 47px;
            }
            p1{
                position: fixed;
                left: 41%;
                top: 18%;
                color: #0066cc;
                font-family: Calibri, Candara, Segoe, Segoe UI, Optima, Arial, sans-serif;
                font-size: 20px;
                padding-top: 4px;
                padding-bottom: 4px;




            }
            p0{
                position: fixed;
                left: 560px;
                top: 600px;
                color: #0066cc;
                font-family: Calibri, Candara, Segoe, Segoe UI, Optima, Arial, sans-serif;
                font-size: 15px;
                padding-top: 4px;
                padding-bottom: 4px;
                width: 380px;
            }
            p2{
                position:  fixed;
                left: 550px;
                top: 410px;
                font-size: 18px;
                alignment-baseline: middle;
                color: #0066ff;
                font-family: Arial;
            }
            p6{
                position:  fixed;
                left: 940px;
                top: 340px;
                font-size: 20px;
                alignment-baseline: middle;
                color: #0066ff;
                font-family: Arial;
            }
            p5{
                position:  fixed;
                left: 530px;
                top: 280px;
                color: #0000cc;
                font-family: Calibri, Candara, Segoe, Segoe UI, Optima, Arial, sans-serif;
                font-size: 22px;
                padding-top: 4px;
                padding-bottom: 4px;
                text-decoration: underline;
            }
            * {box-sizing: border-box}

/* Set height of body and the document to 100% */


/* Style tab links */
.tablink {
  background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 16px;
  width: 250px;
}

.tablink:hover {
  background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */


#Home {background-color: red;}
#News {background-color: green;}
#Contact {background-color: blue;}
#About {background-color: orange;}
            
            /* Style the buttons inside the tab */
            .tab button {
                display: block;
                
                color: #003366;
                padding: 12px 15px;
                outline: 1px solid #ddd;
                background-color: #ccffff;
                width: 260px;
                border: 2px solid #666666;
                border-right: none;
                outline: none;
                text-align: left;
                cursor: pointer;
                transition: 0.3s;
                font-size: 15px;
                border-radius: 7px 0 0 7px ;
                

            }
            .fasta:hover{
                background-color: lime;
            }

            /* Change background color of buttons on hover */
            .tab button:hover {
                background-color: #33ff33;
            }

            /* Create an active/current "tab button" class */
            .tab button.active {
                background-color:#009999;
            }

            /* Style the tab content */
            .tabcontent {
                float: left;
                padding: 0px 12px;
                position: fixed;
                width: 75.86%;
                height: 620px;
                left: 22%;
                top: 11.5%;
                font-size: 16px;
                background-color: whitesmoke;

            }
            
           

           hr{

                display: block;
                margin-top: 39px;
                position: fixed;
                margin-left: -10px;
                width: 1800px;
                margin-right: auto;
                border-style: inset;
                border: solid #009999;
            }

            #mySidenav a {
                position: absolute;
                right:  -170px;

                transition: 0.1s;
                padding: 20px;
                width: 280px;
                text-decoration: none;
                font-size: 15px;
                color: white;
                border-radius: 12px 0 0 12px ;

            }

            #mySidenav a:hover {
                right:  -60px;

            }

            #about {
                text-align: left;
                top: 489px;
                background-color: #4CAF50;
            }

            #blog {
                text-align: left;
                top:547px;
                background-color: #2196F3;
            }
            #ann{
                text-align: left;
                top: 605px;
                background-color: #f44336;
            }
            
            
         table{
                position:  fixed;
                left: 16px;
                top: 320px;
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 280px;
                height: 62px;
                border-top: none;
                border-right: none;


            }


            td, th {
                border: 1px solid #009999;
                
                padding: 8px;
                border-top: none;
                border-right: none;
                width: 280px;
            }
            
            tr:nth-child(even) {
  background-color: #dddddd;
}
            
        </style> 
        
    </head>
    <body>
        <%//String p = (String)request.getSession().getAttribute("v");
                  String p = (String)request.getQueryString();
                  //String p = "P10001";
                String k = request.getParameter("v");
                //out.println(k);
                //out.println(p);
               
                session.setAttribute("att", p);
                    
                               try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi", "root", "abtdbt2213");
                    //System.out.println("EXECUTE the query");
                    String query = "select* from main2 where PID=?";
                    //System.out.println("Executing the query");
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query);
                    //ResultSet rs = st.executeQuery(query);
                    st.setString(1, p);
                    ResultSet rs = st.executeQuery();
                    while (rs.next()) {
                    //System.out.println("PID "+rs.getString("PID")+"" +"Protein name "+rs.getString("pname")+""+"PDB-ID "+rs.getString("PDB_ID")+""+"Inhibitor "+rs.getString("Inhibitor")+""+"Disease "+rs.getString("Disease")+"SMILES "+rs.getString("SMILES"));

                    String s1 = rs.getString("PID");
                    String s2 = rs.getString("pname");
            %>

            <div id="head" style=" background-color: #ccc; position: fixed; top: 6.35%; left: 22%; width: 75.8%; color: darkblue;
                 font-size: 28px; display: inline-block; height: 40px; padding: 4px 8px;"><b>  <%=s1%> : <%=s2%></b>  <button class="fasta" style=" width: 80px; height: 30px; position: fixed; top: 6.75%; left: 90.5%; border-radius: 50px 50px 50px 50px; background-color: #009999; color: white; cursor: pointer; border:  #006666 thick outset;" onclick="window.location.href='sequence.jsp'">FASTA</button>
            
            <button class="fasta" style=" width: 83px; height: 30px; position: fixed; top: 6.95%; left: 83.5%; border-radius: 50px 50px 50px 50px; background-color: #009999; color: white; cursor: pointer; border:  #006666 thick outset;" onclick="window.location.href='structure.jsp'">3D-View</button>
             <button class="fasta" style=" width: 83px; height: 30px; position: fixed; top: 6.95%; left: 76.5%; border-radius: 50px 50px 50px 50px; background-color: #009999; color: white; cursor: pointer; border:  #006666 thick outset;" onclick="window.location.href='cyto.jsp'">Network</button>
            <button class="fasta" style=" width: 83px; height: 30px; position: fixed; top: 6.95%; left: 76.5%; border-radius: 50px 50px 50px 50px; background-color: #009999; color: white; cursor: pointer; border:  #006666 thick outset;" onclick="window.location.href='docking'">Docking</button>
            </div>
            
                                         <%
     } %>
            <%
                    rs.close();
                    st.close();
                   
                } catch (Exception e) {
                    System.out.println(e);
                }

            %>
            <%                  try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi", "root", "abtdbt2213");
                    //System.out.println("EXECUTE the query");
                    String query = "select* from main2 where PID=?";
                    //System.out.println("Executing the query");
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query);
                    //ResultSet rs = st.executeQuery(query);
                    st.setString(1, p);
                    ResultSet rs = st.executeQuery();
                    while (rs.next()) {
                    //System.out.println("PID "+rs.getString("PID")+"" +"Protein name "+rs.getString("pname")+""+"PDB-ID "+rs.getString("PDB_ID")+""+"Inhibitor "+rs.getString("Inhibitor")+""+"Disease "+rs.getString("Disease")+"SMILES "+rs.getString("SMILES"));

                    String s1 = rs.getString("PID");
                    session.setAttribute("pid", s1);
                    String s2 = rs.getString("pname");
                    session.setAttribute("att2", s2);
                    String s3 = rs.getString("PDB_ID");
                    session.setAttribute("att1", s3);
                    String s4 = rs.getString("Inhibitor");
                    session.setAttribute("inname", s4);
                    String s5 = rs.getString("Disease");
                    String s6 = rs.getString("SMILES");
                    String s7 = rs.getString("PMID");
                    String s8 = rs.getString("Uniprot_id");
                    //String s9 = rs.getString("image");
                    String s10 = rs.getString("proteinA");
                    session.setAttribute("proteinA", s10);
                    String s11 = rs.getString("proteinB");
                    session.setAttribute("proteinB", s11);
                    String s12 = rs.getString("AID");
                    session.setAttribute("chainA", s12);
                    String s13 = rs.getString("BID");
                    session.setAttribute("chainB", s13);
                    String s14 = rs.getString("Oligomer");
                    String inh = rs.getString("inhibitor_id");
                    session.setAttribute("inhibit", inh);
                     String inhi = (String)session.getAttribute("inhibit");
            %>
        
            <img src="Pics/<%=s3%>.jpg" style="width: 260px; height:260px; position: fixed;
                                display: block;
                                top: 6.5%;
                               left: 1.3%;
                                border: solid #009999;;
                                border-width: 1px;
                                border-right: none; "
                                >
         <div class = "tb">
            <table  style=" color: #009999;  position: fixed; top: 38.6%; left: 1.34%; width: 260px;
                    
                    font-size: 16px;
                position:  fixed;
                left: 16px;
                top: 288px;
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 260px;
                height: 30px;
                border-top: none;
                border-right: none;


                    " >
                <caption style=" color: #006666; margin-left:7px; padding-bottom: 4px; font-size: 12px; text-align: left;"><b><%=s2%></b></caption>
                <tr>
                    <th style="border: 1px solid #009999;
                        font-size: 13px;
                text-align: center;
                padding: 8px 0px;
                border-top: none;
                border-right: none;
                width: 280px;">Protein name</th>
                    <th style=" border: 1px solid #009999;
                text-align: center;font-size: 13px;
                padding: 8px 0px;
                border-top: none;
                border-right: none;
                width: 280px;">PDB-ID</th>
                </tr>
                <tr style=" background-color: #dddddd;">
                    <td  style="border: 1px solid #009999;
                text-align: center;font-size: 13px;
               padding: 8px 0px;
                border-top: none;
                border-right: none;
                width: 280px;"><%=s10%></td>
                    <td style="border: 1px solid #009999;
                text-align: center;font-size: 13px;
               padding: 8px 0px;
                border-top: none;
                border-right: none;
                width: 280px;"> <a href="https://www.rcsb.org/structure/<%=s12%>"> <%=s12%></a>   </td>
                </tr>
                <tr>
                    <td style="border: 1px solid #009999;
                text-align: center;font-size: 13px;
               padding: 8px 0px;
                border-top: none;
                border-right: none;
                width: 280px;"><%=s11%></td>
                    <td style=" border: 1px solid #009999;
                text-align: center;
               padding: 8px 0px;font-size: 13px;
                border-top: none;
                border-right: none;
                width: 280px;"><a href="https://www.rcsb.org/structure/<%=s13%>"> <%=s13%></a> </td>
                </tr>
            </table>
                                </div>
            <div class="v1"></div>  

                               

                                 <%
     } %>
            <%
                    rs.close();
                    st.close();
                   
                } catch (Exception e) {
                    System.out.println(e);
                }

            %>
         
             <div class="tab">
                <button  class="tablinks" onclick="openCity(event, 'Summary')" id="defaultOpen"><b>Summary</b></button>
                <button  class="tablinks" onclick="openCity(event, 'Topology')"><b>Topological Properties</b></button>
                <button  class="tablinks" onclick="openCity(event, 'Residue')"><b>Residual Properites</b></button>
                <button  class="tablinks" onclick="openCity(event, 'Geometric')"><b>Geometrical Properites</b></button>
                <button  class="tablinks" onclick="openCity(event, 'Atomic')"><b>Atomic Properites</b></button>
                <button  class="tablinks" onclick="openCity(event, 'Inhibitor')"><b>Inhibitor Properites</b></button>

            </div>
            
            <%                    try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi?autoReconnect=true&useSSL=false", "root", "abtdbt2213");
                    //System.out.println("EXECUTE the query");
                    String query = "select* from main2 where PID=?";
                    //System.out.println("Executing the query");
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query);
                    //ResultSet rs = st.executeQuery(query);
                    st.setString(1, p);
                    ResultSet rs = st.executeQuery();

            %>

            <%                        while (rs.next()) {
                    //System.out.println("PID "+rs.getString("PID")+"" +"Protein name "+rs.getString("pname")+""+"PDB-ID "+rs.getString("PDB_ID")+""+"Inhibitor "+rs.getString("Inhibitor")+""+"Disease "+rs.getString("Disease")+"SMILES "+rs.getString("SMILES"));

                    String s1 = rs.getString("PID");
                    String s2 = rs.getString("pname");
                    session.setAttribute("att2", s2);
                    String s3 = rs.getString("PDB_ID");
                    session.setAttribute("att1", s3);
                    String s4 = rs.getString("Inhibitor");
                    session.setAttribute("inname", s4);
                    String s5 = rs.getString("Disease");
                    String s6 = rs.getString("SMILES");
                    String s7 = rs.getString("PMID");
                    String s8 = rs.getString("Uniprot_id");
                    //String s9 = rs.getString("image");
                    String s10 = rs.getString("proteinA");
                    session.setAttribute("proteinA", s10);
                    String s11 = rs.getString("proteinB");
                    session.setAttribute("proteinB", s11);
                    String s12 = rs.getString("AID");
                    session.setAttribute("chainA", s12);
                    String s13 = rs.getString("BID");
                    session.setAttribute("chainB", s13);
                    String s14 = rs.getString("Oligomer");
                    String inh = rs.getString("inhibitor_id");
                    session.setAttribute("inhibit", inh);
                     
            %>
            <div id="Summary" class="tabcontent" style="">
                
                <figure>
                    <div id="img1"><img src="Pics/P/<%=s12%>.jpg" style="width: 220px; height:220px; position: fixed;
                                        display: block;
                                        top: 130px;
                                        margin-left:620px;
                                        border: solid #009999;;;
                                        border-width: 1px;">

                    </div>
                    <figcaption style=" font-size: 12px; position:  fixed; margin-left: 625px;margin-top: 235px; font-family:Calibri, Candara, Segoe, Segoe UI, Optima, Arial, sans-serif;
                                color: #0099cc;"><%=s10%> </figcaption>
                </figure>   

                <figure>
                    <div id="img1"><img src="Pics/P/<%=s13%>.jpg" style="width: 220px; height:220px; position: fixed;
                                        display: block;
                                        top: 390px;
                                        margin-left:620px;
                                        border: solid #009999;;
                                        border-width: 1px;">
                    </div>
                    <figcaption style=" font-size: 12px; position:  fixed; margin-left: 624px;margin-top: 495px; font-family:Calibri, Candara, Segoe, Segoe UI, Optima, Arial, sans-serif;
                                color: #0099cc;"><%=s11%></figcaption>
                </figure>  

                <table   style=" text-align:left; position: fixed; left: 24%; top: 16%; width: 42%; height: 75%; border: 1px solid #ccc;  color: #006699; font-size: 16px;  ">
                    
                    <tr >
                        <td style="border: none; ">
                            <b>P-ID:</b>
                        </td>
                        <td style=" border: none; border-left: 1px solid #ccc; text-align:center;">
                            <%=s1%>
                        </td>
                        
                    </tr>
                    <tr>
                        <td style="border: none;"> <b>Interaction name:</b></td>
                        <td style="border: none; border-left: 1px solid #ccc; text-align:center;">
                            <%=s2%>
                        </td>
                    </tr>
                     <tr>
                         <td style="border: none;"> <b>PDB-ID:</b></td>
                        <td style="border: none; border-left: 1px solid #ccc; text-align:center;">
                            <a href="https://www.rcsb.org/structure/<%=s3%>"> <%=s3%> </a>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: none;"><b> Inhibitor:</b></td>
                        <td style="border: none; border-left: 1px solid #ccc; text-align:center;">
                            <%=s4%>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: none;"> <b>Disease:</b></td>
                         <td style=" border: none; border-left: 1px solid #ccc;text-align:center;">
                            <%=s5%>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: none;"><b> PM-ID:</b></td>
                         <td style=" border: none; border-left: 1px solid #ccc; text-align:center;">
                            <%=s7%>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: none;"><b>Oligomeric State:</b></td>
                       <td style=" border: none; border-left: 1px solid #ccc; text-align:center;">
                            <%=s14%>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: none;"> <b>Protein-A:</b></td>
                        <td style=" border: none; border-left: 1px solid #ccc; text-align:center;">
                            <%=s10%>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: none;"><b>Protein-B:</b></td>
                        <td style="border: none; border-left: 1px solid #ccc; text-align:center;">
                            <%=s11%>
                        </td>
                    </tr>
                    
                    <tr>
                        <td style="border: none;"><b> SMILES:</b></td>
                         <td style="border: none;border-left: 1px solid #ccc;font-size: 8.2px; text-align: center;">
                          <%=s6%>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: none;"><b>Version: </b></td>
                        <td style=" border: none; border-left: 1px solid #ccc;  text-align: center; ">1</td>
                    </tr>
                </table>
                
                
                
              
                        <p0> </p0>


            </div>
                         <%
     } %>
            <%
                    rs.close();
                    st.close();
                   
                } catch (Exception e) {
                    System.out.println(e);
                }
//<p>P-ID: <br> <br>Protein name: <br> <br>PDB ID: <br>  <br>Inhibitor:  <br> <br>Disease: <br> <br>PM-ID:<br>  <br>Oligomeric state:<br><br>Protein A:<br><br>Protein B:<br><br>SMILES:<br><br>Version: </p>
            %>
       
           <%
              //String ids = (String)session.getAttribute("att");
                              try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi?autoReconnect=true&useSSL=false", "root", "abtdbt2213");
                    //out.println("EXECUTE the query");
                    String query = "select* from topology where PID=?";
                   //out.println("Executing the query");
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query);
                    //ResultSet rs = st.executeQuery(query);
                    st.setString(1, p);
                    ResultSet rs = st.executeQuery();
                    //out.println("Executing the query");

            %>

            <%                        while (rs.next()) {
                
                    float f1 = rs.getFloat(3);
                    float f2 = rs.getFloat(4);
                    float f3 = rs.getFloat(5);
                    float f4 = rs.getFloat(6);
                    float f5 = rs.getFloat(7);
                    float f6 = rs.getFloat(8);
                    float f7 = rs.getFloat(12);
                    float f8 = rs.getFloat(13);
                    float f9 = rs.getFloat(14);
                    float f10 = rs.getFloat(15);
                    float f11 = rs.getFloat(16);
                    String a = rs.getString(1);
                    String b = rs.getString(2);
                    //System.out.println("PID "+rs.getString("PID")+"" +"Protein name "+rs.getString("pname")+""+"PDB-ID "+rs.getString("PDB_ID")+""+"Inhibitor "+rs.getString("Inhibitor")+""+"Disease "+rs.getString("Disease")+"SMILES "+rs.getString("SMILES"));
                   /* String a = rs.getString("PID");
                    String b = rs.getString("pname");
                   float f1 = rs.getFloat("theroticalpi");
                     float f2 = rs.getFloat("half_life");
                      float f3 = rs.getFloat("instability_index");
                       float f4 = rs.getFloat("aliphatic_index");
                        float f5 = rs.getFloat("gravy");
                         float f6 = rs.getFloat("extiction_coef");
                          float f7 = rs.getFloat("hydro");
                           float f8 = rs.getFloat("vdw");
                           float f9 = rs.getFloat("polarity");
                           float f10 = rs.getFloat("polarizability ");
                           float f11 = rs.getFloat("KEGG");*/

                   %>
      
           
                <div id="Topology" class="tabcontent"  style="background-color: whitesmoke;  th,td{  text-align: left;
  padding: 8px;
            
}">
           
           <table class="hidden-table" cellspacing="10" style=" position:  fixed;
                   left: 340px;
                   top: 120px;
                   font-family: arial, sans-serif;
                   border-collapse: collapse;
                   text-align: left;
                   width: 60%;
                   height: 72%;
                   font-size: 18px;
                   border: 2.5px solid #009999;;
                   color: #003399;
                   text-align: center;
                  
                   " > 
                
               <tr>
             <td rowspan = "12" style=" text-align: center;"><b>Topological<br> Properties</b></td>
             <th>Property</th>
             <th>Value</th>
             
               </tr>
             <tr>
            <td >Theorotical PI</td>

                    <td ><%=f1%></td>
         </tr>
         
                <tr>
                    <td > Half Life </td>
                    <td >  <%=f2%> </td>

                </tr>
                <tr>
                    <td >Instability Index</td>
                    <td ><%=f3%></td>
                </tr>
                <tr>
                    <td >Aliphatic Index</td>
                    <td > <%=f4%></td>
                </tr>
                <tr>
                    <td >GRAVY</td>
                    <td ><%=f5%></td>
                </tr>
                <tr>
                    <td >Extiction Coefficient</td>
                    <td ><%=f6%></td>
                </tr>
                <tr>
                    <td >Hydrophobicity</td>
                    <td ><%=f7%> </td>
                </tr>
                <tr>
                    <td >VDW Composition</td>
                    <td ><%=f8%> </td>
                </tr>
                <tr>
                    <td >Polarity</td>
                    <td ><%=f9%> </td>
                </tr>
                <tr>
                     <td >Polarizability</td>
                    <td ><%=f10%> </td>
                </tr>
                <tr>
                    <td >KEGG</td>
                    <td ><%=f11%> </td>
                </tr>
                
                
            </table>  
            
            <%
                  }  rs.close();
                    st.close();
                   
                } catch (Exception e) {
                    System.out.println(e);
                }

            %>
 </div>
            <%
                
                String g1 = (String)session.getAttribute("att2");
                   try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi?autoReconnect=true&useSSL=false", "root", "abtdbt2213");
                    System.out.print("Connected");
                    System.out.println("EXECUTE the query");
                    String query1 = "select* from residue2 where pname=?";
                    System.out.println("Executing the query");
                    
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query1);
                    //ResultSet rs = st.executeQuery(query);
                    System.out.println("Executed");
                    int o = 1;
                    st.setString(1, g1);
                    //st.setInt(2,o);
                    ResultSet rs = st.executeQuery();
                   while(rs.next()){
                      String ch1 = rs.getString("ch_id1");  
                      session.setAttribute("chain1", ch1);
                      
                     String ch2 = rs.getString("ch_id2");
                      session.setAttribute("chain2", ch2);
                   }
                    rs.close();
                    st.close();
                   
                } catch (Exception e) {
                    System.out.println(e);
                }
                   
                   String c1 = (String)session.getAttribute("chain1");
                   String c2 = (String)session.getAttribute("chain1");

                   try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi?autoReconnect=true&useSSL=false", "root", "abtdbt2213");
                    System.out.print("Connected");
                    System.out.println("EXECUTE the query");
                    String query1 = "select* from chain12 where ch_id1=?";
                    System.out.println("Executing the query");
                    
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query1);
                    //ResultSet rs = st.executeQuery(query);
                    System.out.println("Executed");
                    //int o = 1;
                    st.setString(1, c1);
                    //st.setInt(2,o);
                    ResultSet rs = st.executeQuery();
                   while(rs.next()){
                   
                    String r1 = rs.getString("neg_seg");
                    String r2 = rs.getString("chains");
                    String r3 = rs.getString("sec_struct");
                    String r4 = rs.getString("perc_neutral");
                    String r5 = rs.getString("perc_polar");
                    String r6 = rs.getString("perc_nonpolar");
                    String r7 = rs.getString("perc_charged");
                    String r8 = rs.getString("perc_aromatic");
                    String r9 = rs.getString("perc_acidic");
                    String r10 = rs.getString("perc_basic");
                    String r11 = rs.getString("perc_acyclic");
                    String r12 = rs.getString("perc_cyclic");
                    String r13 = rs.getString("perc_alpha");
                    String r14 = rs.getString("perc_beta");
                    String r15 = rs.getString("perc_coil");
                   
                    
                     //String id = rs.getString("PID");
                    
                    
                
                
                
                
                %>
          
                <div id="Residue" class="tabcontent" >
            <table cellspacing="10" style=" position:  fixed;
                   left: 345px;
                   top: 100px;
                   font-family: arial, sans-serif;
                   border-collapse: collapse;
                   text-align: left;
                   width: 35%;
                   height: 20%;
                   font-size: 18px;
                   border: 2.5px solid #009999;;
                   color: #003399;
                   text-align: left;
                   border-right: none;
                  
                   ">
                <tr>
                    <td><b>Properties</b></td>
                    <td><b>Chain: <%=r2%></b></td>
                </tr>
                 <tr>
                     <td>Neg Segement</td>
                    <td> <%=r1%></td>
                </tr>
                 <tr>
                      
                     <td>Sec Structure</td>
                    <td> <%=r3%></td>
                </tr>
                 <tr>
                     <td>Neutral %</td>
                    <td> <%=r4%></td>
                </tr>
                 <tr>
                     <td>Polar %</td>
                    <td> <%=r5%></td>
                </tr>
                 <tr>
                     <td>Non-polar %</td>
                    <td> <%=r6%></td>
                </tr>
                 <tr>
                     <td>Charged %</td>
                    <td> <%=r7%></td>
                </tr>
                 <tr>
                     <td>Aromatic %</td>
                    <td> <%=r8%></td>
                </tr>
                 <tr>
                     <td>Acidic %</td>
                    <td> <%=r9%></td>
                </tr>
                 <tr>
                     <td>Basic %</td>
                    <td> <%=r10%></td>
                </tr>
                 <tr>
                     <td>Acyclic %</td>
                    <td> <%=r11%></td>
                </tr>
                 <tr>
                     <td>Cyclic %</td>
                    <td> <%=r12%></td>
                </tr>
                 <tr>
                     <td>Alpha %</td>
                    <td> <%=r13%></td>
                </tr>
                 <tr>
                     <td>Beta %</td>
                    <td> <%=r14%></td>
                </tr>
                 <tr>
                     <td>Coil %</td>
                    <td> <%=r15%></td>
                </tr>
           </table>
                  <%
                }    rs.close();
                    st.close();
                    
                } catch (Exception e) {
                    System.out.println(e);
                }

            %>
            
              <%
                
                  try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi?autoReconnect=true&useSSL=false", "root", "abtdbt2213");
                    System.out.print("Connected");
                    System.out.println("EXECUTE the query");
                    String query1 = "select* from chain2 where ch_id2=?";
                    System.out.println("Executing the query");
                    
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query1);
                    //ResultSet rs = st.executeQuery(query);
                    System.out.println("Executed");
                    //int o = 1;
                    st.setString(1, c2);
                    //st.setInt(2,o);
                    ResultSet rs = st.executeQuery();
                   while(rs.next()){
                   
                    String r1 = rs.getString("neg_seg");
                    String r2 = rs.getString("chains");
                    String r3 = rs.getString("sec_struct");
                    String r4 = rs.getString("perc_neutral");
                    String r5 = rs.getString("perc_polar");
                    String r6 = rs.getString("perc_nonpolar");
                    String r7 = rs.getString("perc_charged");
                    String r8 = rs.getString("perc_aromatic");
                    String r9 = rs.getString("perc_acidic");
                    String r10 = rs.getString("perc_basic");
                    String r11 = rs.getString("perc_acyclic");
                    String r12 = rs.getString("perc_cyclic");
                    String r13 = rs.getString("perc_alpha");
                    String r14 = rs.getString("perc_beta");
                    String r15 = rs.getString("perc_coil");
                   
                   
                    String n = rs.getString("pname");
                    
                     String id = rs.getString("PID");
                    
                    
                    
                
                
                
                
                %>
                
               
                 <table cellspacing="10" style=" position:  fixed;
                   left: 788px;
                   top: 100px;
                   font-family: arial, sans-serif;
                   border-collapse: collapse;
                   text-align: left;
                   width: 20%;
                   height: 20%;
                   font-size: 18px;
                   border: 2.5px solid #009999;;
                   color: #003399;
                   text-align: left;
                   border-left: none;
                  
                   ">
                <tr>
                    
                    <td><b>Chain: <%=r2%></b></td>
                </tr>
                 <tr>
                     
                    <td> <%=r1%></td>
                </tr>
                 <tr>
                      
                     
                    <td> <%=r3%></td>
                </tr>
                 <tr>
                     
                    <td> <%=r4%></td>
                </tr>
                 <tr>
                     
                    <td> <%=r5%></td>
                </tr>
                 <tr>
                     
                    <td> <%=r6%></td>
                </tr>
                 <tr>
                    
                    <td> <%=r7%></td>
                </tr>
                 <tr>
                     
                    <td> <%=r8%></td>
                </tr>
                 <tr>
                     
                    <td> <%=r9%></td>
                </tr>
                 <tr>
                     
                    <td> <%=r10%></td>
                </tr>
                 <tr>
                     
                    <td> <%=r11%></td>
                </tr>
                 <tr>
                     
                    <td> <%=r12%></td>
                </tr>
                 <tr>
                     
                    <td> <%=r13%></td>
                </tr>
                 <tr>
                     
                    <td> <%=r14%></td>
                </tr>
                 <tr>
                     
                    <td> <%=r15%></td>
                </tr>
           </table>
       
      <%
               }     rs.close();
                    st.close();
                    
                } catch (Exception e) {
                    System.out.println(e);
                }

            %>
            
             </div>
            
            <div id="Geometric" class="tabcontent" style="background-color: whitesmoke;">
            <%
                
                   
                   try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi?autoReconnect=true&useSSL=false", "root", "abtdbt2213");
                    System.out.print("Connected");
                    System.out.println("EXECUTE the query");
                    String query1 = "select* from chain12 where ch_id1=?";
                    System.out.println("Executing the query");
                    
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query1);
                    //ResultSet rs = st.executeQuery(query);
                    System.out.println("Executed");
                    //int o = 1;
                    st.setString(1, c1);
                    //st.setInt(2,o);
                    ResultSet rs = st.executeQuery();
                   while(rs.next()){
                 String chain = rs.getString("chains");
                  String n = rs.getString("pname");
                    float r1 = rs.getFloat(19);
                    float r2 = rs.getFloat(20);
                    float r3 = rs.getFloat(21);
                    float r4 = rs.getFloat(22);
                    float r5 = rs.getFloat(23);
                    float r6 = rs.getFloat(24);
            %>
            
            
            
          
                 <table cellspacing="10" style=" position:  fixed;
                   left: 347px;
                   top: 120px;
                   font-family: arial, sans-serif;
                   border-collapse: collapse;
                   text-align: left;
                   width: 45%;
                   height: 40%;
                   font-size: 18px;
                   border: 2.5px solid #009999;
                   color: #003399;
                   text-align: left;
                   border-top: 2.5px solid #009999 ;
                   border-right: none;
                   ">
                
                    <tr>
                    <th><b>Properties</b></th>
                    
                    <th><b>Chain: <%=chain%></b></th>
                </tr>
                 <tr>
                     <td>Non-Bonded angles</td>
                    <td> <%=r1%></td>
                </tr>
                 <tr>
                      
                     <td>Hydrogen Bonds</td>
                    <td> <%=r2%></td>
                </tr>
                 <tr>
                     <td>Salt Bonds</td>
                    <td> <%=r3%></td>
                </tr>
                 <tr>
                     <td>Disulfide Bonds</td>
                    <td> <%=r4%></td>
                </tr>
                 
            <tr>
                <td>Torison angles</td>
                    <td> <%=r5%></td>
                </tr>
                
                <tr>
                    <td>Percentage ASA</td>
                    <td> <%=r6%></td>
                </tr>
                 </table>
            
            
            <%
                }    rs.close();
                    st.close();
                    
                } catch (Exception e) {
                    System.out.println(e);
                }

            %>
            
            
            
             <%
                
                       try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi?autoReconnect=true&useSSL=false", "root", "abtdbt2213");
                    System.out.print("Connected");
                    System.out.println("EXECUTE the query");
                    String query1 = "select* from chain2 where ch_id2=?";
                    System.out.println("Executing the query");
                    
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query1);
                    //ResultSet rs = st.executeQuery(query);
                    System.out.println("Executed");
                    //int o = 1;
                    st.setString(1, c2);
                    //st.setInt(2,o);
                    ResultSet rs = st.executeQuery();
                   while(rs.next()){
                 String chain = rs.getString("chains");
                  String n = rs.getString("pname");
                    float r1 = rs.getFloat(19);
                    float r2 = rs.getFloat(20);
                    float r3 = rs.getFloat(21);
                    float r4 = rs.getFloat(22);
                    float r5 = rs.getFloat(23);
                    float r6 = rs.getFloat(24);
            %>
            
            
            
            
                 <table cellspacing="10" style=" position:  fixed;
                   left: 920px;
                   top: 120px;
                   font-family: arial, sans-serif;
                   border-collapse: collapse;
                   text-align: left;
                   width: 18%;
                   height: 40%;
                   font-size: 18px;
                   border: 2.5px solid #009999;
                   color: #003399;
                   text-align: left;
                   border-top: 2.5px solid #009999 ;
                   border-left: none;
                  
                   ">
                
                    <tr>
                   
                    
                    <th><b>Chain: <%=chain%></b></th>
                </tr>
                 <tr>
                     
                    <td> <%=r1%></td>
                </tr>
                 <tr>
                      
                     
                    <td> <%=r2%></td>
                </tr>
                 <tr>
                     
                    <td> <%=r3%></td>
                </tr>
                 <tr>
                     
                    <td> <%=r4%></td>
                </tr>
                 
            <tr>
                
                    <td> <%=r5%></td>
                </tr>
                
                <tr>
                    
                    <td> <%=r6%></td>
                </tr>
                 </table>
            
            
            <%
                }
                    rs.close();
                    st.close();
                    
                } catch (Exception e) {
                    System.out.println(e);
                }

            %>
            
            <%  try {
                
                String A = (String)session.getAttribute("chainA");
                String B = (String)session.getAttribute("chainB");
                
                String pA = (String)session.getAttribute("proteinA");
                String pB = (String)session.getAttribute("proteinB");
                String inh = (String)session.getAttribute("inhibit");
                String inname = (String)session.getAttribute("inname");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi?autoReconnect=true&useSSL=false", "root", "abtdbt2213");
                    System.out.print("Connected");
                    System.out.println("EXECUTE the query");
                    String query1 = "select* from chain12 where ch_id1=?";
                    System.out.println("Executing the query");
                    
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query1);
                    //ResultSet rs = st.executeQuery(query);
                    System.out.println("Executed");
                    //int o = 1;
                    st.setString(1, c1);
                    //st.setInt(2,o);
                    ResultSet rs = st.executeQuery();
                   while(rs.next()){
                    String chain =rs.getString("chains");
                     String t1 =rs.getString("carbon_nb");
                     String  t2=rs.getString("oxygen_nb");
                     String  t3=rs.getString("nitrogen_nb");
                     String  t4=rs.getString("sulphur_nb");
                     String  t5=rs.getString("hydrogen_nb");
                     String  t6=rs.getString("phosphate_nb");
                     String  t7= rs.getString("Roseatta_min");
                     String  t8= rs.getString("Roseatta_max");
                     String n = rs.getString("pname");
                     String id = rs.getString("PID");
                     
                     
            
            %>

            
            <figure>
                    <div id="img1"><img src="Pics/P/<%=A%>.jpg" style="width: 230px; height:230px; position: fixed;
                                        display: block;
                                        top: 440px;
                                        margin-left:20px;
                                        border: solid #009999;;;
                                        border-width: 1px;">

                    </div>
                    <figcaption style=" font-size: 12px; position:  fixed; margin-left: 22px;margin-top: 554px; font-family:Calibri, Candara, Segoe, Segoe UI, Optima, Arial, sans-serif;
                                color: #0099cc;"><%=pA%> </figcaption>
                </figure>   
<figure>
    <%
       
        if(id.equalsIgnoreCase("P10001")||id.equalsIgnoreCase("P10002")||id.equalsIgnoreCase("P10003")||id.equalsIgnoreCase("P10004")||id.equalsIgnoreCase("P10005")){
            
        }else{
            inh="inh9";
        }
        
        %>
                    <div id="img1"><img src="Pics/<%=inh%>.png" style="width: 220px; height:230px; position: fixed;
                                        display: block;
                                        top: 440px;
                                        margin-left:300px;
                                        border: 1px solid #009999;
                                        
                                        ">
                    </div>
                    <figcaption style=" font-size: 12px; position:  fixed; margin-left: 302px;margin-top: 554px; font-family:Calibri, Candara, Segoe, Segoe UI, Optima, Arial, sans-serif;
                                color: #0099cc;"><%=inname%></figcaption>
                </figure>  
                <figure>
                    <div id="img1"><img src="Pics/P/<%=B%>.jpg" style="width: 230px; height:230px; position: fixed;
                                        display: block;
                                        top: 440px;
                                        margin-left:590px;
                                        border: 1px solid #009999;;
                                       ">
                    </div>
                    <figcaption style=" font-size: 12px; position:  fixed; margin-left: 592px;margin-top: 554px; font-family:Calibri, Candara, Segoe, Segoe UI, Optima, Arial, sans-serif;
                                color: #0099cc;"><%=pB%></figcaption>
                </figure>  
               
        </div>
                  
         <div id="Atomic" class="tabcontent" style="background-color: whitesmoke;">
                
                
                 
                <table cellspacing="10" style=" position:  fixed;
                   left: 337px;
                   top: 130px;
                   font-family: arial, sans-serif;
                   border-collapse: collapse;
                   text-align: left;
                   width: 32%;
                   height: 65%;
                   font-size: 18px;
                   border: 2.5px solid #009999;
                   color: #003399;
                   text-align: left;
                   border-top: 2.5px solid #009999 ;
                   border-right: none;
                  
                   ">
                
                    <tr>
                   
                        <th><b>Properties</b></th>
                    <th><b>Chain: <%=chain%></b></th>
                </tr>
                 <tr>
                     <td>Carbon_nb</td>
                    <td> <%=t1%></td>
                </tr>
                 <tr>
                      
                     <td>Oxygen_nb</td>
                    <td> <%=t2%></td>
                </tr>
                 <tr>
                      <td>Nitrogen_nb</td>
                    <td> <%=t3%></td>
                </tr>
                 <tr>
                      <td>Sulphur_nb</td>
                    <td> <%=t4%></td>
                </tr>
                 
            <tr>
                     <td>Hydrogen_nb</td>
                    <td> <%=t5%></td>
                </tr>
                
                <tr>
                     <td>Phosphate_nb</td>
                    <td> <%=t6%></td>
                </tr>
                 <tr>
                     <td>Roseatta_min</td>
                    <td> <%=t7%></td>
                </tr>
                 <tr>
                     <td>Roseatta_max</td>
                    <td> <%=t8%></td>
                </tr>
                 </table>
            
                 <%
                 }   rs.close();
                    st.close();
                    
                } catch (Exception e) {
                    System.out.println(e);
                }

            %>
            
            <%  
                
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi?autoReconnect=true&useSSL=false", "root", "abtdbt2213");
                    System.out.print("Connected");
                    System.out.println("EXECUTE the query");
                    String query1 = "select* from chain2 where ch_id2=?";
                    System.out.println("Executing the query");
                    
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query1);
                    //ResultSet rs = st.executeQuery(query);
                    System.out.println("Executed");
                    //int o = 1;
                    st.setString(1, c2);
                    //st.setInt(2,o);
                    ResultSet rs = st.executeQuery();
                   while(rs.next()){
                    String chain =rs.getString("chains");
                     String t1 =rs.getString("carbon_nb");
                     String  t2=rs.getString("oxygen_nb");
                     String  t3=rs.getString("nitrogen_nb");
                     String  t4=rs.getString("sulphur_nb");
                     String  t5=rs.getString("hydrogen_nb");
                     String  t6=rs.getString("phosphate_nb");
                     String  t7= rs.getString("Roseatta_min");
                     String  t8= rs.getString("Roseatta_max");
                     String n = rs.getString("pname");
                     
            
            %>
            <table cellspacing="10" style=" position:  fixed;
                   left: 730px;
                   top: 130px;
                   font-family: arial, sans-serif;
                   border-collapse: collapse;
                   text-align: left;
                   width: 16.5%;
                   height: 65%;
                   font-size: 18px;
                   border: 2.5px solid #009999;
                   color: #003399;
                   text-align: left;
                   border-top: 2.5px solid #009999 ;
                   border-left: none;
                  
                   ">
                
                    <tr>
                   
                        
                    <th><b>Chain: <%=chain%></b></th>
                </tr>
                 <tr>
                    
                    <td> <%=t1%></td>
                </tr>
                 <tr>
                      
                    
                    <td> <%=t2%></td>
                </tr>
                 <tr>
                      
                    <td> <%=t3%></td>
                </tr>
                 <tr>
                     
                    <td> <%=t4%></td>
                </tr>
                 
            <tr>
                     
                    <td> <%=t5%></td>
                </tr>
                
                <tr>
                     
                    <td> <%=t6%></td>
                </tr>
                 <tr>
                     
                    <td> <%=t7%></td>
                </tr>
                 <tr>
                     
                    <td> <%=t8%></td>
                </tr>
                 </table>
            
        </div>
<%
               }     rs.close();
                    st.close();
                    
                } catch (Exception e) {
                    System.out.println(e);
                }

            %>
            
         <% String in = (String)session.getAttribute("inhibit");
              
                    try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi?autoReconnect=true&useSSL=false", "root", "abtdbt2213");
                    System.out.print("Connected");
                    System.out.println("EXECUTE the query");
                    String query1 = "select* from inhlip2 where inhibitor_id =?;";
                    System.out.println("Executing the query");
                    
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query1);
                    //ResultSet rs = st.executeQuery(query);
                    System.out.println("Executed");
                    
                    st.setString(1, in);
                    
                    ResultSet rs = st.executeQuery();
                    while(rs.next()){
                        String inhid = rs.getString("inhibitor_id");
                        String inhibitor = rs.getString("inhibitor");
                        String PID = rs.getString("P2I2 ID");
                         String interacting = rs.getString("Interacting complex");
                          String a = rs.getString("Smiles");
                           float a1 = rs.getFloat(6);
                           float a2 = rs.getFloat(7);
                           float a3 = rs.getFloat(8);
                           float a4 = rs.getFloat(9);
                           float a5 = rs.getFloat(10);
                           float a6 = rs.getFloat(11);
                           float a7 = rs.getFloat(12);
                           float a8 = rs.getFloat(13);
                           float a9 = rs.getFloat(14);
                           float a10 = rs.getFloat(15);
                           float a11 = rs.getFloat(16);
                           




            %>
 <div id="Inhibitor" class="tabcontent" style="background-color: whitesmoke;">
     
         <table cellspacing="10" style=" position:  fixed;
                   left: 320px;
                   top: 120px;
                   font-family: arial, sans-serif;
                   border-collapse: collapse;
                   text-align: left;
                   width: 28%;
                   height: 76%;
                   font-size: 18px;
                   border: 2.5px solid #009999;
                   color: #003399;
                   text-align: left;
                   border-top: 2.5px solid #009999 ;
                  
                  
                   ">
             <tr>
                 <th colspa="2">Lipinski properties</th>
                 <th>Value</th>
                 
             </tr>
             <tr>
                 <td>LogP</td>
                 <td><%=a1%></td>
             </tr>
              <tr>
                 <td>HBD</td>
                 <td><%=a2%></td>
                 
             </tr>
             
              <tr>
                 <td>HBA</td>
                 <td><%=a3%></td>
             </tr>
              <tr>
                 <td>RO3</td>
                 <td><%=a4%></td>
             </tr>
              <tr>
                 <td>ROTB</td>
                 <td><%=a5%></td>
             </tr>
              <tr>
                 <td>TPSA</td>
                 <td><%=a6%></td>
             </tr>
              <tr>
                 <td>HALOGEN</td>
                 <td><%=a7%></td>
             </tr>
              <tr>
                 <td>RING-SIZE</td>
                 <td><%=a8%></td>
             </tr>
              <tr>
                 <td>PDL</td>
                 <td><%=a9%></td>
             </tr>
              <tr>
                 <td>RING-COUNT</td>
                 <td><%=a10%></td>
             </tr>
              <tr>
                 <td>PLL</td>
                 <td><%=a11%></td>
             </tr>
         </table>
 
              <%
              }      rs.close();
                    st.close();
                    
                } catch (Exception e) {
                    System.out.println(e);
                }

            try {
                
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi?autoReconnect=true&useSSL=false", "root", "abtdbt2213");
                    System.out.print("Connected");
                    System.out.println("EXECUTE the query");
                    String query1 = "select* from inactivityi2 where inhibitor_id =?;";
                    System.out.println("Executing the query");
                    
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query1);
                    //ResultSet rs = st.executeQuery(query);
                    System.out.println("Executed");
                    
                    st.setString(1, in);
                    
                    ResultSet rs = st.executeQuery();
                    while(rs.next()){
                            float b1 = rs.getFloat(5);
                            float b2 = rs.getFloat(6);
                            float b3 = rs.getFloat(7);
                            String b4 = rs.getString(8);
             
            %>
           <table cellspacing="10" style=" position:  fixed;
                   left: 750px;
                   top: 120px;
                   font-family: arial, sans-serif;
                   border-collapse: collapse;
                   text-align: left;
                   width: 25%;
                   height: 15%;
                   font-size: 18px;
                   border: 2.5px solid #009999;
                   color: #003399;
                   text-align: left;
                   border-top: 2.5px solid #009999 ;
                  
                  
                   ">
               <tr>
                   <th>Activity properties</th>
                   <th>Value</th>
               </tr>
               <tr>
                   <td>Activity ID</td>
                   <td><%=b1%></td>
               </tr>
               <tr>
                   <td>Assay ID</td>
                   <td><%=b2%></td>
               </tr>
               <tr>
                   <td>Activity</td>
                   <td><%=b3%></td>
               </tr>
            <tr>
                   <td>Activity Context</td>
                   <td><%=b4%></td>
               </tr>
                
            </table>
            
            
            
            
            <%
                 }      rs.close();
                    st.close();
                    
                } catch (Exception e) {
                    System.out.println(e);
                }
                
                 try {

                    String in1 = (String)session.getAttribute("inhibit");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi?autoReconnect=true&useSSL=false", "root", "abtdbt2213");
                    System.out.print("Connected");
                    System.out.println("EXECUTE the query");
                    String query1 = "select* from inhib2 where inhibitor_id =?;";
                    System.out.println("Executing the query");
                    
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(query1);
                    //ResultSet rs = st.executeQuery(query);
                    System.out.println("Executed");
                    
                    st.setString(1, in1);
                    
                    ResultSet rs = st.executeQuery();
                    while(rs.next()){
                        String d1 = rs.getString("generic");
                        String d2 = rs.getString("IUPAC");
                       
                        String d4 = rs.getString("formula");
                        String d5 = rs.getString("canonical_name");
                        String d6 = rs.getString("InchI_key");



            %>

            <table cellspacing="10" style=" position:  fixed;
                   left: 750px;
                   top: 345px;
                   font-family: arial, sans-serif;
                   border-collapse: collapse;
                   text-align: left;
                   width: 25%;
                   height: 6%;
                   font-size: 18px;
                   border: 2.5px solid #009999;
                   color: #003399;
                   text-align: left;
                   border-top: 2.5px solid #009999 ;
                 
                  
                   ">
                <tr>
                    <th>Naming convention</th>
                    <th>Name</th>
                </tr>
                <tr>
                    <td>Generic name</td>
                    <td><%=d1%></td>
                </tr>
                <tr>
                    <td>IUPAC name</td>
                    <td style=" font-size: 10px;"><%=d2%></td>
                </tr>
                
                <tr>
                    <td>Chemical Formula</td>
                    <td><%=d4%></td>
                </tr>
                <tr>
                    <td>Canonical name</td>
                    <td><%=d5%></td>
                </tr>
                <tr>
                    <td>Inchl key</td>
                    <td style=" font-size: 11px;" ><%=d6%></td>
                </tr>
          
                
            </table>

             <%
                 }      rs.close();
                    st.close();
                    
                } catch (Exception e) {
                    System.out.println(e);
                }
                
              %>  
                
</div>
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
        
        
         <script>
                function openCity(evt, cityName) {
                    var i, tabcontent, tablinks;
                    tabcontent = document.getElementsByClassName("tabcontent");
                    for (i = 0; i < tabcontent.length; i++) {
                        tabcontent[i].style.display = "none";
                    }
                    tablinks = document.getElementsByClassName("tablinks");
                    for (i = 0; i < tablinks.length; i++) {
                        tablinks[i].className = tablinks[i].className.replace(" active", "");
                    }
                    document.getElementById(cityName).style.display = "block";
                    evt.currentTarget.className += " active";
                }

            // Get the element with id="defaultOpen" and click on it
                document.getElementById("defaultOpen").click();
            </script>
    </body>
</html>
