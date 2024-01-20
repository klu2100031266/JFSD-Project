<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management</title>
    <style>
        body {
            background-color: #f5f5f5;
            font-family: Arial, sans-serif;
        }

        .updatebookcss {
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            max-width: 400px;
        }

        form {
            text-align: left;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        button[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="updatebookcss">
        <form action="/updAction" method="post" th:object="${book}">
            <h2>Update Book Information</h2>
            ISBN: <input type="text" name="isbn" required><br><br>
            Book Name: <input type="text" id="longInput" name="title" required><br><br>
            Serial Name: <input type="text" name="serial" required><br><br>
            Description: <input type="text" name="description" required><br><br>
            <button type="submit">Update Book</button>
        </form>
    </div>
</body>
</html>
