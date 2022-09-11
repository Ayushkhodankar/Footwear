<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
        <title>FootStore</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <link rel="icon" href="../favicon.ico" type="image/x-icon" />

        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400,600,700,800" rel="stylesheet">
        
        <link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="../node_modules/@fortawesome/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="../node_modules/ionicons/dist/css/ionicons.min.css">
        <link rel="stylesheet" href="../node_modules/icon-kit/dist/css/iconkit.min.css">
        <link rel="stylesheet" href="../node_modules/perfect-scrollbar/css/perfect-scrollbar.css">
        <link rel="stylesheet" href="../dist/css/theme.min.css">
        <script src="../src/js/vendor/modernizr-2.8.3.min.js"></script>

		<style>@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
			*{
			  margin: 0;
			  padding: 0;
			  box-sizing: border-box;
			  font-family: 'Poppins',sans-serif;
			}
			body{
			  height: 100vh;
			  display: flex;
			  justify-content: center;
			  align-items: center;
			  padding: 10px;
			  background: linear-gradient(135deg, #71b7e6, #9b59b6);
			}
			.container{
			  max-width: 700px;
			  width: 100%;
			  background-color: #fff;
			  padding: 25px 30px;
			  border-radius: 5px;
			  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
			}
			.container .title{
			  font-size: 25px;
			  font-weight: 500;
			  position: relative;
			}
			.container .title::before{
			  content: "";
			  position: absolute;
			  left: 0;
			  bottom: 0;
			  height: 3px;
			  width: 30px;
			  border-radius: 5px;
			  background: linear-gradient(135deg, #71b7e6, #9b59b6);
			}
			.content form .user-details{
			  display: flex;
			  flex-wrap: wrap;
			  justify-content: space-between;
			  margin: 20px 0 12px 0;
			}
			form .user-details .input-box{
			  margin-bottom: 15px;
			  width: calc(100% / 2 - 20px);
			}
			form .input-box span.details{
			  display: block;
			  font-weight: 500;
			  margin-bottom: 5px;
			}
			.user-details .input-box input{
			  height: 45px;
			  width: 100%;
			  outline: none;
			  font-size: 16px;
			  border-radius: 5px;
			  padding-left: 15px;
			  border: 1px solid #ccc;
			  border-bottom-width: 2px;
			  transition: all 0.3s ease;
			}
			.user-details .input-box input:focus,
			.user-details .input-box input:valid{
			  border-color: #9b59b6;
			}
			 form .gender-details .gender-title{
			  font-size: 20px;
			  font-weight: 500;
			 }
			 form .category{
			   display: flex;
			   width: 80%;
			   margin: 14px 0 ;
			   justify-content: space-between;
			 }
			 form .category label{
			   display: flex;
			   align-items: center;
			   cursor: pointer;
			 }
			 form .category label .dot{
			  height: 18px;
			  width: 18px;
			  border-radius: 50%;
			  margin-right: 10px;
			  background: #d9d9d9;
			  border: 5px solid transparent;
			  transition: all 0.3s ease;
			}
			 #dot-1:checked ~ .category label .one,
			 #dot-2:checked ~ .category label .two,
			 #dot-3:checked ~ .category label .three{
			   background: #9b59b6;
			   border-color: #d9d9d9;
			 }
			 form input[type="radio"]{
			   display: none;
			 }
			 form .button{
			   height: 45px;
			   margin: 35px 0
			 }
			 form .button input{
			   height: 100%;
			   width: 100%;
			   border-radius: 5px;
			   border: none;
			   color: #fff;
			   font-size: 18px;
			   font-weight: 500;
			   letter-spacing: 1px;
			   cursor: pointer;
			   transition: all 0.3s ease;
			   background: linear-gradient(135deg, #71b7e6, #9b59b6);
			 }
			 form .button input:hover{
			  /* transform: scale(0.99); */
			  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
			  }
			 @media(max-width: 584px){
			 .container{
			  max-width: 100%;
			}
			form .user-details .input-box{
				margin-bottom: 15px;
				width: 100%;
			  }
			  form .category{
				width: 100%;
			  }
			  .content form .user-details{
				max-height: 300px;
				overflow-y: scroll;
			  }
			  .user-details::-webkit-scrollbar{
				width: 5px;
			  }
			  }
			  @media(max-width: 459px){
			  .container .content .category{
				flex-direction: column;
			  }
			}
			</style>
    </head>

    <body>

		<div class="container">
			<div class="title">Registration</div>
			<div class="content">
			  <form action="registrationserv" method="post">
				<div class="user-details">
				  <div class="input-box">
					<span class="details">Full Name</span>
					<input type="text" placeholder="Enter your name" name="fullname" >
				  </div>
				  <div class="input-box">
					<span class="details">Username</span>
					<input type="text" placeholder="Enter your username" name="username" >
				  </div>
				  <div class="input-box">
					<span class="details">Email</span>
					<input type="text" placeholder="Enter your email" name="email" >
				  </div>
				  <div class="input-box">
					<span class="details">Phone Number</span>
					<input type="text" placeholder="Enter your number" name="mobile">
				  </div>
				  <div class="input-box">
					<span class="details">Password</span>
					<input type="text" placeholder="Enter your password" name="pass" >
				  </div>
				  <div class="input-box">
					<span class="details">Date Of Birth</span>
					<input type="text" placeholder="DD/MM/YYYY " name="dob" >
				  </div>
				</div>
				<div class="gender-details">
				  <input type="radio" name="gender" value="Male" id="dot-1">
				  <input type="radio" name="gender" value="Female" id="dot-2">
				  <input type="radio" name="gender" value="Transgender" id="dot-3">
				  <span class="gender-title">Gender</span>
				  <div class="category">
					<label for="dot-1">
					<span class="dot one"></span>
					<span class="gender">Male</span>
				  </label>
				  <label for="dot-2">
					<span class="dot two"></span>
					<span class="gender">Female</span>
				  </label>
				  <label for="dot-3">
					<span class="dot three"></span>
					<span class="gender">TransGender</span>
					</label>
				  </div>
				</div>
				<div class="button">
				  <input type="submit" value="Register">
				</div>
				
				  <a  href="index.jsp">Back</a>
				
				
			  </form>
			</div>
		  </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script>window.jQuery || document.write('<script src="../src/js/vendor/jquery-3.3.1.min.js"><\/script>')</script>
        <script src="../node_modules/popper.js/dist/umd/popper.min.js"></script>
        <script src="../node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../node_modules/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>
        <script src="../node_modules/screenfull/dist/screenfull.js"></script>
        <script src="../dist/js/theme.js"></script>
        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
            function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='https://www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-XXXXX-X','auto');ga('send','pageview');
        </script>
    </body>
</html>