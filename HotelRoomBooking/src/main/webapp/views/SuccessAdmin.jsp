<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .message-container {
            background-color: #fff;
            padding: 30px 50px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 600px;
            width: 100%;
        }
        .success-message {
            color: #4CAF50;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 15px;
        }
        .message-details {
            color: #333;
            font-size: 18px;
            margin-bottom: 20px;
        }
        .patient-details {
            text-align: left;
            margin: 20px 0;
        }
        .patient-details div {
            margin-bottom: 10px;
        }
        .patient-details span {
            font-weight: bold;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>



<div class="message-container">
<form action="/Admin">
    <div class="success-message">Data saved successfully!</div>
    <div class="message-details">Your Password data was saved successfully. Thank you!</div>
    
    <input type="submit" value="Submit">
   </form>
</div>

</body>
</html>
