<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel='stylesheet' href='/path/to/your/style.css' type='text/css' media='all' />
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        #central {
            width: 80%;
            margin: 0 auto;
        }

        .content {
            background-color: #f4f4f4;
            padding: 20px;
            border-radius: 10px;
            margin-top: 50px;
        }

        h1 {
            color: #333;
        }

        p {
            color: #666;
        }

        form {
            margin-top: 20px;
        }

        .label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        .field {
            margin-bottom: 15px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        #mail-status {
            margin-top: 10px;
            font-weight: bold;
        }

        .success {
            color: green;
        }

        .error {
            color: red;
        }
    </style>
</head>
<body>
    <div id="central">
        <div class="content">
            <h1>Contact Form</h1>
            <p>Send your comments through this form and we will get back to you.</p>
            <div id="message">
                <form action="/contactus" method="post" th:object="${detail}">
                    <div class="label">Name:</div>
                    <div class="field">
                        <input type="text" id="pp-name" name="name" placeholder="Enter your name here" 
                               title="Please enter your name" class="required" aria-required="true" required>
                    </div>

                    <div class="label">Email:</div>
                    <div class="field">
                        <input type="text" id="pp-email" name="email" placeholder="Enter your email address here"
                               title="Please enter your email address" class="required email" 
                               aria-required="true" required>
                    </div>

                    <div class="label">Phone Number:</div>
                    <div class="field">
                        <input type="text" id="pp-phone" name="phone" placeholder="Enter your phone number here"
                               title="Please enter your phone number" class="required phone" 
                               aria-required="true" required>
                    </div>

                    <div class="label">Message:</div>
                    <div class="field">
                        <textarea id="about-project" name="message" placeholder="Enter your message here"></textarea>
                    </div>

                    <div id="mail-status"></div>
                    <input type="submit" name="submit" value="Send Message" id="send-message">
                </form>
                <div th:if="${status != null}" th:class="${status}">
                    <p th:text="${message}"></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
