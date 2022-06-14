<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>
 <% 
            Connection connection = DriverManager.getConnection(
            		"jdbc:mysql://localhost:3306/ocean","root","");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from quiz"); 
        %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% while(resultset.next()){ %>
<td><form action=submit.jsp>
						
						<td class="cell100 column1"> <%= resultset.getInt(1) %></td>
                <td class="cell100 column2"> <%= resultset.getString(2) %></td>
	
						
    <label class="radio-inline">
      <input type="radio" name="optradio"  value=<%=resultset.getInt(4) %>>Option 1
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio" value=<%=resultset.getInt(5) %>>Option 2
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio" value=<%=resultset.getInt(6) %>>Option 3
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio" value=<%=resultset.getInt(7) %>>Option 4
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio" value=<%=resultset.getInt(8) %>>Option 5
    </label>
    
  </form></td>

  <% } %>
  <button type="submit">Submit</button>






</body>
</html>