

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Addjob
 */
public class Addjob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addjob() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DbConnection dc=new DbConnection();
		Connection con=dc.connect();
		int id=0;
		
		String title=request.getParameter("title");
		String description=request.getParameter("description");
		String salary=request.getParameter("salary");
		String qualities=request.getParameter("qualities");
		String experience=request.getParameter("experience");
		
		
		
		
		try
		{
			String S="insert into job values(?,?,?,?,?,?)";
			PreparedStatement pstmt=con.prepareStatement(S);
			pstmt.setInt(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, description);
			pstmt.setString(4, salary);
			pstmt.setString(5, qualities);
			pstmt.setString(6, experience);
			
			
			
			int i=pstmt.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("hrdashboard.html");
			}
		
		}catch(Exception e)
		{
			e.printStackTrace();
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
