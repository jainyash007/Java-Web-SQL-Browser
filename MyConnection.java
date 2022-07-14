package connection;
import java.sql.*;
public class MyConnection 
{
    static Connection con=null;
    static
    {
        try
        {    
          Class.forName("com.mysql.jdbc.Driver");
        // System.out.println("Driver load....");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }    
    }
   public static Connection getConnection() throws SQLException
   {
     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel1", "root","root");
        return(con);     
   }
}
