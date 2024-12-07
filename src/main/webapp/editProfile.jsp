<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
     <link rel="stylesheet" href="css/style.css"> <!-- Link to the CSS file -->
    <style>
        /* General Page Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }
        .navbar-fixed {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 1030; /* Ensures it stays above other elements */
}

body {
    padding-top: 56px; /* Adjust for the height of the navbar */
}

        /* Edit Profile Container */
        .edit-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 450px;
            padding: 30px;
            text-align: center;
            border-top: 5px solid #0097a7;
        }

        .edit-container h1 {
            color: #444;
            margin-bottom: 20px;
            font-size: 26px;
        }

        .edit-container label {
            display: block;
            color: #444;
            margin-bottom: 5px;
            text-align: left;
            font-weight: bold;
        }

        .edit-container input {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .edit-container button {
            width: 100%;
            padding: 12px;
            background-color: #0097a7;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .edit-container button:hover {
            background-color: #0097a7;
        }

    </style>
</head>

<!-- Navigation bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary navbar-fixed">
    <a class="navbar-brand" href="/">Travel Portal</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="/home">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/profile?username=${username}">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#map-section">Search Map Location</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/destinations">Destinations</a>
            </li>
            <li class="nav-item">
                <form action="/logout" method="get" style="display:inline;">
                    <button type="submit" class="btn btn-link nav-link">Logout</button>
                </form>
            </li>
        </ul>
    </div>
</nav>
<body>
    <div class="edit-container">
        <h1>Edit Profile</h1>
        <form action="/updateProfile" method="post">
            <input type="hidden" name="id" value="${user.id}">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" value="${user.firstName}" required>

            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" value="${user.lastName}" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${user.email}" required>

            <label for="contactNumber">Contact Number:</label>
            <input type="text" id="contactNumber" name="contactNumber" value="${user.contactNumber}" required>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" value="${user.address}" required>

            <button type="submit">Save Changes</button>
        </form>
    </div>
</body>
</html>
