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
            ResultSet resultset = 
                statement.executeQuery("select * from job"); 
        %>
<div class="table100 ver3 m-b-110">
<div class="table100-head">  
<table>
	<thead>  
        <tr class="row100 head">
		<th class="cell100 column1">ID</th>
		<th class="cell100 column2">TITLE</th>
		<th class="cell100 column3">DESCRIPTION</th>
		<th class="cell100 column4">SALARY</th>
		<th class="cell100 column5">QUALITIES</th>
		<th class="cell100 column6">EXPERIENCE</th>
		
        
 		
		</tr> 
		</thead>
</table>
</div>          
 
            <% while(resultset.next()){ %>
            
            <div class="table100-body js-pscroll">
						<table>
							<tbody>
								<tr class="row100 body">
            	<td class="cell100 column1"> <%= resultset.getInt(1) %></td>
                <td class="cell100 column2"> <%= resultset.getString(2) %></td>
                <td class="cell100 column3"> <%= resultset.getString(3) %></td>
                <td class="cell100 column4"> <%= resultset.getString(4) %></td>
                <td class="cell100 column5"> <%= resultset.getString(5) %></td>
                <td class="cell100 column6"> <%= resultset.getString(6) %></td>
                
     
                  
                
              </tr>
            </tbody>
            </table>
            </div>

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