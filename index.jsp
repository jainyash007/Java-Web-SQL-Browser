<%@page session="true" %>

<html>
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
    <center>
        
        <% 
            for(int i=0; i<=1; i++)
                out.println("<br>");
        %>
        
        <font color="blue" size="7">  L  </font>
        <font color="blue" size="7">  0  </font>
        <font color="blue" size="7">  G  </font>
        <font color="blue" size="7">  I  </font>
        <font color="blue" size="7">  N  </font>
        <font color="orange" size="7">  T  </font>
        <font color="orange" size="7">  O  </font>
        <font color="purple" size="7">  P  </font>
        <font color="purple" size="7">  R  </font>
        <font color="purple" size="7">  O  </font>
        <font color="purple" size="7">  C  </font>
        <font color="purple" size="7">  E  </font>
        <font color="purple" size="7">  E  </font>
        <font color="purple" size="7">  D  </font>
        <font color="voilet" size="7">  F  </font>
        <font color="voilet" size="7">  U  </font>
        <font color="voilet" size="7">  R  </font>
        <font color="voilet" size="7">  T  </font>
        <font color="voilet" size="7">  H  </font>
        <font color="voilet" size="7">  U  </font>
        <font color="voilet" size="7">  R  </font>
        
        <% 
            for(int i=0; i<=3; i++)
                out.println("<br>");
        %>

        <form>
            <table border="1">
                <tr>
                    <th>User Id</th>
                    <td><input type="text" name="userid" autocomplete="off"></td>
                </tr>    
                <tr>
                    <th>Password</th>
                    <td><input type="password"  name="pass" autocomplete="off"></td>
                </tr>    
                <tr>
                    <th>Database Name</th>
                    <td><input type="text" name="databasename" autocomplete="off"></td>
                </tr>    
                <tr>
                    <td></td>
                    <td><input type=submit value="Submit">
                        <input type=reset value="Reset">
                    </td>
                </tr>
            </table>    
        </form>
        <% 
            String user, pass, dname;
            
            user = request.getParameter("userid");
            pass = request.getParameter("pass");
            dname = request.getParameter("databasename");
            
            if(user != null || pass != null || dname != null) {
                if(user.equals("admin") && pass.equals("admin")) {
                    session.setAttribute("dname", dname);
                    response.sendRedirect("SQL.jsp");
                }
                else 
                    out.println("<font color=red size=5>Invalid UserId or Password</font>");
            }
        %>
    </center>
</body>
</html>
