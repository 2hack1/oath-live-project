<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OTP Verification</title>
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
        .show-password {
            margin-top: 10px;
            text-align: left;
        }
        .show-password label {
            font-size: 14px;
            color: #555;
        }
    </style>
</head>
<body>
<%String userName = (String)request.getAttribute("name"); 
 String userEmail = (String)request.getAttribute("email"); %>
    <div class="container">
        <h1>OTP Verification</h1>
        <form action="xyz" method="post">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" value="<%=userEmail %>" disabled>
            </div>
            <div class="form-group">
                <label for="otp">name</label>
                <input type="text" id="otp" name="name" value="<%=userName %>" disabled>
            </div>
            <div class="form-group">
                <label for="new-password">New Password</label>
                <input type="password"  id="new-password" name="password" required>
            </div>
            <div class="show-password">
                <input type="checkbox" id="show-password">
                <label for="show-password">Show Password</label>
            </div>
            <button type="submit" class="button">Submit</button>
        </form>
    </div>
    <script>
        document.getElementById('show-password').addEventListener('change', function() {
            var passwordField = document.getElementById('new-password');
            if (this.checked) {
                passwordField.type = 'text';
            } else {
                passwordField.type = 'password';
            }
        });
    </script>
</body>
</html>
