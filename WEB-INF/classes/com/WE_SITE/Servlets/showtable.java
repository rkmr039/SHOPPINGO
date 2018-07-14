import java.sql.*;
import org.sqlite.*;

class showtable
{
	public static void main(String args[])
	{
      Connection conn = null;
      try {
         Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost/test?useSSL=false","root","root12345");
         Statement stat = conn.createStatement();
         String url = "select *from user";
         ResultSet rs = stat.executeQuery(url);
                while (rs.next())
                 {
                    System.out.println(" ");
                    System.out.println(" " + rs.getString("id")    + " ");
                    System.out.println(" " + rs.getString("name") + " ");
                    System.out.println(" " + rs.getString("email") + " ");
                    System.out.println(" " + rs.getString("pass")  + " ");
                    System.out.println(" ");
                }
              rs.close();
      conn.close();
      } catch ( Exception e ) {
         System.err.println( e.getClass().getName() + ": " + e.getMessage() );
         System.exit(0);
      }  
    }
}