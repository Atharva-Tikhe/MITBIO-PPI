<%-- 
    Document   : normalSearch
    Created on : 20-Oct-2021, 11:36:25
    Author     : Atharva Tikhe
--%>


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
           <script src="https://cdn.jsdelivr.net/npm/fuse.js/dist/fuse.js"></script>
           <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <title></title>
    </head>
    <style>
    table {
            margin-top: 100px;
            margin-left: 60px;
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 90%;
}
body {
  margin: 0;
 font-family: Arial, Helvetica, sans-serif;
} #navbar {
  overflow: hidden;
  background-color: #009999;
} #foot{
    overflow: hidden;
  background-color: #009999;
  position: fixed;
  bottom: 0;
  font-size: 20px;
  color: white;
  width: 100%;
  text-align: center;
  padding: 3px 5px; display: block;
} #navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 12px 60px;
  text-decoration: none;
  font-size: 18px;
} #navbar a:hover {
    background-color: #66ff00;
  color: black;
} #navbar a.active {
  background-color: #4CAF50;
  color: white;
} .mains{
  padding: 0px;
} .sticky {
  position: fixed;
  top: 0;
  width: 100%;
} .sticky + .mains{
    padding-top: 0px;
}
td, th {
  border: 1.5px solid #dddddd;
  text-align: center;
  padding: 5px;
  
  
 
}

h2{
    position: absolute;
    margin-left: 59px;
    margin-top: 60px;
    font-size: 22px;
    color:  darkgreen;
}
h3{
     position: absolute;
    
    top: -2%;
    font-size: 25px;
    padding-left: 8px;
    color:  white;
    margin-left: 59px;
    background-color: green;
    width: 89%;
    height: 40px;
    padding-top: 3px;
        
}


            tr:hover {background-color:#66ff66;}
            .hidden-table{
                background-color: green;
                color: white;
            }
            .hidden-table:hover {
     background-color: green !important;
 }

        </style>
        <style type="text/css">
            
.pg-normal {
color: #000000;
font-size: 15px;
cursor: pointer;
background: green !important;
padding: 2px 4px 2px 4px;
}

.pg-selected {
color: #fff;
font-size: 15px;
background:black;
padding: 2px 4px 2px 4px;
}

table.yui {
font-family:arial;
border-collapse:collapse;
border: solid 3px #7f7f7f;
font-size:small;
}

table.yui td {
padding: 5px;
border-right: solid 1px green;
}

table.yui .even {
background-color: green;
}

table.yui .odd {
background-color: green;
}

table.yui th {
border: 1px solid green;
padding: 5px;
height: auto;
background: green;
}

table.yui th a {
text-decoration: none;
text-align: center;
padding-right: 20px;

font-weight:bold;
white-space:nowrap;
}

table.yui tfoot td {
border-top: 1px solid #7f7f7f;
background-color:green;
}

table.yui thead td {
vertical-align:middle;
background-color:green;
border:none;
}

table.yui thead .tableHeader {
font-size:larger;
font-weight:bold;
}

table.yui thead .filter {
text-align:right;
}

table.yui tfoot {
background-color:green;
text-align:center;
}

table.yui .tablesorterPager {
padding: 10px 0 10px 0;
}

table.yui .tablesorterPager span {
padding: 0 5px 0 5px;
}

table.yui .tablesorterPager input.prev {
width: auto;
margin-right: 10px;
}

table.yui .tablesorterPager input.next {
width: auto;
margin-left: 10px;
}

table.yui .pagedisplay {
font-size:10pt; 
width: 30px;
border: 0px;
background-color: green;
text-align:center;
vertical-align:top;
}
        </style>
    <body>
        <div id="navbar">
            <a  href="home.jsp">Home</a>
            <a href="advanced2.jsp">Advanced Search</a>
            <a href="protein.jsp">Protein</a>
            <a href="help.jsp">Help</a>
            <a href="contact.jsp">About us</a>
        </div>
    

        <script>
            window.onscroll = function() {myFunction();};

            var navbar = document.getElementById("navbar");
            var sticky = navbar.offsetTop;

            function myFunction() {
              if (window.pageYOffset >= sticky) {
                navbar.classList.add("sticky");
              } else {
                navbar.classList.remove("sticky");
              }
            }
        </script>
    
        <script type="text/javascript">

    function Pager(tableName, itemsPerPage) {

    this.tableName = tableName;

    this.itemsPerPage = itemsPerPage;

    this.currentPage = 1;

    this.pages = 0;

    this.inited = false;

    this.showRecords = function(from, to) {

    var rows = document.getElementById(tableName).rows;

    // i starts from 1 to skip table header row

    for (var i = 1; i < rows.length; i++) {

    if (i < from || i > to)

    rows[i].style.display = 'none';

    else

    rows[i].style.display = '';

    }

    }

    this.showPage = function(pageNumber) {

    if (! this.inited) {

    alert("not inited");

    return;

    }

    var oldPageAnchor = document.getElementById('pg'+this.currentPage);

    oldPageAnchor.className = 'pg-normal';

    this.currentPage = pageNumber;

    var newPageAnchor = document.getElementById('pg'+this.currentPage);

    newPageAnchor.className = 'pg-selected';

    var from = (pageNumber - 1) * itemsPerPage + 1;

    var to = from + itemsPerPage - 1;

    this.showRecords(from, to);

    }

    this.prev = function() {

    if (this.currentPage > 1)

    this.showPage(this.currentPage - 1);

    }

    this.next = function() {

    if (this.currentPage < this.pages) {

    this.showPage(this.currentPage + 1);

    }

    }

    this.init = function() {

    var rows = document.getElementById(tableName).rows;

    var records = (rows.length - 1);

    this.pages = Math.ceil(records / itemsPerPage);

    this.inited = true;

    }

    this.showPageNav = function(pagerName, positionId) {

    if (! this.inited) {

    alert("not inited");

    return;

    }

    var element = document.getElementById(positionId);

    var pagerHtml = '<span onclick="' + pagerName + '.prev();" class="pg-normal"> « Prev </span> ';

    for (var page = 1; page <= this.pages; page++)

    pagerHtml += '<span id="pg' + page + '" class="pg-normal" onclick="' + pagerName + '.showPage(' + page + ');">' + page + '</span> ';

    pagerHtml += '<span onclick="'+pagerName+'.next();" class="pg-normal"> Next »</span>';

    element.innerHTML = pagerHtml;

    }

    }

</script>
 
 
 
 		<div id="mains" class="mains" style="background-color: whitesmoke; width: 100%; height: 700px;">
        
        <div id="mais"  style=" background-color: white; width: 76%; height: 655px; margin-left: 160px; border: 1px solid #ccc; position: fixed; top: 6%;">
    
        <% String correctedProtein = (String)request.getParameter("corrected");%>
        
        
		<%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con =(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi", "root", "abtdbt2213");
            Statement nameQuery = (Statement)con.createStatement();
            ResultSet proteinNames = nameQuery.executeQuery("select pname from chain12;");
		%>
                
<h3>Search results for :  <%=correctedProtein%></h3>


<table id="table"  class="TFtable" border="1" width="100%" style="  cursor: pointer;padding-top:60px;  border-top: none; border-left: none; border-right: none; " style="cursor: pointer; border-top: none; border-left: none; border-right: none; ">
               
            <tr class="hidden-table" style=" cursor: default;">
                    <th>PID</th>  
                <th>Protein name</th>

                    <th>PDB-ID</th>

                    <th colspan="2" style="text-align: center; ">Inhibitor</th>

                    <th>Disease</th>
 
                          
                </tr>

<%
    try{
           int c = 0;
                
                String sql2 ="select * from main2 where PID=? or Disease=? or PDB_ID=? or pname=? or Inhibitor=? or proteinA=? or proteinB=?;  ";
                Class.forName("com.mysql.jdbc.Driver");
//                Connection con =(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi", "root", "abtdbt2213");
            System.out.println("EXECUTE the query");
                    //String query = "select* from main2 where '"+a1+"'=? '"+o+ "' '"+a2+"'=?'"+o2+"' '"+a3+"'=?";
                    System.out.println("Executing the query");
                    //PreparedStatement st = (PreparedStatement) con.prepareStatement(q);
                    PreparedStatement st = (PreparedStatement) con.prepareStatement(sql2);
                    st.setString(1, correctedProtein);
                    st.setString(2, correctedProtein);
                    st.setString(3, correctedProtein);
                    st.setString(4, correctedProtein);
                    st.setString(5, correctedProtein);
                    st.setString(6, correctedProtein);
                    st.setString(7, correctedProtein);
                    ResultSet rs = st.executeQuery();
                    
                    
                    
            while(rs.next()){
                 String s1 = rs.getString(1);
                         String s2 = rs.getString(2);
                          String s3 = rs.getString(3);
                           String s4 = rs.getString(4);
                            String s5 = rs.getString(5);
                            String inhi = rs.getString("inhibitor_id");
                    String id = s1;
                            c= c+1;
                            if(id.equalsIgnoreCase("P10001")||id.equalsIgnoreCase("P10002")||id.equalsIgnoreCase("P10003")||id.equalsIgnoreCase("P10004")||id.equalsIgnoreCase("P10005")){
            
        }else{
            inhi="inh9";
        }
                            %>
                            
                             <tr>
                            <td><%=s1%></td>
                            <td><%=s2%></td>
                            
                            <td><a href="https://www.rcsb.org/structure/<%=s3%>"><%=s3%></a></td>
                            <td  style=" text-align: center;"><%=s4 %> </td> 
                            <td style=" border-left: none;"><img src="Pics/<%=inhi%>.png"  style=" width: 50px; height: 50px; padding-left: 20px;"></td>
                             <td><%=s5%></td>
                             
                            </tr>
                
                   
                            
                            <%
            }%>
            <h2>Records found: <%=c%></h2>
            <%
            rs.close();
            st.close();;
    }catch(Exception e){
        out.println(e);
                }
    %>
</table>
<div id="pageNavPosition" style="padding-top: 20px" align="center"></div>
<script type="text/javascript">
var pager = new Pager('table', 7);
pager.init();
pager.showPageNav('pager', 'pageNavPosition');
pager.showPage(1);
</script>
           
</div>
        </div>
 <script language="javascript">
        var tbl = document.getElementById("table"),rIndex;
        if (tbl != null) {
            for (var i = 0; i < tbl.rows.length; i++) {
                
                    tbl.rows[i].onclick = function () { 
        rIndex= this.rowIndex;
        console.log(rIndex);
        document.getElementById("table")
        var v = this.cells[0].innerHTML;
               window.location.href="newjsp1.jsp?"+v;       
                       //String st =document.writeln(v);
                      //session.setAttribute("pid", st);
                        }
                         
            }
        }
        
       
         function getval(cel) {
            
        }
        
     </script>
</body>
</html>
