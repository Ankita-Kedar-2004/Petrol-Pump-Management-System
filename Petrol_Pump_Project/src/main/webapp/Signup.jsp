<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 360px;
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 28px;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 6px;
            color: #444;
            font-weight: 500;
        }

        input[type="text"],
        input[type="password"],
        select {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 14px;
            transition: border-color 0.3s;
        }

        input:focus,
        select:focus {
            border-color: #2575fc;
            outline: none;
        }

        .login-container input[type="submit"] {
            width: 100%;
            padding: 12px;
            background: #2575fc;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .login-container input[type="submit"]:hover {
            background: #1a5fd0;
        }

        .error {
            color: red;
            text-align: center;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

    <div class="login-container">
        <h2>Sign Up</h2>
        <% if (request.getParameter("error") != null) { %>
            <div class="error">Invalid username or password</div>
        <% } %>
        <form action="signup" method="post">
            <label>Email</label>
            <input type="text" name="email" placeholder="Enter email" required />

            <label>Password</label>
            <input type="password" name="password" placeholder="Enter password" required />

            <label>Role</label>
            <select name="role" required>
                <option value="" disabled selected>Select role</option>
                <option value="Admin">Admin</option>
                <option value="Employee">Employee</option>
            </select>

            <input type="submit" value="Sign Up" />
        </form>
    </div>

</body>
</html>
