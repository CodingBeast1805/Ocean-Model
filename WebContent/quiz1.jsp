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
            ResultSet resultset = statement.executeQuery("select * from quiz"); 
        %>
<div class="table100 ver3 m-b-110">
<div class="table100-head">  
<table>
	<thead>  
        <tr class="row100 head">
		<th class="cell100 column1">ID</th>
		<th class="cell100 column2">Questions</th>
		<!-- <th class="cell100 column3">EMAIL</th>
		<th class="cell100 column4">MOBILE</th>
		
		<th class="cell100 column6">DESIGNATION</th> -->
		
        
 		
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
               <%--  <td class="cell100 column3"> <%= resultset.getString(3) %></td>
                <td class="cell100 column4"> <%= resultset.getString(4) %></td>
                <td class="cell100 column6"> <%= resultset.getString(6) %></td> --%>
               <!-- <td><div class="clearBoth"></div>
					<input type="radio" name="editList" value="always" RepeatDirection="Horizontal">Always
					<input type="radio" name="editList" value="never" RepeatDirection="Horizontal">Never
						<input type="radio" name="editList" value="costChange" RepeatDirection="Horizontal">Cost Change
						<div class="clearBoth"></div></td> -->
						<td><form action=submit.jsp>
						
	
						
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
    <button type="submit">Submit</button>
  </form></td>
  
  <!-- <td  ><a class="btn btn-outline-primary btn-sm mb-0" href="submit.jsp?" >submit</a></td>
   -->
  <!-- <br><b> Choose your favroite season: </b><br>
<input type="radio" id="summer" value="Summer">option 1<br> 
<input type="radio" id="winter" value="Winter">option 2<br> 
<input type="radio" id="rainy" value="Rainy">option 3<br>
<input type="radio" id="autumn" value="Autumn">option 4<br><br>   
<input type="radio" id="autumn" value="Autumn">option 5<br><br>     

<button type="button" onclick=" checkButton()"> Submit </button> 
    
<h3 id="disp" style= "color:green"> </h3>
<h4 id="error" style= "color:red"> </h4>
</body>

<script>
function checkButton() {  
            if(document.getElementById('option 1').checked) { 
                document.getElementById("disp").innerHTML 
                    = document.getElementById("option 1").value 
                    + " radio button is checked"; 
            } 
            else if(document.getElementById('option 2').checked) { 
                document.getElementById("disp").innerHTML 
                = document.getElementById("option 2").value 
                + " radio button is checked";  
            } 
            else if(document.getElementById('option 3').checked) { 
                document.getElementById("disp").innerHTML 
                = document.getElementById("option 3").value 
                + " radio button is checked";
            } 
            else if(document.getElementById('option 4').checked) { 
                document.getElementById("disp").innerHTML 
                = document.getElementById("option 4").value 
                + " radio button is checked";
            }
            else if(document.getElementById('option 5').checked) { 
                document.getElementById("disp").innerHTML 
                = document.getElementById("option 5").value 
                + " radio button is checked";   
            }
            else { 
                document.getElementById("error").innerHTML 
                    = "You have not selected any season"; 
            } 
        } 
    </script> 
</html> -->
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
     
                  
                
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