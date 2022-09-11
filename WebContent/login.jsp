<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

        <style>/* Google Fonts - Poppins */
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');
            
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }
            .container{
                height: 100vh;
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                background-color: #4070f4;
                column-gap: 30px;
            }
            .form{
                position: absolute;
                max-width: 430px;
                width: 100%;
                padding: 30px;
                border-radius: 6px;
                background: #FFF;
            }
            .form.signup{
                opacity: 0;
                pointer-events: none;
            }
            .forms.show-signup .form.signup{
                opacity: 1;
                pointer-events: auto;
            }
            .forms.show-signup .form.login{
                opacity: 0;
                pointer-events: none;
            }
            header{
                font-size: 28px;
                font-weight: 600;
                color: #232836;
                text-align: center;
            }
            form{
                margin-top: 30px;
            }
            .form .field{
                position: relative;
                height: 50px;
                width: 100%;
                margin-top: 20px;
                border-radius: 6px;
            }
            .field input,
            .field button{
                height: 100%;
                width: 100%;
                border: none;
                font-size: 16px;
                font-weight: 400;
                border-radius: 6px;
            }
            .field input{
                outline: none;
                padding: 0 15px;
                border: 1px solid#CACACA;
            }
            .field input:focus{
                border-bottom-width: 2px;
            }
            .eye-icon{
                position: absolute;
                top: 50%;
                right: 10px;
                transform: translateY(-50%);
                font-size: 18px;
                color: #8b8b8b;
                cursor: pointer;
                padding: 5px;
            }
            .field button{
                color: #fff;
                background-color: #0171d3;
                transition: all 0.3s ease;
                cursor: pointer;
            }
            .field button:hover{
                background-color: #016dcb;
            }
            .form-link{
                text-align: center;
                margin-top: 10px;
            }
            .form-link span,
            .form-link a{
                font-size: 14px;
                font-weight: 400;
                color: #232836;
            }
            .form a{
                color: #0171d3;
                text-decoration: none;
            }
            .form-content a:hover{
                text-decoration: underline;
            }
            .line{
                position: relative;
                height: 1px;
                width: 100%;
                margin: 36px 0;
                background-color: #d4d4d4;
            }
            .line::before{
                content: 'Or';
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                background-color: #FFF;
                color: #8b8b8b;
                padding: 0 15px;
            }
            .media-options a{
                display: flex;
                align-items: center;
                justify-content: center;
            }
            a.facebook{
                color: #fff;
                background-color: #4267b2;
            }
            a.facebook .facebook-icon{
                height: 28px;
                width: 28px;
                color: #0171d3;
                font-size: 20px;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                background-color: #fff;
            }
            .facebook-icon,
            img.google-img{
                position: absolute;
                top: 50%;
                left: 15px;
                transform: translateY(-50%);
            }
            img.google-img{
                height: 20px;
                width: 20px;
                object-fit: cover;
            }
            a.google{
                border: 1px solid #CACACA;
            }
            a.google span{
                font-weight: 500;
                opacity: 0.6;
                color: #232836;
            }
            
            @media screen and (max-width: 400px) {
                .form{
                    padding: 20px 10px;
                }
                
            }
            </style>
    </head>

    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

      
         <section class="container forms">
            <div class="form login">
                <div class="form-content">
                    <header>Login</header>
                    <form action="loginserv" method="post">
                        <div class="field input-field">
                            <input type="text" placeholder="Enter Username" name="username" class="input">
                        </div>

                        <div class="field input-field">
                            <input type="password" placeholder="Enter Password" name="pass" class="password">
                            <i class='bx bx-hide eye-icon'></i>
                        </div>

                        <div class="form-link">
                            <a href="#" class="forgot-pass">Forgot password?</a>
                        </div>

                        <div class="field button-field">
                            <input type="submit" value="Login"></input>
                        </div>
                        <a  href="index.jsp">Back</a>
                    </form>

                    <div class="form-link">
                        <span>Don't have an account? <a href="register.jsp" >Sign Up</a></span>
                    </div>
                </div>

                <div class="line"></div>

                <div class="media-options">
                    <a href="#" class="field facebook">
                        <i class='bx bxl-facebook facebook-icon'></i>
                        <span>Login with Facebook</span>
                    </a>
                </div>

                <div class="media-options">
                    <a href="#" class="field google">
                        <img src="images/google.png" alt="" class="google-img">
                        <span>Login with Google</span>
                    </a>
                </div>

            </div>

           
        </section>

       
        <script>
             const forms = document.querySelector(".forms"),
      pwShowHide = document.querySelectorAll(".eye-icon"),
      links = document.querySelectorAll(".link");

pwShowHide.forEach(eyeIcon => {
    eyeIcon.addEventListener("click", () => {
        let pwFields = eyeIcon.parentElement.parentElement.querySelectorAll(".password");
        
        pwFields.forEach(password => {
            if(password.type === "password"){
                password.type = "text";
                eyeIcon.classList.replace("bx-hide", "bx-show");
                return;
            }
            password.type = "password";
            eyeIcon.classList.replace("bx-show", "bx-hide");
        })
        
    })
})      

links.forEach(link => {
    link.addEventListener("click", e => {
       e.preventDefault(); //preventing form submit
       forms.classList.toggle("show-signup");
    })
})

        </script>
    </body>
</html>