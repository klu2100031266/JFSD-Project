<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management - Delete Book</title>
    <style>
        body {
            margin: 0;
            padding: 0;
        }

        .removebookcss {
            background-image: url("libadd.jpg"); /* Set your background image */
            background-size: cover;
            background-position: center;
            height: 100vh;
            width: 100vw;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .remocss {
            background: rgba(255, 255, 255, 0.8); /* Semi-transparent white background for form */
            padding: 20px;
            border-radius: 10px;
        }

        form {
            text-align: center;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #007bff; /* Set your desired button color */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3; /* Button color on hover */
        }
    </style>
</head>
<body>
    <div class="removebookcss">
        <div class="remocss">
            <form action="/deleteAction" method="post" th:object="${book}">
                <h1>Delete Book</h1>
                <label for="isbn">ISBN:</label>
                <input type="text" id="isbn" name="isbn" required><br><br>
                <label for="title">Book Name:</label>
                <input type="text" id="title" name="title" required><br><br>
                <label for="serial">Serial Name:</label>
                <input type="text" id="serial" name="serial" required><br><br>
                <label for="description">Description:</label>
                <input type="text" id="description" name="description" required><br><br>
                <button type="submit">Delete Book</button>
            </form>
        </div>
    </div>
</body>
</html>
