<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Materials - JavaScript Fundamentals</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Muli&display=swap');
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 50px;
            background: linear-gradient(to right top, #eeaeca, #94bbe9);
        }

        .material-container {
            padding: 20px;
            border: 1px solid rgba(209, 209, 209, 0.3);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: white;
        }

        h1, h2 {
            color: #333;
        }

        .material-list {
            margin-top: 20px;
        }

        .material-item {
            background-color: #f9f9f9;
            padding: 15px;
            margin: 10px 0;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .material-item a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }

        .material-item a:hover {
            text-decoration: underline;
        }

        .back-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: black;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .back-button:hover {
            background-color: #333;
        }
    </style>
</head>
<body>

<div class="material-container">
    <h1>Course Materials - JavaScript Fundamentals</h1>
    <h2>Download Reference PDFs for Further Study</h2>

    <div class="material-list">
        <!-- Example of material listing -->
        <div class="material-item">
            <span>Introduction to Closures (PDF)</span>
            <a href="/path/to/closures.pdf" download>Download</a>
        </div>

        <div class="material-item">
            <span>Understanding Promises in JavaScript (PDF)</span>
            <a href="/path/to/promises.pdf" download>Download</a>
        </div>

        <div class="material-item">
            <span>Modern JavaScript Modules (PDF)</span>
            <a href="/path/to/modules.pdf" download>Download</a>
        </div>

        <div class="material-item">
            <span>Advanced OOP Concepts in JavaScript (PDF)</span>
            <a href="/path/to/oop.pdf" download>Download</a>
        </div>
    </div>

    <a href="studenthome.jsp" class="back-button">Back to Course</a>
</div>
	
</body>
</html>
