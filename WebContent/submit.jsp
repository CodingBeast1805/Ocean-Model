<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    

<% Class.forName("com.mysql.jdbc.Driver"); %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ocean","root","");
			String S="shivambhaduka@gmail.com";
		
			String s="select * from candidate where email=?";
            PreparedStatement pstmt=connection.prepareStatement(s);
            pstmt.setString(1, S);
            ResultSet resultset=pstmt.executeQuery();
            
            
            
            
        %>
        
        
        
        
        
        
         <% while(resultset.next()){ 
         int a=resultset.getInt("status");
         int b=Integer.parseInt(request.getParameter("optradio"));
         int c=a+b;
         
         String w="update candidate set status=? where email=?";
         PreparedStatement pt=connection.prepareStatement(w);
         pt.setInt(1, c);
         pt.setString(2, S);
         
         int i=pt.executeUpdate();
         if(i>0)
         {
        	 response.sendRedirect("quiz1.jsp");
         }
         
         
         %>
					


  				<% } %>









</body>
</html>