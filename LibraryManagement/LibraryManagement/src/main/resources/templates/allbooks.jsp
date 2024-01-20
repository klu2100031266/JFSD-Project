<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Library Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        h1 {
            background-color: #4285f4;
            color: white;
            padding: 20px;
            margin: 0;
        }
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: white;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
        }
        th {
            background-color: #4285f4;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <h1>Library Management System</h1>
    <table>
        <tr>
            <th>ISBN</th>
            <th>Title</th>
            <th>Serial No</th>
            <th>Description</th>
        </tr>
        <tr th:each="book : ${books}">
            <td th:text="${book.isbn}"></td>
            <td th:text="${book.title}"></td>
            <td th:text="${book.serial}"></td>
            <td th:text="${book.description}"></td>
        </tr>
    </table>
</body>
</html>
