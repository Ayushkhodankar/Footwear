<%@page import="model.User"%>
<%@page import="model.UserDao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <title>FootStore</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous" />

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" />
        <!-- jQuery library -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

        <!-- plugins:css -->
        <link rel="stylesheet" href="../../assets/vendors/mdi/css/materialdesignicons.min.css" />
        <link rel="stylesheet" href="../../assets/vendors/flag-icon-css/css/flag-icon.min.css" />
        <link rel="stylesheet" href="../../assets/vendors/css/vendor.bundle.base.css" />
        <!-- endinject -->
        <!-- Plugin css for this page -->
        <link rel="stylesheet" href="../../assets/vendors/select2/select2.min.css" />
        <link rel="stylesheet" href="../../assets/vendors/select2-bootstrap-theme/select2-bootstrap.min.css" />
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <!-- endinject -->
        <!-- Layout styles -->
        <link rel="stylesheet" href="../../assets/css/style.css" />

        <style>
            body {
                background: rgb(99, 39, 120)
            }

            .form-control:focus {
                box-shadow: none;
                border-color: #BA68C8
            }

            .profile-button {
                background: rgb(99, 39, 120);
                box-shadow: none;
                border: none
            }

            .profile-button:hover {
                background: #682773
            }

            .profile-button:focus {
                background: #682773;
                box-shadow: none
            }

            .profile-button:active {
                background: #682773;
                box-shadow: none
            }

            .back:hover {
                color: #682773;
                cursor: pointer
            }

            .labels {
                font-size: 11px
            }

            .add-experience:hover {
                background: #BA68C8;
                color: #fff;
                cursor: pointer;
                border: solid 1px #BA68C8
            }
        </style>

    </head>

    <body>
    <%
		
        if(session.getAttribute("uname")==null){   
            out.print("Please login first");  
    		response.sendRedirect("login.jsp");
        }   %>
        
        <% 
String i=request.getParameter("uid2");
User u1= new UserDao().userSearchPro(i);
int cid=u1.getId();
String name=u1.getFullname();
String uname=u1.getUsername();
String email=u1.getEmail();
String mob=u1.getMobile();
String pass=u1.getPass();
String dob=u1.getDob();
String gen=u1.getGender();
%>
        <div class="container rounded bg-white mt-5 mb-5">
            <div class="row">
            
             
               
                <div class="col-md-12 border-right">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h4 class="text-right">Profile Settings</h4>
                        </div>

                        <form action="updateuserservpro" method="post">
                            
                            <div class="row mt-3">
                                <div class="col-md-"><label class="labels">Full Name</label><input type="text"
                                        class="form-control" placeholder="Enter Full Name" value="<%=name%>" name="fullname">
                                </div><br>
                                <input type="hidden"  name="id" value="<%=cid%>">
                                <div class="col-md-12"><label class="labels">Username</label><input type="text"
                                        class="form-control" placeholder="Enter Your Username" value="<%=uname%>" name="username">
                                </div>
                            
                                <div class="col-md-12"><label class="labels">Phone Number</label><input type="text"
                                        class="form-control" placeholder="Enter your number" name="mobile" value="<%=mob%>">
                                </div>
                                <div class="col-md-12"><label class="labels">Email ID</label><input type="text"
                                        class="form-control" placeholder="enter email id" value="<%=email%>" name="email"></div>
                                <div class="col-md-12"><label class="labels">Password</label><input type="text"
                                        class="form-control" placeholder="Enter your password" name="pass" value="<%=pass%>">
                                </div>
                                <div class="col-md-12"><label class="labels">Date Of Birth</label><input type="text"
                                        class="form-control" placeholder="DD/MM/YYYY " name="dob" value="<%=dob%>"></div>

                                <div class="col-md-12"><label class="labels">Gender</label><input type="text"
                                        class="form-control" placeholder="Enter Your Gender " name="gender" value="<%=gen%>">
                                </div>

                                

                                <div class="mt-5 text-center"><input type="submit"
                                        class="btn btn-primary profile-button" value="Save Profile"></input></div>
                                <a href="user.jsp" >Back</a>
                            </div>
                        </form>
                    </div>

                </div>
           
            </div>
        </div>
        
    </body>

    </html>