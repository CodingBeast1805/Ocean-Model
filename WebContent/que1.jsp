<%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    <HEAD>
               <title>Table V04</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images2/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor4/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts3/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor4/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor4/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor4/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css3/util.css">
	<link rel="stylesheet" type="text/css" href="css3/main.css">
    </HEAD>

    <BODY background="images3/back.jpg">
        <H1 style="color: white;">
        	VIEW HR 
        </H1>
        <% 
            Connection connection = DriverManager.getConnection(
            		"jdbc:mysql://localhost:3306/ocean","root","");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from quiz where id=5"); 
        %>
<div class="table100 ver3 m-b-110">
<div class="table100-head">  
<table>
	<thead>  
        <tr class="row100 head">
	
		<th class="cell100 column2">Questions</th>
		
		
        
 		
		</tr> 
		</thead>
</table>
</div>          
 
            <% while(resultset.next()){ %>
            
            <div class="table100-body js-pscroll">
						<table>
							<tbody>
								<tr class="row100 body">
            
                <td class="cell100 column2"> <%= resultset.getString(2) %></td>
               
						<td><form>
						
	
		<label>			
     <input type="radio" name="optradio"  value=<%=resultset.getInt(4)%>>Option 1
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio" value=<%=resultset.getInt(5)%>>Option 2
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio" value=<%=resultset.getInt(6)%>>Option 3
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio" value=<%=resultset.getInt(7) %>>Option 4
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio" value=<%=resultset.getInt(8) %>>Option 5
    </label>
    <a href="que2.jsp">Next</a>
  </form></td>

              </tr>
            </tbody>
            </table>
            </div>
     <!-- <button type="submit" ahref="que2.jsp">Next</button> -->
    

            <% } %>
  <!--===============================================================================================-->	
	<script src="vendor4/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor4/bootstrap/js/popper.js"></script>
	<script src="vendor4/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor4/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor4/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<script src="js3/main.js"></script>
    </BODY>
</HTML>