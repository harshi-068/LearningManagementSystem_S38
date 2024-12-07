<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submission Status</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(to right top,#eeaeca,#94bbe9)
        }
        .message {
            font-size: 2rem;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }
        .back-button {
            font-size: 1rem;
            padding: 10px 20px;
            color: white;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="message">Successfully Submitted</div>
    <a href="index.jsp" class="back-button">Back to Home</a>
</body>
</html>