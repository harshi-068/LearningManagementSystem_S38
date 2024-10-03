<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Handout</title>
    <style>
     @import url('https://fonts.googleapis.com/css?family=Muli&display=swap');
     
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 50px;
            
        }

       .handout-container {
/* Semi-transparent #f68600 */
    padding: 20px;
    border: 1px solid rgba(209, 209, 209, 0.3);
    backdrop-filter: blur(10px);
    -webkit-backdrop-filter: blur(10px);
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}
        h1, h2, h3 {
            margin-top: 0;
        }

        table {
    width: 70%;
    border-collapse: collapse;
    margin-top: 20px;
    
    background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
    backdrop-filter: blur(60px); /* Blur the content behind the table */
    -webkit-backdrop-filter: blur(70px); /* For Safari compatibility */
    border-radius: 20px; /* Rounded corners */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Optional: Soft shadow for depth */
    border: 1px solid rgba(209, 209, 209, 0.3); /* Semi-transparent border */
    overflow: hidden; /* Ensures inner content respects border-radius */
}

        table, th, td {
            border: 1px solid #d1d1d1;
        }

        th, td {
            padding: 8px 12px;
        }

        th {
            background-color: #f4f4f4;
        }
        input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date],input[type=file],textarea
{
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}
 .button {
  background-color: black;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
    </style>
</head>
<body style="background-image: url('coursebg.jpg')">

<div class="handout-container">
    <h1>Course Title:JavaScript Fundamentals</h1>

    <h2>Course Description:</h2>
    <p>This course dives deep into advanced topics in JavaScript, covering concepts like asynchronous programming, closures, and more.</p>

    <h2>Course Curriculum:</h2>
    <ul>
        <li>Chapter 1: Closures</li>
        <li>Chapter 2: Promises and Async/Await</li>
        <li>Chapter 3: Modules and Bundlers</li>
        <li>Chapter 4: Advanced OOP in JavaScript</li>
    </ul>

    <h2>Assignment Schedule:</h2>
    <form action="insertfile" method="post" enctype="multipart/form-data">
    <table>
        <thead>
            <tr>
                <th>Assignment No.</th>
                <th>Topic</th>
                <th>Due Date</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>Understanding Closures</td>
                <td>15th Oct 2024</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Building with Promises</td>
                <td>22nd Oct 2024</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Modern Modules</td>
                <td>29th Oct 2024</td>
            </tr>
        </tbody>
    </table>
<br>
    <tr>
<td><label>Upload File</label></td>
<td><input type="file" name="file" required="required"/></td><td colspan=2>  <input type="submit" value="Add" class="button" ></td>

</tr>

    <p><strong>Note:</strong> Make sure to keep up with the assignments and reach out if you need help.</p>
    <tr>
     <a href="studenthome.jsp">Back</a>
    </tr>
</div>

</body>
</html>
