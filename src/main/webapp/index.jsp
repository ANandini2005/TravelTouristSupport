<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/sign.css">
</head>
<body>
    <div class="form-container">
        <h2>Login</h2>
        <form action="/index" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
 
            
            <button type="submit">Login</button>
        </form>
        
        <p>Don't have an account? <a href="/signup">Sign up here</a></p>
        <p><a href="/forgot-password">Forgot Password?</a></p>
        
        <c:if test="${not empty error}">
            <p style="color:red;">${error}</p>
        </c:if>
    </div>
</body>
</html>
