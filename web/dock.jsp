<%-- 
    Document   : dock
    Created on : 07-Dec-2021, 22:13:03
    Author     : ADMIN
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String value = (String)request.getSession().getAttribute("att1");
        String value1 = (String)request.getSession().getAttribute("att");
        String value2 = (String)request.getSession().getAttribute("att2");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con =(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/ppi", "root", "abtdbt2213");
        Statement nameQuery = (Statement)con.createStatement();
        ResultSet proteinNames = nameQuery.executeQuery(String.format("select Inhibitor, SMILES, PDB_ID from main2 where PID='%s';", value1));
        proteinNames.next();
        
        String inhib_name = proteinNames.getString(1);
        %>
    <%=proteinNames.getString(1)%>
    <%=proteinNames.getString(2)%>
    <%=proteinNames.getString(3)%>
    <iframe src="static/docking/<%=inhib_name%>.txt" width="70%" height="300"></iframe>
    </body>
</html>
