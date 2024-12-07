<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
     <link rel="stylesheet" href="css/style.css"> <!-- Link to the CSS file -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
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

        /* Profile Container Styling */
        .profile-container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 450px;
            padding: 30px;
            text-align: center;
            border-top: 5px solid #00bcd4;
        }

        .profile-container h1 {
            font-size: 26px;
            color: #444;
            margin-bottom: 20px;
        }

        .profile-container p {
            font-size: 18px;
            color: #555;
            margin: 8px 0;
        }

        .profile-container p strong {
            color: #333;
        }

        /* Button Styling */
        .profile-container a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 25px;
            background-color: #00bcd4;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .profile-container a:hover {
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
    <div class="profile-container">
        <h1>User Profile</h1>
        <p><strong>First Name:</strong> ${user.firstName}</p>
        <p><strong>Last Name:</strong> ${user.lastName}</p>
        <p><strong>Email:</strong> ${user.email}</p>
        <p><strong>Contact Number:</strong> ${user.contactNumber}</p>
        <p><strong>Address:</strong> ${user.address}</p>
        <a href="/editProfile">Edit Profile</a>
    </div>
    
</body>
</html>
