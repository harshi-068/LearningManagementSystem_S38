<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>
 body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        .dashboard {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .card {
            background-color:  /* Orange color */
            color: #fff;
            border-radius: 5px;
            margin: 10px;
            padding: 20px;
            width: 300px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            font-size: 24px;
        }

        p {
            font-size: 16px;
        }
</style>
</head>
<body >

<%@ include file="empnavbar.jsp" %>

<p style="text-align: left; font-size: 15pt; font-family: cursive;">Hi ${ename}</p>

<img src="sai.jpg" width=1460 >
<div class="dashboard">
        <div class="card">
            <h2>Faculty Member 1</h2>
            <p>Teaching Computer Science</p>
        </div>
        <div class="card">
            <h2>Faculty Member 2</h2>
            <p>Teaching Mathematics</p>
        </div>
        <div class="card">
            <h2>Faculty Member 3</h2>
            <p>Teaching Physics</p>
        </div>
        <!-- Add more cards for additional faculty members -->
    </div>
    
</body>
</html>