

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 * Servlet implementation class AddQuiz
 */
public class AddQuiz extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddQuiz() {
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
		String questions=request.getParameter("questions");
		String field=request.getParameter("field");
		int SA=Integer.parseInt(request.getParameter("StronglyAgree"));
		int A=Integer.parseInt(request.getParameter("Agree"));
		int N=Integer.parseInt(request.getParameter("Neutral"));
		int D=Integer.parseInt(request.getParameter("Disagree"));
		int SD=Integer.parseInt(request.getParameter("StronglyDisagree"));
		int id=0;
		try
		{
			String S="insert into quiz values(?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt=con.prepareStatement(S);
			pstmt.setInt(1, id);
			pstmt.setString(2, questions);
			pstmt.setString(3, field);
			pstmt.setInt(4, SA);
			pstmt.setInt(5, A);
			pstmt.setInt(6, N);
			pstmt.setInt(7, D);
			pstmt.setInt(8, SD);
			
			int i=pstmt.executeUpdate();
			{
				response.sendRedirect("AddQuiz.jsp");
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
