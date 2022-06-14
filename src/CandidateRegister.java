

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CandidateRegister
 */
public class CandidateRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CandidateRegister() {
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
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String age=request.getParameter("age");
		String city=request.getParameter("city");
		String dist=request.getParameter("dist");
		String taluka=request.getParameter("taluka");
		String pincode=request.getParameter("pincode");
		String qualifications=request.getParameter("qualifications");
		String workexperience=request.getParameter("workexperience");
		String password=request.getParameter("password");
		int s=0;
		
		
		try
		{
			String S="insert into candidate values(?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt=con.prepareStatement(S);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, mobile);
			pstmt.setString(4, age);
			pstmt.setString(5, city);
			pstmt.setString(6, dist);
			pstmt.setString(7, taluka);
			pstmt.setString(8, pincode);
			pstmt.setString(9, qualifications);
			pstmt.setString(10, workexperience);
			pstmt.setString(11, password);
			pstmt.setInt(12, s);
			
			
			int i=pstmt.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("index.html");
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
