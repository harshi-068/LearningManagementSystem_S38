<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
    <style>
        .carousel-inner img {
            width: 100%;
            height: 400px;
            object-fit: cover;
            border-radius: 10px;
        }

        .card {
            border: none;
            border-radius: 10px;
            padding: 30px;
            width: 400px;
            margin: 20px auto;
            background: rgba(255, 255, 255, 0.8);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .card-header {
            text-align: center;
        }

        body {
            background-image: linear-gradient(to right, #6a11cb, #2575fc);
            font-family: Arial, sans-serif;
        }

        .form-control {
            margin-bottom: 15px;
        }

        .btn-primary {
            width: 100%;
        }

        .carousel-container {
            width: 80%;
            margin: 30px auto;
        }
        .carousel-caption{
        	color: black;
        }
    </style>
</head>
<body>
    <div>
        <%@ include file="navbar.jsp" %>
    </div>

    <!-- Carousel -->
    <div id="facultyCarousel" class="carousel slide carousel-container" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/faculty1.png" class="d-block w-100" alt="Faculty">
                <div class="carousel-caption">
                    <h5>Welcome to the Faculty Portal</h5>
                    <p>Your one-stop solution for academic management.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/faculty2.png" class="d-block w-100" alt="Classes">
                <div class="carousel-caption">
                    <h5>Engage with Students</h5>
                    <p>Access resources, schedules, and more.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/faculty3.jpg" class="d-block w-100" alt="Resources">
                <div class="carousel-caption">
                    <h5>Stay Organized</h5>
                    <p>Manage your tasks efficiently.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#facultyCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#facultyCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- Login Card -->
    <div class="card">
        <div class="card-header">
            <h3><u>Faculty Login</u></h3>
        </div>

        <form method="post" action="checkemplogin">
            <div class="form-group">
                <label for="email">Email ID</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="pwd">Password</label>
                <input type="password" id="pwd" name="pwd" class="form-control" required>
            </div>

            <div class="form-group">
                <input type="submit" value="Login" class="btn btn-primary">
            </div>
        </form>

        <div class="text-center mt-3">
            <p>New Registration? <a href="empreg" class="text-primary">Click Here</a></p>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
