<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Assignment Submission</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right top, #eeaeca, #94bbe9); /* Gradient background */
            margin: 0;
            padding: 50px;
            color: #333;
        }

        .form-container {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 0 auto;
            text-align: center;
        }

        h2 {
            color: #333;
            font-size: 2rem;
            margin-bottom: 30px;
            font-weight: bold;
        }

        label {
            font-size: 1rem;
            font-weight: 600;
            margin-bottom: 8px;
            display: block;
            text-align: left;
            color: #333;
        }

        input[type="file"], input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 12px 20px;
            margin: 12px 0;
            border: 2px solid #ddd;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 1rem;
            color: #555;
        }

        input[type="file"], input[type="text"] {
            background-color: #f9f9f9;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            font-size: 1.1rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .message {
            margin-top: 20px;
            background-color: #d4edda;
            color: #155724;
            padding: 15px;
            border-radius: 10px;
            font-size: 1rem;
            display: none;
        }

        .message h3 {
            margin: 0;
            font-size: 1.5rem;
            font-weight: bold;
        }

        .message p {
            font-size: 1rem;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .form-container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Assignment Submission</h2>
        <form id="submissionForm" onsubmit="handleSubmission(event)">
            <label for="assignmentFile">Choose Assignment File:</label>
            <input type="file" id="assignmentFile" name="assignmentFile" required><br>
            
            <label for="studentName">Your Name:</label>
            <input type="text" id="studentName" name="studentName" required><br>

            <input type="submit" value="Submit Assignment">
        </form>

        <div id="successMessage" class="message">
            <h3>Assignment Submitted Successfully!</h3>
            <p>Your assignment has been submitted. You will receive feedback soon.</p>
        </div>
    </div>

    <script>
        function handleSubmission(event) {
            event.preventDefault(); // Prevent form submission
            
            // Simulate a file upload process without actually storing the file
            const fileInput = document.getElementById('assignmentFile');
            const nameInput = document.getElementById('studentName');
            
            // Simulate success message
            if (fileInput.files.length > 0 && nameInput.value) {
                document.getElementById('successMessage').style.display = 'block';
                document.getElementById('submissionForm').reset(); // Reset form after submission
            }
        }
    </script>

</body>
</html>
