<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Courses</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Muli&display=swap');

        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Muli', sans-serif;
            display: flex;
            flex-direction: column;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
            text-align: center;
        }

        .search-container {
            padding: 20px;
            margin: 20px 0;
            max-width: 600px;
            width: 100%;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .search-container input[type="text"] {
            width: 80%;
            padding: 10px;
            font-size: 16px;
            border: 2px solid #ccc;
            border-radius: 4px;
        }

        .search-container button {
            padding: 10px 20px;
            margin-left: 10px;
            background-color: #f68600;
            border: 0;
            border-radius: 50px;
            color: white;
            cursor: pointer;
        }

        .search-container button:hover {
            background-color: #4641A4;
        }

        .courses-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .course {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 10px 10px rgba(0, 0, 0, 0.2);
            display: flex;
            max-width: 600px;
            margin: 20px;
            width: 300px;
        }

        .course-preview {
            background-color: #f68600;
            color: #fff;
            padding: 20px;
            width: 200px;
            border-radius: 10px;
        }

        .course-info {
            padding: 20px;
            width: 100%;
        }

        .btn {
            padding: 10px 20px;
            background-color: #f68600;
            color: white;
            border-radius: 50px;
            text-decoration: none;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #4641A4;
        }
    </style>
</head>
<body>

<%@ include file="studentloginnavbar.jsp" %>

<!-- Search Form -->
<div class="search-container">
    <input type="text" id="searchQuery" placeholder="Search for a course..." onkeyup="filterCourses()">
</div>

<!-- Courses Section -->
<div class="courses-container" id="coursesContainer">
    <!-- Courses will be dynamically inserted here -->
</div>

<script>
    // List of courses to display (can be extended)
    const courses = [
        { id: 1, title: "JavaScript Fundamentals", chapter: 4, chapterTitle: "Callbacks & Closures" },
        { id: 2, title: "Advanced JavaScript", chapter: 2, chapterTitle: "Promises & Async/Await" },
        { id: 3, title: "React Basics", chapter: 3, chapterTitle: "Component Lifecycle" },
        { id: 4, title: "HTML & CSS", chapter: 5, chapterTitle: "CSS Flexbox & Grid" },
        { id: 5, title: "Node.js Essentials", chapter: 6, chapterTitle: "Working with File System" },
        { id: 6, title: "Vue.js Basics", chapter: 1, chapterTitle: "Introduction to Vue.js" }
    ];

    // Function to display courses
    function displayCourses(filteredCourses) {
        const container = document.getElementById('coursesContainer');
        container.innerHTML = ''; // Clear the container before adding new courses
        filteredCourses.forEach(course => {
            const courseElement = document.createElement('div');
            courseElement.classList.add('course');
            courseElement.innerHTML = `
                <div class="course-preview">
                    <h6>Course</h6>
                    <h2>${course.title}</h2>
                    <a href="#">View all chapters <i class="fas fa-chevron-right"></i></a>
                </div>
                <div class="course-info">
                    <h6>Chapter ${course.chapter}</h6>
                    <h2>${course.chapterTitle}</h2>
                    <a href="course${course.id}.jsp" class="btn-link">
                        <button class="btn">Continue</button>
                    </a>
                </div>
            `;
            container.appendChild(courseElement);
        });
    }

    // Function to filter courses based on the search query
    function filterCourses() {
        const query = document.getElementById('searchQuery').value.toLowerCase();
        const filteredCourses = courses.filter(course => 
            course.title.toLowerCase().includes(query) || 
            course.chapterTitle.toLowerCase().includes(query)
        );
        displayCourses(filteredCourses);
    }

    // Initial display of all courses
    displayCourses(courses);
</script>

</body>
</html>
