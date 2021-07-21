
import java.io.IOException;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signupjava")
public class signupjava extends HttpServlet
{
    public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
    {
        String id=req.getParameter("id");
        String username=req.getParameter("uname");
        String password=req.getParameter("password");
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(signupjava.class.getName()).log(Level.SEVERE, null, ex);
        }
        Connection con = null;
        try {
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/student","jsp","jsp");
        } catch (SQLException ex) {
            Logger.getLogger(signupjava.class.getName()).log(Level.SEVERE, null, ex);
        }
        Statement st = null;
        try {
            st = con.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(signupjava.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            int i=st.executeUpdate("insert into staff values('"+id+"','"+username+"','"+password+"')");
        } catch (SQLException ex) {
            Logger.getLogger(signupjava.class.getName()).log(Level.SEVERE, null, ex);
        }
        res.sendRedirect("login.jsp");
        
    }
}
