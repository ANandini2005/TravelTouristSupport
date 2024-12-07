<!DOCTYPE html>
<html>
<head>
    <title>Add User</title>
    <link rel="stylesheet" type="text/css" href="css/admin.css">
    <style>
       /* General body styling */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    display: flex;
    background-color: #f4f4f4;
}

/* Navigation bar */
.navbar {
    width: 250px;
    background-color: #333;
    color: white;
    height: 100vh;
    padding: 20px 10px;
    position: fixed;
    overflow-y: auto;
    box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
}

.navbar h2 {
    text-align: center;
    margin-bottom: 20px;
    font-size: 22px;
    color: #fff;
}

.navbar ul {
    list-style: none;
    padding: 0;
}

.navbar ul li {
    margin: 15px 0;
}

.navbar ul li a {
    text-decoration: none;
    color: white;
    display: block;
    padding: 10px 15px;
    border-radius: 5px;
    transition: background-color 0.3s;
}

.navbar ul li a:hover {
    background-color: #575757;
}

/* Dashboard content */
.dashboard-content {
    margin-left: 270px; /* Offset for navbar */
    padding: 20px;
    flex-grow: 1;
    background-color: #f4f4f4;
    min-height: 100vh;
}

/* Section styling */
.section {
    display: none;
}

.section:first-of-type {
    display: block;
}

/* Add User Section */
#addUser {
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    width: 60%;
    margin: 20px auto;
}

#addUser h1 {
    font-size: 24px;
    margin-bottom: 20px;
    color: #333;
    text-align: center;
}

#addUser form label {
    font-weight: bold;
    margin-bottom: 5px;
    display: block;
    color: #555;
}

#addUser form input, 
#addUser form select {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
}

#addUser form button {
    background-color: #0097a7;
    color: white;
    border: none;
    padding: 10px 15px;
    font-size: 16px;
    cursor: pointer;
    border-radius: 4px;
    transition: background-color 0.3s ease;
}

#addUser form button:hover {
    background-color: #45a049;
}

#addUser form input:focus,
#addUser form select:focus {
    border-color: #4CAF50;
    outline: none;
    box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
}

#addUser a {
    text-decoration: none;
    margin-left: 10px;
    color: #333;
}

/* Table styling */
table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    background-color: #fff;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

table th, table td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: left;
}

table th {
    background-color: #4CAF50;
    color: white;
}

table tr:nth-child(even) {
    background-color: #f9f9f9;
}

table tr:hover {
    background-color: #f1f1f1;
}

/* Modal styling */
.modal {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: #fff;
    padding: 20px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
    z-index: 1000;
    border-radius: 8px;
}

.modal label {
    display: block;
    margin: 10px 0 5px;
}

.modal input, 
.modal select {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.modal button {
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    background-color: #0097a7;
    color: white;
    transition: background-color 0.3s ease;
}

.modal button:hover {
    background-color: #45a049;
}

    </style>
</head>
 <!-- Navigation Bar -->
    <div class="navbar">
        <h2>Admin Dashboard</h2>
        <ul>
            <li><a href="#home" onclick="showSection('home')">Home</a></li>
            <li><a href="#addGuide" onclick="showSection('addGuide')">Add Guide</a></li>
             <li><a href="/addUser" onclick="showSection('addUser')">Add User</a></li>
            <li><a href="#manageUsers" onclick="showSection('manageUsers')">Manage Users</a></li>
            <li><a href="#manageGuides" onclick="showSection('manageGuides')">Manage Guides</a></li>
            <li><a href="#addPlace" onclick="showSection('addPlace')">Add Cities</a></li>
            <li><a href="#contactmessages" onclick="showSection('managecontact')">Contact Messages</a></li>
             <li><a href="#manageBookings" onclick="showSection('manageBookings')">Manage Bookings</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
    </div>
<body>
    <div id="addUser">
        <h1>Add User</h1>
        <form action="/addUser" method="post">
            <label>First Name:</label>
            <input type="text" name="firstName" required><br>
            <label>Last Name:</label>
            <input type="text" name="lastName" required><br>
            <label>Username:</label>
            <input type="text" name="username" required><br>
            <label>Email:</label>
            <input type="email" name="email" required><br>
            <label>Password:</label>
            <input type="password" name="password" required><br>
            <label>Contact Number:</label>
            <input type="text" name="contactNumber" required><br>
            <label>Address:</label>
            <input type="text" name="address"><br>
            <label>Role:</label>
            <select name="role" required>
                <option value="user">User</option>
                <option value="admin">Admin</option>
            </select><br>
            <button type="submit">Add User</button>
            <a href="/adminDashboard" style="text-decoration: none; margin-left: 10px;">Cancel</a>
        </form>
    </div>
</body>
</html>
