<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
                        <html>
                            <head>
                                <meta charset='utf-8'>
                                <meta name='viewport' content='width=device-width, initial-scale=1'>
                                <title></title>
                                <link href='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css' rel='stylesheet'>
                                <link href='' rel='stylesheet'>
                                <style>@import url(https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap);

body {
    background: #f5f5f5;
}

@media only screen and (max-width: 767px) {
    .hide-on-mobile {
        display: none;
    }
}

.login-box {
    background: url(https://i.pinimg.com/736x/d1/10/de/d110dee051323ffa6f981d58aa2366ea.jpg);
    background-size: cover;
    background-position: center;
    padding: 50px;
    margin: 50px auto;
    min-height: 700px;
    -webkit-box-shadow: 0 2px 60px -5px rgba(0, 0, 0, 0.1);
    box-shadow: 0 2px 60px -5px rgba(0, 0, 0, 0.1);
}
g
.logo {
    font-family: "Script MT";
    font-size: 54px;
    text-align: center;
    color: #888888;
    margin-bottom: 50px;
}

.logo .logo-font {
    color: #ffc13b;
}

@media only screen and (max-width: 767px) {
    .logo {
        font-size: 34px;
    }
}

.header-title {
    text-align: center;
    margin-bottom: 50px;
}

.login-form {
    max-width: 300px;
    margin: 0 auto;
}

.login-form .form-control {
    border-radius: 0;
    margin-bottom: 30px;
}

.login-form .form-group {
    position: relative;
}

.login-form .form-group .forgot-password {
    position: absolute;
    top: 6px;
    right: 15px;
}

.login-form .btn {
    border-radius: 0;
    -webkit-box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    margin-bottom: 30px;
}

.login-form .btn.btn-primary {
    background: #ffc13b;
    border-color: #ffc13b;
}

.slider-feature-card {
    background: #fff;
    max-width: 280px;
    margin: 0 auto;
    padding: 30px;
    text-align: center;
    -webkit-box-shadow: 0 2px 25px -3px rgba(0, 0, 0, 0.1);
    box-shadow: 0 2px 25px -3px rgba(0, 0, 0, 0.1);
}

.slider-feature-card img {
    height: 80px;
    margin-top: 30px;
    margin-bottom: 30px;
}

.slider-feature-card h3,
.slider-feature-card p {
    margin-bottom: 30px;
}

.carousel-indicators {
    bottom: -50px;
}

.carousel-indicators li {
    cursor: pointer;
}</style>


<body>
<%@ include file="studentnavbar.jsp" %>
                                <script type='text/javascript' src=''></script>
                                <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
                                <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js'></script>
                            </head>
                            <body oncontextmenu='return false' class='snippet-body'>
                            <section class="body">
    <div class="container">
        <div class="login-box">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <span class="logo-font"  style="font-family: 'Script MT'">Go</span>Learnalite
                    </div>
                    <span class="blink">
        <h3 style="color: red" align="center">${message}</h3>
    </span>
                </div>
            <div class="row">
                <div class="col-sm-6">
                    <br>
                    <h3 class="header-title">LOGIN</h3>
                    <form class="login-form" method="post" action="checkstudentlogin">
                        <div class="form-group">
                            <input type="text" class="form-control" name="email"  placeholder="Email or UserName">
                        </div>
                        <div class="form-group">
                            <input type="Password" class="form-control" name="password" placeholder="Password">
                            
                        </div>
                        <div class="form-group">
                            <button class="btn btn-primary btn-block">LOGIN</button>
                            
                        </div>
                        <script src="https://www.google.com/recaptcha/api.js"></script>
                        
                        <div class="g-recaptcha brochure__form__captcha" data-sitekey="6LcbsPUoAAAAAOyX4J-fNH82n7OxcZqyjle3XC96"></div>
                         <script>
   function onSubmit(token) {
     document.getElementById("demo-form").submit();
   }
 </script>
 <button class="g-recaptcha" 
        data-sitekey="reCAPTCHA_site_key" 
        data-callback='onSubmit' 
        data-action='submit'>Submit</button>
 
                        
                        <div class="form-group">
                            <div class="text-center">New Member? <a href="addcustomer">Sign up Now</a></div>
                        </div>
                    </form>
                </div>
                <div class="col-sm-6 hide-on-mobile">
                    <div id="demo" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                        </ul>
                        <!-- The slideshow -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="slider-feature-card">
                                    <img src="https://i.imgur.com/YMn8Xo1.png" alt="">
                                    <h3 class="slider-title">Welcome To Learnalite</h3>
                                    <p class="slider-description">Heartly welcome to Grow up Your skills ..</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="slider-feature-card">
                                    <img src="https://i.imgur.com/Yi5KXKM.png" alt="">
                                    <h3 class="slider-title">Providing Best Faculty</h3>
                                    <p class="slider-description">Keen Explanation of every Topic by excellent mentors</p>
                                </div>
                            </div>
                        </div>
                        <!-- Left and right controls -->
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
                            <script type='text/javascript'></script>
                            </body>
                        </html>