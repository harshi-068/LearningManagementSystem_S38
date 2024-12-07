<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Subscription Successful</title>
    <style>
        /* General Page Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Content Wrapper */
        .content-wrapper {
            background: #ffffff;
            border-radius: 6px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Corrected shadow */
            padding: 20px 40px;
            text-align: center;
            max-width: 400px;
        }

        /* Headings */
        h1 {
            font-size: 2.5em;
            color: #2c3e50;
            margin: 0 0 10px;
        }

        /* Paragraph */
        p {
            font-size: 1.2em;
            margin: 20px 0;
            color: #34495e;
        }

        /* Button for Navigation */
        .btn-home {
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            padding: 10px 20px;
            border-radius: 4px;
            font-size: 1em;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .btn-home:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="content-wrapper">
        <h1>Subscription Successful!</h1>
        <p>Thank you for subscribing to our service.</p>
        <a href="index.jsp" class="btn-home">Go to Home</a>
    </div>
    <script>
        alert('You have successfully subscribed!');
    </script>
</body>
</html>
