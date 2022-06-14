<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
int id=Integer.parseInt(request.getParameter("id"));

Connection con=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("Driver Loaded........");
	con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ocean","root","");
	System.out.println("Connection Established........");	
	
}catch(Exception e)
{
	
	e.printStackTrace();
	
}
Statement st=null;
ResultSet rs=null;

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/h1.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet">



</head>
<body>
<div class="container mt-5">
    <div class="d-flex justify-content-center row">
    <%
    	try
    	{
    		DbConnection dc=new DbConnection();
    		st=con.createStatement();
    		String S="Select quiz.*,count(id)from quiz,job where job.title=quiz.field and job.id="+id;
    		rs=st.executeQuery(S);
    		
    		
    	}catch(Exception e)
    	{
    		e.printStackTrace();
    	}
  
    %>
    
    
    
    
        <div class="col-md-10 col-lg-10">
            <div class="border">
                <div class="question bg-white p-3 border-bottom">
                    <div class="d-flex flex-row justify-content-between align-items-center mcq">
                        <h4>MCQ Quiz</h4><span>(5 of 20)</span>
                    </div>
                </div>
                <div class="question bg-white p-3 border-bottom">
                    <div class="d-flex flex-row align-items-center question-title">
                        <h3 class="text-danger">Q.</h3>
                        <h5 class="mt-1 ml-2">Which of the following country has largest population?</h5>
                    </div>
                    <div class="ans ml-2">
                        <label class="radio"> <input type="radio" name="brazil" value="brazil"> <span>Brazil</span>
                        </label>
                    </div>
                    <div class="ans ml-2">
                        <label class="radio"> <input type="radio" name="Germany" value="Germany"> <span>Germany</span>
                        </label>
                    </div>
                    <div class="ans ml-2">
                        <label class="radio"> <input type="radio" name="Indonesia" value="Indonesia"> <span>Indonesia</span>
                        </label>
                    </div>
                    <div class="ans ml-2">
                        <label class="radio"> <input type="radio" name="Russia" value="Russia"> <span>Russia</span>
                        </label>
                    </div>
                </div>
                <div class="d-flex flex-row justify-content-between align-items-center p-3 bg-white">
                <button class="btn btn-primary d-flex align-items-center btn-danger" type="button"><i class="fa fa-angle-left mt-1 mr-1"></i>&nbsp;previous</button>
                <button class="btn btn-primary border-success align-items-center btn-success" type="button">Next<i class="fa fa-angle-right ml-2"></i></button></div>
            </div>
        </div>
    </div>
</div>

</body>
</html>