<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap);

        body {
            background: linear-gradient(to right top,#eeaeca,#94bbe9);
        }

        @media only screen and (max-width: 767px) {
            .hide-on-mobile {
                display: none;
            }
        }

        .login-box {
            background-image: images/background-student-login.jpeg;
            background-size: cover;
            background-position: center;
            padding: 50px;
            margin: 50px auto;
            min-height: 700px;
            box-shadow: 0 2px 60px -5px rgba(0, 0, 0, 0.1);
        }

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
            margin-bottom: 20px;
        }

        .login-form .btn {
            border-radius: 0;
            margin-bottom: 30px;
            background: #ffc13b;
            border-color: #ffc13b;
        }

        .carousel-inner img {
            height: 80px;
            margin-top: 30px;
            margin-bottom: 30px;
        }

        .slider-feature-card {
            background: #fff;
            padding: 30px;
            text-align: center;
            box-shadow: 0 2px 25px -3px rgba(0, 0, 0, 0.1);
        }

        .password-strength {
            font-size: 12px;
            color: #888;
        }

        .password-requirements {
            font-size: 12px;
            color: #888;
            list-style: none;
            padding: 0;
        }

        .password-requirements li {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
<%@ include file="studentnavbar.jsp" %>
<section>
    <div class="container">
        <div class="login-box">
            <div class="row">
                <!-- Left Section -->
                <div class="col-sm-6">
                    <div class="logo">
                        <span class="logo-font">LMS-</span>EDUHUB
                    </div>
                    <span class="blink">
                        <h3 style="color: red" align="center">${message}</h3>
                    </span>
                    <h3 class="header-title">LOGIN</h3>
                    <form class="login-form" method="post" action="checkstudentlogin" onsubmit="return validateCaptcha()">
                        <div class="form-group">
                            <input type="text" class="form-control" name="email" placeholder="Email or Username" required>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                            <div class="password-strength">
                                <p><strong>Password should:</strong></p>
                                <ul class="password-requirements">
                                    <li>Be at least 8 characters long</li>
                                    <li>Contain at least one uppercase letter</li>
                                    <li>Contain at least one lowercase letter</li>
                                    <li>Include at least one number</li>
                                    <li>Include at least one special character (e.g., !@#$%)</li>
                                </ul>
                            </div>
                        </div>

                        <!-- Math Captcha Section -->
                        <div class="form-group">
                            <label id="mathCaptchaQuestion"></label>
                            <input type="text" id="captchaAnswer" class="form-control" placeholder="Enter answer" required>
                            <span id="captchaError" style="color:red; display:none;">Incorrect answer, please try again.</span>
                        </div>

                        <div class="form-group">
                            <button class="btn btn-primary btn-block" type="submit">LOGIN</button>
                        </div>
                        <div class="form-group">
                            <div class="text-center">New Member? <a href="addcustomer">Sign up Now</a></div>
                        </div>
                    </form>
                </div>

                <!-- Right Section with Carousel -->
                <div class="col-sm-6 hide-on-mobile">
                    <div id="demo" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                        </ul>
                        <!-- Slideshow Content -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="slider-feature-card">
                                    <img src="https://i.imgur.com/YMn8Xo1.png" alt="Welcome Image">
                                    <h3 class="slider-title">Welcome To Learning Management System</h3>
                                    <p class="slider-description">Heartly welcome to Grow up Your skills ..</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="slider-feature-card">
                                    <img src="https://i.imgur.com/Yi5KXKM.png" alt="Faculty Image">
                                    <h3 class="slider-title">Providing Best Faculty</h3>
                                    <p class="slider-description">Keen Explanation of every Topic by excellent mentors</p>
                                </div>
                            </div>
                        </div>
                        <!-- Controls -->
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

<script>
    function generateCaptcha() {
        var num1 = Math.floor(Math.random() * 10) + 1;
        var num2 = Math.floor(Math.random() * 10) + 1;
        var operator = (Math.random() > 0.5) ? "+" : "-"; 
        var captchaQuestion = num1 + " " + operator + " " + num2 + " = ?";
        var captchaAnswer = (operator === "+") ? num1 + num2 : num1 - num2;

        window.correctCaptchaAnswer = captchaAnswer;

        document.getElementById("mathCaptchaQuestion").innerHTML = captchaQuestion;
    }

    function validateCaptcha() {
        var userAnswer = document.getElementById("captchaAnswer").value;
        if (parseInt(userAnswer) !== window.correctCaptchaAnswer) {
            document.getElementById("captchaError").style.display = "block";
            return false;
        }
        document.getElementById("captchaError").style.display = "none";
        return true;
    }

    window.onload = generateCaptcha;
</script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"></script>
</body>
</html>
