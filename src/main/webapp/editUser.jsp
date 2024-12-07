<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
    <h1>Edit User</h1>
    <form action="/editUser" method="post">
        <input type="hidden" name="id" value="${user.id}">
        <label>First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}" required><br><br>
        <label>Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}" required><br><br>
        <label>Username:</label>
        <input type="text" name="username" value="${user.username}" required><br><br>
        <label>Email:</label>
        <input type="email" name="email" value="${user.email}" required><br><br>
        <label>Password:</label>
        <input type="password" name="password" value="${user.password}" required><br><br>
        <label>Contact Number:</label>
        <input type="text" name="contactNumber" value="${user.contactNumber}" required><br><br>
        <label>Address:</label>
        <input type="text" name="address" value="${user.address}"><br><br>
        <label>Role:</label>
        <select name="role" required>
            <option value="user" ${user.role == 'user' ? 'selected' : ''}>User</option>
            <option value="admin" ${user.role == 'admin' ? 'selected' : ''}>Admin</option>
        </select><br><br>
        <button type="submit">Save Changes</button>
        <a href="/adminDashboard">Cancel</a>
    </form>
</body>
</html>
