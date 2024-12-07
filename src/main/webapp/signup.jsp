<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Signup</title>
    <link rel="stylesheet" type="text/css" href="css/sign.css">
</head>
<body>
    <div class="form-container">
        <h2>Signup</h2>
        <!-- Display error message -->
        <c:if test="${not empty error}">
            <div class="error-message" style="color: red;">${error}</div>
        </c:if>
        <form action="/signup" method="post">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" required>

            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" required>

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="contactNumber">Contact Number:</label>
            <input type="text" id="contactNumber" name="contactNumber" required>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>

            <!-- Role Selection -->
            <label for="role">Role:</label>
            <select id="role" name="role" required>
                <option value="USER">User</option>
                <option value="ADMIN">Admin</option>
            </select>

            <button type="submit">Sign Up</button>
        </form>
       
        <p>Already have an account? <a href="/index">Login here</a></p>
    </div>
    <footer>
        <!-- Add your footer content here -->
    </footer>
</body>
</html>
