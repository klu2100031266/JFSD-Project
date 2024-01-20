<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        .library-container {
            text-align: center;
            margin: 100px auto;
            max-width: 400px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .library-container h2 {
            font-size: 24px;
        }

        .library-container form {
            text-align: left;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
        }

        .form-group input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .library-container button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .library-container button:hover {
            background-color: #0056b3;
        }

        .update-button {
            margin-top: 20px;
        }

        .update-button a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="library-container">
        <h2>Add New Book</h2>
        <form action="/addAction" method="post" th:object="${book}">
            <div class="form-group">
                <label for="isbn">ISBN:</label>
                <input type="text" id="isbn" name="isbn" required>
            </div>
            <div class="form-group">
                <label for="title">Book Name:</label>
                <input type="text" id="title" name="title" required>
            </div>
            <div class="form-group">
                <label for="serial">Serial Name:</label>
                <input type="text" id="serial" name="serial" required>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <input type="text" id="description" name="description" required>
            </div>
            <button type="submit">Add New Book</button>
        </form>
        <div class="update-button">
            <a href="updatebook"><button>Update Book</button></a>
        </div>
    </div>
</body>
</html>
