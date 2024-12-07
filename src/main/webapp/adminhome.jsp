<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
<style>
    body {
        background-image: linear-gradient(to right top, #eeaeca, #94bbe9);
        font-family: Arial, sans-serif;
    }

    .card {
        width: 250px;
        background-color: #fff4e0;
        border-radius: 20px;
        padding: 20px;
        text-align: center;
        margin: 10px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    }

    .button {
        background-color: white;
        border: 1px solid black;
        padding: 5px 10px;
        margin: 5px;
        border-radius: 5px;
        text-decoration: none;
        color: black;
    }

    .button {
        background-color: #94bbe9;
    }	

    .carousel-inner img {
        width: 100%;
        height: 350px;
        object-fit: cover;
        border-radius: 10px;
    }

    .carousel-container {
        width: 80%;
        margin: 30px auto;
    }

    .section-title {
        text-align: center;
        color: #2c3e50;
    }

    .card-container {
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        gap: 20px;
    }

    footer {
        text-align: center;
        margin-top: 40px;
        color: #fff;
        font-size: 14px;
    }
</style>

</head>
<body>
    <div>
        <%@ include file="navbar.jsp" %>
    </div>

    <!-- Carousel -->
    <div id="adminCarousel" class="carousel slide carousel-container" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/admin-dashboard1.gif" class="d-block w-100" alt="Admin Dashboard">
                <div class="carousel-caption">
                    <h5>Welcome to the Admin Dashboard</h5>
                    <p>Manage Faculty, Students, and More</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/admin-dashboard2.jpg" class="d-block w-100" alt="Data Management">
                <div class="carousel-caption">
                    <h5>View and Add Data Easily</h5>
                    <p>Access all your data in a few clicks.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/admin-dashboard3.png" class="d-block w-100" alt="System Settings">
                <div class="carousel-caption">
                    <h5>Manage System Settings</h5>
                    <p>Customize the platform to suit your needs.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#adminCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#adminCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- Dashboard Section -->
    <main>
        <section>
            <h2 class="section-title">Admin Dashboard</h2>
            <p style="text-align: center; color: #2c3e50;">Welcome, admin! This is your admin dashboard where you can manage users and settings.</p>
            
            <!-- Data View Cards -->
            <h3 class="section-title">VIEW DATA</h3>
            <div class="card-container">
                <div class="card">
                    <h3>View Faculty</h3>
                    <a href="viewallemps" class="button">View</a>
                </div>

                <div class="card">
                    <h3>View Student</h3>
                    <a href="#" class="button">View</a>
                </div>
            </div>
            
            <!-- Add Data Cards -->
            <h3 class="section-title">ADD DATA</h3>
            <div class="card-container">
                <div class="card">
                    <h3>Add Faculty</h3>
                    <a href="empreg" class="button">Add</a>
                </div>

                <div class="card">
                    <h3>Add Student</h3>
                    <a href="addcustomer" class="button">Add</a>
                </div>
            </div>

            <!-- Update Data Cards -->
            <h3 class="section-title">UPDATIONS</h3>
            <div class="card-container">
                <div class="card">
                    <h3>Update Faculty</h3>
                    <a href="updateprofile" class="button">Update</a>
                </div>
            </div>
        </section>

        <section>
            <h2 class="section-title">User Management</h2>
            <p style="text-align: center; color: #2c3e50;">You can manage user accounts and access control from this section.</p>
        </section>

        <section>
            <h2 class="section-title">Settings</h2>
            <p style="text-align: center; color: #2c3e50;">Configure system settings and preferences here.</p>
        </section>
    </main>

    <!-- LogOut Button -->
    <div style="text-align: center;">
        <a href="/" class="button">LogOut</a>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2023 Your Admin Panel. All rights reserved.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
