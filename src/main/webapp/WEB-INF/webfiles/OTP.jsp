<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enter OTP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #74ebd5, #acb6e5);
        }
        .container {
            background: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }
        .container h1 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            display: block;
            font-size: 16px;
            margin-bottom: 5px;
            color: #555;
        }
        .form-group input {
            width: calc(100% - 20px);
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-sizing: border-box;
        }
        .button {
            display: inline-block;
            padding: 15px 30px;
            font-size: 18px;
            color: #fff;
            background-color: #28a745;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s, box-shadow 0.3s;
        }
        .button:hover {
            background-color: #218838;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
<%String otpMessage=(String)request.getAttribute("otpMessage"); %>
    <div class="container">
        <h1>Enter OTP</h1>
        <h3><%=otpMessage%></h3>
        <form action="verifyOtp" method="post">
            <div class="form-group">
                <label for="otp">Enter the OTP sent to your email</label>
                <input type="text" id="otp" name="otp" required>
            </div>
            <button type="submit" class="button">Verify OTP</button>
        </form>
    </div>
</body>
</html>
