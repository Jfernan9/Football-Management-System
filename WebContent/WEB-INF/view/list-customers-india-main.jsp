<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>Main Project</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
		  

  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme Simply Me</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  body {
    font: 20px Montserrat, sans-serif;
    line-height: 1.8;
    color: #f5f6f7;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 { 
    background-color: #002b5c; /* blue */
    color: #ffffff;
  }
  .bg-2 { 
    background-color: #474e5d; /* Dark Blue */
    color: #ffffff;
  }
  .bg-3 { 
    background-color: #ffffff; /* White */
    color: #555555;
  }
  .bg-4 { 
    background-color: #474e5d; /* Black Gray */
    color: #fff;
  }
  .container-fluid {
    padding-top: 70px;
    padding-bottom: 70px;
  }
  .navbar {
    padding-top: 15px;
    padding-bottom: 15px;
    border: 0;
    border-radius: 0;
    margin-bottom: 0;
    font-size: 12px;
    letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
    color: #1abc9c !important;
  }
  .add-button{
  font-weight:bold;
  color:#474e5d;
  }
  
  </style>
	  

</head>

<body>

	
	
	

<!-- Navbar -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">OC Football Academy</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#home">Home</a></li>
        <li><a href="http://localhost:8097/spring-crm-rest/">Rest Web-Service</a></li>
        <li><a href="http://localhost:8097/06-jdbc-test/StudentControllerServlet">JDBC</a></li>
         <li><a href=http://127.0.0.1:50591/src/Football.html>Web</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- First Container -->
<div class="container-fluid bg-1 text-center">
  <h3 class="margin">The Future</h3>
  
  <h3>Greatness</h3>
</div>

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
  <h3 class="margin">Who we are</h3>
  <p>Our Football  coaches are responsible for developing the skills, knowledge, and abilities of our players both on and off the field. We strive to create a positive and supportive environment where our players can learn, grow, and ultimately achieve success. </p>
</div>

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">    
  <h3 class="margin">OC Academy Football</h3><br>
  <div class="row"><div id="wrapper">
		
	
	
	<div id="wrapper">
		<div id="header">
			<h2>OCFA - Players Contact Information</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Customer -->
		
			
		
			<!--  add our html table here -->
		
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">
				
					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>					
					
					<!-- set up a link to delete a member -->
						<c:url var="deleteLink" value="/customer/deleteCustomer">
						<c:param name="command" value="DELETE" />
							<c:param name="customerId" value="${tempCustomer.id}" />
								</c:url>	
					
					<tr>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
						
						<td>
							<!-- display the update link -->
							<a href="${updateLink}">Update</a>
								|
							<a href="${deleteLink}"
onclick="if (!(confirm('Are you sure you want to delete this player'))) return false">
Delete</a>
						</td>
						
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
  
</div>

<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
 <p class="copyright">© 2023 O.C.Soccer Academy</p>
 <!-- put new button: Add Customer -->
 <input type="button" value="Add Player"
				   onclick="window.location.href='showFormForAdd'; return false;"
				   class="add-button"
			/>
</footer>


	

</body>

</html>









