<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
 <style>
    body {
        font-family: 'Roboto', Arial, sans-serif; /* Clean and modern font */
        background: linear-gradient(135deg, #c9e8ff, #eaf5ff); /* Light gradient background */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .form-container {
        background-color: #ffffff; /* White container */
        border-radius: 12px; /* Smooth rounded corners */
        box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1); /* Softer shadow */
        padding: 30px 40px;
        width: 100%;
        max-width: 420px;
        text-align: center;
    }

    h2 {
        color: #2c3e50; /* Dark blue-gray for headings */
        font-size: 30px;
        font-weight: bold;
        margin-bottom: 60px;
    }

    label {
        font-size: 15px;
        color: #34495e; /* Subtle grayish-blue */
        display: block;
        margin-bottom: 8px;
        text-align: left; /* Align labels to the left */
    }

    input[type="password"] {
        width: 100%;
        padding: 12px 15px;
        margin-bottom: 20px;
        border: 1px solid #bdc3c7; /* Light gray border */
        border-radius: 8px;
        font-size: 14px;
        box-sizing: border-box;
        transition: border-color 0.3s ease;
    }

    input[type="password"]:focus {
        border-color: #3498db; /* Blue border on focus */
        outline: none;
        box-shadow: 0 0 6px rgba(52, 152, 219, 0.4); /* Slight glow effect */
    }

    button {
        background-color: #3498db; /* Vibrant blue for buttons */
        color: white;
        padding: 12px 20px;
        font-size: 16px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
        width: 100%;
    }

    button:hover {
        background-color: #2980b9; /* Darker blue on hover */
        transform: translateY(-2px); /* Subtle lift effect */
    }

    button:active {
        transform: translateY(0); /* Button returns on click */
    }

    div {
        margin-top: 15px;
        font-size: 14px;
        color: #e74c3c; /* Red for errors */
        text-align: center; /* Center align error text */
    }
</style>

    
</head>
<body>
    <h2>Reset Password</h2>
    <form action="/reset-password" method="post">
        <input type="hidden" name="token" value="${token}">
        <label for="newPassword">New Password:</label>
        <input type="password" id="newPassword" name="newPassword" required>
        <button type="submit">Reset Password</button>
    </form>
    <div>
        ${message}
        ${error}
    </div>
</body>
</html>
