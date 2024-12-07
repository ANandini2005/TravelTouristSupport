<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
    <style>
        /* General body styling with background image */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('/images/fp.png');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #fff;
        }

     /* Form container styling */
.form-container {
    background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black */
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 8px 15px rgba(0, 0, 0, 0.5); /* Blue shadow */
    text-align: center;
    width: 90%;
    max-width: 400px;
    margin-left: 150px; /* Adjusted alignment to the right */
}


        .form-container h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #00bcd4; /* Accent color */
        }

        /* Input field styling */
        .form-container label {
            font-size: 16px;
            color: #ddd;
        }

        .form-container input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 15px 0;
            border: none;
            border-radius: 5px;
            background-color: #fff;
            font-size: 14px;
            color: #333;
            box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        /* Submit button styling */
        .form-container button {
            background-color: #00bcd4;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .form-container button:hover {
            background-color: #0097a7;
        }

        /* Message and error styling */
        .form-container div {
            margin-top: 15px;
            font-size: 14px;
            color: #f44336; /* Error message color */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            body {
                padding: 20px;
            }

            .form-container {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Forgot Password</h2>
        <form action="/forgot-password" method="post">
            <label for="email">Enter your email address:</label>
            <input type="email" id="email" name="email" required>
            <button type="submit">Send Password Reset Link</button>
        </form>
        <div>
            ${message}
            ${error}
        </div>
    </div>
</body>
</html>
