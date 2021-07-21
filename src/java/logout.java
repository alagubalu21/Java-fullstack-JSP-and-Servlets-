
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/logout")
public class logout extends HttpServlet
{
    public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
    {
        
        HttpSession session=req.getSession();
        session.removeAttribute("username");
        session.removeAttribute("id");
        res.sendRedirect("login.jsp");
        
    }
}
