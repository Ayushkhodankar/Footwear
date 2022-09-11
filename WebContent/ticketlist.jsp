<%@page import="model.Issue"%>
<%@page import="model.IssueDao"%>
<%@page import="model.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Footwear </title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rokkitt:100,300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Ion Icon Fonts-->
	<link rel="stylesheet" href="css/ionicons.min.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">
	 <!-- Tailwind is included -->
  <link rel="stylesheet" href="css/main.css?v=1628755089081">

	

	</head>
	<body>
		<%
		
        if(session.getAttribute("uname")==null){   
            out.print("Please login first");  
    		response.sendRedirect("login.jsp");
        }   %>


	<div class="col-12">
		<nav class="colorlib-nav" role="navigation">
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-sm-7 col-md-9">
							<div id="colorlib-logo"><a href="index.jsp">Footwear</a></div>
						</div>
						<div class="col-sm-5 col-md-3">
			            <form action="#" class="search-wrap">
			               <div class="form-group">
			                   <span>Welcome,  <% out.print(session.getAttribute("uname"));%>.</span>
			               </div>
			            </form>
			         </div>
		         </div>
					<div class="row">
						<div class="col-sm-12">
							<ul>
								<li class="active"><a href="user.jsp">Home</a></li>
								<li class="has-dropdown">
									<a>Tickets</a>
									<ul class="dropdown">
										<li><a href="raiseticket.jsp">Raise A Ticket</a></li>
										<li><a href="ticketlist.jsp">Ticket List</a></li>
										
									</ul>
								</li>
								
								<li><a href="about.html">About</a></li>
								<li><a href="contact.html">Contact</a></li>
								<li><a href="profile.jsp?uid2=<%out.print(session.getAttribute("uname")); %>">Profile</a></li>
								 <li class="cart"><a href="logout"> Logout</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			</nav>
			<div class="card has-table">
        <header class="card-header">
          <p class="card-header-title">
            <span class="icon"><i class="mdi mdi-account-multiple"></i></span>
            Ticket List
          </p>
          <a href="#" class="card-header-icon">
            <span class="icon"><i class="mdi mdi-reload"></i></span>
          </a>
        </header>
        </div>
        <div class="card-content">
          <table>
            <thead>
              <tr>
                <th>Id</th>
                <th>Category Name</th>
                <th>Issue Title</th>
                <th>ISsue Description</th>
                <th>Comment</th>
                <th>Status</th>
                
              </tr>
            </thead>
            <tbody>
            <%
            String username= (String)session.getAttribute("uname");
          //String username=out.print(session.getAttribute("uname"));
            List<Issue> ls2=new IssueDao().retrieveData1(username);
            for(Issue issue:ls2)
            {
            %>
              <tr>
              
                <td><%=issue.getRid() %></td>
                <td><%=issue.getCategoryname() %></td>
                <td><%=issue.getIssuetitle() %></td>
                <td><%=issue.getIssuedesc()%></td>
                <td><%=issue.getComment() %></td>
                <td><%=issue.getStatus() %></td>
                
                
               
                      
                   
                   <td class="actions-cell">
                 
                   
                      
                   
                   
                </td>
              </tr>
              <%} %>
            </tbody>
            
          </table><br><br><br>
        <a href="user.jsp" class="btn btn-light">Back</a>

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
	</div>
	</div>
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
   <!-- popper -->
   <script src="js/popper.min.js"></script>
   <!-- bootstrap 4.1 -->
   <script src="js/bootstrap.min.js"></script>
   <!-- jQuery easing -->
   <script src="js/jquery.easing.1.3.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>