<%@page import="java.sql.*"%>
<%--<%@page import="connection.MyConnection"%>--%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SQL WEB VERSION</title>
    </head>
    <body>
        
        <% 
            for(int i=0; i<=1; i++)
                out.println("<br>");
        %>
    <center>
        <font color="blue" size="8" > S </font>
        <font color="blue" size="8"> Q </font>
        <font color="blue" size="8"> L </font>
        <font color="orange" size="8"> W </font>
        <font color="orange" size="8"> E </font>
        <font color="orange" size="8"> B </font>
        <font color="red" size="8"> B </font>
        <font color="red" size="8"> R </font>
        <font color="red" size="8"> O </font>
        <font color="red" size="8"> W </font>
        <font color="red" size="8"> S </font>
        <font color="red" size="8"> E </font>
        <font color="red" size="8"> R </font>

        <form method="post" action="SQL.jsp">
            <textarea rows="10" cols="100" name="txtsql"></textarea>  
            <br>
            <br>
            <input type="submit" value="Execute">
        </form>
        <%
            String sql = null, dname;
            sql = request.getParameter("txtsql");
            
            if(sql != null) {
                
                dname = session.getAttribute("dname").toString();
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = null;
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + dname,"root", "root");
                
                PreparedStatement ps = null;
                ResultSet rs = null;
                ResultSetMetaData rsmd = null;
                ps = con.prepareStatement(sql);
                
                for(int i=0; i<=0; i++)
                out.println("<br>");
                
                // excutes by excuteQuery
                if(sql.toLowerCase().startsWith("select")) {
                    rs = ps.executeQuery();
                    rsmd = rs.getMetaData();
                    //out.println(rsmd.getColumnCount());
                    out.println("<table border=1>");
                    out.println("<tr>");
                    
                    for(int i=1; i<=rsmd.getColumnCount(); i++) {
                        out.println("<th>");
                        out.println(rsmd.getColumnName(i));
                        out.println("</th>");
                    }
                    while(rs.next()) {
                        out.println("<tr>");
                        for(int i=1; i<=rsmd.getColumnCount(); i++)
                            out.println("<td>" + rs.getString(i) + "</td>");
                        out.println("</tr>");
                    }
                     
                    out.println("</tr>");
                    out.println("</table>");
                }
                // excutes by excuteUpdate
                else {
                    int n=0;
                    n = ps.executeUpdate();
                    
//                    if(n==1)
                        out.println("Query OK," + n + "row/row's affected");
                    
//                    else if(n >= 2)
//                        out.println("Query OK," + n + "rows affected");
                }
            }
        %>
    </center>
</body>
</html>
